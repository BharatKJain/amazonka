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
-- Module      : Amazonka.StepFunctions.SendTaskFailure
-- Copyright   : (c) 2013-2023 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Used by activity workers and task states using the
-- <https://docs.aws.amazon.com/step-functions/latest/dg/connect-to-resource.html#connect-wait-token callback>
-- pattern to report that the task identified by the @taskToken@ failed.
module Amazonka.StepFunctions.SendTaskFailure
  ( -- * Creating a Request
    SendTaskFailure (..),
    newSendTaskFailure,

    -- * Request Lenses
    sendTaskFailure_cause,
    sendTaskFailure_error,
    sendTaskFailure_taskToken,

    -- * Destructuring the Response
    SendTaskFailureResponse (..),
    newSendTaskFailureResponse,

    -- * Response Lenses
    sendTaskFailureResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response
import Amazonka.StepFunctions.Types

-- | /See:/ 'newSendTaskFailure' smart constructor.
data SendTaskFailure = SendTaskFailure'
  { -- | A more detailed explanation of the cause of the failure.
    cause :: Prelude.Maybe (Data.Sensitive Prelude.Text),
    -- | The error code of the failure.
    error :: Prelude.Maybe (Data.Sensitive Prelude.Text),
    -- | The token that represents this task. Task tokens are generated by Step
    -- Functions when tasks are assigned to a worker, or in the
    -- <https://docs.aws.amazon.com/step-functions/latest/dg/input-output-contextobject.html context object>
    -- when a workflow enters a task state. See
    -- GetActivityTaskOutput$taskToken.
    taskToken :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'SendTaskFailure' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'cause', 'sendTaskFailure_cause' - A more detailed explanation of the cause of the failure.
--
-- 'error', 'sendTaskFailure_error' - The error code of the failure.
--
-- 'taskToken', 'sendTaskFailure_taskToken' - The token that represents this task. Task tokens are generated by Step
-- Functions when tasks are assigned to a worker, or in the
-- <https://docs.aws.amazon.com/step-functions/latest/dg/input-output-contextobject.html context object>
-- when a workflow enters a task state. See
-- GetActivityTaskOutput$taskToken.
newSendTaskFailure ::
  -- | 'taskToken'
  Prelude.Text ->
  SendTaskFailure
newSendTaskFailure pTaskToken_ =
  SendTaskFailure'
    { cause = Prelude.Nothing,
      error = Prelude.Nothing,
      taskToken = pTaskToken_
    }

-- | A more detailed explanation of the cause of the failure.
sendTaskFailure_cause :: Lens.Lens' SendTaskFailure (Prelude.Maybe Prelude.Text)
sendTaskFailure_cause = Lens.lens (\SendTaskFailure' {cause} -> cause) (\s@SendTaskFailure' {} a -> s {cause = a} :: SendTaskFailure) Prelude.. Lens.mapping Data._Sensitive

-- | The error code of the failure.
sendTaskFailure_error :: Lens.Lens' SendTaskFailure (Prelude.Maybe Prelude.Text)
sendTaskFailure_error = Lens.lens (\SendTaskFailure' {error} -> error) (\s@SendTaskFailure' {} a -> s {error = a} :: SendTaskFailure) Prelude.. Lens.mapping Data._Sensitive

-- | The token that represents this task. Task tokens are generated by Step
-- Functions when tasks are assigned to a worker, or in the
-- <https://docs.aws.amazon.com/step-functions/latest/dg/input-output-contextobject.html context object>
-- when a workflow enters a task state. See
-- GetActivityTaskOutput$taskToken.
sendTaskFailure_taskToken :: Lens.Lens' SendTaskFailure Prelude.Text
sendTaskFailure_taskToken = Lens.lens (\SendTaskFailure' {taskToken} -> taskToken) (\s@SendTaskFailure' {} a -> s {taskToken = a} :: SendTaskFailure)

instance Core.AWSRequest SendTaskFailure where
  type
    AWSResponse SendTaskFailure =
      SendTaskFailureResponse
  request overrides =
    Request.postJSON (overrides defaultService)
  response =
    Response.receiveEmpty
      ( \s h x ->
          SendTaskFailureResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable SendTaskFailure where
  hashWithSalt _salt SendTaskFailure' {..} =
    _salt
      `Prelude.hashWithSalt` cause
      `Prelude.hashWithSalt` error
      `Prelude.hashWithSalt` taskToken

instance Prelude.NFData SendTaskFailure where
  rnf SendTaskFailure' {..} =
    Prelude.rnf cause
      `Prelude.seq` Prelude.rnf error
      `Prelude.seq` Prelude.rnf taskToken

instance Data.ToHeaders SendTaskFailure where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Data.=# ( "AWSStepFunctions.SendTaskFailure" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Data.=# ( "application/x-amz-json-1.0" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Data.ToJSON SendTaskFailure where
  toJSON SendTaskFailure' {..} =
    Data.object
      ( Prelude.catMaybes
          [ ("cause" Data..=) Prelude.<$> cause,
            ("error" Data..=) Prelude.<$> error,
            Prelude.Just ("taskToken" Data..= taskToken)
          ]
      )

instance Data.ToPath SendTaskFailure where
  toPath = Prelude.const "/"

instance Data.ToQuery SendTaskFailure where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newSendTaskFailureResponse' smart constructor.
data SendTaskFailureResponse = SendTaskFailureResponse'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'SendTaskFailureResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'sendTaskFailureResponse_httpStatus' - The response's http status code.
newSendTaskFailureResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  SendTaskFailureResponse
newSendTaskFailureResponse pHttpStatus_ =
  SendTaskFailureResponse' {httpStatus = pHttpStatus_}

-- | The response's http status code.
sendTaskFailureResponse_httpStatus :: Lens.Lens' SendTaskFailureResponse Prelude.Int
sendTaskFailureResponse_httpStatus = Lens.lens (\SendTaskFailureResponse' {httpStatus} -> httpStatus) (\s@SendTaskFailureResponse' {} a -> s {httpStatus = a} :: SendTaskFailureResponse)

instance Prelude.NFData SendTaskFailureResponse where
  rnf SendTaskFailureResponse' {..} =
    Prelude.rnf httpStatus
