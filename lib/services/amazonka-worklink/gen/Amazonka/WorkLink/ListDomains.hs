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
-- Module      : Amazonka.WorkLink.ListDomains
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a list of domains associated to a specified fleet.
module Amazonka.WorkLink.ListDomains
  ( -- * Creating a Request
    ListDomains (..),
    newListDomains,

    -- * Request Lenses
    listDomains_nextToken,
    listDomains_maxResults,
    listDomains_fleetArn,

    -- * Destructuring the Response
    ListDomainsResponse (..),
    newListDomainsResponse,

    -- * Response Lenses
    listDomainsResponse_domains,
    listDomainsResponse_nextToken,
    listDomainsResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response
import Amazonka.WorkLink.Types

-- | /See:/ 'newListDomains' smart constructor.
data ListDomains = ListDomains'
  { -- | The pagination token used to retrieve the next page of results for this
    -- operation. If this value is null, it retrieves the first page.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The maximum number of results to be included in the next page.
    maxResults :: Prelude.Maybe Prelude.Natural,
    -- | The ARN of the fleet.
    fleetArn :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListDomains' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listDomains_nextToken' - The pagination token used to retrieve the next page of results for this
-- operation. If this value is null, it retrieves the first page.
--
-- 'maxResults', 'listDomains_maxResults' - The maximum number of results to be included in the next page.
--
-- 'fleetArn', 'listDomains_fleetArn' - The ARN of the fleet.
newListDomains ::
  -- | 'fleetArn'
  Prelude.Text ->
  ListDomains
newListDomains pFleetArn_ =
  ListDomains'
    { nextToken = Prelude.Nothing,
      maxResults = Prelude.Nothing,
      fleetArn = pFleetArn_
    }

-- | The pagination token used to retrieve the next page of results for this
-- operation. If this value is null, it retrieves the first page.
listDomains_nextToken :: Lens.Lens' ListDomains (Prelude.Maybe Prelude.Text)
listDomains_nextToken = Lens.lens (\ListDomains' {nextToken} -> nextToken) (\s@ListDomains' {} a -> s {nextToken = a} :: ListDomains)

-- | The maximum number of results to be included in the next page.
listDomains_maxResults :: Lens.Lens' ListDomains (Prelude.Maybe Prelude.Natural)
listDomains_maxResults = Lens.lens (\ListDomains' {maxResults} -> maxResults) (\s@ListDomains' {} a -> s {maxResults = a} :: ListDomains)

-- | The ARN of the fleet.
listDomains_fleetArn :: Lens.Lens' ListDomains Prelude.Text
listDomains_fleetArn = Lens.lens (\ListDomains' {fleetArn} -> fleetArn) (\s@ListDomains' {} a -> s {fleetArn = a} :: ListDomains)

instance Core.AWSRequest ListDomains where
  type AWSResponse ListDomains = ListDomainsResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          ListDomainsResponse'
            Prelude.<$> (x Core..?> "Domains" Core..!@ Prelude.mempty)
            Prelude.<*> (x Core..?> "NextToken")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable ListDomains where
  hashWithSalt _salt ListDomains' {..} =
    _salt `Prelude.hashWithSalt` nextToken
      `Prelude.hashWithSalt` maxResults
      `Prelude.hashWithSalt` fleetArn

instance Prelude.NFData ListDomains where
  rnf ListDomains' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf maxResults
      `Prelude.seq` Prelude.rnf fleetArn

instance Core.ToHeaders ListDomains where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON ListDomains where
  toJSON ListDomains' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("NextToken" Core..=) Prelude.<$> nextToken,
            ("MaxResults" Core..=) Prelude.<$> maxResults,
            Prelude.Just ("FleetArn" Core..= fleetArn)
          ]
      )

instance Core.ToPath ListDomains where
  toPath = Prelude.const "/listDomains"

instance Core.ToQuery ListDomains where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newListDomainsResponse' smart constructor.
data ListDomainsResponse = ListDomainsResponse'
  { -- | Information about the domains.
    domains :: Prelude.Maybe [DomainSummary],
    -- | The pagination token used to retrieve the next page of results for this
    -- operation. If there are no more pages, this value is null.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListDomainsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'domains', 'listDomainsResponse_domains' - Information about the domains.
--
-- 'nextToken', 'listDomainsResponse_nextToken' - The pagination token used to retrieve the next page of results for this
-- operation. If there are no more pages, this value is null.
--
-- 'httpStatus', 'listDomainsResponse_httpStatus' - The response's http status code.
newListDomainsResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  ListDomainsResponse
newListDomainsResponse pHttpStatus_ =
  ListDomainsResponse'
    { domains = Prelude.Nothing,
      nextToken = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | Information about the domains.
listDomainsResponse_domains :: Lens.Lens' ListDomainsResponse (Prelude.Maybe [DomainSummary])
listDomainsResponse_domains = Lens.lens (\ListDomainsResponse' {domains} -> domains) (\s@ListDomainsResponse' {} a -> s {domains = a} :: ListDomainsResponse) Prelude.. Lens.mapping Lens.coerced

-- | The pagination token used to retrieve the next page of results for this
-- operation. If there are no more pages, this value is null.
listDomainsResponse_nextToken :: Lens.Lens' ListDomainsResponse (Prelude.Maybe Prelude.Text)
listDomainsResponse_nextToken = Lens.lens (\ListDomainsResponse' {nextToken} -> nextToken) (\s@ListDomainsResponse' {} a -> s {nextToken = a} :: ListDomainsResponse)

-- | The response's http status code.
listDomainsResponse_httpStatus :: Lens.Lens' ListDomainsResponse Prelude.Int
listDomainsResponse_httpStatus = Lens.lens (\ListDomainsResponse' {httpStatus} -> httpStatus) (\s@ListDomainsResponse' {} a -> s {httpStatus = a} :: ListDomainsResponse)

instance Prelude.NFData ListDomainsResponse where
  rnf ListDomainsResponse' {..} =
    Prelude.rnf domains
      `Prelude.seq` Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf httpStatus
