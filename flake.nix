{
  inputs = {
    nixpkgs = {
      url = "github:nixos/nixpkgs/nixpkgs-unstable";
    };

    flake-utils = {
      url = "github:numtide/flake-utils";
    };

    pre-commit-hooks = {
      url = "github:cachix/pre-commit-hooks.nix";
      inputs.nixpkgs.follows = "nixpkgs";
      inputs.flake-utils.follows = "flake-utils";
    };

    botocore = {
      url = "github:boto/botocore";
      flake = false;
    };
  };

  outputs = { self, nixpkgs, flake-utils, pre-commit-hooks, botocore }:
    flake-utils.lib.eachDefaultSystem (system:
      let

        pre-commit = pre-commit-hooks.lib.${system}.run {
          src = self;
          hooks = {
            cabal-fmt.enable = true;
            nixpkgs-fmt.enable = true;
            ormolu.enable = true;
            shellcheck.enable = true;
            shfmt.enable = true;
          };
        };

        pkgs = import nixpkgs {
          inherit system;
          config.allowBroken = true;
        };

        # The ghc compiler version patch level will be the latest that is available in nixpkgs.
        ghc810 = pkgs.haskell.packages."ghc810";
        ghc90 = pkgs.haskell.packages."ghc90";
        ghc92 = pkgs.haskell.packages."ghc92";
        ghc94 = pkgs.haskell.packages."ghc94";
        ghc96 = pkgs.haskell.packages."ghc96";

        # The default ghc to use when entering `nix develop` and building amazonka-gen.
        ghcDefault = ghc94;

        renameVersion = version: "ghc" + (pkgs.lib.replaceStrings [ "." ] [ "" ] version);

        mkDevShell = hsPkgs: pkgs.mkShell {
          name = "amazonka-${renameVersion hsPkgs.ghc.version}";

          buildInputs = [
            # Haskell Toolchain
            hsPkgs.ghc
            pkgs.cabal-install

            # Package Dependencies
            pkgs.gmp
            pkgs.ncurses
            pkgs.zlib

            # Development Tools
            pkgs.haskell-language-server
            pkgs.hlint
            pkgs.nixpkgs-fmt
            pkgs.ormolu
            pkgs.parallel
          ];

          shellHook = pre-commit.shellHook + ''
            export BOTOCORE=${botocore.outPath}
            echo "botocore: $BOTOCORE"
          '';
        };

        amazonka-gen =
          ghcDefault.developPackage {
            root = ./gen;
            overrides = _hsFinal: hsPrev: {
              ede = pkgs.haskell.lib.dontCheck (pkgs.haskell.lib.dontHaddock hsPrev.ede);
              pandoc = pkgs.haskell.lib.dontHaddock hsPrev.pandoc;
              string-qq = pkgs.haskell.lib.dontCheck hsPrev.string-qq;
            };
          };

      in
      {
        apps = {
          gen = {
            type = "app";
            program = "${amazonka-gen}/bin/gen";
          };

          gen-configs = {
            type = "app";
            program = "${amazonka-gen}/bin/gen-configs";
          };
        };

        checks = {
          inherit pre-commit;
        };

        packages = {
          default = amazonka-gen;
        };

        devShells = {
          ghc810 = mkDevShell ghc810;
          ghc90 = mkDevShell ghc90;
          ghc92 = mkDevShell ghc92;
          ghc94 = mkDevShell ghc94;
          ghc96 = mkDevShell ghc96;
          default = mkDevShell ghcDefault;
        };
      });
}