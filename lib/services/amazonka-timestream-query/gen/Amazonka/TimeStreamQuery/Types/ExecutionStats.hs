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
-- Module      : Amazonka.TimeStreamQuery.Types.ExecutionStats
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.TimeStreamQuery.Types.ExecutionStats where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | Statistics for a single scheduled query run.
--
-- /See:/ 'newExecutionStats' smart constructor.
data ExecutionStats = ExecutionStats'
  { -- | Data writes metered for records ingested in a single scheduled query
    -- run.
    dataWrites :: Prelude.Maybe Prelude.Integer,
    -- | Number of rows present in the output from running a query before
    -- ingestion to destination data source.
    queryResultRows :: Prelude.Maybe Prelude.Integer,
    -- | The number of records ingested for a single scheduled query run.
    recordsIngested :: Prelude.Maybe Prelude.Integer,
    -- | Total time, measured in milliseconds, that was needed for the scheduled
    -- query run to complete.
    executionTimeInMillis :: Prelude.Maybe Prelude.Integer,
    -- | Bytes metered for a single scheduled query run.
    bytesMetered :: Prelude.Maybe Prelude.Integer
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ExecutionStats' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'dataWrites', 'executionStats_dataWrites' - Data writes metered for records ingested in a single scheduled query
-- run.
--
-- 'queryResultRows', 'executionStats_queryResultRows' - Number of rows present in the output from running a query before
-- ingestion to destination data source.
--
-- 'recordsIngested', 'executionStats_recordsIngested' - The number of records ingested for a single scheduled query run.
--
-- 'executionTimeInMillis', 'executionStats_executionTimeInMillis' - Total time, measured in milliseconds, that was needed for the scheduled
-- query run to complete.
--
-- 'bytesMetered', 'executionStats_bytesMetered' - Bytes metered for a single scheduled query run.
newExecutionStats ::
  ExecutionStats
newExecutionStats =
  ExecutionStats'
    { dataWrites = Prelude.Nothing,
      queryResultRows = Prelude.Nothing,
      recordsIngested = Prelude.Nothing,
      executionTimeInMillis = Prelude.Nothing,
      bytesMetered = Prelude.Nothing
    }

-- | Data writes metered for records ingested in a single scheduled query
-- run.
executionStats_dataWrites :: Lens.Lens' ExecutionStats (Prelude.Maybe Prelude.Integer)
executionStats_dataWrites = Lens.lens (\ExecutionStats' {dataWrites} -> dataWrites) (\s@ExecutionStats' {} a -> s {dataWrites = a} :: ExecutionStats)

-- | Number of rows present in the output from running a query before
-- ingestion to destination data source.
executionStats_queryResultRows :: Lens.Lens' ExecutionStats (Prelude.Maybe Prelude.Integer)
executionStats_queryResultRows = Lens.lens (\ExecutionStats' {queryResultRows} -> queryResultRows) (\s@ExecutionStats' {} a -> s {queryResultRows = a} :: ExecutionStats)

-- | The number of records ingested for a single scheduled query run.
executionStats_recordsIngested :: Lens.Lens' ExecutionStats (Prelude.Maybe Prelude.Integer)
executionStats_recordsIngested = Lens.lens (\ExecutionStats' {recordsIngested} -> recordsIngested) (\s@ExecutionStats' {} a -> s {recordsIngested = a} :: ExecutionStats)

-- | Total time, measured in milliseconds, that was needed for the scheduled
-- query run to complete.
executionStats_executionTimeInMillis :: Lens.Lens' ExecutionStats (Prelude.Maybe Prelude.Integer)
executionStats_executionTimeInMillis = Lens.lens (\ExecutionStats' {executionTimeInMillis} -> executionTimeInMillis) (\s@ExecutionStats' {} a -> s {executionTimeInMillis = a} :: ExecutionStats)

-- | Bytes metered for a single scheduled query run.
executionStats_bytesMetered :: Lens.Lens' ExecutionStats (Prelude.Maybe Prelude.Integer)
executionStats_bytesMetered = Lens.lens (\ExecutionStats' {bytesMetered} -> bytesMetered) (\s@ExecutionStats' {} a -> s {bytesMetered = a} :: ExecutionStats)

instance Core.FromJSON ExecutionStats where
  parseJSON =
    Core.withObject
      "ExecutionStats"
      ( \x ->
          ExecutionStats'
            Prelude.<$> (x Core..:? "DataWrites")
            Prelude.<*> (x Core..:? "QueryResultRows")
            Prelude.<*> (x Core..:? "RecordsIngested")
            Prelude.<*> (x Core..:? "ExecutionTimeInMillis")
            Prelude.<*> (x Core..:? "BytesMetered")
      )

instance Prelude.Hashable ExecutionStats where
  hashWithSalt _salt ExecutionStats' {..} =
    _salt `Prelude.hashWithSalt` dataWrites
      `Prelude.hashWithSalt` queryResultRows
      `Prelude.hashWithSalt` recordsIngested
      `Prelude.hashWithSalt` executionTimeInMillis
      `Prelude.hashWithSalt` bytesMetered

instance Prelude.NFData ExecutionStats where
  rnf ExecutionStats' {..} =
    Prelude.rnf dataWrites
      `Prelude.seq` Prelude.rnf queryResultRows
      `Prelude.seq` Prelude.rnf recordsIngested
      `Prelude.seq` Prelude.rnf executionTimeInMillis
      `Prelude.seq` Prelude.rnf bytesMetered
