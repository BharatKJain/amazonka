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
-- Module      : Amazonka.SSM.Types.AssociationExecution
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.SSM.Types.AssociationExecution where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | Includes information about the specified association.
--
-- /See:/ 'newAssociationExecution' smart constructor.
data AssociationExecution = AssociationExecution'
  { -- | The time the execution started.
    createdTime :: Prelude.Maybe Core.POSIX,
    -- | The association version.
    associationVersion :: Prelude.Maybe Prelude.Text,
    -- | The status of the association execution.
    status :: Prelude.Maybe Prelude.Text,
    -- | An aggregate status of the resources in the execution based on the
    -- status type.
    resourceCountByStatus :: Prelude.Maybe Prelude.Text,
    -- | The execution ID for the association.
    executionId :: Prelude.Maybe Prelude.Text,
    -- | Detailed status information about the execution.
    detailedStatus :: Prelude.Maybe Prelude.Text,
    -- | The date of the last execution.
    lastExecutionDate :: Prelude.Maybe Core.POSIX,
    -- | The association ID.
    associationId :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'AssociationExecution' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'createdTime', 'associationExecution_createdTime' - The time the execution started.
--
-- 'associationVersion', 'associationExecution_associationVersion' - The association version.
--
-- 'status', 'associationExecution_status' - The status of the association execution.
--
-- 'resourceCountByStatus', 'associationExecution_resourceCountByStatus' - An aggregate status of the resources in the execution based on the
-- status type.
--
-- 'executionId', 'associationExecution_executionId' - The execution ID for the association.
--
-- 'detailedStatus', 'associationExecution_detailedStatus' - Detailed status information about the execution.
--
-- 'lastExecutionDate', 'associationExecution_lastExecutionDate' - The date of the last execution.
--
-- 'associationId', 'associationExecution_associationId' - The association ID.
newAssociationExecution ::
  AssociationExecution
newAssociationExecution =
  AssociationExecution'
    { createdTime =
        Prelude.Nothing,
      associationVersion = Prelude.Nothing,
      status = Prelude.Nothing,
      resourceCountByStatus = Prelude.Nothing,
      executionId = Prelude.Nothing,
      detailedStatus = Prelude.Nothing,
      lastExecutionDate = Prelude.Nothing,
      associationId = Prelude.Nothing
    }

-- | The time the execution started.
associationExecution_createdTime :: Lens.Lens' AssociationExecution (Prelude.Maybe Prelude.UTCTime)
associationExecution_createdTime = Lens.lens (\AssociationExecution' {createdTime} -> createdTime) (\s@AssociationExecution' {} a -> s {createdTime = a} :: AssociationExecution) Prelude.. Lens.mapping Core._Time

-- | The association version.
associationExecution_associationVersion :: Lens.Lens' AssociationExecution (Prelude.Maybe Prelude.Text)
associationExecution_associationVersion = Lens.lens (\AssociationExecution' {associationVersion} -> associationVersion) (\s@AssociationExecution' {} a -> s {associationVersion = a} :: AssociationExecution)

-- | The status of the association execution.
associationExecution_status :: Lens.Lens' AssociationExecution (Prelude.Maybe Prelude.Text)
associationExecution_status = Lens.lens (\AssociationExecution' {status} -> status) (\s@AssociationExecution' {} a -> s {status = a} :: AssociationExecution)

-- | An aggregate status of the resources in the execution based on the
-- status type.
associationExecution_resourceCountByStatus :: Lens.Lens' AssociationExecution (Prelude.Maybe Prelude.Text)
associationExecution_resourceCountByStatus = Lens.lens (\AssociationExecution' {resourceCountByStatus} -> resourceCountByStatus) (\s@AssociationExecution' {} a -> s {resourceCountByStatus = a} :: AssociationExecution)

-- | The execution ID for the association.
associationExecution_executionId :: Lens.Lens' AssociationExecution (Prelude.Maybe Prelude.Text)
associationExecution_executionId = Lens.lens (\AssociationExecution' {executionId} -> executionId) (\s@AssociationExecution' {} a -> s {executionId = a} :: AssociationExecution)

-- | Detailed status information about the execution.
associationExecution_detailedStatus :: Lens.Lens' AssociationExecution (Prelude.Maybe Prelude.Text)
associationExecution_detailedStatus = Lens.lens (\AssociationExecution' {detailedStatus} -> detailedStatus) (\s@AssociationExecution' {} a -> s {detailedStatus = a} :: AssociationExecution)

-- | The date of the last execution.
associationExecution_lastExecutionDate :: Lens.Lens' AssociationExecution (Prelude.Maybe Prelude.UTCTime)
associationExecution_lastExecutionDate = Lens.lens (\AssociationExecution' {lastExecutionDate} -> lastExecutionDate) (\s@AssociationExecution' {} a -> s {lastExecutionDate = a} :: AssociationExecution) Prelude.. Lens.mapping Core._Time

-- | The association ID.
associationExecution_associationId :: Lens.Lens' AssociationExecution (Prelude.Maybe Prelude.Text)
associationExecution_associationId = Lens.lens (\AssociationExecution' {associationId} -> associationId) (\s@AssociationExecution' {} a -> s {associationId = a} :: AssociationExecution)

instance Core.FromJSON AssociationExecution where
  parseJSON =
    Core.withObject
      "AssociationExecution"
      ( \x ->
          AssociationExecution'
            Prelude.<$> (x Core..:? "CreatedTime")
            Prelude.<*> (x Core..:? "AssociationVersion")
            Prelude.<*> (x Core..:? "Status")
            Prelude.<*> (x Core..:? "ResourceCountByStatus")
            Prelude.<*> (x Core..:? "ExecutionId")
            Prelude.<*> (x Core..:? "DetailedStatus")
            Prelude.<*> (x Core..:? "LastExecutionDate")
            Prelude.<*> (x Core..:? "AssociationId")
      )

instance Prelude.Hashable AssociationExecution where
  hashWithSalt _salt AssociationExecution' {..} =
    _salt `Prelude.hashWithSalt` createdTime
      `Prelude.hashWithSalt` associationVersion
      `Prelude.hashWithSalt` status
      `Prelude.hashWithSalt` resourceCountByStatus
      `Prelude.hashWithSalt` executionId
      `Prelude.hashWithSalt` detailedStatus
      `Prelude.hashWithSalt` lastExecutionDate
      `Prelude.hashWithSalt` associationId

instance Prelude.NFData AssociationExecution where
  rnf AssociationExecution' {..} =
    Prelude.rnf createdTime
      `Prelude.seq` Prelude.rnf associationVersion
      `Prelude.seq` Prelude.rnf status
      `Prelude.seq` Prelude.rnf resourceCountByStatus
      `Prelude.seq` Prelude.rnf executionId
      `Prelude.seq` Prelude.rnf detailedStatus
      `Prelude.seq` Prelude.rnf lastExecutionDate
      `Prelude.seq` Prelude.rnf associationId
