{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE NamedFieldPuns #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Amazonka.Athena.ListExecutors
-- Copyright   : (c) 2013-2023 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists, in descending order, the executors that have been submitted to a
-- session. Newer executors are listed first; older executors are listed
-- later. The result can be optionally filtered by state.
module Amazonka.Athena.ListExecutors
  ( -- * Creating a Request
    ListExecutors (..),
    newListExecutors,

    -- * Request Lenses
    listExecutors_executorStateFilter,
    listExecutors_maxResults,
    listExecutors_nextToken,
    listExecutors_sessionId,

    -- * Destructuring the Response
    ListExecutorsResponse (..),
    newListExecutorsResponse,

    -- * Response Lenses
    listExecutorsResponse_executorsSummary,
    listExecutorsResponse_nextToken,
    listExecutorsResponse_httpStatus,
    listExecutorsResponse_sessionId,
  )
where

import Amazonka.Athena.Types
import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newListExecutors' smart constructor.
data ListExecutors = ListExecutors'
  { -- | A filter for a specific executor state. A description of each state
    -- follows.
    --
    -- @CREATING@ - The executor is being started, including acquiring
    -- resources.
    --
    -- @CREATED@ - The executor has been started.
    --
    -- @REGISTERED@ - The executor has been registered.
    --
    -- @TERMINATING@ - The executor is in the process of shutting down.
    --
    -- @TERMINATED@ - The executor is no longer running.
    --
    -- @FAILED@ - Due to a failure, the executor is no longer running.
    executorStateFilter :: Prelude.Maybe ExecutorState,
    -- | The maximum number of executors to return.
    maxResults :: Prelude.Maybe Prelude.Natural,
    -- | A token generated by the Athena service that specifies where to continue
    -- pagination if a previous request was truncated. To obtain the next set
    -- of pages, pass in the @NextToken@ from the response object of the
    -- previous page call.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The session ID.
    sessionId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListExecutors' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'executorStateFilter', 'listExecutors_executorStateFilter' - A filter for a specific executor state. A description of each state
-- follows.
--
-- @CREATING@ - The executor is being started, including acquiring
-- resources.
--
-- @CREATED@ - The executor has been started.
--
-- @REGISTERED@ - The executor has been registered.
--
-- @TERMINATING@ - The executor is in the process of shutting down.
--
-- @TERMINATED@ - The executor is no longer running.
--
-- @FAILED@ - Due to a failure, the executor is no longer running.
--
-- 'maxResults', 'listExecutors_maxResults' - The maximum number of executors to return.
--
-- 'nextToken', 'listExecutors_nextToken' - A token generated by the Athena service that specifies where to continue
-- pagination if a previous request was truncated. To obtain the next set
-- of pages, pass in the @NextToken@ from the response object of the
-- previous page call.
--
-- 'sessionId', 'listExecutors_sessionId' - The session ID.
newListExecutors ::
  -- | 'sessionId'
  Prelude.Text ->
  ListExecutors
newListExecutors pSessionId_ =
  ListExecutors'
    { executorStateFilter =
        Prelude.Nothing,
      maxResults = Prelude.Nothing,
      nextToken = Prelude.Nothing,
      sessionId = pSessionId_
    }

-- | A filter for a specific executor state. A description of each state
-- follows.
--
-- @CREATING@ - The executor is being started, including acquiring
-- resources.
--
-- @CREATED@ - The executor has been started.
--
-- @REGISTERED@ - The executor has been registered.
--
-- @TERMINATING@ - The executor is in the process of shutting down.
--
-- @TERMINATED@ - The executor is no longer running.
--
-- @FAILED@ - Due to a failure, the executor is no longer running.
listExecutors_executorStateFilter :: Lens.Lens' ListExecutors (Prelude.Maybe ExecutorState)
listExecutors_executorStateFilter = Lens.lens (\ListExecutors' {executorStateFilter} -> executorStateFilter) (\s@ListExecutors' {} a -> s {executorStateFilter = a} :: ListExecutors)

-- | The maximum number of executors to return.
listExecutors_maxResults :: Lens.Lens' ListExecutors (Prelude.Maybe Prelude.Natural)
listExecutors_maxResults = Lens.lens (\ListExecutors' {maxResults} -> maxResults) (\s@ListExecutors' {} a -> s {maxResults = a} :: ListExecutors)

-- | A token generated by the Athena service that specifies where to continue
-- pagination if a previous request was truncated. To obtain the next set
-- of pages, pass in the @NextToken@ from the response object of the
-- previous page call.
listExecutors_nextToken :: Lens.Lens' ListExecutors (Prelude.Maybe Prelude.Text)
listExecutors_nextToken = Lens.lens (\ListExecutors' {nextToken} -> nextToken) (\s@ListExecutors' {} a -> s {nextToken = a} :: ListExecutors)

-- | The session ID.
listExecutors_sessionId :: Lens.Lens' ListExecutors Prelude.Text
listExecutors_sessionId = Lens.lens (\ListExecutors' {sessionId} -> sessionId) (\s@ListExecutors' {} a -> s {sessionId = a} :: ListExecutors)

instance Core.AWSRequest ListExecutors where
  type
    AWSResponse ListExecutors =
      ListExecutorsResponse
  request overrides =
    Request.postJSON (overrides defaultService)
  response =
    Response.receiveJSON
      ( \s h x ->
          ListExecutorsResponse'
            Prelude.<$> ( x
                            Data..?> "ExecutorsSummary"
                            Core..!@ Prelude.mempty
                        )
            Prelude.<*> (x Data..?> "NextToken")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
            Prelude.<*> (x Data..:> "SessionId")
      )

instance Prelude.Hashable ListExecutors where
  hashWithSalt _salt ListExecutors' {..} =
    _salt
      `Prelude.hashWithSalt` executorStateFilter
      `Prelude.hashWithSalt` maxResults
      `Prelude.hashWithSalt` nextToken
      `Prelude.hashWithSalt` sessionId

instance Prelude.NFData ListExecutors where
  rnf ListExecutors' {..} =
    Prelude.rnf executorStateFilter
      `Prelude.seq` Prelude.rnf maxResults
      `Prelude.seq` Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf sessionId

instance Data.ToHeaders ListExecutors where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Data.=# ("AmazonAthena.ListExecutors" :: Prelude.ByteString),
            "Content-Type"
              Data.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Data.ToJSON ListExecutors where
  toJSON ListExecutors' {..} =
    Data.object
      ( Prelude.catMaybes
          [ ("ExecutorStateFilter" Data..=)
              Prelude.<$> executorStateFilter,
            ("MaxResults" Data..=) Prelude.<$> maxResults,
            ("NextToken" Data..=) Prelude.<$> nextToken,
            Prelude.Just ("SessionId" Data..= sessionId)
          ]
      )

instance Data.ToPath ListExecutors where
  toPath = Prelude.const "/"

instance Data.ToQuery ListExecutors where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newListExecutorsResponse' smart constructor.
data ListExecutorsResponse = ListExecutorsResponse'
  { -- | Contains summary information about the executor.
    executorsSummary :: Prelude.Maybe [ExecutorsSummary],
    -- | A token generated by the Athena service that specifies where to continue
    -- pagination if a previous request was truncated. To obtain the next set
    -- of pages, pass in the @NextToken@ from the response object of the
    -- previous page call.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int,
    -- | The session ID.
    sessionId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListExecutorsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'executorsSummary', 'listExecutorsResponse_executorsSummary' - Contains summary information about the executor.
--
-- 'nextToken', 'listExecutorsResponse_nextToken' - A token generated by the Athena service that specifies where to continue
-- pagination if a previous request was truncated. To obtain the next set
-- of pages, pass in the @NextToken@ from the response object of the
-- previous page call.
--
-- 'httpStatus', 'listExecutorsResponse_httpStatus' - The response's http status code.
--
-- 'sessionId', 'listExecutorsResponse_sessionId' - The session ID.
newListExecutorsResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  -- | 'sessionId'
  Prelude.Text ->
  ListExecutorsResponse
newListExecutorsResponse pHttpStatus_ pSessionId_ =
  ListExecutorsResponse'
    { executorsSummary =
        Prelude.Nothing,
      nextToken = Prelude.Nothing,
      httpStatus = pHttpStatus_,
      sessionId = pSessionId_
    }

-- | Contains summary information about the executor.
listExecutorsResponse_executorsSummary :: Lens.Lens' ListExecutorsResponse (Prelude.Maybe [ExecutorsSummary])
listExecutorsResponse_executorsSummary = Lens.lens (\ListExecutorsResponse' {executorsSummary} -> executorsSummary) (\s@ListExecutorsResponse' {} a -> s {executorsSummary = a} :: ListExecutorsResponse) Prelude.. Lens.mapping Lens.coerced

-- | A token generated by the Athena service that specifies where to continue
-- pagination if a previous request was truncated. To obtain the next set
-- of pages, pass in the @NextToken@ from the response object of the
-- previous page call.
listExecutorsResponse_nextToken :: Lens.Lens' ListExecutorsResponse (Prelude.Maybe Prelude.Text)
listExecutorsResponse_nextToken = Lens.lens (\ListExecutorsResponse' {nextToken} -> nextToken) (\s@ListExecutorsResponse' {} a -> s {nextToken = a} :: ListExecutorsResponse)

-- | The response's http status code.
listExecutorsResponse_httpStatus :: Lens.Lens' ListExecutorsResponse Prelude.Int
listExecutorsResponse_httpStatus = Lens.lens (\ListExecutorsResponse' {httpStatus} -> httpStatus) (\s@ListExecutorsResponse' {} a -> s {httpStatus = a} :: ListExecutorsResponse)

-- | The session ID.
listExecutorsResponse_sessionId :: Lens.Lens' ListExecutorsResponse Prelude.Text
listExecutorsResponse_sessionId = Lens.lens (\ListExecutorsResponse' {sessionId} -> sessionId) (\s@ListExecutorsResponse' {} a -> s {sessionId = a} :: ListExecutorsResponse)

instance Prelude.NFData ListExecutorsResponse where
  rnf ListExecutorsResponse' {..} =
    Prelude.rnf executorsSummary
      `Prelude.seq` Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf httpStatus
      `Prelude.seq` Prelude.rnf sessionId
