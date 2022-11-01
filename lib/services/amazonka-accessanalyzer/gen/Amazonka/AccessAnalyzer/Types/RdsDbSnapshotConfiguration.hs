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
-- Module      : Amazonka.AccessAnalyzer.Types.RdsDbSnapshotConfiguration
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.AccessAnalyzer.Types.RdsDbSnapshotConfiguration where

import Amazonka.AccessAnalyzer.Types.RdsDbSnapshotAttributeValue
import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | The proposed access control configuration for an Amazon RDS DB snapshot.
-- You can propose a configuration for a new Amazon RDS DB snapshot or an
-- Amazon RDS DB snapshot that you own by specifying the
-- @RdsDbSnapshotAttributeValue@ and optional KMS encryption key. For more
-- information, see
-- <https://docs.aws.amazon.com/AmazonRDS/latest/APIReference/API_ModifyDBSnapshotAttribute.html ModifyDBSnapshotAttribute>.
--
-- /See:/ 'newRdsDbSnapshotConfiguration' smart constructor.
data RdsDbSnapshotConfiguration = RdsDbSnapshotConfiguration'
  { -- | The KMS key identifier for an encrypted Amazon RDS DB snapshot. The KMS
    -- key identifier is the key ARN, key ID, alias ARN, or alias name for the
    -- KMS key.
    --
    -- -   If the configuration is for an existing Amazon RDS DB snapshot and
    --     you do not specify the @kmsKeyId@, or you specify an empty string,
    --     then the access preview uses the existing @kmsKeyId@ of the
    --     snapshot.
    --
    -- -   If the access preview is for a new resource and you do not specify
    --     the specify the @kmsKeyId@, then the access preview considers the
    --     snapshot as unencrypted.
    kmsKeyId :: Prelude.Maybe Prelude.Text,
    -- | The names and values of manual DB snapshot attributes. Manual DB
    -- snapshot attributes are used to authorize other Amazon Web Services
    -- accounts to restore a manual DB snapshot. The only valid value for
    -- @attributeName@ for the attribute map is restore.
    attributes :: Prelude.Maybe (Prelude.HashMap Prelude.Text RdsDbSnapshotAttributeValue)
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'RdsDbSnapshotConfiguration' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'kmsKeyId', 'rdsDbSnapshotConfiguration_kmsKeyId' - The KMS key identifier for an encrypted Amazon RDS DB snapshot. The KMS
-- key identifier is the key ARN, key ID, alias ARN, or alias name for the
-- KMS key.
--
-- -   If the configuration is for an existing Amazon RDS DB snapshot and
--     you do not specify the @kmsKeyId@, or you specify an empty string,
--     then the access preview uses the existing @kmsKeyId@ of the
--     snapshot.
--
-- -   If the access preview is for a new resource and you do not specify
--     the specify the @kmsKeyId@, then the access preview considers the
--     snapshot as unencrypted.
--
-- 'attributes', 'rdsDbSnapshotConfiguration_attributes' - The names and values of manual DB snapshot attributes. Manual DB
-- snapshot attributes are used to authorize other Amazon Web Services
-- accounts to restore a manual DB snapshot. The only valid value for
-- @attributeName@ for the attribute map is restore.
newRdsDbSnapshotConfiguration ::
  RdsDbSnapshotConfiguration
newRdsDbSnapshotConfiguration =
  RdsDbSnapshotConfiguration'
    { kmsKeyId =
        Prelude.Nothing,
      attributes = Prelude.Nothing
    }

-- | The KMS key identifier for an encrypted Amazon RDS DB snapshot. The KMS
-- key identifier is the key ARN, key ID, alias ARN, or alias name for the
-- KMS key.
--
-- -   If the configuration is for an existing Amazon RDS DB snapshot and
--     you do not specify the @kmsKeyId@, or you specify an empty string,
--     then the access preview uses the existing @kmsKeyId@ of the
--     snapshot.
--
-- -   If the access preview is for a new resource and you do not specify
--     the specify the @kmsKeyId@, then the access preview considers the
--     snapshot as unencrypted.
rdsDbSnapshotConfiguration_kmsKeyId :: Lens.Lens' RdsDbSnapshotConfiguration (Prelude.Maybe Prelude.Text)
rdsDbSnapshotConfiguration_kmsKeyId = Lens.lens (\RdsDbSnapshotConfiguration' {kmsKeyId} -> kmsKeyId) (\s@RdsDbSnapshotConfiguration' {} a -> s {kmsKeyId = a} :: RdsDbSnapshotConfiguration)

-- | The names and values of manual DB snapshot attributes. Manual DB
-- snapshot attributes are used to authorize other Amazon Web Services
-- accounts to restore a manual DB snapshot. The only valid value for
-- @attributeName@ for the attribute map is restore.
rdsDbSnapshotConfiguration_attributes :: Lens.Lens' RdsDbSnapshotConfiguration (Prelude.Maybe (Prelude.HashMap Prelude.Text RdsDbSnapshotAttributeValue))
rdsDbSnapshotConfiguration_attributes = Lens.lens (\RdsDbSnapshotConfiguration' {attributes} -> attributes) (\s@RdsDbSnapshotConfiguration' {} a -> s {attributes = a} :: RdsDbSnapshotConfiguration) Prelude.. Lens.mapping Lens.coerced

instance Core.FromJSON RdsDbSnapshotConfiguration where
  parseJSON =
    Core.withObject
      "RdsDbSnapshotConfiguration"
      ( \x ->
          RdsDbSnapshotConfiguration'
            Prelude.<$> (x Core..:? "kmsKeyId")
            Prelude.<*> (x Core..:? "attributes" Core..!= Prelude.mempty)
      )

instance Prelude.Hashable RdsDbSnapshotConfiguration where
  hashWithSalt _salt RdsDbSnapshotConfiguration' {..} =
    _salt `Prelude.hashWithSalt` kmsKeyId
      `Prelude.hashWithSalt` attributes

instance Prelude.NFData RdsDbSnapshotConfiguration where
  rnf RdsDbSnapshotConfiguration' {..} =
    Prelude.rnf kmsKeyId
      `Prelude.seq` Prelude.rnf attributes

instance Core.ToJSON RdsDbSnapshotConfiguration where
  toJSON RdsDbSnapshotConfiguration' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("kmsKeyId" Core..=) Prelude.<$> kmsKeyId,
            ("attributes" Core..=) Prelude.<$> attributes
          ]
      )
