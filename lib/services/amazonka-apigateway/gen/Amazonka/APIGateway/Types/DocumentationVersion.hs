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
-- Module      : Amazonka.APIGateway.Types.DocumentationVersion
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.APIGateway.Types.DocumentationVersion where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | A snapshot of the documentation of an API.
--
-- /See:/ 'newDocumentationVersion' smart constructor.
data DocumentationVersion = DocumentationVersion'
  { -- | The description of the API documentation snapshot.
    description :: Prelude.Maybe Prelude.Text,
    -- | The date when the API documentation snapshot is created.
    createdDate :: Prelude.Maybe Core.POSIX,
    -- | The version identifier of the API documentation snapshot.
    version :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DocumentationVersion' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'description', 'documentationVersion_description' - The description of the API documentation snapshot.
--
-- 'createdDate', 'documentationVersion_createdDate' - The date when the API documentation snapshot is created.
--
-- 'version', 'documentationVersion_version' - The version identifier of the API documentation snapshot.
newDocumentationVersion ::
  DocumentationVersion
newDocumentationVersion =
  DocumentationVersion'
    { description =
        Prelude.Nothing,
      createdDate = Prelude.Nothing,
      version = Prelude.Nothing
    }

-- | The description of the API documentation snapshot.
documentationVersion_description :: Lens.Lens' DocumentationVersion (Prelude.Maybe Prelude.Text)
documentationVersion_description = Lens.lens (\DocumentationVersion' {description} -> description) (\s@DocumentationVersion' {} a -> s {description = a} :: DocumentationVersion)

-- | The date when the API documentation snapshot is created.
documentationVersion_createdDate :: Lens.Lens' DocumentationVersion (Prelude.Maybe Prelude.UTCTime)
documentationVersion_createdDate = Lens.lens (\DocumentationVersion' {createdDate} -> createdDate) (\s@DocumentationVersion' {} a -> s {createdDate = a} :: DocumentationVersion) Prelude.. Lens.mapping Core._Time

-- | The version identifier of the API documentation snapshot.
documentationVersion_version :: Lens.Lens' DocumentationVersion (Prelude.Maybe Prelude.Text)
documentationVersion_version = Lens.lens (\DocumentationVersion' {version} -> version) (\s@DocumentationVersion' {} a -> s {version = a} :: DocumentationVersion)

instance Core.FromJSON DocumentationVersion where
  parseJSON =
    Core.withObject
      "DocumentationVersion"
      ( \x ->
          DocumentationVersion'
            Prelude.<$> (x Core..:? "description")
            Prelude.<*> (x Core..:? "createdDate")
            Prelude.<*> (x Core..:? "version")
      )

instance Prelude.Hashable DocumentationVersion where
  hashWithSalt _salt DocumentationVersion' {..} =
    _salt `Prelude.hashWithSalt` description
      `Prelude.hashWithSalt` createdDate
      `Prelude.hashWithSalt` version

instance Prelude.NFData DocumentationVersion where
  rnf DocumentationVersion' {..} =
    Prelude.rnf description
      `Prelude.seq` Prelude.rnf createdDate
      `Prelude.seq` Prelude.rnf version
