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
-- Module      : Amazonka.Athena.Types.QueryExecution
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.Athena.Types.QueryExecution where

import Amazonka.Athena.Types.EngineVersion
import Amazonka.Athena.Types.QueryExecutionContext
import Amazonka.Athena.Types.QueryExecutionStatistics
import Amazonka.Athena.Types.QueryExecutionStatus
import Amazonka.Athena.Types.ResultConfiguration
import Amazonka.Athena.Types.StatementType
import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | Information about a single instance of a query execution.
--
-- /See:/ 'newQueryExecution' smart constructor.
data QueryExecution = QueryExecution'
  { -- | The unique identifier for each query execution.
    queryExecutionId :: Prelude.Maybe Prelude.Text,
    -- | Query execution statistics, such as the amount of data scanned, the
    -- amount of time that the query took to process, and the type of statement
    -- that was run.
    statistics :: Prelude.Maybe QueryExecutionStatistics,
    -- | The type of query statement that was run. @DDL@ indicates DDL query
    -- statements. @DML@ indicates DML (Data Manipulation Language) query
    -- statements, such as @CREATE TABLE AS SELECT@. @UTILITY@ indicates query
    -- statements other than DDL and DML, such as @SHOW CREATE TABLE@, or
    -- @DESCRIBE TABLE@.
    statementType :: Prelude.Maybe StatementType,
    -- | The name of the workgroup in which the query ran.
    workGroup :: Prelude.Maybe Prelude.Text,
    -- | The completion date, current state, submission time, and state change
    -- reason (if applicable) for the query execution.
    status :: Prelude.Maybe QueryExecutionStatus,
    -- | The location in Amazon S3 where query results were stored and the
    -- encryption option, if any, used for query results. These are known as
    -- \"client-side settings\". If workgroup settings override client-side
    -- settings, then the query uses the location for the query results and the
    -- encryption configuration that are specified for the workgroup.
    resultConfiguration :: Prelude.Maybe ResultConfiguration,
    -- | The SQL query statements which the query execution ran.
    query :: Prelude.Maybe Prelude.Text,
    -- | The database in which the query execution occurred.
    queryExecutionContext :: Prelude.Maybe QueryExecutionContext,
    -- | A list of values for the parameters in a query. The values are applied
    -- sequentially to the parameters in the query in the order in which the
    -- parameters occur.
    executionParameters :: Prelude.Maybe (Prelude.NonEmpty Prelude.Text),
    -- | The engine version that executed the query.
    engineVersion :: Prelude.Maybe EngineVersion
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'QueryExecution' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'queryExecutionId', 'queryExecution_queryExecutionId' - The unique identifier for each query execution.
--
-- 'statistics', 'queryExecution_statistics' - Query execution statistics, such as the amount of data scanned, the
-- amount of time that the query took to process, and the type of statement
-- that was run.
--
-- 'statementType', 'queryExecution_statementType' - The type of query statement that was run. @DDL@ indicates DDL query
-- statements. @DML@ indicates DML (Data Manipulation Language) query
-- statements, such as @CREATE TABLE AS SELECT@. @UTILITY@ indicates query
-- statements other than DDL and DML, such as @SHOW CREATE TABLE@, or
-- @DESCRIBE TABLE@.
--
-- 'workGroup', 'queryExecution_workGroup' - The name of the workgroup in which the query ran.
--
-- 'status', 'queryExecution_status' - The completion date, current state, submission time, and state change
-- reason (if applicable) for the query execution.
--
-- 'resultConfiguration', 'queryExecution_resultConfiguration' - The location in Amazon S3 where query results were stored and the
-- encryption option, if any, used for query results. These are known as
-- \"client-side settings\". If workgroup settings override client-side
-- settings, then the query uses the location for the query results and the
-- encryption configuration that are specified for the workgroup.
--
-- 'query', 'queryExecution_query' - The SQL query statements which the query execution ran.
--
-- 'queryExecutionContext', 'queryExecution_queryExecutionContext' - The database in which the query execution occurred.
--
-- 'executionParameters', 'queryExecution_executionParameters' - A list of values for the parameters in a query. The values are applied
-- sequentially to the parameters in the query in the order in which the
-- parameters occur.
--
-- 'engineVersion', 'queryExecution_engineVersion' - The engine version that executed the query.
newQueryExecution ::
  QueryExecution
newQueryExecution =
  QueryExecution'
    { queryExecutionId = Prelude.Nothing,
      statistics = Prelude.Nothing,
      statementType = Prelude.Nothing,
      workGroup = Prelude.Nothing,
      status = Prelude.Nothing,
      resultConfiguration = Prelude.Nothing,
      query = Prelude.Nothing,
      queryExecutionContext = Prelude.Nothing,
      executionParameters = Prelude.Nothing,
      engineVersion = Prelude.Nothing
    }

-- | The unique identifier for each query execution.
queryExecution_queryExecutionId :: Lens.Lens' QueryExecution (Prelude.Maybe Prelude.Text)
queryExecution_queryExecutionId = Lens.lens (\QueryExecution' {queryExecutionId} -> queryExecutionId) (\s@QueryExecution' {} a -> s {queryExecutionId = a} :: QueryExecution)

-- | Query execution statistics, such as the amount of data scanned, the
-- amount of time that the query took to process, and the type of statement
-- that was run.
queryExecution_statistics :: Lens.Lens' QueryExecution (Prelude.Maybe QueryExecutionStatistics)
queryExecution_statistics = Lens.lens (\QueryExecution' {statistics} -> statistics) (\s@QueryExecution' {} a -> s {statistics = a} :: QueryExecution)

-- | The type of query statement that was run. @DDL@ indicates DDL query
-- statements. @DML@ indicates DML (Data Manipulation Language) query
-- statements, such as @CREATE TABLE AS SELECT@. @UTILITY@ indicates query
-- statements other than DDL and DML, such as @SHOW CREATE TABLE@, or
-- @DESCRIBE TABLE@.
queryExecution_statementType :: Lens.Lens' QueryExecution (Prelude.Maybe StatementType)
queryExecution_statementType = Lens.lens (\QueryExecution' {statementType} -> statementType) (\s@QueryExecution' {} a -> s {statementType = a} :: QueryExecution)

-- | The name of the workgroup in which the query ran.
queryExecution_workGroup :: Lens.Lens' QueryExecution (Prelude.Maybe Prelude.Text)
queryExecution_workGroup = Lens.lens (\QueryExecution' {workGroup} -> workGroup) (\s@QueryExecution' {} a -> s {workGroup = a} :: QueryExecution)

-- | The completion date, current state, submission time, and state change
-- reason (if applicable) for the query execution.
queryExecution_status :: Lens.Lens' QueryExecution (Prelude.Maybe QueryExecutionStatus)
queryExecution_status = Lens.lens (\QueryExecution' {status} -> status) (\s@QueryExecution' {} a -> s {status = a} :: QueryExecution)

-- | The location in Amazon S3 where query results were stored and the
-- encryption option, if any, used for query results. These are known as
-- \"client-side settings\". If workgroup settings override client-side
-- settings, then the query uses the location for the query results and the
-- encryption configuration that are specified for the workgroup.
queryExecution_resultConfiguration :: Lens.Lens' QueryExecution (Prelude.Maybe ResultConfiguration)
queryExecution_resultConfiguration = Lens.lens (\QueryExecution' {resultConfiguration} -> resultConfiguration) (\s@QueryExecution' {} a -> s {resultConfiguration = a} :: QueryExecution)

-- | The SQL query statements which the query execution ran.
queryExecution_query :: Lens.Lens' QueryExecution (Prelude.Maybe Prelude.Text)
queryExecution_query = Lens.lens (\QueryExecution' {query} -> query) (\s@QueryExecution' {} a -> s {query = a} :: QueryExecution)

-- | The database in which the query execution occurred.
queryExecution_queryExecutionContext :: Lens.Lens' QueryExecution (Prelude.Maybe QueryExecutionContext)
queryExecution_queryExecutionContext = Lens.lens (\QueryExecution' {queryExecutionContext} -> queryExecutionContext) (\s@QueryExecution' {} a -> s {queryExecutionContext = a} :: QueryExecution)

-- | A list of values for the parameters in a query. The values are applied
-- sequentially to the parameters in the query in the order in which the
-- parameters occur.
queryExecution_executionParameters :: Lens.Lens' QueryExecution (Prelude.Maybe (Prelude.NonEmpty Prelude.Text))
queryExecution_executionParameters = Lens.lens (\QueryExecution' {executionParameters} -> executionParameters) (\s@QueryExecution' {} a -> s {executionParameters = a} :: QueryExecution) Prelude.. Lens.mapping Lens.coerced

-- | The engine version that executed the query.
queryExecution_engineVersion :: Lens.Lens' QueryExecution (Prelude.Maybe EngineVersion)
queryExecution_engineVersion = Lens.lens (\QueryExecution' {engineVersion} -> engineVersion) (\s@QueryExecution' {} a -> s {engineVersion = a} :: QueryExecution)

instance Core.FromJSON QueryExecution where
  parseJSON =
    Core.withObject
      "QueryExecution"
      ( \x ->
          QueryExecution'
            Prelude.<$> (x Core..:? "QueryExecutionId")
            Prelude.<*> (x Core..:? "Statistics")
            Prelude.<*> (x Core..:? "StatementType")
            Prelude.<*> (x Core..:? "WorkGroup")
            Prelude.<*> (x Core..:? "Status")
            Prelude.<*> (x Core..:? "ResultConfiguration")
            Prelude.<*> (x Core..:? "Query")
            Prelude.<*> (x Core..:? "QueryExecutionContext")
            Prelude.<*> (x Core..:? "ExecutionParameters")
            Prelude.<*> (x Core..:? "EngineVersion")
      )

instance Prelude.Hashable QueryExecution where
  hashWithSalt _salt QueryExecution' {..} =
    _salt `Prelude.hashWithSalt` queryExecutionId
      `Prelude.hashWithSalt` statistics
      `Prelude.hashWithSalt` statementType
      `Prelude.hashWithSalt` workGroup
      `Prelude.hashWithSalt` status
      `Prelude.hashWithSalt` resultConfiguration
      `Prelude.hashWithSalt` query
      `Prelude.hashWithSalt` queryExecutionContext
      `Prelude.hashWithSalt` executionParameters
      `Prelude.hashWithSalt` engineVersion

instance Prelude.NFData QueryExecution where
  rnf QueryExecution' {..} =
    Prelude.rnf queryExecutionId
      `Prelude.seq` Prelude.rnf statistics
      `Prelude.seq` Prelude.rnf statementType
      `Prelude.seq` Prelude.rnf workGroup
      `Prelude.seq` Prelude.rnf status
      `Prelude.seq` Prelude.rnf resultConfiguration
      `Prelude.seq` Prelude.rnf query
      `Prelude.seq` Prelude.rnf queryExecutionContext
      `Prelude.seq` Prelude.rnf executionParameters
      `Prelude.seq` Prelude.rnf engineVersion
