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
-- Module      : Amazonka.IoTSiteWise.ListAccessPolicies
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a paginated list of access policies for an identity (an Amazon
-- Web Services SSO user, an Amazon Web Services SSO group, or an IAM user)
-- or an IoT SiteWise Monitor resource (a portal or project).
--
-- This operation returns paginated results.
module Amazonka.IoTSiteWise.ListAccessPolicies
  ( -- * Creating a Request
    ListAccessPolicies (..),
    newListAccessPolicies,

    -- * Request Lenses
    listAccessPolicies_resourceId,
    listAccessPolicies_iamArn,
    listAccessPolicies_resourceType,
    listAccessPolicies_nextToken,
    listAccessPolicies_maxResults,
    listAccessPolicies_identityId,
    listAccessPolicies_identityType,

    -- * Destructuring the Response
    ListAccessPoliciesResponse (..),
    newListAccessPoliciesResponse,

    -- * Response Lenses
    listAccessPoliciesResponse_nextToken,
    listAccessPoliciesResponse_httpStatus,
    listAccessPoliciesResponse_accessPolicySummaries,
  )
where

import qualified Amazonka.Core as Core
import Amazonka.IoTSiteWise.Types
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newListAccessPolicies' smart constructor.
data ListAccessPolicies = ListAccessPolicies'
  { -- | The ID of the resource. This parameter is required if you specify
    -- @resourceType@.
    resourceId :: Prelude.Maybe Prelude.Text,
    -- | The ARN of the IAM user. For more information, see
    -- <https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_identifiers.html IAM ARNs>
    -- in the /IAM User Guide/. This parameter is required if you specify @IAM@
    -- for @identityType@.
    iamArn :: Prelude.Maybe Prelude.Text,
    -- | The type of resource (portal or project). This parameter is required if
    -- you specify @resourceId@.
    resourceType :: Prelude.Maybe ResourceType,
    -- | The token to be used for the next set of paginated results.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The maximum number of results to return for each paginated request.
    --
    -- Default: 50
    maxResults :: Prelude.Maybe Prelude.Natural,
    -- | The ID of the identity. This parameter is required if you specify @USER@
    -- or @GROUP@ for @identityType@.
    identityId :: Prelude.Maybe Prelude.Text,
    -- | The type of identity (Amazon Web Services SSO user, Amazon Web Services
    -- SSO group, or IAM user). This parameter is required if you specify
    -- @identityId@.
    identityType :: Prelude.Maybe IdentityType
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListAccessPolicies' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'resourceId', 'listAccessPolicies_resourceId' - The ID of the resource. This parameter is required if you specify
-- @resourceType@.
--
-- 'iamArn', 'listAccessPolicies_iamArn' - The ARN of the IAM user. For more information, see
-- <https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_identifiers.html IAM ARNs>
-- in the /IAM User Guide/. This parameter is required if you specify @IAM@
-- for @identityType@.
--
-- 'resourceType', 'listAccessPolicies_resourceType' - The type of resource (portal or project). This parameter is required if
-- you specify @resourceId@.
--
-- 'nextToken', 'listAccessPolicies_nextToken' - The token to be used for the next set of paginated results.
--
-- 'maxResults', 'listAccessPolicies_maxResults' - The maximum number of results to return for each paginated request.
--
-- Default: 50
--
-- 'identityId', 'listAccessPolicies_identityId' - The ID of the identity. This parameter is required if you specify @USER@
-- or @GROUP@ for @identityType@.
--
-- 'identityType', 'listAccessPolicies_identityType' - The type of identity (Amazon Web Services SSO user, Amazon Web Services
-- SSO group, or IAM user). This parameter is required if you specify
-- @identityId@.
newListAccessPolicies ::
  ListAccessPolicies
newListAccessPolicies =
  ListAccessPolicies'
    { resourceId = Prelude.Nothing,
      iamArn = Prelude.Nothing,
      resourceType = Prelude.Nothing,
      nextToken = Prelude.Nothing,
      maxResults = Prelude.Nothing,
      identityId = Prelude.Nothing,
      identityType = Prelude.Nothing
    }

-- | The ID of the resource. This parameter is required if you specify
-- @resourceType@.
listAccessPolicies_resourceId :: Lens.Lens' ListAccessPolicies (Prelude.Maybe Prelude.Text)
listAccessPolicies_resourceId = Lens.lens (\ListAccessPolicies' {resourceId} -> resourceId) (\s@ListAccessPolicies' {} a -> s {resourceId = a} :: ListAccessPolicies)

-- | The ARN of the IAM user. For more information, see
-- <https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_identifiers.html IAM ARNs>
-- in the /IAM User Guide/. This parameter is required if you specify @IAM@
-- for @identityType@.
listAccessPolicies_iamArn :: Lens.Lens' ListAccessPolicies (Prelude.Maybe Prelude.Text)
listAccessPolicies_iamArn = Lens.lens (\ListAccessPolicies' {iamArn} -> iamArn) (\s@ListAccessPolicies' {} a -> s {iamArn = a} :: ListAccessPolicies)

-- | The type of resource (portal or project). This parameter is required if
-- you specify @resourceId@.
listAccessPolicies_resourceType :: Lens.Lens' ListAccessPolicies (Prelude.Maybe ResourceType)
listAccessPolicies_resourceType = Lens.lens (\ListAccessPolicies' {resourceType} -> resourceType) (\s@ListAccessPolicies' {} a -> s {resourceType = a} :: ListAccessPolicies)

-- | The token to be used for the next set of paginated results.
listAccessPolicies_nextToken :: Lens.Lens' ListAccessPolicies (Prelude.Maybe Prelude.Text)
listAccessPolicies_nextToken = Lens.lens (\ListAccessPolicies' {nextToken} -> nextToken) (\s@ListAccessPolicies' {} a -> s {nextToken = a} :: ListAccessPolicies)

-- | The maximum number of results to return for each paginated request.
--
-- Default: 50
listAccessPolicies_maxResults :: Lens.Lens' ListAccessPolicies (Prelude.Maybe Prelude.Natural)
listAccessPolicies_maxResults = Lens.lens (\ListAccessPolicies' {maxResults} -> maxResults) (\s@ListAccessPolicies' {} a -> s {maxResults = a} :: ListAccessPolicies)

-- | The ID of the identity. This parameter is required if you specify @USER@
-- or @GROUP@ for @identityType@.
listAccessPolicies_identityId :: Lens.Lens' ListAccessPolicies (Prelude.Maybe Prelude.Text)
listAccessPolicies_identityId = Lens.lens (\ListAccessPolicies' {identityId} -> identityId) (\s@ListAccessPolicies' {} a -> s {identityId = a} :: ListAccessPolicies)

-- | The type of identity (Amazon Web Services SSO user, Amazon Web Services
-- SSO group, or IAM user). This parameter is required if you specify
-- @identityId@.
listAccessPolicies_identityType :: Lens.Lens' ListAccessPolicies (Prelude.Maybe IdentityType)
listAccessPolicies_identityType = Lens.lens (\ListAccessPolicies' {identityType} -> identityType) (\s@ListAccessPolicies' {} a -> s {identityType = a} :: ListAccessPolicies)

instance Core.AWSPager ListAccessPolicies where
  page rq rs
    | Core.stop
        ( rs
            Lens.^? listAccessPoliciesResponse_nextToken
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Core.stop
        ( rs
            Lens.^. listAccessPoliciesResponse_accessPolicySummaries
        ) =
      Prelude.Nothing
    | Prelude.otherwise =
      Prelude.Just Prelude.$
        rq
          Prelude.& listAccessPolicies_nextToken
          Lens..~ rs
          Lens.^? listAccessPoliciesResponse_nextToken
            Prelude.. Lens._Just

instance Core.AWSRequest ListAccessPolicies where
  type
    AWSResponse ListAccessPolicies =
      ListAccessPoliciesResponse
  service _ = defaultService
  request srv = Request.get srv
  response =
    Response.receiveJSON
      ( \s h x ->
          ListAccessPoliciesResponse'
            Prelude.<$> (x Core..?> "nextToken")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
            Prelude.<*> ( x Core..?> "accessPolicySummaries"
                            Core..!@ Prelude.mempty
                        )
      )

instance Prelude.Hashable ListAccessPolicies where
  hashWithSalt _salt ListAccessPolicies' {..} =
    _salt `Prelude.hashWithSalt` resourceId
      `Prelude.hashWithSalt` iamArn
      `Prelude.hashWithSalt` resourceType
      `Prelude.hashWithSalt` nextToken
      `Prelude.hashWithSalt` maxResults
      `Prelude.hashWithSalt` identityId
      `Prelude.hashWithSalt` identityType

instance Prelude.NFData ListAccessPolicies where
  rnf ListAccessPolicies' {..} =
    Prelude.rnf resourceId
      `Prelude.seq` Prelude.rnf iamArn
      `Prelude.seq` Prelude.rnf resourceType
      `Prelude.seq` Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf maxResults
      `Prelude.seq` Prelude.rnf identityId
      `Prelude.seq` Prelude.rnf identityType

instance Core.ToHeaders ListAccessPolicies where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToPath ListAccessPolicies where
  toPath = Prelude.const "/access-policies"

instance Core.ToQuery ListAccessPolicies where
  toQuery ListAccessPolicies' {..} =
    Prelude.mconcat
      [ "resourceId" Core.=: resourceId,
        "iamArn" Core.=: iamArn,
        "resourceType" Core.=: resourceType,
        "nextToken" Core.=: nextToken,
        "maxResults" Core.=: maxResults,
        "identityId" Core.=: identityId,
        "identityType" Core.=: identityType
      ]

-- | /See:/ 'newListAccessPoliciesResponse' smart constructor.
data ListAccessPoliciesResponse = ListAccessPoliciesResponse'
  { -- | The token for the next set of results, or null if there are no
    -- additional results.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int,
    -- | A list that summarizes each access policy.
    accessPolicySummaries :: [AccessPolicySummary]
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListAccessPoliciesResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listAccessPoliciesResponse_nextToken' - The token for the next set of results, or null if there are no
-- additional results.
--
-- 'httpStatus', 'listAccessPoliciesResponse_httpStatus' - The response's http status code.
--
-- 'accessPolicySummaries', 'listAccessPoliciesResponse_accessPolicySummaries' - A list that summarizes each access policy.
newListAccessPoliciesResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  ListAccessPoliciesResponse
newListAccessPoliciesResponse pHttpStatus_ =
  ListAccessPoliciesResponse'
    { nextToken =
        Prelude.Nothing,
      httpStatus = pHttpStatus_,
      accessPolicySummaries = Prelude.mempty
    }

-- | The token for the next set of results, or null if there are no
-- additional results.
listAccessPoliciesResponse_nextToken :: Lens.Lens' ListAccessPoliciesResponse (Prelude.Maybe Prelude.Text)
listAccessPoliciesResponse_nextToken = Lens.lens (\ListAccessPoliciesResponse' {nextToken} -> nextToken) (\s@ListAccessPoliciesResponse' {} a -> s {nextToken = a} :: ListAccessPoliciesResponse)

-- | The response's http status code.
listAccessPoliciesResponse_httpStatus :: Lens.Lens' ListAccessPoliciesResponse Prelude.Int
listAccessPoliciesResponse_httpStatus = Lens.lens (\ListAccessPoliciesResponse' {httpStatus} -> httpStatus) (\s@ListAccessPoliciesResponse' {} a -> s {httpStatus = a} :: ListAccessPoliciesResponse)

-- | A list that summarizes each access policy.
listAccessPoliciesResponse_accessPolicySummaries :: Lens.Lens' ListAccessPoliciesResponse [AccessPolicySummary]
listAccessPoliciesResponse_accessPolicySummaries = Lens.lens (\ListAccessPoliciesResponse' {accessPolicySummaries} -> accessPolicySummaries) (\s@ListAccessPoliciesResponse' {} a -> s {accessPolicySummaries = a} :: ListAccessPoliciesResponse) Prelude.. Lens.coerced

instance Prelude.NFData ListAccessPoliciesResponse where
  rnf ListAccessPoliciesResponse' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf httpStatus
      `Prelude.seq` Prelude.rnf accessPolicySummaries
