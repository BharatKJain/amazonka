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
-- Module      : Amazonka.Glue.Types.SchemaVersionListItem
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.Glue.Types.SchemaVersionListItem where

import qualified Amazonka.Core as Core
import Amazonka.Glue.Types.SchemaVersionStatus
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | An object containing the details about a schema version.
--
-- /See:/ 'newSchemaVersionListItem' smart constructor.
data SchemaVersionListItem = SchemaVersionListItem'
  { -- | The date and time the schema version was created.
    createdTime :: Prelude.Maybe Prelude.Text,
    -- | The status of the schema version.
    status :: Prelude.Maybe SchemaVersionStatus,
    -- | The Amazon Resource Name (ARN) of the schema.
    schemaArn :: Prelude.Maybe Prelude.Text,
    -- | The version number of the schema.
    versionNumber :: Prelude.Maybe Prelude.Natural,
    -- | The unique identifier of the schema version.
    schemaVersionId :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'SchemaVersionListItem' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'createdTime', 'schemaVersionListItem_createdTime' - The date and time the schema version was created.
--
-- 'status', 'schemaVersionListItem_status' - The status of the schema version.
--
-- 'schemaArn', 'schemaVersionListItem_schemaArn' - The Amazon Resource Name (ARN) of the schema.
--
-- 'versionNumber', 'schemaVersionListItem_versionNumber' - The version number of the schema.
--
-- 'schemaVersionId', 'schemaVersionListItem_schemaVersionId' - The unique identifier of the schema version.
newSchemaVersionListItem ::
  SchemaVersionListItem
newSchemaVersionListItem =
  SchemaVersionListItem'
    { createdTime =
        Prelude.Nothing,
      status = Prelude.Nothing,
      schemaArn = Prelude.Nothing,
      versionNumber = Prelude.Nothing,
      schemaVersionId = Prelude.Nothing
    }

-- | The date and time the schema version was created.
schemaVersionListItem_createdTime :: Lens.Lens' SchemaVersionListItem (Prelude.Maybe Prelude.Text)
schemaVersionListItem_createdTime = Lens.lens (\SchemaVersionListItem' {createdTime} -> createdTime) (\s@SchemaVersionListItem' {} a -> s {createdTime = a} :: SchemaVersionListItem)

-- | The status of the schema version.
schemaVersionListItem_status :: Lens.Lens' SchemaVersionListItem (Prelude.Maybe SchemaVersionStatus)
schemaVersionListItem_status = Lens.lens (\SchemaVersionListItem' {status} -> status) (\s@SchemaVersionListItem' {} a -> s {status = a} :: SchemaVersionListItem)

-- | The Amazon Resource Name (ARN) of the schema.
schemaVersionListItem_schemaArn :: Lens.Lens' SchemaVersionListItem (Prelude.Maybe Prelude.Text)
schemaVersionListItem_schemaArn = Lens.lens (\SchemaVersionListItem' {schemaArn} -> schemaArn) (\s@SchemaVersionListItem' {} a -> s {schemaArn = a} :: SchemaVersionListItem)

-- | The version number of the schema.
schemaVersionListItem_versionNumber :: Lens.Lens' SchemaVersionListItem (Prelude.Maybe Prelude.Natural)
schemaVersionListItem_versionNumber = Lens.lens (\SchemaVersionListItem' {versionNumber} -> versionNumber) (\s@SchemaVersionListItem' {} a -> s {versionNumber = a} :: SchemaVersionListItem)

-- | The unique identifier of the schema version.
schemaVersionListItem_schemaVersionId :: Lens.Lens' SchemaVersionListItem (Prelude.Maybe Prelude.Text)
schemaVersionListItem_schemaVersionId = Lens.lens (\SchemaVersionListItem' {schemaVersionId} -> schemaVersionId) (\s@SchemaVersionListItem' {} a -> s {schemaVersionId = a} :: SchemaVersionListItem)

instance Core.FromJSON SchemaVersionListItem where
  parseJSON =
    Core.withObject
      "SchemaVersionListItem"
      ( \x ->
          SchemaVersionListItem'
            Prelude.<$> (x Core..:? "CreatedTime")
            Prelude.<*> (x Core..:? "Status")
            Prelude.<*> (x Core..:? "SchemaArn")
            Prelude.<*> (x Core..:? "VersionNumber")
            Prelude.<*> (x Core..:? "SchemaVersionId")
      )

instance Prelude.Hashable SchemaVersionListItem where
  hashWithSalt _salt SchemaVersionListItem' {..} =
    _salt `Prelude.hashWithSalt` createdTime
      `Prelude.hashWithSalt` status
      `Prelude.hashWithSalt` schemaArn
      `Prelude.hashWithSalt` versionNumber
      `Prelude.hashWithSalt` schemaVersionId

instance Prelude.NFData SchemaVersionListItem where
  rnf SchemaVersionListItem' {..} =
    Prelude.rnf createdTime
      `Prelude.seq` Prelude.rnf status
      `Prelude.seq` Prelude.rnf schemaArn
      `Prelude.seq` Prelude.rnf versionNumber
      `Prelude.seq` Prelude.rnf schemaVersionId
