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
-- Module      : Amazonka.DynamoDB.Types.ImportTableDescription
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.DynamoDB.Types.ImportTableDescription where

import qualified Amazonka.Core as Core
import Amazonka.DynamoDB.Types.AttributeValue
import Amazonka.DynamoDB.Types.ImportStatus
import Amazonka.DynamoDB.Types.InputCompressionType
import Amazonka.DynamoDB.Types.InputFormat
import Amazonka.DynamoDB.Types.InputFormatOptions
import Amazonka.DynamoDB.Types.S3BucketSource
import Amazonka.DynamoDB.Types.TableCreationParameters
import Amazonka.DynamoDB.Types.WriteRequest
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | Represents the properties of the table being imported into.
--
-- /See:/ 'newImportTableDescription' smart constructor.
data ImportTableDescription = ImportTableDescription'
  { -- | The number of items successfully imported into the new table.
    importedItemCount :: Prelude.Maybe Prelude.Natural,
    -- | The client token that was provided for the import task. Reusing the
    -- client token on retry makes a call to @ImportTable@ idempotent.
    clientToken :: Prelude.Maybe Prelude.Text,
    -- | The Amazon Resource Number (ARN) of the table being imported into.
    tableArn :: Prelude.Maybe Prelude.Text,
    -- | The error code corresponding to the failure that the import job ran into
    -- during execution.
    failureCode :: Prelude.Maybe Prelude.Text,
    -- | The total size of data processed from the source file, in Bytes.
    processedSizeBytes :: Prelude.Maybe Prelude.Integer,
    -- | The compression options for the data that has been imported into the
    -- target table. The values are NONE, GZIP, or ZSTD.
    inputCompressionType :: Prelude.Maybe InputCompressionType,
    -- | The number of errors occurred on importing the source file into the
    -- target table.
    errorCount :: Prelude.Maybe Prelude.Natural,
    -- | The Amazon Resource Number (ARN) corresponding to the import request.
    importArn :: Prelude.Maybe Prelude.Text,
    -- | The Amazon Resource Number (ARN) of the Cloudwatch Log Group associated
    -- with the target table.
    cloudWatchLogGroupArn :: Prelude.Maybe Prelude.Text,
    -- | The time at which the creation of the table associated with this import
    -- task completed.
    endTime :: Prelude.Maybe Core.POSIX,
    -- | The error message corresponding to the failure that the import job ran
    -- into during execution.
    failureMessage :: Prelude.Maybe Prelude.Text,
    -- | The table id corresponding to the table created by import table process.
    tableId :: Prelude.Maybe Prelude.Text,
    -- | The total number of items processed from the source file.
    processedItemCount :: Prelude.Maybe Prelude.Natural,
    -- | The parameters for the new table that is being imported into.
    tableCreationParameters :: Prelude.Maybe TableCreationParameters,
    -- | Values for the S3 bucket the source file is imported from. Includes
    -- bucket name (required), key prefix (optional) and bucket account owner
    -- ID (optional).
    s3BucketSource :: Prelude.Maybe S3BucketSource,
    -- | The status of the import.
    importStatus :: Prelude.Maybe ImportStatus,
    -- | The format of the source data going into the target table.
    inputFormat :: Prelude.Maybe InputFormat,
    -- | The time when this import task started.
    startTime :: Prelude.Maybe Core.POSIX,
    -- | The format options for the data that was imported into the target table.
    -- There is one value, CsvOption.
    inputFormatOptions :: Prelude.Maybe InputFormatOptions
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ImportTableDescription' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'importedItemCount', 'importTableDescription_importedItemCount' - The number of items successfully imported into the new table.
--
-- 'clientToken', 'importTableDescription_clientToken' - The client token that was provided for the import task. Reusing the
-- client token on retry makes a call to @ImportTable@ idempotent.
--
-- 'tableArn', 'importTableDescription_tableArn' - The Amazon Resource Number (ARN) of the table being imported into.
--
-- 'failureCode', 'importTableDescription_failureCode' - The error code corresponding to the failure that the import job ran into
-- during execution.
--
-- 'processedSizeBytes', 'importTableDescription_processedSizeBytes' - The total size of data processed from the source file, in Bytes.
--
-- 'inputCompressionType', 'importTableDescription_inputCompressionType' - The compression options for the data that has been imported into the
-- target table. The values are NONE, GZIP, or ZSTD.
--
-- 'errorCount', 'importTableDescription_errorCount' - The number of errors occurred on importing the source file into the
-- target table.
--
-- 'importArn', 'importTableDescription_importArn' - The Amazon Resource Number (ARN) corresponding to the import request.
--
-- 'cloudWatchLogGroupArn', 'importTableDescription_cloudWatchLogGroupArn' - The Amazon Resource Number (ARN) of the Cloudwatch Log Group associated
-- with the target table.
--
-- 'endTime', 'importTableDescription_endTime' - The time at which the creation of the table associated with this import
-- task completed.
--
-- 'failureMessage', 'importTableDescription_failureMessage' - The error message corresponding to the failure that the import job ran
-- into during execution.
--
-- 'tableId', 'importTableDescription_tableId' - The table id corresponding to the table created by import table process.
--
-- 'processedItemCount', 'importTableDescription_processedItemCount' - The total number of items processed from the source file.
--
-- 'tableCreationParameters', 'importTableDescription_tableCreationParameters' - The parameters for the new table that is being imported into.
--
-- 's3BucketSource', 'importTableDescription_s3BucketSource' - Values for the S3 bucket the source file is imported from. Includes
-- bucket name (required), key prefix (optional) and bucket account owner
-- ID (optional).
--
-- 'importStatus', 'importTableDescription_importStatus' - The status of the import.
--
-- 'inputFormat', 'importTableDescription_inputFormat' - The format of the source data going into the target table.
--
-- 'startTime', 'importTableDescription_startTime' - The time when this import task started.
--
-- 'inputFormatOptions', 'importTableDescription_inputFormatOptions' - The format options for the data that was imported into the target table.
-- There is one value, CsvOption.
newImportTableDescription ::
  ImportTableDescription
newImportTableDescription =
  ImportTableDescription'
    { importedItemCount =
        Prelude.Nothing,
      clientToken = Prelude.Nothing,
      tableArn = Prelude.Nothing,
      failureCode = Prelude.Nothing,
      processedSizeBytes = Prelude.Nothing,
      inputCompressionType = Prelude.Nothing,
      errorCount = Prelude.Nothing,
      importArn = Prelude.Nothing,
      cloudWatchLogGroupArn = Prelude.Nothing,
      endTime = Prelude.Nothing,
      failureMessage = Prelude.Nothing,
      tableId = Prelude.Nothing,
      processedItemCount = Prelude.Nothing,
      tableCreationParameters = Prelude.Nothing,
      s3BucketSource = Prelude.Nothing,
      importStatus = Prelude.Nothing,
      inputFormat = Prelude.Nothing,
      startTime = Prelude.Nothing,
      inputFormatOptions = Prelude.Nothing
    }

-- | The number of items successfully imported into the new table.
importTableDescription_importedItemCount :: Lens.Lens' ImportTableDescription (Prelude.Maybe Prelude.Natural)
importTableDescription_importedItemCount = Lens.lens (\ImportTableDescription' {importedItemCount} -> importedItemCount) (\s@ImportTableDescription' {} a -> s {importedItemCount = a} :: ImportTableDescription)

-- | The client token that was provided for the import task. Reusing the
-- client token on retry makes a call to @ImportTable@ idempotent.
importTableDescription_clientToken :: Lens.Lens' ImportTableDescription (Prelude.Maybe Prelude.Text)
importTableDescription_clientToken = Lens.lens (\ImportTableDescription' {clientToken} -> clientToken) (\s@ImportTableDescription' {} a -> s {clientToken = a} :: ImportTableDescription)

-- | The Amazon Resource Number (ARN) of the table being imported into.
importTableDescription_tableArn :: Lens.Lens' ImportTableDescription (Prelude.Maybe Prelude.Text)
importTableDescription_tableArn = Lens.lens (\ImportTableDescription' {tableArn} -> tableArn) (\s@ImportTableDescription' {} a -> s {tableArn = a} :: ImportTableDescription)

-- | The error code corresponding to the failure that the import job ran into
-- during execution.
importTableDescription_failureCode :: Lens.Lens' ImportTableDescription (Prelude.Maybe Prelude.Text)
importTableDescription_failureCode = Lens.lens (\ImportTableDescription' {failureCode} -> failureCode) (\s@ImportTableDescription' {} a -> s {failureCode = a} :: ImportTableDescription)

-- | The total size of data processed from the source file, in Bytes.
importTableDescription_processedSizeBytes :: Lens.Lens' ImportTableDescription (Prelude.Maybe Prelude.Integer)
importTableDescription_processedSizeBytes = Lens.lens (\ImportTableDescription' {processedSizeBytes} -> processedSizeBytes) (\s@ImportTableDescription' {} a -> s {processedSizeBytes = a} :: ImportTableDescription)

-- | The compression options for the data that has been imported into the
-- target table. The values are NONE, GZIP, or ZSTD.
importTableDescription_inputCompressionType :: Lens.Lens' ImportTableDescription (Prelude.Maybe InputCompressionType)
importTableDescription_inputCompressionType = Lens.lens (\ImportTableDescription' {inputCompressionType} -> inputCompressionType) (\s@ImportTableDescription' {} a -> s {inputCompressionType = a} :: ImportTableDescription)

-- | The number of errors occurred on importing the source file into the
-- target table.
importTableDescription_errorCount :: Lens.Lens' ImportTableDescription (Prelude.Maybe Prelude.Natural)
importTableDescription_errorCount = Lens.lens (\ImportTableDescription' {errorCount} -> errorCount) (\s@ImportTableDescription' {} a -> s {errorCount = a} :: ImportTableDescription)

-- | The Amazon Resource Number (ARN) corresponding to the import request.
importTableDescription_importArn :: Lens.Lens' ImportTableDescription (Prelude.Maybe Prelude.Text)
importTableDescription_importArn = Lens.lens (\ImportTableDescription' {importArn} -> importArn) (\s@ImportTableDescription' {} a -> s {importArn = a} :: ImportTableDescription)

-- | The Amazon Resource Number (ARN) of the Cloudwatch Log Group associated
-- with the target table.
importTableDescription_cloudWatchLogGroupArn :: Lens.Lens' ImportTableDescription (Prelude.Maybe Prelude.Text)
importTableDescription_cloudWatchLogGroupArn = Lens.lens (\ImportTableDescription' {cloudWatchLogGroupArn} -> cloudWatchLogGroupArn) (\s@ImportTableDescription' {} a -> s {cloudWatchLogGroupArn = a} :: ImportTableDescription)

-- | The time at which the creation of the table associated with this import
-- task completed.
importTableDescription_endTime :: Lens.Lens' ImportTableDescription (Prelude.Maybe Prelude.UTCTime)
importTableDescription_endTime = Lens.lens (\ImportTableDescription' {endTime} -> endTime) (\s@ImportTableDescription' {} a -> s {endTime = a} :: ImportTableDescription) Prelude.. Lens.mapping Core._Time

-- | The error message corresponding to the failure that the import job ran
-- into during execution.
importTableDescription_failureMessage :: Lens.Lens' ImportTableDescription (Prelude.Maybe Prelude.Text)
importTableDescription_failureMessage = Lens.lens (\ImportTableDescription' {failureMessage} -> failureMessage) (\s@ImportTableDescription' {} a -> s {failureMessage = a} :: ImportTableDescription)

-- | The table id corresponding to the table created by import table process.
importTableDescription_tableId :: Lens.Lens' ImportTableDescription (Prelude.Maybe Prelude.Text)
importTableDescription_tableId = Lens.lens (\ImportTableDescription' {tableId} -> tableId) (\s@ImportTableDescription' {} a -> s {tableId = a} :: ImportTableDescription)

-- | The total number of items processed from the source file.
importTableDescription_processedItemCount :: Lens.Lens' ImportTableDescription (Prelude.Maybe Prelude.Natural)
importTableDescription_processedItemCount = Lens.lens (\ImportTableDescription' {processedItemCount} -> processedItemCount) (\s@ImportTableDescription' {} a -> s {processedItemCount = a} :: ImportTableDescription)

-- | The parameters for the new table that is being imported into.
importTableDescription_tableCreationParameters :: Lens.Lens' ImportTableDescription (Prelude.Maybe TableCreationParameters)
importTableDescription_tableCreationParameters = Lens.lens (\ImportTableDescription' {tableCreationParameters} -> tableCreationParameters) (\s@ImportTableDescription' {} a -> s {tableCreationParameters = a} :: ImportTableDescription)

-- | Values for the S3 bucket the source file is imported from. Includes
-- bucket name (required), key prefix (optional) and bucket account owner
-- ID (optional).
importTableDescription_s3BucketSource :: Lens.Lens' ImportTableDescription (Prelude.Maybe S3BucketSource)
importTableDescription_s3BucketSource = Lens.lens (\ImportTableDescription' {s3BucketSource} -> s3BucketSource) (\s@ImportTableDescription' {} a -> s {s3BucketSource = a} :: ImportTableDescription)

-- | The status of the import.
importTableDescription_importStatus :: Lens.Lens' ImportTableDescription (Prelude.Maybe ImportStatus)
importTableDescription_importStatus = Lens.lens (\ImportTableDescription' {importStatus} -> importStatus) (\s@ImportTableDescription' {} a -> s {importStatus = a} :: ImportTableDescription)

-- | The format of the source data going into the target table.
importTableDescription_inputFormat :: Lens.Lens' ImportTableDescription (Prelude.Maybe InputFormat)
importTableDescription_inputFormat = Lens.lens (\ImportTableDescription' {inputFormat} -> inputFormat) (\s@ImportTableDescription' {} a -> s {inputFormat = a} :: ImportTableDescription)

-- | The time when this import task started.
importTableDescription_startTime :: Lens.Lens' ImportTableDescription (Prelude.Maybe Prelude.UTCTime)
importTableDescription_startTime = Lens.lens (\ImportTableDescription' {startTime} -> startTime) (\s@ImportTableDescription' {} a -> s {startTime = a} :: ImportTableDescription) Prelude.. Lens.mapping Core._Time

-- | The format options for the data that was imported into the target table.
-- There is one value, CsvOption.
importTableDescription_inputFormatOptions :: Lens.Lens' ImportTableDescription (Prelude.Maybe InputFormatOptions)
importTableDescription_inputFormatOptions = Lens.lens (\ImportTableDescription' {inputFormatOptions} -> inputFormatOptions) (\s@ImportTableDescription' {} a -> s {inputFormatOptions = a} :: ImportTableDescription)

instance Core.FromJSON ImportTableDescription where
  parseJSON =
    Core.withObject
      "ImportTableDescription"
      ( \x ->
          ImportTableDescription'
            Prelude.<$> (x Core..:? "ImportedItemCount")
            Prelude.<*> (x Core..:? "ClientToken")
            Prelude.<*> (x Core..:? "TableArn")
            Prelude.<*> (x Core..:? "FailureCode")
            Prelude.<*> (x Core..:? "ProcessedSizeBytes")
            Prelude.<*> (x Core..:? "InputCompressionType")
            Prelude.<*> (x Core..:? "ErrorCount")
            Prelude.<*> (x Core..:? "ImportArn")
            Prelude.<*> (x Core..:? "CloudWatchLogGroupArn")
            Prelude.<*> (x Core..:? "EndTime")
            Prelude.<*> (x Core..:? "FailureMessage")
            Prelude.<*> (x Core..:? "TableId")
            Prelude.<*> (x Core..:? "ProcessedItemCount")
            Prelude.<*> (x Core..:? "TableCreationParameters")
            Prelude.<*> (x Core..:? "S3BucketSource")
            Prelude.<*> (x Core..:? "ImportStatus")
            Prelude.<*> (x Core..:? "InputFormat")
            Prelude.<*> (x Core..:? "StartTime")
            Prelude.<*> (x Core..:? "InputFormatOptions")
      )

instance Prelude.Hashable ImportTableDescription where
  hashWithSalt _salt ImportTableDescription' {..} =
    _salt `Prelude.hashWithSalt` importedItemCount
      `Prelude.hashWithSalt` clientToken
      `Prelude.hashWithSalt` tableArn
      `Prelude.hashWithSalt` failureCode
      `Prelude.hashWithSalt` processedSizeBytes
      `Prelude.hashWithSalt` inputCompressionType
      `Prelude.hashWithSalt` errorCount
      `Prelude.hashWithSalt` importArn
      `Prelude.hashWithSalt` cloudWatchLogGroupArn
      `Prelude.hashWithSalt` endTime
      `Prelude.hashWithSalt` failureMessage
      `Prelude.hashWithSalt` tableId
      `Prelude.hashWithSalt` processedItemCount
      `Prelude.hashWithSalt` tableCreationParameters
      `Prelude.hashWithSalt` s3BucketSource
      `Prelude.hashWithSalt` importStatus
      `Prelude.hashWithSalt` inputFormat
      `Prelude.hashWithSalt` startTime
      `Prelude.hashWithSalt` inputFormatOptions

instance Prelude.NFData ImportTableDescription where
  rnf ImportTableDescription' {..} =
    Prelude.rnf importedItemCount
      `Prelude.seq` Prelude.rnf clientToken
      `Prelude.seq` Prelude.rnf tableArn
      `Prelude.seq` Prelude.rnf failureCode
      `Prelude.seq` Prelude.rnf processedSizeBytes
      `Prelude.seq` Prelude.rnf inputCompressionType
      `Prelude.seq` Prelude.rnf errorCount
      `Prelude.seq` Prelude.rnf importArn
      `Prelude.seq` Prelude.rnf cloudWatchLogGroupArn
      `Prelude.seq` Prelude.rnf endTime
      `Prelude.seq` Prelude.rnf failureMessage
      `Prelude.seq` Prelude.rnf tableId
      `Prelude.seq` Prelude.rnf processedItemCount
      `Prelude.seq` Prelude.rnf tableCreationParameters
      `Prelude.seq` Prelude.rnf s3BucketSource
      `Prelude.seq` Prelude.rnf importStatus
      `Prelude.seq` Prelude.rnf inputFormat
      `Prelude.seq` Prelude.rnf startTime
      `Prelude.seq` Prelude.rnf inputFormatOptions
