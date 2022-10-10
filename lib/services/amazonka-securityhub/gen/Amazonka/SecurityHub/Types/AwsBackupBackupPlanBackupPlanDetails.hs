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
-- Module      : Amazonka.SecurityHub.Types.AwsBackupBackupPlanBackupPlanDetails
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.SecurityHub.Types.AwsBackupBackupPlanBackupPlanDetails where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import Amazonka.SecurityHub.Types.AwsBackupBackupPlanAdvancedBackupSettingsDetails
import Amazonka.SecurityHub.Types.AwsBackupBackupPlanRuleDetails

-- | Provides details about an Backup backup plan and an array of
-- @BackupRule@ objects, each of which specifies a backup rule.
--
-- /See:/ 'newAwsBackupBackupPlanBackupPlanDetails' smart constructor.
data AwsBackupBackupPlanBackupPlanDetails = AwsBackupBackupPlanBackupPlanDetails'
  { -- | The display name of a backup plan.
    backupPlanName :: Prelude.Maybe Prelude.Text,
    -- | An array of @BackupRule@ objects, each of which specifies a scheduled
    -- task that is used to back up a selection of resources.
    backupPlanRule :: Prelude.Maybe [AwsBackupBackupPlanRuleDetails],
    -- | A list of backup options for each resource type.
    advancedBackupSettings :: Prelude.Maybe [AwsBackupBackupPlanAdvancedBackupSettingsDetails]
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'AwsBackupBackupPlanBackupPlanDetails' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'backupPlanName', 'awsBackupBackupPlanBackupPlanDetails_backupPlanName' - The display name of a backup plan.
--
-- 'backupPlanRule', 'awsBackupBackupPlanBackupPlanDetails_backupPlanRule' - An array of @BackupRule@ objects, each of which specifies a scheduled
-- task that is used to back up a selection of resources.
--
-- 'advancedBackupSettings', 'awsBackupBackupPlanBackupPlanDetails_advancedBackupSettings' - A list of backup options for each resource type.
newAwsBackupBackupPlanBackupPlanDetails ::
  AwsBackupBackupPlanBackupPlanDetails
newAwsBackupBackupPlanBackupPlanDetails =
  AwsBackupBackupPlanBackupPlanDetails'
    { backupPlanName =
        Prelude.Nothing,
      backupPlanRule = Prelude.Nothing,
      advancedBackupSettings =
        Prelude.Nothing
    }

-- | The display name of a backup plan.
awsBackupBackupPlanBackupPlanDetails_backupPlanName :: Lens.Lens' AwsBackupBackupPlanBackupPlanDetails (Prelude.Maybe Prelude.Text)
awsBackupBackupPlanBackupPlanDetails_backupPlanName = Lens.lens (\AwsBackupBackupPlanBackupPlanDetails' {backupPlanName} -> backupPlanName) (\s@AwsBackupBackupPlanBackupPlanDetails' {} a -> s {backupPlanName = a} :: AwsBackupBackupPlanBackupPlanDetails)

-- | An array of @BackupRule@ objects, each of which specifies a scheduled
-- task that is used to back up a selection of resources.
awsBackupBackupPlanBackupPlanDetails_backupPlanRule :: Lens.Lens' AwsBackupBackupPlanBackupPlanDetails (Prelude.Maybe [AwsBackupBackupPlanRuleDetails])
awsBackupBackupPlanBackupPlanDetails_backupPlanRule = Lens.lens (\AwsBackupBackupPlanBackupPlanDetails' {backupPlanRule} -> backupPlanRule) (\s@AwsBackupBackupPlanBackupPlanDetails' {} a -> s {backupPlanRule = a} :: AwsBackupBackupPlanBackupPlanDetails) Prelude.. Lens.mapping Lens.coerced

-- | A list of backup options for each resource type.
awsBackupBackupPlanBackupPlanDetails_advancedBackupSettings :: Lens.Lens' AwsBackupBackupPlanBackupPlanDetails (Prelude.Maybe [AwsBackupBackupPlanAdvancedBackupSettingsDetails])
awsBackupBackupPlanBackupPlanDetails_advancedBackupSettings = Lens.lens (\AwsBackupBackupPlanBackupPlanDetails' {advancedBackupSettings} -> advancedBackupSettings) (\s@AwsBackupBackupPlanBackupPlanDetails' {} a -> s {advancedBackupSettings = a} :: AwsBackupBackupPlanBackupPlanDetails) Prelude.. Lens.mapping Lens.coerced

instance
  Core.FromJSON
    AwsBackupBackupPlanBackupPlanDetails
  where
  parseJSON =
    Core.withObject
      "AwsBackupBackupPlanBackupPlanDetails"
      ( \x ->
          AwsBackupBackupPlanBackupPlanDetails'
            Prelude.<$> (x Core..:? "BackupPlanName")
            Prelude.<*> (x Core..:? "BackupPlanRule" Core..!= Prelude.mempty)
            Prelude.<*> ( x Core..:? "AdvancedBackupSettings"
                            Core..!= Prelude.mempty
                        )
      )

instance
  Prelude.Hashable
    AwsBackupBackupPlanBackupPlanDetails
  where
  hashWithSalt
    _salt
    AwsBackupBackupPlanBackupPlanDetails' {..} =
      _salt `Prelude.hashWithSalt` backupPlanName
        `Prelude.hashWithSalt` backupPlanRule
        `Prelude.hashWithSalt` advancedBackupSettings

instance
  Prelude.NFData
    AwsBackupBackupPlanBackupPlanDetails
  where
  rnf AwsBackupBackupPlanBackupPlanDetails' {..} =
    Prelude.rnf backupPlanName
      `Prelude.seq` Prelude.rnf backupPlanRule
      `Prelude.seq` Prelude.rnf advancedBackupSettings

instance
  Core.ToJSON
    AwsBackupBackupPlanBackupPlanDetails
  where
  toJSON AwsBackupBackupPlanBackupPlanDetails' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("BackupPlanName" Core..=)
              Prelude.<$> backupPlanName,
            ("BackupPlanRule" Core..=)
              Prelude.<$> backupPlanRule,
            ("AdvancedBackupSettings" Core..=)
              Prelude.<$> advancedBackupSettings
          ]
      )
