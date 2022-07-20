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
-- Module      : Amazonka.LookoutEquipment.Types.DataIngestionJobSummary
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.LookoutEquipment.Types.DataIngestionJobSummary where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import Amazonka.LookoutEquipment.Types.IngestionInputConfiguration
import Amazonka.LookoutEquipment.Types.IngestionJobStatus
import qualified Amazonka.Prelude as Prelude

-- | Provides information about a specified data ingestion job, including
-- dataset information, data ingestion configuration, and status.
--
-- /See:/ 'newDataIngestionJobSummary' smart constructor.
data DataIngestionJobSummary = DataIngestionJobSummary'
  { -- | The name of the dataset used for the data ingestion job.
    datasetName :: Prelude.Maybe Prelude.Text,
    -- | Indicates the job ID of the data ingestion job.
    jobId :: Prelude.Maybe Prelude.Text,
    -- | Indicates the status of the data ingestion job.
    status :: Prelude.Maybe IngestionJobStatus,
    -- | The Amazon Resource Name (ARN) of the dataset used in the data ingestion
    -- job.
    datasetArn :: Prelude.Maybe Prelude.Text,
    -- | Specifies information for the input data for the data inference job,
    -- including data S3 location parameters.
    ingestionInputConfiguration :: Prelude.Maybe IngestionInputConfiguration
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DataIngestionJobSummary' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'datasetName', 'dataIngestionJobSummary_datasetName' - The name of the dataset used for the data ingestion job.
--
-- 'jobId', 'dataIngestionJobSummary_jobId' - Indicates the job ID of the data ingestion job.
--
-- 'status', 'dataIngestionJobSummary_status' - Indicates the status of the data ingestion job.
--
-- 'datasetArn', 'dataIngestionJobSummary_datasetArn' - The Amazon Resource Name (ARN) of the dataset used in the data ingestion
-- job.
--
-- 'ingestionInputConfiguration', 'dataIngestionJobSummary_ingestionInputConfiguration' - Specifies information for the input data for the data inference job,
-- including data S3 location parameters.
newDataIngestionJobSummary ::
  DataIngestionJobSummary
newDataIngestionJobSummary =
  DataIngestionJobSummary'
    { datasetName =
        Prelude.Nothing,
      jobId = Prelude.Nothing,
      status = Prelude.Nothing,
      datasetArn = Prelude.Nothing,
      ingestionInputConfiguration = Prelude.Nothing
    }

-- | The name of the dataset used for the data ingestion job.
dataIngestionJobSummary_datasetName :: Lens.Lens' DataIngestionJobSummary (Prelude.Maybe Prelude.Text)
dataIngestionJobSummary_datasetName = Lens.lens (\DataIngestionJobSummary' {datasetName} -> datasetName) (\s@DataIngestionJobSummary' {} a -> s {datasetName = a} :: DataIngestionJobSummary)

-- | Indicates the job ID of the data ingestion job.
dataIngestionJobSummary_jobId :: Lens.Lens' DataIngestionJobSummary (Prelude.Maybe Prelude.Text)
dataIngestionJobSummary_jobId = Lens.lens (\DataIngestionJobSummary' {jobId} -> jobId) (\s@DataIngestionJobSummary' {} a -> s {jobId = a} :: DataIngestionJobSummary)

-- | Indicates the status of the data ingestion job.
dataIngestionJobSummary_status :: Lens.Lens' DataIngestionJobSummary (Prelude.Maybe IngestionJobStatus)
dataIngestionJobSummary_status = Lens.lens (\DataIngestionJobSummary' {status} -> status) (\s@DataIngestionJobSummary' {} a -> s {status = a} :: DataIngestionJobSummary)

-- | The Amazon Resource Name (ARN) of the dataset used in the data ingestion
-- job.
dataIngestionJobSummary_datasetArn :: Lens.Lens' DataIngestionJobSummary (Prelude.Maybe Prelude.Text)
dataIngestionJobSummary_datasetArn = Lens.lens (\DataIngestionJobSummary' {datasetArn} -> datasetArn) (\s@DataIngestionJobSummary' {} a -> s {datasetArn = a} :: DataIngestionJobSummary)

-- | Specifies information for the input data for the data inference job,
-- including data S3 location parameters.
dataIngestionJobSummary_ingestionInputConfiguration :: Lens.Lens' DataIngestionJobSummary (Prelude.Maybe IngestionInputConfiguration)
dataIngestionJobSummary_ingestionInputConfiguration = Lens.lens (\DataIngestionJobSummary' {ingestionInputConfiguration} -> ingestionInputConfiguration) (\s@DataIngestionJobSummary' {} a -> s {ingestionInputConfiguration = a} :: DataIngestionJobSummary)

instance Core.FromJSON DataIngestionJobSummary where
  parseJSON =
    Core.withObject
      "DataIngestionJobSummary"
      ( \x ->
          DataIngestionJobSummary'
            Prelude.<$> (x Core..:? "DatasetName")
            Prelude.<*> (x Core..:? "JobId")
            Prelude.<*> (x Core..:? "Status")
            Prelude.<*> (x Core..:? "DatasetArn")
            Prelude.<*> (x Core..:? "IngestionInputConfiguration")
      )

instance Prelude.Hashable DataIngestionJobSummary where
  hashWithSalt _salt DataIngestionJobSummary' {..} =
    _salt `Prelude.hashWithSalt` datasetName
      `Prelude.hashWithSalt` jobId
      `Prelude.hashWithSalt` status
      `Prelude.hashWithSalt` datasetArn
      `Prelude.hashWithSalt` ingestionInputConfiguration

instance Prelude.NFData DataIngestionJobSummary where
  rnf DataIngestionJobSummary' {..} =
    Prelude.rnf datasetName
      `Prelude.seq` Prelude.rnf jobId
      `Prelude.seq` Prelude.rnf status
      `Prelude.seq` Prelude.rnf datasetArn
      `Prelude.seq` Prelude.rnf ingestionInputConfiguration
