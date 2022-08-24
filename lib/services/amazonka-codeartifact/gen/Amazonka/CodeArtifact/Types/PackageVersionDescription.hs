{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE NamedFieldPuns #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Amazonka.CodeArtifact.Types.PackageVersionDescription
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.CodeArtifact.Types.PackageVersionDescription where

import Amazonka.CodeArtifact.Types.LicenseInfo
import Amazonka.CodeArtifact.Types.PackageFormat
import Amazonka.CodeArtifact.Types.PackageVersionOrigin
import Amazonka.CodeArtifact.Types.PackageVersionStatus
import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | Details about a package version.
--
-- /See:/ 'newPackageVersionDescription' smart constructor.
data PackageVersionDescription = PackageVersionDescription'
  { -- | A timestamp that contains the date and time the package version was
    -- published.
    publishedTime :: Prelude.Maybe Core.POSIX,
    -- | The homepage associated with the package.
    homePage :: Prelude.Maybe Prelude.Text,
    -- | The name of the requested package.
    packageName :: Prelude.Maybe Prelude.Text,
    -- | The format of the package version.
    format :: Prelude.Maybe PackageFormat,
    -- | The revision of the package version.
    revision :: Prelude.Maybe Prelude.Text,
    -- | The name of the package that is displayed. The @displayName@ varies
    -- depending on the package version\'s format. For example, if an npm
    -- package is named @ui@, is in the namespace @vue@, and has the format
    -- @npm@, then the @displayName@ is @\@vue\/ui@.
    displayName :: Prelude.Maybe Prelude.Text,
    -- | A summary of the package version. The summary is extracted from the
    -- package. The information in and detail level of the summary depends on
    -- the package version\'s format.
    summary :: Prelude.Maybe Prelude.Text,
    -- | A string that contains the status of the package version.
    status :: Prelude.Maybe PackageVersionStatus,
    -- | The repository for the source code in the package version, or the source
    -- code used to build it.
    sourceCodeRepository :: Prelude.Maybe Prelude.Text,
    -- | The namespace of the package version. The package version component that
    -- specifies its namespace depends on its type. For example:
    --
    -- -   The namespace of a Maven package version is its @groupId@.
    --
    -- -   The namespace of an npm package version is its @scope@.
    --
    -- -   Python and NuGet package versions do not contain a corresponding
    --     component, package versions of those formats do not have a
    --     namespace.
    namespace :: Prelude.Maybe Prelude.Text,
    -- | A
    -- <https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_PackageVersionOrigin.html PackageVersionOrigin>
    -- object that contains information about how the package version was added
    -- to the repository.
    origin :: Prelude.Maybe PackageVersionOrigin,
    -- | The version of the package.
    version :: Prelude.Maybe Prelude.Text,
    -- | Information about licenses associated with the package version.
    licenses :: Prelude.Maybe [LicenseInfo]
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'PackageVersionDescription' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'publishedTime', 'packageVersionDescription_publishedTime' - A timestamp that contains the date and time the package version was
-- published.
--
-- 'homePage', 'packageVersionDescription_homePage' - The homepage associated with the package.
--
-- 'packageName', 'packageVersionDescription_packageName' - The name of the requested package.
--
-- 'format', 'packageVersionDescription_format' - The format of the package version.
--
-- 'revision', 'packageVersionDescription_revision' - The revision of the package version.
--
-- 'displayName', 'packageVersionDescription_displayName' - The name of the package that is displayed. The @displayName@ varies
-- depending on the package version\'s format. For example, if an npm
-- package is named @ui@, is in the namespace @vue@, and has the format
-- @npm@, then the @displayName@ is @\@vue\/ui@.
--
-- 'summary', 'packageVersionDescription_summary' - A summary of the package version. The summary is extracted from the
-- package. The information in and detail level of the summary depends on
-- the package version\'s format.
--
-- 'status', 'packageVersionDescription_status' - A string that contains the status of the package version.
--
-- 'sourceCodeRepository', 'packageVersionDescription_sourceCodeRepository' - The repository for the source code in the package version, or the source
-- code used to build it.
--
-- 'namespace', 'packageVersionDescription_namespace' - The namespace of the package version. The package version component that
-- specifies its namespace depends on its type. For example:
--
-- -   The namespace of a Maven package version is its @groupId@.
--
-- -   The namespace of an npm package version is its @scope@.
--
-- -   Python and NuGet package versions do not contain a corresponding
--     component, package versions of those formats do not have a
--     namespace.
--
-- 'origin', 'packageVersionDescription_origin' - A
-- <https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_PackageVersionOrigin.html PackageVersionOrigin>
-- object that contains information about how the package version was added
-- to the repository.
--
-- 'version', 'packageVersionDescription_version' - The version of the package.
--
-- 'licenses', 'packageVersionDescription_licenses' - Information about licenses associated with the package version.
newPackageVersionDescription ::
  PackageVersionDescription
newPackageVersionDescription =
  PackageVersionDescription'
    { publishedTime =
        Prelude.Nothing,
      homePage = Prelude.Nothing,
      packageName = Prelude.Nothing,
      format = Prelude.Nothing,
      revision = Prelude.Nothing,
      displayName = Prelude.Nothing,
      summary = Prelude.Nothing,
      status = Prelude.Nothing,
      sourceCodeRepository = Prelude.Nothing,
      namespace = Prelude.Nothing,
      origin = Prelude.Nothing,
      version = Prelude.Nothing,
      licenses = Prelude.Nothing
    }

-- | A timestamp that contains the date and time the package version was
-- published.
packageVersionDescription_publishedTime :: Lens.Lens' PackageVersionDescription (Prelude.Maybe Prelude.UTCTime)
packageVersionDescription_publishedTime = Lens.lens (\PackageVersionDescription' {publishedTime} -> publishedTime) (\s@PackageVersionDescription' {} a -> s {publishedTime = a} :: PackageVersionDescription) Prelude.. Lens.mapping Core._Time

-- | The homepage associated with the package.
packageVersionDescription_homePage :: Lens.Lens' PackageVersionDescription (Prelude.Maybe Prelude.Text)
packageVersionDescription_homePage = Lens.lens (\PackageVersionDescription' {homePage} -> homePage) (\s@PackageVersionDescription' {} a -> s {homePage = a} :: PackageVersionDescription)

-- | The name of the requested package.
packageVersionDescription_packageName :: Lens.Lens' PackageVersionDescription (Prelude.Maybe Prelude.Text)
packageVersionDescription_packageName = Lens.lens (\PackageVersionDescription' {packageName} -> packageName) (\s@PackageVersionDescription' {} a -> s {packageName = a} :: PackageVersionDescription)

-- | The format of the package version.
packageVersionDescription_format :: Lens.Lens' PackageVersionDescription (Prelude.Maybe PackageFormat)
packageVersionDescription_format = Lens.lens (\PackageVersionDescription' {format} -> format) (\s@PackageVersionDescription' {} a -> s {format = a} :: PackageVersionDescription)

-- | The revision of the package version.
packageVersionDescription_revision :: Lens.Lens' PackageVersionDescription (Prelude.Maybe Prelude.Text)
packageVersionDescription_revision = Lens.lens (\PackageVersionDescription' {revision} -> revision) (\s@PackageVersionDescription' {} a -> s {revision = a} :: PackageVersionDescription)

-- | The name of the package that is displayed. The @displayName@ varies
-- depending on the package version\'s format. For example, if an npm
-- package is named @ui@, is in the namespace @vue@, and has the format
-- @npm@, then the @displayName@ is @\@vue\/ui@.
packageVersionDescription_displayName :: Lens.Lens' PackageVersionDescription (Prelude.Maybe Prelude.Text)
packageVersionDescription_displayName = Lens.lens (\PackageVersionDescription' {displayName} -> displayName) (\s@PackageVersionDescription' {} a -> s {displayName = a} :: PackageVersionDescription)

-- | A summary of the package version. The summary is extracted from the
-- package. The information in and detail level of the summary depends on
-- the package version\'s format.
packageVersionDescription_summary :: Lens.Lens' PackageVersionDescription (Prelude.Maybe Prelude.Text)
packageVersionDescription_summary = Lens.lens (\PackageVersionDescription' {summary} -> summary) (\s@PackageVersionDescription' {} a -> s {summary = a} :: PackageVersionDescription)

-- | A string that contains the status of the package version.
packageVersionDescription_status :: Lens.Lens' PackageVersionDescription (Prelude.Maybe PackageVersionStatus)
packageVersionDescription_status = Lens.lens (\PackageVersionDescription' {status} -> status) (\s@PackageVersionDescription' {} a -> s {status = a} :: PackageVersionDescription)

-- | The repository for the source code in the package version, or the source
-- code used to build it.
packageVersionDescription_sourceCodeRepository :: Lens.Lens' PackageVersionDescription (Prelude.Maybe Prelude.Text)
packageVersionDescription_sourceCodeRepository = Lens.lens (\PackageVersionDescription' {sourceCodeRepository} -> sourceCodeRepository) (\s@PackageVersionDescription' {} a -> s {sourceCodeRepository = a} :: PackageVersionDescription)

-- | The namespace of the package version. The package version component that
-- specifies its namespace depends on its type. For example:
--
-- -   The namespace of a Maven package version is its @groupId@.
--
-- -   The namespace of an npm package version is its @scope@.
--
-- -   Python and NuGet package versions do not contain a corresponding
--     component, package versions of those formats do not have a
--     namespace.
packageVersionDescription_namespace :: Lens.Lens' PackageVersionDescription (Prelude.Maybe Prelude.Text)
packageVersionDescription_namespace = Lens.lens (\PackageVersionDescription' {namespace} -> namespace) (\s@PackageVersionDescription' {} a -> s {namespace = a} :: PackageVersionDescription)

-- | A
-- <https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_PackageVersionOrigin.html PackageVersionOrigin>
-- object that contains information about how the package version was added
-- to the repository.
packageVersionDescription_origin :: Lens.Lens' PackageVersionDescription (Prelude.Maybe PackageVersionOrigin)
packageVersionDescription_origin = Lens.lens (\PackageVersionDescription' {origin} -> origin) (\s@PackageVersionDescription' {} a -> s {origin = a} :: PackageVersionDescription)

-- | The version of the package.
packageVersionDescription_version :: Lens.Lens' PackageVersionDescription (Prelude.Maybe Prelude.Text)
packageVersionDescription_version = Lens.lens (\PackageVersionDescription' {version} -> version) (\s@PackageVersionDescription' {} a -> s {version = a} :: PackageVersionDescription)

-- | Information about licenses associated with the package version.
packageVersionDescription_licenses :: Lens.Lens' PackageVersionDescription (Prelude.Maybe [LicenseInfo])
packageVersionDescription_licenses = Lens.lens (\PackageVersionDescription' {licenses} -> licenses) (\s@PackageVersionDescription' {} a -> s {licenses = a} :: PackageVersionDescription) Prelude.. Lens.mapping Lens.coerced

instance Core.FromJSON PackageVersionDescription where
  parseJSON =
    Core.withObject
      "PackageVersionDescription"
      ( \x ->
          PackageVersionDescription'
            Prelude.<$> (x Core..:? "publishedTime")
            Prelude.<*> (x Core..:? "homePage")
            Prelude.<*> (x Core..:? "packageName")
            Prelude.<*> (x Core..:? "format")
            Prelude.<*> (x Core..:? "revision")
            Prelude.<*> (x Core..:? "displayName")
            Prelude.<*> (x Core..:? "summary")
            Prelude.<*> (x Core..:? "status")
            Prelude.<*> (x Core..:? "sourceCodeRepository")
            Prelude.<*> (x Core..:? "namespace")
            Prelude.<*> (x Core..:? "origin")
            Prelude.<*> (x Core..:? "version")
            Prelude.<*> (x Core..:? "licenses" Core..!= Prelude.mempty)
      )

instance Prelude.Hashable PackageVersionDescription where
  hashWithSalt _salt PackageVersionDescription' {..} =
    _salt `Prelude.hashWithSalt` publishedTime
      `Prelude.hashWithSalt` homePage
      `Prelude.hashWithSalt` packageName
      `Prelude.hashWithSalt` format
      `Prelude.hashWithSalt` revision
      `Prelude.hashWithSalt` displayName
      `Prelude.hashWithSalt` summary
      `Prelude.hashWithSalt` status
      `Prelude.hashWithSalt` sourceCodeRepository
      `Prelude.hashWithSalt` namespace
      `Prelude.hashWithSalt` origin
      `Prelude.hashWithSalt` version
      `Prelude.hashWithSalt` licenses

instance Prelude.NFData PackageVersionDescription where
  rnf PackageVersionDescription' {..} =
    Prelude.rnf publishedTime
      `Prelude.seq` Prelude.rnf homePage
      `Prelude.seq` Prelude.rnf packageName
      `Prelude.seq` Prelude.rnf format
      `Prelude.seq` Prelude.rnf revision
      `Prelude.seq` Prelude.rnf displayName
      `Prelude.seq` Prelude.rnf summary
      `Prelude.seq` Prelude.rnf status
      `Prelude.seq` Prelude.rnf sourceCodeRepository
      `Prelude.seq` Prelude.rnf namespace
      `Prelude.seq` Prelude.rnf origin
      `Prelude.seq` Prelude.rnf version
      `Prelude.seq` Prelude.rnf licenses
