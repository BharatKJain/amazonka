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
-- Module      : Amazonka.Glue.Types.KinesisStreamingSourceOptions
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.Glue.Types.KinesisStreamingSourceOptions where

import qualified Amazonka.Core as Core
import Amazonka.Glue.Types.StartingPosition
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | Additional options for the Amazon Kinesis streaming data source.
--
-- /See:/ 'newKinesisStreamingSourceOptions' smart constructor.
data KinesisStreamingSourceOptions = KinesisStreamingSourceOptions'
  { -- | The Amazon Resource Name (ARN) of the role to assume using AWS Security
    -- Token Service (AWS STS). This role must have permissions for describe or
    -- read record operations for the Kinesis data stream. You must use this
    -- parameter when accessing a data stream in a different account. Used in
    -- conjunction with @\"awsSTSSessionName\"@.
    roleArn :: Prelude.Maybe Prelude.Text,
    -- | The starting position in the Kinesis data stream to read data from. The
    -- possible values are @\"latest\"@, @\"trim_horizon\"@, or @\"earliest\"@.
    -- The default value is @\"latest\"@.
    startingPosition :: Prelude.Maybe StartingPosition,
    -- | The maximum number of retries for Kinesis Data Streams API requests. The
    -- default value is @3@.
    numRetries :: Prelude.Maybe Prelude.Natural,
    -- | The minimum time delay between two consecutive getRecords operations,
    -- specified in ms. The default value is @1000@. This option is only
    -- configurable for Glue version 2.0 and above.
    idleTimeBetweenReadsInMs :: Prelude.Maybe Prelude.Natural,
    -- | The cool-off time period (specified in ms) before retrying the Kinesis
    -- Data Streams API call. The default value is @1000@.
    retryIntervalMs :: Prelude.Maybe Prelude.Natural,
    -- | The maximum cool-off time period (specified in ms) between two retries
    -- of a Kinesis Data Streams API call. The default value is @10000@.
    maxRetryIntervalMs :: Prelude.Maybe Prelude.Natural,
    -- | Avoids creating an empty microbatch job by checking for unread data in
    -- the Kinesis data stream before the batch is started. The default value
    -- is @\"False\"@.
    avoidEmptyBatches :: Prelude.Maybe Prelude.Bool,
    -- | The minimum time interval between two ListShards API calls for your
    -- script to consider resharding. The default value is @1s@.
    describeShardInterval :: Prelude.Maybe Prelude.Natural,
    -- | The maximum number of records to fetch from the Kinesis data stream in
    -- each getRecords operation. The default value is @10000@.
    maxRecordPerRead :: Prelude.Maybe Prelude.Natural,
    -- | The maximum time spent in the job executor to fetch a record from the
    -- Kinesis data stream per shard, specified in milliseconds (ms). The
    -- default value is @1000@.
    maxFetchTimeInMs :: Prelude.Maybe Prelude.Natural,
    -- | Specifies the delimiter character.
    delimiter :: Prelude.Maybe Prelude.Text,
    -- | The URL of the Kinesis endpoint.
    endpointUrl :: Prelude.Maybe Prelude.Text,
    -- | The maximum number of records to fetch per shard in the Kinesis data
    -- stream. The default value is @100000@.
    maxFetchRecordsPerShard :: Prelude.Maybe Prelude.Natural,
    -- | An identifier for the session assuming the role using AWS STS. You must
    -- use this parameter when accessing a data stream in a different account.
    -- Used in conjunction with @\"awsSTSRoleARN\"@.
    roleSessionName :: Prelude.Maybe Prelude.Text,
    -- | Adds a time delay between two consecutive getRecords operations. The
    -- default value is @\"False\"@. This option is only configurable for Glue
    -- version 2.0 and above.
    addIdleTimeBetweenReads :: Prelude.Maybe Prelude.Bool,
    -- | The Amazon Resource Name (ARN) of the Kinesis data stream.
    streamArn :: Prelude.Maybe Prelude.Text,
    -- | The name of the Kinesis data stream.
    streamName :: Prelude.Maybe Prelude.Text,
    -- | An optional classification.
    classification :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'KinesisStreamingSourceOptions' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'roleArn', 'kinesisStreamingSourceOptions_roleArn' - The Amazon Resource Name (ARN) of the role to assume using AWS Security
-- Token Service (AWS STS). This role must have permissions for describe or
-- read record operations for the Kinesis data stream. You must use this
-- parameter when accessing a data stream in a different account. Used in
-- conjunction with @\"awsSTSSessionName\"@.
--
-- 'startingPosition', 'kinesisStreamingSourceOptions_startingPosition' - The starting position in the Kinesis data stream to read data from. The
-- possible values are @\"latest\"@, @\"trim_horizon\"@, or @\"earliest\"@.
-- The default value is @\"latest\"@.
--
-- 'numRetries', 'kinesisStreamingSourceOptions_numRetries' - The maximum number of retries for Kinesis Data Streams API requests. The
-- default value is @3@.
--
-- 'idleTimeBetweenReadsInMs', 'kinesisStreamingSourceOptions_idleTimeBetweenReadsInMs' - The minimum time delay between two consecutive getRecords operations,
-- specified in ms. The default value is @1000@. This option is only
-- configurable for Glue version 2.0 and above.
--
-- 'retryIntervalMs', 'kinesisStreamingSourceOptions_retryIntervalMs' - The cool-off time period (specified in ms) before retrying the Kinesis
-- Data Streams API call. The default value is @1000@.
--
-- 'maxRetryIntervalMs', 'kinesisStreamingSourceOptions_maxRetryIntervalMs' - The maximum cool-off time period (specified in ms) between two retries
-- of a Kinesis Data Streams API call. The default value is @10000@.
--
-- 'avoidEmptyBatches', 'kinesisStreamingSourceOptions_avoidEmptyBatches' - Avoids creating an empty microbatch job by checking for unread data in
-- the Kinesis data stream before the batch is started. The default value
-- is @\"False\"@.
--
-- 'describeShardInterval', 'kinesisStreamingSourceOptions_describeShardInterval' - The minimum time interval between two ListShards API calls for your
-- script to consider resharding. The default value is @1s@.
--
-- 'maxRecordPerRead', 'kinesisStreamingSourceOptions_maxRecordPerRead' - The maximum number of records to fetch from the Kinesis data stream in
-- each getRecords operation. The default value is @10000@.
--
-- 'maxFetchTimeInMs', 'kinesisStreamingSourceOptions_maxFetchTimeInMs' - The maximum time spent in the job executor to fetch a record from the
-- Kinesis data stream per shard, specified in milliseconds (ms). The
-- default value is @1000@.
--
-- 'delimiter', 'kinesisStreamingSourceOptions_delimiter' - Specifies the delimiter character.
--
-- 'endpointUrl', 'kinesisStreamingSourceOptions_endpointUrl' - The URL of the Kinesis endpoint.
--
-- 'maxFetchRecordsPerShard', 'kinesisStreamingSourceOptions_maxFetchRecordsPerShard' - The maximum number of records to fetch per shard in the Kinesis data
-- stream. The default value is @100000@.
--
-- 'roleSessionName', 'kinesisStreamingSourceOptions_roleSessionName' - An identifier for the session assuming the role using AWS STS. You must
-- use this parameter when accessing a data stream in a different account.
-- Used in conjunction with @\"awsSTSRoleARN\"@.
--
-- 'addIdleTimeBetweenReads', 'kinesisStreamingSourceOptions_addIdleTimeBetweenReads' - Adds a time delay between two consecutive getRecords operations. The
-- default value is @\"False\"@. This option is only configurable for Glue
-- version 2.0 and above.
--
-- 'streamArn', 'kinesisStreamingSourceOptions_streamArn' - The Amazon Resource Name (ARN) of the Kinesis data stream.
--
-- 'streamName', 'kinesisStreamingSourceOptions_streamName' - The name of the Kinesis data stream.
--
-- 'classification', 'kinesisStreamingSourceOptions_classification' - An optional classification.
newKinesisStreamingSourceOptions ::
  KinesisStreamingSourceOptions
newKinesisStreamingSourceOptions =
  KinesisStreamingSourceOptions'
    { roleArn =
        Prelude.Nothing,
      startingPosition = Prelude.Nothing,
      numRetries = Prelude.Nothing,
      idleTimeBetweenReadsInMs = Prelude.Nothing,
      retryIntervalMs = Prelude.Nothing,
      maxRetryIntervalMs = Prelude.Nothing,
      avoidEmptyBatches = Prelude.Nothing,
      describeShardInterval = Prelude.Nothing,
      maxRecordPerRead = Prelude.Nothing,
      maxFetchTimeInMs = Prelude.Nothing,
      delimiter = Prelude.Nothing,
      endpointUrl = Prelude.Nothing,
      maxFetchRecordsPerShard = Prelude.Nothing,
      roleSessionName = Prelude.Nothing,
      addIdleTimeBetweenReads = Prelude.Nothing,
      streamArn = Prelude.Nothing,
      streamName = Prelude.Nothing,
      classification = Prelude.Nothing
    }

-- | The Amazon Resource Name (ARN) of the role to assume using AWS Security
-- Token Service (AWS STS). This role must have permissions for describe or
-- read record operations for the Kinesis data stream. You must use this
-- parameter when accessing a data stream in a different account. Used in
-- conjunction with @\"awsSTSSessionName\"@.
kinesisStreamingSourceOptions_roleArn :: Lens.Lens' KinesisStreamingSourceOptions (Prelude.Maybe Prelude.Text)
kinesisStreamingSourceOptions_roleArn = Lens.lens (\KinesisStreamingSourceOptions' {roleArn} -> roleArn) (\s@KinesisStreamingSourceOptions' {} a -> s {roleArn = a} :: KinesisStreamingSourceOptions)

-- | The starting position in the Kinesis data stream to read data from. The
-- possible values are @\"latest\"@, @\"trim_horizon\"@, or @\"earliest\"@.
-- The default value is @\"latest\"@.
kinesisStreamingSourceOptions_startingPosition :: Lens.Lens' KinesisStreamingSourceOptions (Prelude.Maybe StartingPosition)
kinesisStreamingSourceOptions_startingPosition = Lens.lens (\KinesisStreamingSourceOptions' {startingPosition} -> startingPosition) (\s@KinesisStreamingSourceOptions' {} a -> s {startingPosition = a} :: KinesisStreamingSourceOptions)

-- | The maximum number of retries for Kinesis Data Streams API requests. The
-- default value is @3@.
kinesisStreamingSourceOptions_numRetries :: Lens.Lens' KinesisStreamingSourceOptions (Prelude.Maybe Prelude.Natural)
kinesisStreamingSourceOptions_numRetries = Lens.lens (\KinesisStreamingSourceOptions' {numRetries} -> numRetries) (\s@KinesisStreamingSourceOptions' {} a -> s {numRetries = a} :: KinesisStreamingSourceOptions)

-- | The minimum time delay between two consecutive getRecords operations,
-- specified in ms. The default value is @1000@. This option is only
-- configurable for Glue version 2.0 and above.
kinesisStreamingSourceOptions_idleTimeBetweenReadsInMs :: Lens.Lens' KinesisStreamingSourceOptions (Prelude.Maybe Prelude.Natural)
kinesisStreamingSourceOptions_idleTimeBetweenReadsInMs = Lens.lens (\KinesisStreamingSourceOptions' {idleTimeBetweenReadsInMs} -> idleTimeBetweenReadsInMs) (\s@KinesisStreamingSourceOptions' {} a -> s {idleTimeBetweenReadsInMs = a} :: KinesisStreamingSourceOptions)

-- | The cool-off time period (specified in ms) before retrying the Kinesis
-- Data Streams API call. The default value is @1000@.
kinesisStreamingSourceOptions_retryIntervalMs :: Lens.Lens' KinesisStreamingSourceOptions (Prelude.Maybe Prelude.Natural)
kinesisStreamingSourceOptions_retryIntervalMs = Lens.lens (\KinesisStreamingSourceOptions' {retryIntervalMs} -> retryIntervalMs) (\s@KinesisStreamingSourceOptions' {} a -> s {retryIntervalMs = a} :: KinesisStreamingSourceOptions)

-- | The maximum cool-off time period (specified in ms) between two retries
-- of a Kinesis Data Streams API call. The default value is @10000@.
kinesisStreamingSourceOptions_maxRetryIntervalMs :: Lens.Lens' KinesisStreamingSourceOptions (Prelude.Maybe Prelude.Natural)
kinesisStreamingSourceOptions_maxRetryIntervalMs = Lens.lens (\KinesisStreamingSourceOptions' {maxRetryIntervalMs} -> maxRetryIntervalMs) (\s@KinesisStreamingSourceOptions' {} a -> s {maxRetryIntervalMs = a} :: KinesisStreamingSourceOptions)

-- | Avoids creating an empty microbatch job by checking for unread data in
-- the Kinesis data stream before the batch is started. The default value
-- is @\"False\"@.
kinesisStreamingSourceOptions_avoidEmptyBatches :: Lens.Lens' KinesisStreamingSourceOptions (Prelude.Maybe Prelude.Bool)
kinesisStreamingSourceOptions_avoidEmptyBatches = Lens.lens (\KinesisStreamingSourceOptions' {avoidEmptyBatches} -> avoidEmptyBatches) (\s@KinesisStreamingSourceOptions' {} a -> s {avoidEmptyBatches = a} :: KinesisStreamingSourceOptions)

-- | The minimum time interval between two ListShards API calls for your
-- script to consider resharding. The default value is @1s@.
kinesisStreamingSourceOptions_describeShardInterval :: Lens.Lens' KinesisStreamingSourceOptions (Prelude.Maybe Prelude.Natural)
kinesisStreamingSourceOptions_describeShardInterval = Lens.lens (\KinesisStreamingSourceOptions' {describeShardInterval} -> describeShardInterval) (\s@KinesisStreamingSourceOptions' {} a -> s {describeShardInterval = a} :: KinesisStreamingSourceOptions)

-- | The maximum number of records to fetch from the Kinesis data stream in
-- each getRecords operation. The default value is @10000@.
kinesisStreamingSourceOptions_maxRecordPerRead :: Lens.Lens' KinesisStreamingSourceOptions (Prelude.Maybe Prelude.Natural)
kinesisStreamingSourceOptions_maxRecordPerRead = Lens.lens (\KinesisStreamingSourceOptions' {maxRecordPerRead} -> maxRecordPerRead) (\s@KinesisStreamingSourceOptions' {} a -> s {maxRecordPerRead = a} :: KinesisStreamingSourceOptions)

-- | The maximum time spent in the job executor to fetch a record from the
-- Kinesis data stream per shard, specified in milliseconds (ms). The
-- default value is @1000@.
kinesisStreamingSourceOptions_maxFetchTimeInMs :: Lens.Lens' KinesisStreamingSourceOptions (Prelude.Maybe Prelude.Natural)
kinesisStreamingSourceOptions_maxFetchTimeInMs = Lens.lens (\KinesisStreamingSourceOptions' {maxFetchTimeInMs} -> maxFetchTimeInMs) (\s@KinesisStreamingSourceOptions' {} a -> s {maxFetchTimeInMs = a} :: KinesisStreamingSourceOptions)

-- | Specifies the delimiter character.
kinesisStreamingSourceOptions_delimiter :: Lens.Lens' KinesisStreamingSourceOptions (Prelude.Maybe Prelude.Text)
kinesisStreamingSourceOptions_delimiter = Lens.lens (\KinesisStreamingSourceOptions' {delimiter} -> delimiter) (\s@KinesisStreamingSourceOptions' {} a -> s {delimiter = a} :: KinesisStreamingSourceOptions)

-- | The URL of the Kinesis endpoint.
kinesisStreamingSourceOptions_endpointUrl :: Lens.Lens' KinesisStreamingSourceOptions (Prelude.Maybe Prelude.Text)
kinesisStreamingSourceOptions_endpointUrl = Lens.lens (\KinesisStreamingSourceOptions' {endpointUrl} -> endpointUrl) (\s@KinesisStreamingSourceOptions' {} a -> s {endpointUrl = a} :: KinesisStreamingSourceOptions)

-- | The maximum number of records to fetch per shard in the Kinesis data
-- stream. The default value is @100000@.
kinesisStreamingSourceOptions_maxFetchRecordsPerShard :: Lens.Lens' KinesisStreamingSourceOptions (Prelude.Maybe Prelude.Natural)
kinesisStreamingSourceOptions_maxFetchRecordsPerShard = Lens.lens (\KinesisStreamingSourceOptions' {maxFetchRecordsPerShard} -> maxFetchRecordsPerShard) (\s@KinesisStreamingSourceOptions' {} a -> s {maxFetchRecordsPerShard = a} :: KinesisStreamingSourceOptions)

-- | An identifier for the session assuming the role using AWS STS. You must
-- use this parameter when accessing a data stream in a different account.
-- Used in conjunction with @\"awsSTSRoleARN\"@.
kinesisStreamingSourceOptions_roleSessionName :: Lens.Lens' KinesisStreamingSourceOptions (Prelude.Maybe Prelude.Text)
kinesisStreamingSourceOptions_roleSessionName = Lens.lens (\KinesisStreamingSourceOptions' {roleSessionName} -> roleSessionName) (\s@KinesisStreamingSourceOptions' {} a -> s {roleSessionName = a} :: KinesisStreamingSourceOptions)

-- | Adds a time delay between two consecutive getRecords operations. The
-- default value is @\"False\"@. This option is only configurable for Glue
-- version 2.0 and above.
kinesisStreamingSourceOptions_addIdleTimeBetweenReads :: Lens.Lens' KinesisStreamingSourceOptions (Prelude.Maybe Prelude.Bool)
kinesisStreamingSourceOptions_addIdleTimeBetweenReads = Lens.lens (\KinesisStreamingSourceOptions' {addIdleTimeBetweenReads} -> addIdleTimeBetweenReads) (\s@KinesisStreamingSourceOptions' {} a -> s {addIdleTimeBetweenReads = a} :: KinesisStreamingSourceOptions)

-- | The Amazon Resource Name (ARN) of the Kinesis data stream.
kinesisStreamingSourceOptions_streamArn :: Lens.Lens' KinesisStreamingSourceOptions (Prelude.Maybe Prelude.Text)
kinesisStreamingSourceOptions_streamArn = Lens.lens (\KinesisStreamingSourceOptions' {streamArn} -> streamArn) (\s@KinesisStreamingSourceOptions' {} a -> s {streamArn = a} :: KinesisStreamingSourceOptions)

-- | The name of the Kinesis data stream.
kinesisStreamingSourceOptions_streamName :: Lens.Lens' KinesisStreamingSourceOptions (Prelude.Maybe Prelude.Text)
kinesisStreamingSourceOptions_streamName = Lens.lens (\KinesisStreamingSourceOptions' {streamName} -> streamName) (\s@KinesisStreamingSourceOptions' {} a -> s {streamName = a} :: KinesisStreamingSourceOptions)

-- | An optional classification.
kinesisStreamingSourceOptions_classification :: Lens.Lens' KinesisStreamingSourceOptions (Prelude.Maybe Prelude.Text)
kinesisStreamingSourceOptions_classification = Lens.lens (\KinesisStreamingSourceOptions' {classification} -> classification) (\s@KinesisStreamingSourceOptions' {} a -> s {classification = a} :: KinesisStreamingSourceOptions)

instance Core.FromJSON KinesisStreamingSourceOptions where
  parseJSON =
    Core.withObject
      "KinesisStreamingSourceOptions"
      ( \x ->
          KinesisStreamingSourceOptions'
            Prelude.<$> (x Core..:? "RoleArn")
            Prelude.<*> (x Core..:? "StartingPosition")
            Prelude.<*> (x Core..:? "NumRetries")
            Prelude.<*> (x Core..:? "IdleTimeBetweenReadsInMs")
            Prelude.<*> (x Core..:? "RetryIntervalMs")
            Prelude.<*> (x Core..:? "MaxRetryIntervalMs")
            Prelude.<*> (x Core..:? "AvoidEmptyBatches")
            Prelude.<*> (x Core..:? "DescribeShardInterval")
            Prelude.<*> (x Core..:? "MaxRecordPerRead")
            Prelude.<*> (x Core..:? "MaxFetchTimeInMs")
            Prelude.<*> (x Core..:? "Delimiter")
            Prelude.<*> (x Core..:? "EndpointUrl")
            Prelude.<*> (x Core..:? "MaxFetchRecordsPerShard")
            Prelude.<*> (x Core..:? "RoleSessionName")
            Prelude.<*> (x Core..:? "AddIdleTimeBetweenReads")
            Prelude.<*> (x Core..:? "StreamArn")
            Prelude.<*> (x Core..:? "StreamName")
            Prelude.<*> (x Core..:? "Classification")
      )

instance
  Prelude.Hashable
    KinesisStreamingSourceOptions
  where
  hashWithSalt _salt KinesisStreamingSourceOptions' {..} =
    _salt `Prelude.hashWithSalt` roleArn
      `Prelude.hashWithSalt` startingPosition
      `Prelude.hashWithSalt` numRetries
      `Prelude.hashWithSalt` idleTimeBetweenReadsInMs
      `Prelude.hashWithSalt` retryIntervalMs
      `Prelude.hashWithSalt` maxRetryIntervalMs
      `Prelude.hashWithSalt` avoidEmptyBatches
      `Prelude.hashWithSalt` describeShardInterval
      `Prelude.hashWithSalt` maxRecordPerRead
      `Prelude.hashWithSalt` maxFetchTimeInMs
      `Prelude.hashWithSalt` delimiter
      `Prelude.hashWithSalt` endpointUrl
      `Prelude.hashWithSalt` maxFetchRecordsPerShard
      `Prelude.hashWithSalt` roleSessionName
      `Prelude.hashWithSalt` addIdleTimeBetweenReads
      `Prelude.hashWithSalt` streamArn
      `Prelude.hashWithSalt` streamName
      `Prelude.hashWithSalt` classification

instance Prelude.NFData KinesisStreamingSourceOptions where
  rnf KinesisStreamingSourceOptions' {..} =
    Prelude.rnf roleArn
      `Prelude.seq` Prelude.rnf startingPosition
      `Prelude.seq` Prelude.rnf numRetries
      `Prelude.seq` Prelude.rnf idleTimeBetweenReadsInMs
      `Prelude.seq` Prelude.rnf retryIntervalMs
      `Prelude.seq` Prelude.rnf maxRetryIntervalMs
      `Prelude.seq` Prelude.rnf avoidEmptyBatches
      `Prelude.seq` Prelude.rnf describeShardInterval
      `Prelude.seq` Prelude.rnf maxRecordPerRead
      `Prelude.seq` Prelude.rnf maxFetchTimeInMs
      `Prelude.seq` Prelude.rnf delimiter
      `Prelude.seq` Prelude.rnf endpointUrl
      `Prelude.seq` Prelude.rnf maxFetchRecordsPerShard
      `Prelude.seq` Prelude.rnf roleSessionName
      `Prelude.seq` Prelude.rnf addIdleTimeBetweenReads
      `Prelude.seq` Prelude.rnf streamArn
      `Prelude.seq` Prelude.rnf streamName
      `Prelude.seq` Prelude.rnf classification

instance Core.ToJSON KinesisStreamingSourceOptions where
  toJSON KinesisStreamingSourceOptions' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("RoleArn" Core..=) Prelude.<$> roleArn,
            ("StartingPosition" Core..=)
              Prelude.<$> startingPosition,
            ("NumRetries" Core..=) Prelude.<$> numRetries,
            ("IdleTimeBetweenReadsInMs" Core..=)
              Prelude.<$> idleTimeBetweenReadsInMs,
            ("RetryIntervalMs" Core..=)
              Prelude.<$> retryIntervalMs,
            ("MaxRetryIntervalMs" Core..=)
              Prelude.<$> maxRetryIntervalMs,
            ("AvoidEmptyBatches" Core..=)
              Prelude.<$> avoidEmptyBatches,
            ("DescribeShardInterval" Core..=)
              Prelude.<$> describeShardInterval,
            ("MaxRecordPerRead" Core..=)
              Prelude.<$> maxRecordPerRead,
            ("MaxFetchTimeInMs" Core..=)
              Prelude.<$> maxFetchTimeInMs,
            ("Delimiter" Core..=) Prelude.<$> delimiter,
            ("EndpointUrl" Core..=) Prelude.<$> endpointUrl,
            ("MaxFetchRecordsPerShard" Core..=)
              Prelude.<$> maxFetchRecordsPerShard,
            ("RoleSessionName" Core..=)
              Prelude.<$> roleSessionName,
            ("AddIdleTimeBetweenReads" Core..=)
              Prelude.<$> addIdleTimeBetweenReads,
            ("StreamArn" Core..=) Prelude.<$> streamArn,
            ("StreamName" Core..=) Prelude.<$> streamName,
            ("Classification" Core..=)
              Prelude.<$> classification
          ]
      )
