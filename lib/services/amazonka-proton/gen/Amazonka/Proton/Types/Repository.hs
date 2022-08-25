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
-- Module      : Amazonka.Proton.Types.Repository
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.Proton.Types.Repository where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import Amazonka.Proton.Types.RepositoryProvider

-- | Detailed data of a repository that has been registered with Proton.
--
-- /See:/ 'newRepository' smart constructor.
data Repository = Repository'
  { -- | Your customer Amazon Web Services KMS encryption key.
    encryptionKey :: Prelude.Maybe Prelude.Text,
    -- | The repository Amazon Resource Name (ARN).
    arn :: Prelude.Text,
    -- | The repository Amazon Web Services CodeStar connection that connects
    -- Proton to your repository.
    connectionArn :: Prelude.Text,
    -- | The repository name.
    name :: Prelude.Text,
    -- | The repository provider.
    provider :: RepositoryProvider
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'Repository' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'encryptionKey', 'repository_encryptionKey' - Your customer Amazon Web Services KMS encryption key.
--
-- 'arn', 'repository_arn' - The repository Amazon Resource Name (ARN).
--
-- 'connectionArn', 'repository_connectionArn' - The repository Amazon Web Services CodeStar connection that connects
-- Proton to your repository.
--
-- 'name', 'repository_name' - The repository name.
--
-- 'provider', 'repository_provider' - The repository provider.
newRepository ::
  -- | 'arn'
  Prelude.Text ->
  -- | 'connectionArn'
  Prelude.Text ->
  -- | 'name'
  Prelude.Text ->
  -- | 'provider'
  RepositoryProvider ->
  Repository
newRepository pArn_ pConnectionArn_ pName_ pProvider_ =
  Repository'
    { encryptionKey = Prelude.Nothing,
      arn = pArn_,
      connectionArn = pConnectionArn_,
      name = pName_,
      provider = pProvider_
    }

-- | Your customer Amazon Web Services KMS encryption key.
repository_encryptionKey :: Lens.Lens' Repository (Prelude.Maybe Prelude.Text)
repository_encryptionKey = Lens.lens (\Repository' {encryptionKey} -> encryptionKey) (\s@Repository' {} a -> s {encryptionKey = a} :: Repository)

-- | The repository Amazon Resource Name (ARN).
repository_arn :: Lens.Lens' Repository Prelude.Text
repository_arn = Lens.lens (\Repository' {arn} -> arn) (\s@Repository' {} a -> s {arn = a} :: Repository)

-- | The repository Amazon Web Services CodeStar connection that connects
-- Proton to your repository.
repository_connectionArn :: Lens.Lens' Repository Prelude.Text
repository_connectionArn = Lens.lens (\Repository' {connectionArn} -> connectionArn) (\s@Repository' {} a -> s {connectionArn = a} :: Repository)

-- | The repository name.
repository_name :: Lens.Lens' Repository Prelude.Text
repository_name = Lens.lens (\Repository' {name} -> name) (\s@Repository' {} a -> s {name = a} :: Repository)

-- | The repository provider.
repository_provider :: Lens.Lens' Repository RepositoryProvider
repository_provider = Lens.lens (\Repository' {provider} -> provider) (\s@Repository' {} a -> s {provider = a} :: Repository)

instance Core.FromJSON Repository where
  parseJSON =
    Core.withObject
      "Repository"
      ( \x ->
          Repository'
            Prelude.<$> (x Core..:? "encryptionKey")
            Prelude.<*> (x Core..: "arn")
            Prelude.<*> (x Core..: "connectionArn")
            Prelude.<*> (x Core..: "name")
            Prelude.<*> (x Core..: "provider")
      )

instance Prelude.Hashable Repository where
  hashWithSalt _salt Repository' {..} =
    _salt `Prelude.hashWithSalt` encryptionKey
      `Prelude.hashWithSalt` arn
      `Prelude.hashWithSalt` connectionArn
      `Prelude.hashWithSalt` name
      `Prelude.hashWithSalt` provider

instance Prelude.NFData Repository where
  rnf Repository' {..} =
    Prelude.rnf encryptionKey
      `Prelude.seq` Prelude.rnf arn
      `Prelude.seq` Prelude.rnf connectionArn
      `Prelude.seq` Prelude.rnf name
      `Prelude.seq` Prelude.rnf provider
