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
-- Module      : Amazonka.MigrationHubOrchestrator.Types.MigrationWorkflowSummary
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.MigrationHubOrchestrator.Types.MigrationWorkflowSummary where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import Amazonka.MigrationHubOrchestrator.Types.MigrationWorkflowStatusEnum
import qualified Amazonka.Prelude as Prelude

-- | The summary of a migration workflow.
--
-- /See:/ 'newMigrationWorkflowSummary' smart constructor.
data MigrationWorkflowSummary = MigrationWorkflowSummary'
  { -- | The name of the application configured in Application Discovery Service.
    adsApplicationConfigurationName :: Prelude.Maybe Prelude.Text,
    -- | The name of the migration workflow.
    name :: Prelude.Maybe Prelude.Text,
    -- | The status of the migration workflow.
    status :: Prelude.Maybe MigrationWorkflowStatusEnum,
    -- | The ID of the template.
    templateId :: Prelude.Maybe Prelude.Text,
    -- | The time at which the migration workflow ended.
    endTime :: Prelude.Maybe Core.POSIX,
    -- | The ID of the migration workflow.
    id :: Prelude.Maybe Prelude.Text,
    -- | The steps completed in the migration workflow.
    completedSteps :: Prelude.Maybe Prelude.Int,
    -- | The time at which the migration workflow was created.
    creationTime :: Prelude.Maybe Core.POSIX,
    -- | The status message of the migration workflow.
    statusMessage :: Prelude.Maybe Prelude.Text,
    -- | All the steps in a migration workflow.
    totalSteps :: Prelude.Maybe Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'MigrationWorkflowSummary' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'adsApplicationConfigurationName', 'migrationWorkflowSummary_adsApplicationConfigurationName' - The name of the application configured in Application Discovery Service.
--
-- 'name', 'migrationWorkflowSummary_name' - The name of the migration workflow.
--
-- 'status', 'migrationWorkflowSummary_status' - The status of the migration workflow.
--
-- 'templateId', 'migrationWorkflowSummary_templateId' - The ID of the template.
--
-- 'endTime', 'migrationWorkflowSummary_endTime' - The time at which the migration workflow ended.
--
-- 'id', 'migrationWorkflowSummary_id' - The ID of the migration workflow.
--
-- 'completedSteps', 'migrationWorkflowSummary_completedSteps' - The steps completed in the migration workflow.
--
-- 'creationTime', 'migrationWorkflowSummary_creationTime' - The time at which the migration workflow was created.
--
-- 'statusMessage', 'migrationWorkflowSummary_statusMessage' - The status message of the migration workflow.
--
-- 'totalSteps', 'migrationWorkflowSummary_totalSteps' - All the steps in a migration workflow.
newMigrationWorkflowSummary ::
  MigrationWorkflowSummary
newMigrationWorkflowSummary =
  MigrationWorkflowSummary'
    { adsApplicationConfigurationName =
        Prelude.Nothing,
      name = Prelude.Nothing,
      status = Prelude.Nothing,
      templateId = Prelude.Nothing,
      endTime = Prelude.Nothing,
      id = Prelude.Nothing,
      completedSteps = Prelude.Nothing,
      creationTime = Prelude.Nothing,
      statusMessage = Prelude.Nothing,
      totalSteps = Prelude.Nothing
    }

-- | The name of the application configured in Application Discovery Service.
migrationWorkflowSummary_adsApplicationConfigurationName :: Lens.Lens' MigrationWorkflowSummary (Prelude.Maybe Prelude.Text)
migrationWorkflowSummary_adsApplicationConfigurationName = Lens.lens (\MigrationWorkflowSummary' {adsApplicationConfigurationName} -> adsApplicationConfigurationName) (\s@MigrationWorkflowSummary' {} a -> s {adsApplicationConfigurationName = a} :: MigrationWorkflowSummary)

-- | The name of the migration workflow.
migrationWorkflowSummary_name :: Lens.Lens' MigrationWorkflowSummary (Prelude.Maybe Prelude.Text)
migrationWorkflowSummary_name = Lens.lens (\MigrationWorkflowSummary' {name} -> name) (\s@MigrationWorkflowSummary' {} a -> s {name = a} :: MigrationWorkflowSummary)

-- | The status of the migration workflow.
migrationWorkflowSummary_status :: Lens.Lens' MigrationWorkflowSummary (Prelude.Maybe MigrationWorkflowStatusEnum)
migrationWorkflowSummary_status = Lens.lens (\MigrationWorkflowSummary' {status} -> status) (\s@MigrationWorkflowSummary' {} a -> s {status = a} :: MigrationWorkflowSummary)

-- | The ID of the template.
migrationWorkflowSummary_templateId :: Lens.Lens' MigrationWorkflowSummary (Prelude.Maybe Prelude.Text)
migrationWorkflowSummary_templateId = Lens.lens (\MigrationWorkflowSummary' {templateId} -> templateId) (\s@MigrationWorkflowSummary' {} a -> s {templateId = a} :: MigrationWorkflowSummary)

-- | The time at which the migration workflow ended.
migrationWorkflowSummary_endTime :: Lens.Lens' MigrationWorkflowSummary (Prelude.Maybe Prelude.UTCTime)
migrationWorkflowSummary_endTime = Lens.lens (\MigrationWorkflowSummary' {endTime} -> endTime) (\s@MigrationWorkflowSummary' {} a -> s {endTime = a} :: MigrationWorkflowSummary) Prelude.. Lens.mapping Core._Time

-- | The ID of the migration workflow.
migrationWorkflowSummary_id :: Lens.Lens' MigrationWorkflowSummary (Prelude.Maybe Prelude.Text)
migrationWorkflowSummary_id = Lens.lens (\MigrationWorkflowSummary' {id} -> id) (\s@MigrationWorkflowSummary' {} a -> s {id = a} :: MigrationWorkflowSummary)

-- | The steps completed in the migration workflow.
migrationWorkflowSummary_completedSteps :: Lens.Lens' MigrationWorkflowSummary (Prelude.Maybe Prelude.Int)
migrationWorkflowSummary_completedSteps = Lens.lens (\MigrationWorkflowSummary' {completedSteps} -> completedSteps) (\s@MigrationWorkflowSummary' {} a -> s {completedSteps = a} :: MigrationWorkflowSummary)

-- | The time at which the migration workflow was created.
migrationWorkflowSummary_creationTime :: Lens.Lens' MigrationWorkflowSummary (Prelude.Maybe Prelude.UTCTime)
migrationWorkflowSummary_creationTime = Lens.lens (\MigrationWorkflowSummary' {creationTime} -> creationTime) (\s@MigrationWorkflowSummary' {} a -> s {creationTime = a} :: MigrationWorkflowSummary) Prelude.. Lens.mapping Core._Time

-- | The status message of the migration workflow.
migrationWorkflowSummary_statusMessage :: Lens.Lens' MigrationWorkflowSummary (Prelude.Maybe Prelude.Text)
migrationWorkflowSummary_statusMessage = Lens.lens (\MigrationWorkflowSummary' {statusMessage} -> statusMessage) (\s@MigrationWorkflowSummary' {} a -> s {statusMessage = a} :: MigrationWorkflowSummary)

-- | All the steps in a migration workflow.
migrationWorkflowSummary_totalSteps :: Lens.Lens' MigrationWorkflowSummary (Prelude.Maybe Prelude.Int)
migrationWorkflowSummary_totalSteps = Lens.lens (\MigrationWorkflowSummary' {totalSteps} -> totalSteps) (\s@MigrationWorkflowSummary' {} a -> s {totalSteps = a} :: MigrationWorkflowSummary)

instance Core.FromJSON MigrationWorkflowSummary where
  parseJSON =
    Core.withObject
      "MigrationWorkflowSummary"
      ( \x ->
          MigrationWorkflowSummary'
            Prelude.<$> (x Core..:? "adsApplicationConfigurationName")
            Prelude.<*> (x Core..:? "name")
            Prelude.<*> (x Core..:? "status")
            Prelude.<*> (x Core..:? "templateId")
            Prelude.<*> (x Core..:? "endTime")
            Prelude.<*> (x Core..:? "id")
            Prelude.<*> (x Core..:? "completedSteps")
            Prelude.<*> (x Core..:? "creationTime")
            Prelude.<*> (x Core..:? "statusMessage")
            Prelude.<*> (x Core..:? "totalSteps")
      )

instance Prelude.Hashable MigrationWorkflowSummary where
  hashWithSalt _salt MigrationWorkflowSummary' {..} =
    _salt
      `Prelude.hashWithSalt` adsApplicationConfigurationName
      `Prelude.hashWithSalt` name
      `Prelude.hashWithSalt` status
      `Prelude.hashWithSalt` templateId
      `Prelude.hashWithSalt` endTime
      `Prelude.hashWithSalt` id
      `Prelude.hashWithSalt` completedSteps
      `Prelude.hashWithSalt` creationTime
      `Prelude.hashWithSalt` statusMessage
      `Prelude.hashWithSalt` totalSteps

instance Prelude.NFData MigrationWorkflowSummary where
  rnf MigrationWorkflowSummary' {..} =
    Prelude.rnf adsApplicationConfigurationName
      `Prelude.seq` Prelude.rnf name
      `Prelude.seq` Prelude.rnf status
      `Prelude.seq` Prelude.rnf templateId
      `Prelude.seq` Prelude.rnf endTime
      `Prelude.seq` Prelude.rnf id
      `Prelude.seq` Prelude.rnf completedSteps
      `Prelude.seq` Prelude.rnf creationTime
      `Prelude.seq` Prelude.rnf statusMessage
      `Prelude.seq` Prelude.rnf totalSteps
