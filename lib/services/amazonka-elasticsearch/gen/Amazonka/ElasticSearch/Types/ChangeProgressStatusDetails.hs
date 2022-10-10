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
-- Module      : Amazonka.ElasticSearch.Types.ChangeProgressStatusDetails
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.ElasticSearch.Types.ChangeProgressStatusDetails where

import qualified Amazonka.Core as Core
import Amazonka.ElasticSearch.Types.ChangeProgressStage
import Amazonka.ElasticSearch.Types.OverallChangeStatus
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | The progress details of a specific domain configuration change.
--
-- /See:/ 'newChangeProgressStatusDetails' smart constructor.
data ChangeProgressStatusDetails = ChangeProgressStatusDetails'
  { -- | The total number of stages required for the configuration change.
    totalNumberOfStages :: Prelude.Maybe Prelude.Int,
    -- | The unique change identifier associated with a specific domain
    -- configuration change.
    changeId :: Prelude.Maybe Prelude.Text,
    -- | The list of properties involved in the domain configuration change that
    -- are still in pending.
    pendingProperties :: Prelude.Maybe [Prelude.Text],
    -- | The overall status of the domain configuration change. This field can
    -- take the following values: @PENDING@, @PROCESSING@, @COMPLETED@ and
    -- @FAILED@
    status :: Prelude.Maybe OverallChangeStatus,
    -- | The specific stages that the domain is going through to perform the
    -- configuration change.
    changeProgressStages :: Prelude.Maybe [ChangeProgressStage],
    -- | The list of properties involved in the domain configuration change that
    -- are completed.
    completedProperties :: Prelude.Maybe [Prelude.Text],
    -- | The time at which the configuration change is made on the domain.
    startTime :: Prelude.Maybe Core.POSIX
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ChangeProgressStatusDetails' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'totalNumberOfStages', 'changeProgressStatusDetails_totalNumberOfStages' - The total number of stages required for the configuration change.
--
-- 'changeId', 'changeProgressStatusDetails_changeId' - The unique change identifier associated with a specific domain
-- configuration change.
--
-- 'pendingProperties', 'changeProgressStatusDetails_pendingProperties' - The list of properties involved in the domain configuration change that
-- are still in pending.
--
-- 'status', 'changeProgressStatusDetails_status' - The overall status of the domain configuration change. This field can
-- take the following values: @PENDING@, @PROCESSING@, @COMPLETED@ and
-- @FAILED@
--
-- 'changeProgressStages', 'changeProgressStatusDetails_changeProgressStages' - The specific stages that the domain is going through to perform the
-- configuration change.
--
-- 'completedProperties', 'changeProgressStatusDetails_completedProperties' - The list of properties involved in the domain configuration change that
-- are completed.
--
-- 'startTime', 'changeProgressStatusDetails_startTime' - The time at which the configuration change is made on the domain.
newChangeProgressStatusDetails ::
  ChangeProgressStatusDetails
newChangeProgressStatusDetails =
  ChangeProgressStatusDetails'
    { totalNumberOfStages =
        Prelude.Nothing,
      changeId = Prelude.Nothing,
      pendingProperties = Prelude.Nothing,
      status = Prelude.Nothing,
      changeProgressStages = Prelude.Nothing,
      completedProperties = Prelude.Nothing,
      startTime = Prelude.Nothing
    }

-- | The total number of stages required for the configuration change.
changeProgressStatusDetails_totalNumberOfStages :: Lens.Lens' ChangeProgressStatusDetails (Prelude.Maybe Prelude.Int)
changeProgressStatusDetails_totalNumberOfStages = Lens.lens (\ChangeProgressStatusDetails' {totalNumberOfStages} -> totalNumberOfStages) (\s@ChangeProgressStatusDetails' {} a -> s {totalNumberOfStages = a} :: ChangeProgressStatusDetails)

-- | The unique change identifier associated with a specific domain
-- configuration change.
changeProgressStatusDetails_changeId :: Lens.Lens' ChangeProgressStatusDetails (Prelude.Maybe Prelude.Text)
changeProgressStatusDetails_changeId = Lens.lens (\ChangeProgressStatusDetails' {changeId} -> changeId) (\s@ChangeProgressStatusDetails' {} a -> s {changeId = a} :: ChangeProgressStatusDetails)

-- | The list of properties involved in the domain configuration change that
-- are still in pending.
changeProgressStatusDetails_pendingProperties :: Lens.Lens' ChangeProgressStatusDetails (Prelude.Maybe [Prelude.Text])
changeProgressStatusDetails_pendingProperties = Lens.lens (\ChangeProgressStatusDetails' {pendingProperties} -> pendingProperties) (\s@ChangeProgressStatusDetails' {} a -> s {pendingProperties = a} :: ChangeProgressStatusDetails) Prelude.. Lens.mapping Lens.coerced

-- | The overall status of the domain configuration change. This field can
-- take the following values: @PENDING@, @PROCESSING@, @COMPLETED@ and
-- @FAILED@
changeProgressStatusDetails_status :: Lens.Lens' ChangeProgressStatusDetails (Prelude.Maybe OverallChangeStatus)
changeProgressStatusDetails_status = Lens.lens (\ChangeProgressStatusDetails' {status} -> status) (\s@ChangeProgressStatusDetails' {} a -> s {status = a} :: ChangeProgressStatusDetails)

-- | The specific stages that the domain is going through to perform the
-- configuration change.
changeProgressStatusDetails_changeProgressStages :: Lens.Lens' ChangeProgressStatusDetails (Prelude.Maybe [ChangeProgressStage])
changeProgressStatusDetails_changeProgressStages = Lens.lens (\ChangeProgressStatusDetails' {changeProgressStages} -> changeProgressStages) (\s@ChangeProgressStatusDetails' {} a -> s {changeProgressStages = a} :: ChangeProgressStatusDetails) Prelude.. Lens.mapping Lens.coerced

-- | The list of properties involved in the domain configuration change that
-- are completed.
changeProgressStatusDetails_completedProperties :: Lens.Lens' ChangeProgressStatusDetails (Prelude.Maybe [Prelude.Text])
changeProgressStatusDetails_completedProperties = Lens.lens (\ChangeProgressStatusDetails' {completedProperties} -> completedProperties) (\s@ChangeProgressStatusDetails' {} a -> s {completedProperties = a} :: ChangeProgressStatusDetails) Prelude.. Lens.mapping Lens.coerced

-- | The time at which the configuration change is made on the domain.
changeProgressStatusDetails_startTime :: Lens.Lens' ChangeProgressStatusDetails (Prelude.Maybe Prelude.UTCTime)
changeProgressStatusDetails_startTime = Lens.lens (\ChangeProgressStatusDetails' {startTime} -> startTime) (\s@ChangeProgressStatusDetails' {} a -> s {startTime = a} :: ChangeProgressStatusDetails) Prelude.. Lens.mapping Core._Time

instance Core.FromJSON ChangeProgressStatusDetails where
  parseJSON =
    Core.withObject
      "ChangeProgressStatusDetails"
      ( \x ->
          ChangeProgressStatusDetails'
            Prelude.<$> (x Core..:? "TotalNumberOfStages")
            Prelude.<*> (x Core..:? "ChangeId")
            Prelude.<*> ( x Core..:? "PendingProperties"
                            Core..!= Prelude.mempty
                        )
            Prelude.<*> (x Core..:? "Status")
            Prelude.<*> ( x Core..:? "ChangeProgressStages"
                            Core..!= Prelude.mempty
                        )
            Prelude.<*> ( x Core..:? "CompletedProperties"
                            Core..!= Prelude.mempty
                        )
            Prelude.<*> (x Core..:? "StartTime")
      )

instance Prelude.Hashable ChangeProgressStatusDetails where
  hashWithSalt _salt ChangeProgressStatusDetails' {..} =
    _salt `Prelude.hashWithSalt` totalNumberOfStages
      `Prelude.hashWithSalt` changeId
      `Prelude.hashWithSalt` pendingProperties
      `Prelude.hashWithSalt` status
      `Prelude.hashWithSalt` changeProgressStages
      `Prelude.hashWithSalt` completedProperties
      `Prelude.hashWithSalt` startTime

instance Prelude.NFData ChangeProgressStatusDetails where
  rnf ChangeProgressStatusDetails' {..} =
    Prelude.rnf totalNumberOfStages
      `Prelude.seq` Prelude.rnf changeId
      `Prelude.seq` Prelude.rnf pendingProperties
      `Prelude.seq` Prelude.rnf status
      `Prelude.seq` Prelude.rnf changeProgressStages
      `Prelude.seq` Prelude.rnf completedProperties
      `Prelude.seq` Prelude.rnf startTime
