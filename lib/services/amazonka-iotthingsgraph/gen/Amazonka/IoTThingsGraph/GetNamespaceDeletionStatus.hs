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
-- Module      : Amazonka.IoTThingsGraph.GetNamespaceDeletionStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the status of a namespace deletion task.
module Amazonka.IoTThingsGraph.GetNamespaceDeletionStatus
  ( -- * Creating a Request
    GetNamespaceDeletionStatus (..),
    newGetNamespaceDeletionStatus,

    -- * Destructuring the Response
    GetNamespaceDeletionStatusResponse (..),
    newGetNamespaceDeletionStatusResponse,

    -- * Response Lenses
    getNamespaceDeletionStatusResponse_namespaceName,
    getNamespaceDeletionStatusResponse_errorMessage,
    getNamespaceDeletionStatusResponse_namespaceArn,
    getNamespaceDeletionStatusResponse_status,
    getNamespaceDeletionStatusResponse_errorCode,
    getNamespaceDeletionStatusResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import Amazonka.IoTThingsGraph.Types
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newGetNamespaceDeletionStatus' smart constructor.
data GetNamespaceDeletionStatus = GetNamespaceDeletionStatus'
  {
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetNamespaceDeletionStatus' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
newGetNamespaceDeletionStatus ::
  GetNamespaceDeletionStatus
newGetNamespaceDeletionStatus =
  GetNamespaceDeletionStatus'

instance Core.AWSRequest GetNamespaceDeletionStatus where
  type
    AWSResponse GetNamespaceDeletionStatus =
      GetNamespaceDeletionStatusResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          GetNamespaceDeletionStatusResponse'
            Prelude.<$> (x Core..?> "namespaceName")
            Prelude.<*> (x Core..?> "errorMessage")
            Prelude.<*> (x Core..?> "namespaceArn")
            Prelude.<*> (x Core..?> "status")
            Prelude.<*> (x Core..?> "errorCode")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable GetNamespaceDeletionStatus where
  hashWithSalt _salt _ =
    _salt `Prelude.hashWithSalt` ()

instance Prelude.NFData GetNamespaceDeletionStatus where
  rnf _ = ()

instance Core.ToHeaders GetNamespaceDeletionStatus where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "IotThingsGraphFrontEndService.GetNamespaceDeletionStatus" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON GetNamespaceDeletionStatus where
  toJSON = Prelude.const (Core.Object Prelude.mempty)

instance Core.ToPath GetNamespaceDeletionStatus where
  toPath = Prelude.const "/"

instance Core.ToQuery GetNamespaceDeletionStatus where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newGetNamespaceDeletionStatusResponse' smart constructor.
data GetNamespaceDeletionStatusResponse = GetNamespaceDeletionStatusResponse'
  { -- | The name of the namespace that is being deleted.
    namespaceName :: Prelude.Maybe Prelude.Text,
    -- | An error code returned by the namespace deletion task.
    errorMessage :: Prelude.Maybe Prelude.Text,
    -- | The ARN of the namespace that is being deleted.
    namespaceArn :: Prelude.Maybe Prelude.Text,
    -- | The status of the deletion request.
    status :: Prelude.Maybe NamespaceDeletionStatus,
    -- | An error code returned by the namespace deletion task.
    errorCode :: Prelude.Maybe NamespaceDeletionStatusErrorCodes,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetNamespaceDeletionStatusResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'namespaceName', 'getNamespaceDeletionStatusResponse_namespaceName' - The name of the namespace that is being deleted.
--
-- 'errorMessage', 'getNamespaceDeletionStatusResponse_errorMessage' - An error code returned by the namespace deletion task.
--
-- 'namespaceArn', 'getNamespaceDeletionStatusResponse_namespaceArn' - The ARN of the namespace that is being deleted.
--
-- 'status', 'getNamespaceDeletionStatusResponse_status' - The status of the deletion request.
--
-- 'errorCode', 'getNamespaceDeletionStatusResponse_errorCode' - An error code returned by the namespace deletion task.
--
-- 'httpStatus', 'getNamespaceDeletionStatusResponse_httpStatus' - The response's http status code.
newGetNamespaceDeletionStatusResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  GetNamespaceDeletionStatusResponse
newGetNamespaceDeletionStatusResponse pHttpStatus_ =
  GetNamespaceDeletionStatusResponse'
    { namespaceName =
        Prelude.Nothing,
      errorMessage = Prelude.Nothing,
      namespaceArn = Prelude.Nothing,
      status = Prelude.Nothing,
      errorCode = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The name of the namespace that is being deleted.
getNamespaceDeletionStatusResponse_namespaceName :: Lens.Lens' GetNamespaceDeletionStatusResponse (Prelude.Maybe Prelude.Text)
getNamespaceDeletionStatusResponse_namespaceName = Lens.lens (\GetNamespaceDeletionStatusResponse' {namespaceName} -> namespaceName) (\s@GetNamespaceDeletionStatusResponse' {} a -> s {namespaceName = a} :: GetNamespaceDeletionStatusResponse)

-- | An error code returned by the namespace deletion task.
getNamespaceDeletionStatusResponse_errorMessage :: Lens.Lens' GetNamespaceDeletionStatusResponse (Prelude.Maybe Prelude.Text)
getNamespaceDeletionStatusResponse_errorMessage = Lens.lens (\GetNamespaceDeletionStatusResponse' {errorMessage} -> errorMessage) (\s@GetNamespaceDeletionStatusResponse' {} a -> s {errorMessage = a} :: GetNamespaceDeletionStatusResponse)

-- | The ARN of the namespace that is being deleted.
getNamespaceDeletionStatusResponse_namespaceArn :: Lens.Lens' GetNamespaceDeletionStatusResponse (Prelude.Maybe Prelude.Text)
getNamespaceDeletionStatusResponse_namespaceArn = Lens.lens (\GetNamespaceDeletionStatusResponse' {namespaceArn} -> namespaceArn) (\s@GetNamespaceDeletionStatusResponse' {} a -> s {namespaceArn = a} :: GetNamespaceDeletionStatusResponse)

-- | The status of the deletion request.
getNamespaceDeletionStatusResponse_status :: Lens.Lens' GetNamespaceDeletionStatusResponse (Prelude.Maybe NamespaceDeletionStatus)
getNamespaceDeletionStatusResponse_status = Lens.lens (\GetNamespaceDeletionStatusResponse' {status} -> status) (\s@GetNamespaceDeletionStatusResponse' {} a -> s {status = a} :: GetNamespaceDeletionStatusResponse)

-- | An error code returned by the namespace deletion task.
getNamespaceDeletionStatusResponse_errorCode :: Lens.Lens' GetNamespaceDeletionStatusResponse (Prelude.Maybe NamespaceDeletionStatusErrorCodes)
getNamespaceDeletionStatusResponse_errorCode = Lens.lens (\GetNamespaceDeletionStatusResponse' {errorCode} -> errorCode) (\s@GetNamespaceDeletionStatusResponse' {} a -> s {errorCode = a} :: GetNamespaceDeletionStatusResponse)

-- | The response's http status code.
getNamespaceDeletionStatusResponse_httpStatus :: Lens.Lens' GetNamespaceDeletionStatusResponse Prelude.Int
getNamespaceDeletionStatusResponse_httpStatus = Lens.lens (\GetNamespaceDeletionStatusResponse' {httpStatus} -> httpStatus) (\s@GetNamespaceDeletionStatusResponse' {} a -> s {httpStatus = a} :: GetNamespaceDeletionStatusResponse)

instance
  Prelude.NFData
    GetNamespaceDeletionStatusResponse
  where
  rnf GetNamespaceDeletionStatusResponse' {..} =
    Prelude.rnf namespaceName
      `Prelude.seq` Prelude.rnf errorMessage
      `Prelude.seq` Prelude.rnf namespaceArn
      `Prelude.seq` Prelude.rnf status
      `Prelude.seq` Prelude.rnf errorCode
      `Prelude.seq` Prelude.rnf httpStatus
