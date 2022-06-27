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
-- Module      : Amazonka.RAM.GetResourceShareAssociations
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the resources or principals for the resource shares that you own.
--
-- This operation returns paginated results.
module Amazonka.RAM.GetResourceShareAssociations
  ( -- * Creating a Request
    GetResourceShareAssociations (..),
    newGetResourceShareAssociations,

    -- * Request Lenses
    getResourceShareAssociations_principal,
    getResourceShareAssociations_nextToken,
    getResourceShareAssociations_associationStatus,
    getResourceShareAssociations_maxResults,
    getResourceShareAssociations_resourceShareArns,
    getResourceShareAssociations_resourceArn,
    getResourceShareAssociations_associationType,

    -- * Destructuring the Response
    GetResourceShareAssociationsResponse (..),
    newGetResourceShareAssociationsResponse,

    -- * Response Lenses
    getResourceShareAssociationsResponse_nextToken,
    getResourceShareAssociationsResponse_resourceShareAssociations,
    getResourceShareAssociationsResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import Amazonka.RAM.Types
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newGetResourceShareAssociations' smart constructor.
data GetResourceShareAssociations = GetResourceShareAssociations'
  { -- | The principal. You cannot specify this parameter if the association type
    -- is @RESOURCE@.
    principal :: Prelude.Maybe Prelude.Text,
    -- | The token for the next page of results.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The association status.
    associationStatus :: Prelude.Maybe ResourceShareAssociationStatus,
    -- | The maximum number of results to return with a single call. To retrieve
    -- the remaining results, make another call with the returned @nextToken@
    -- value.
    maxResults :: Prelude.Maybe Prelude.Natural,
    -- | The Amazon Resource Names (ARN) of the resource shares.
    resourceShareArns :: Prelude.Maybe [Prelude.Text],
    -- | The Amazon Resource Name (ARN) of the resource. You cannot specify this
    -- parameter if the association type is @PRINCIPAL@.
    resourceArn :: Prelude.Maybe Prelude.Text,
    -- | The association type. Specify @PRINCIPAL@ to list the principals that
    -- are associated with the specified resource share. Specify @RESOURCE@ to
    -- list the resources that are associated with the specified resource
    -- share.
    associationType :: ResourceShareAssociationType
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetResourceShareAssociations' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'principal', 'getResourceShareAssociations_principal' - The principal. You cannot specify this parameter if the association type
-- is @RESOURCE@.
--
-- 'nextToken', 'getResourceShareAssociations_nextToken' - The token for the next page of results.
--
-- 'associationStatus', 'getResourceShareAssociations_associationStatus' - The association status.
--
-- 'maxResults', 'getResourceShareAssociations_maxResults' - The maximum number of results to return with a single call. To retrieve
-- the remaining results, make another call with the returned @nextToken@
-- value.
--
-- 'resourceShareArns', 'getResourceShareAssociations_resourceShareArns' - The Amazon Resource Names (ARN) of the resource shares.
--
-- 'resourceArn', 'getResourceShareAssociations_resourceArn' - The Amazon Resource Name (ARN) of the resource. You cannot specify this
-- parameter if the association type is @PRINCIPAL@.
--
-- 'associationType', 'getResourceShareAssociations_associationType' - The association type. Specify @PRINCIPAL@ to list the principals that
-- are associated with the specified resource share. Specify @RESOURCE@ to
-- list the resources that are associated with the specified resource
-- share.
newGetResourceShareAssociations ::
  -- | 'associationType'
  ResourceShareAssociationType ->
  GetResourceShareAssociations
newGetResourceShareAssociations pAssociationType_ =
  GetResourceShareAssociations'
    { principal =
        Prelude.Nothing,
      nextToken = Prelude.Nothing,
      associationStatus = Prelude.Nothing,
      maxResults = Prelude.Nothing,
      resourceShareArns = Prelude.Nothing,
      resourceArn = Prelude.Nothing,
      associationType = pAssociationType_
    }

-- | The principal. You cannot specify this parameter if the association type
-- is @RESOURCE@.
getResourceShareAssociations_principal :: Lens.Lens' GetResourceShareAssociations (Prelude.Maybe Prelude.Text)
getResourceShareAssociations_principal = Lens.lens (\GetResourceShareAssociations' {principal} -> principal) (\s@GetResourceShareAssociations' {} a -> s {principal = a} :: GetResourceShareAssociations)

-- | The token for the next page of results.
getResourceShareAssociations_nextToken :: Lens.Lens' GetResourceShareAssociations (Prelude.Maybe Prelude.Text)
getResourceShareAssociations_nextToken = Lens.lens (\GetResourceShareAssociations' {nextToken} -> nextToken) (\s@GetResourceShareAssociations' {} a -> s {nextToken = a} :: GetResourceShareAssociations)

-- | The association status.
getResourceShareAssociations_associationStatus :: Lens.Lens' GetResourceShareAssociations (Prelude.Maybe ResourceShareAssociationStatus)
getResourceShareAssociations_associationStatus = Lens.lens (\GetResourceShareAssociations' {associationStatus} -> associationStatus) (\s@GetResourceShareAssociations' {} a -> s {associationStatus = a} :: GetResourceShareAssociations)

-- | The maximum number of results to return with a single call. To retrieve
-- the remaining results, make another call with the returned @nextToken@
-- value.
getResourceShareAssociations_maxResults :: Lens.Lens' GetResourceShareAssociations (Prelude.Maybe Prelude.Natural)
getResourceShareAssociations_maxResults = Lens.lens (\GetResourceShareAssociations' {maxResults} -> maxResults) (\s@GetResourceShareAssociations' {} a -> s {maxResults = a} :: GetResourceShareAssociations)

-- | The Amazon Resource Names (ARN) of the resource shares.
getResourceShareAssociations_resourceShareArns :: Lens.Lens' GetResourceShareAssociations (Prelude.Maybe [Prelude.Text])
getResourceShareAssociations_resourceShareArns = Lens.lens (\GetResourceShareAssociations' {resourceShareArns} -> resourceShareArns) (\s@GetResourceShareAssociations' {} a -> s {resourceShareArns = a} :: GetResourceShareAssociations) Prelude.. Lens.mapping Lens.coerced

-- | The Amazon Resource Name (ARN) of the resource. You cannot specify this
-- parameter if the association type is @PRINCIPAL@.
getResourceShareAssociations_resourceArn :: Lens.Lens' GetResourceShareAssociations (Prelude.Maybe Prelude.Text)
getResourceShareAssociations_resourceArn = Lens.lens (\GetResourceShareAssociations' {resourceArn} -> resourceArn) (\s@GetResourceShareAssociations' {} a -> s {resourceArn = a} :: GetResourceShareAssociations)

-- | The association type. Specify @PRINCIPAL@ to list the principals that
-- are associated with the specified resource share. Specify @RESOURCE@ to
-- list the resources that are associated with the specified resource
-- share.
getResourceShareAssociations_associationType :: Lens.Lens' GetResourceShareAssociations ResourceShareAssociationType
getResourceShareAssociations_associationType = Lens.lens (\GetResourceShareAssociations' {associationType} -> associationType) (\s@GetResourceShareAssociations' {} a -> s {associationType = a} :: GetResourceShareAssociations)

instance Core.AWSPager GetResourceShareAssociations where
  page rq rs
    | Core.stop
        ( rs
            Lens.^? getResourceShareAssociationsResponse_nextToken
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Core.stop
        ( rs
            Lens.^? getResourceShareAssociationsResponse_resourceShareAssociations
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Prelude.otherwise =
      Prelude.Just Prelude.$
        rq
          Prelude.& getResourceShareAssociations_nextToken
          Lens..~ rs
          Lens.^? getResourceShareAssociationsResponse_nextToken
            Prelude.. Lens._Just

instance Core.AWSRequest GetResourceShareAssociations where
  type
    AWSResponse GetResourceShareAssociations =
      GetResourceShareAssociationsResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          GetResourceShareAssociationsResponse'
            Prelude.<$> (x Core..?> "nextToken")
            Prelude.<*> ( x Core..?> "resourceShareAssociations"
                            Core..!@ Prelude.mempty
                        )
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance
  Prelude.Hashable
    GetResourceShareAssociations
  where
  hashWithSalt _salt GetResourceShareAssociations' {..} =
    _salt `Prelude.hashWithSalt` principal
      `Prelude.hashWithSalt` nextToken
      `Prelude.hashWithSalt` associationStatus
      `Prelude.hashWithSalt` maxResults
      `Prelude.hashWithSalt` resourceShareArns
      `Prelude.hashWithSalt` resourceArn
      `Prelude.hashWithSalt` associationType

instance Prelude.NFData GetResourceShareAssociations where
  rnf GetResourceShareAssociations' {..} =
    Prelude.rnf principal
      `Prelude.seq` Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf associationStatus
      `Prelude.seq` Prelude.rnf maxResults
      `Prelude.seq` Prelude.rnf resourceShareArns
      `Prelude.seq` Prelude.rnf resourceArn
      `Prelude.seq` Prelude.rnf associationType

instance Core.ToHeaders GetResourceShareAssociations where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON GetResourceShareAssociations where
  toJSON GetResourceShareAssociations' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("principal" Core..=) Prelude.<$> principal,
            ("nextToken" Core..=) Prelude.<$> nextToken,
            ("associationStatus" Core..=)
              Prelude.<$> associationStatus,
            ("maxResults" Core..=) Prelude.<$> maxResults,
            ("resourceShareArns" Core..=)
              Prelude.<$> resourceShareArns,
            ("resourceArn" Core..=) Prelude.<$> resourceArn,
            Prelude.Just
              ("associationType" Core..= associationType)
          ]
      )

instance Core.ToPath GetResourceShareAssociations where
  toPath =
    Prelude.const "/getresourceshareassociations"

instance Core.ToQuery GetResourceShareAssociations where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newGetResourceShareAssociationsResponse' smart constructor.
data GetResourceShareAssociationsResponse = GetResourceShareAssociationsResponse'
  { -- | The token to use to retrieve the next page of results. This value is
    -- @null@ when there are no more results to return.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | Information about the associations.
    resourceShareAssociations :: Prelude.Maybe [ResourceShareAssociation],
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetResourceShareAssociationsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'getResourceShareAssociationsResponse_nextToken' - The token to use to retrieve the next page of results. This value is
-- @null@ when there are no more results to return.
--
-- 'resourceShareAssociations', 'getResourceShareAssociationsResponse_resourceShareAssociations' - Information about the associations.
--
-- 'httpStatus', 'getResourceShareAssociationsResponse_httpStatus' - The response's http status code.
newGetResourceShareAssociationsResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  GetResourceShareAssociationsResponse
newGetResourceShareAssociationsResponse pHttpStatus_ =
  GetResourceShareAssociationsResponse'
    { nextToken =
        Prelude.Nothing,
      resourceShareAssociations =
        Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The token to use to retrieve the next page of results. This value is
-- @null@ when there are no more results to return.
getResourceShareAssociationsResponse_nextToken :: Lens.Lens' GetResourceShareAssociationsResponse (Prelude.Maybe Prelude.Text)
getResourceShareAssociationsResponse_nextToken = Lens.lens (\GetResourceShareAssociationsResponse' {nextToken} -> nextToken) (\s@GetResourceShareAssociationsResponse' {} a -> s {nextToken = a} :: GetResourceShareAssociationsResponse)

-- | Information about the associations.
getResourceShareAssociationsResponse_resourceShareAssociations :: Lens.Lens' GetResourceShareAssociationsResponse (Prelude.Maybe [ResourceShareAssociation])
getResourceShareAssociationsResponse_resourceShareAssociations = Lens.lens (\GetResourceShareAssociationsResponse' {resourceShareAssociations} -> resourceShareAssociations) (\s@GetResourceShareAssociationsResponse' {} a -> s {resourceShareAssociations = a} :: GetResourceShareAssociationsResponse) Prelude.. Lens.mapping Lens.coerced

-- | The response's http status code.
getResourceShareAssociationsResponse_httpStatus :: Lens.Lens' GetResourceShareAssociationsResponse Prelude.Int
getResourceShareAssociationsResponse_httpStatus = Lens.lens (\GetResourceShareAssociationsResponse' {httpStatus} -> httpStatus) (\s@GetResourceShareAssociationsResponse' {} a -> s {httpStatus = a} :: GetResourceShareAssociationsResponse)

instance
  Prelude.NFData
    GetResourceShareAssociationsResponse
  where
  rnf GetResourceShareAssociationsResponse' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf resourceShareAssociations
      `Prelude.seq` Prelude.rnf httpStatus
