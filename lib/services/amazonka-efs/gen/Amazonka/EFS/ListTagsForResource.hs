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
-- Module      : Amazonka.EFS.ListTagsForResource
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all tags for a top-level EFS resource. You must provide the ID of
-- the resource that you want to retrieve the tags for.
--
-- This operation requires permissions for the
-- @elasticfilesystem:DescribeAccessPoints@ action.
module Amazonka.EFS.ListTagsForResource
  ( -- * Creating a Request
    ListTagsForResource (..),
    newListTagsForResource,

    -- * Request Lenses
    listTagsForResource_nextToken,
    listTagsForResource_maxResults,
    listTagsForResource_resourceId,

    -- * Destructuring the Response
    ListTagsForResourceResponse (..),
    newListTagsForResourceResponse,

    -- * Response Lenses
    listTagsForResourceResponse_tags,
    listTagsForResourceResponse_nextToken,
    listTagsForResourceResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import Amazonka.EFS.Types
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newListTagsForResource' smart constructor.
data ListTagsForResource = ListTagsForResource'
  { -- | (Optional) You can use @NextToken@ in a subsequent request to fetch the
    -- next page of access point descriptions if the response payload was
    -- paginated.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | (Optional) Specifies the maximum number of tag objects to return in the
    -- response. The default value is 100.
    maxResults :: Prelude.Maybe Prelude.Natural,
    -- | Specifies the EFS resource you want to retrieve tags for. You can
    -- retrieve tags for EFS file systems and access points using this API
    -- endpoint.
    resourceId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListTagsForResource' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listTagsForResource_nextToken' - (Optional) You can use @NextToken@ in a subsequent request to fetch the
-- next page of access point descriptions if the response payload was
-- paginated.
--
-- 'maxResults', 'listTagsForResource_maxResults' - (Optional) Specifies the maximum number of tag objects to return in the
-- response. The default value is 100.
--
-- 'resourceId', 'listTagsForResource_resourceId' - Specifies the EFS resource you want to retrieve tags for. You can
-- retrieve tags for EFS file systems and access points using this API
-- endpoint.
newListTagsForResource ::
  -- | 'resourceId'
  Prelude.Text ->
  ListTagsForResource
newListTagsForResource pResourceId_ =
  ListTagsForResource'
    { nextToken = Prelude.Nothing,
      maxResults = Prelude.Nothing,
      resourceId = pResourceId_
    }

-- | (Optional) You can use @NextToken@ in a subsequent request to fetch the
-- next page of access point descriptions if the response payload was
-- paginated.
listTagsForResource_nextToken :: Lens.Lens' ListTagsForResource (Prelude.Maybe Prelude.Text)
listTagsForResource_nextToken = Lens.lens (\ListTagsForResource' {nextToken} -> nextToken) (\s@ListTagsForResource' {} a -> s {nextToken = a} :: ListTagsForResource)

-- | (Optional) Specifies the maximum number of tag objects to return in the
-- response. The default value is 100.
listTagsForResource_maxResults :: Lens.Lens' ListTagsForResource (Prelude.Maybe Prelude.Natural)
listTagsForResource_maxResults = Lens.lens (\ListTagsForResource' {maxResults} -> maxResults) (\s@ListTagsForResource' {} a -> s {maxResults = a} :: ListTagsForResource)

-- | Specifies the EFS resource you want to retrieve tags for. You can
-- retrieve tags for EFS file systems and access points using this API
-- endpoint.
listTagsForResource_resourceId :: Lens.Lens' ListTagsForResource Prelude.Text
listTagsForResource_resourceId = Lens.lens (\ListTagsForResource' {resourceId} -> resourceId) (\s@ListTagsForResource' {} a -> s {resourceId = a} :: ListTagsForResource)

instance Core.AWSRequest ListTagsForResource where
  type
    AWSResponse ListTagsForResource =
      ListTagsForResourceResponse
  request = Request.get defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          ListTagsForResourceResponse'
            Prelude.<$> (x Core..?> "Tags" Core..!@ Prelude.mempty)
            Prelude.<*> (x Core..?> "NextToken")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable ListTagsForResource where
  hashWithSalt _salt ListTagsForResource' {..} =
    _salt `Prelude.hashWithSalt` nextToken
      `Prelude.hashWithSalt` maxResults
      `Prelude.hashWithSalt` resourceId

instance Prelude.NFData ListTagsForResource where
  rnf ListTagsForResource' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf maxResults
      `Prelude.seq` Prelude.rnf resourceId

instance Core.ToHeaders ListTagsForResource where
  toHeaders = Prelude.const Prelude.mempty

instance Core.ToPath ListTagsForResource where
  toPath ListTagsForResource' {..} =
    Prelude.mconcat
      ["/2015-02-01/resource-tags/", Core.toBS resourceId]

instance Core.ToQuery ListTagsForResource where
  toQuery ListTagsForResource' {..} =
    Prelude.mconcat
      [ "NextToken" Core.=: nextToken,
        "MaxResults" Core.=: maxResults
      ]

-- | /See:/ 'newListTagsForResourceResponse' smart constructor.
data ListTagsForResourceResponse = ListTagsForResourceResponse'
  { -- | An array of the tags for the specified EFS resource.
    tags :: Prelude.Maybe [Tag],
    -- | @NextToken@ is present if the response payload is paginated. You can use
    -- @NextToken@ in a subsequent request to fetch the next page of access
    -- point descriptions.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListTagsForResourceResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'tags', 'listTagsForResourceResponse_tags' - An array of the tags for the specified EFS resource.
--
-- 'nextToken', 'listTagsForResourceResponse_nextToken' - @NextToken@ is present if the response payload is paginated. You can use
-- @NextToken@ in a subsequent request to fetch the next page of access
-- point descriptions.
--
-- 'httpStatus', 'listTagsForResourceResponse_httpStatus' - The response's http status code.
newListTagsForResourceResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  ListTagsForResourceResponse
newListTagsForResourceResponse pHttpStatus_ =
  ListTagsForResourceResponse'
    { tags =
        Prelude.Nothing,
      nextToken = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | An array of the tags for the specified EFS resource.
listTagsForResourceResponse_tags :: Lens.Lens' ListTagsForResourceResponse (Prelude.Maybe [Tag])
listTagsForResourceResponse_tags = Lens.lens (\ListTagsForResourceResponse' {tags} -> tags) (\s@ListTagsForResourceResponse' {} a -> s {tags = a} :: ListTagsForResourceResponse) Prelude.. Lens.mapping Lens.coerced

-- | @NextToken@ is present if the response payload is paginated. You can use
-- @NextToken@ in a subsequent request to fetch the next page of access
-- point descriptions.
listTagsForResourceResponse_nextToken :: Lens.Lens' ListTagsForResourceResponse (Prelude.Maybe Prelude.Text)
listTagsForResourceResponse_nextToken = Lens.lens (\ListTagsForResourceResponse' {nextToken} -> nextToken) (\s@ListTagsForResourceResponse' {} a -> s {nextToken = a} :: ListTagsForResourceResponse)

-- | The response's http status code.
listTagsForResourceResponse_httpStatus :: Lens.Lens' ListTagsForResourceResponse Prelude.Int
listTagsForResourceResponse_httpStatus = Lens.lens (\ListTagsForResourceResponse' {httpStatus} -> httpStatus) (\s@ListTagsForResourceResponse' {} a -> s {httpStatus = a} :: ListTagsForResourceResponse)

instance Prelude.NFData ListTagsForResourceResponse where
  rnf ListTagsForResourceResponse' {..} =
    Prelude.rnf tags
      `Prelude.seq` Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf httpStatus
