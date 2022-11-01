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
-- Module      : Amazonka.Kendra.Query
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Searches an active index. Use this API to search your documents using
-- query. The @Query@ API enables to do faceted search and to filter
-- results based on document attributes.
--
-- It also enables you to provide user context that Amazon Kendra uses to
-- enforce document access control in the search results.
--
-- Amazon Kendra searches your index for text content and question and
-- answer (FAQ) content. By default the response contains three types of
-- results.
--
-- -   Relevant passages
--
-- -   Matching FAQs
--
-- -   Relevant documents
--
-- You can specify that the query return only one type of result using the
-- @QueryResultTypeConfig@ parameter.
--
-- Each query returns the 100 most relevant results.
module Amazonka.Kendra.Query
  ( -- * Creating a Request
    Query (..),
    newQuery,

    -- * Request Lenses
    query_documentRelevanceOverrideConfigurations,
    query_requestedDocumentAttributes,
    query_userContext,
    query_queryText,
    query_queryResultTypeFilter,
    query_facets,
    query_pageNumber,
    query_pageSize,
    query_spellCorrectionConfiguration,
    query_sortingConfiguration,
    query_visitorId,
    query_attributeFilter,
    query_indexId,

    -- * Destructuring the Response
    QueryResponse (..),
    newQueryResponse,

    -- * Response Lenses
    queryResponse_spellCorrectedQueries,
    queryResponse_facetResults,
    queryResponse_queryId,
    queryResponse_resultItems,
    queryResponse_warnings,
    queryResponse_totalNumberOfResults,
    queryResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import Amazonka.Kendra.Types
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newQuery' smart constructor.
data Query = Query'
  { -- | Overrides relevance tuning configurations of fields or attributes set at
    -- the index level.
    --
    -- If you use this API to override the relevance tuning configured at the
    -- index level, but there is no relevance tuning configured at the index
    -- level, then Amazon Kendra does not apply any relevance tuning.
    --
    -- If there is relevance tuning configured at the index level, but you do
    -- not use this API to override any relevance tuning in the index, then
    -- Amazon Kendra uses the relevance tuning that is configured at the index
    -- level.
    --
    -- If there is relevance tuning configured for fields at the index level,
    -- but you use this API to override only some of these fields, then for the
    -- fields you did not override, the importance is set to 1.
    documentRelevanceOverrideConfigurations :: Prelude.Maybe [DocumentRelevanceConfiguration],
    -- | An array of document attributes to include in the response. You can
    -- limit the response to include certain document attributes. By default
    -- all document attributes are included in the response.
    requestedDocumentAttributes :: Prelude.Maybe (Prelude.NonEmpty Prelude.Text),
    -- | The user context token or user and group information.
    userContext :: Prelude.Maybe UserContext,
    -- | The text to search for.
    queryText :: Prelude.Maybe Prelude.Text,
    -- | Sets the type of query. Only results for the specified query type are
    -- returned.
    queryResultTypeFilter :: Prelude.Maybe QueryResultType,
    -- | An array of documents attributes. Amazon Kendra returns a count for each
    -- attribute key specified. This helps your users narrow their search.
    facets :: Prelude.Maybe [Facet],
    -- | Query results are returned in pages the size of the @PageSize@
    -- parameter. By default, Amazon Kendra returns the first page of results.
    -- Use this parameter to get result pages after the first one.
    pageNumber :: Prelude.Maybe Prelude.Int,
    -- | Sets the number of results that are returned in each page of results.
    -- The default page size is 10. The maximum number of results returned is
    -- 100. If you ask for more than 100 results, only 100 are returned.
    pageSize :: Prelude.Maybe Prelude.Int,
    -- | Enables suggested spell corrections for queries.
    spellCorrectionConfiguration :: Prelude.Maybe SpellCorrectionConfiguration,
    -- | Provides information that determines how the results of the query are
    -- sorted. You can set the field that Amazon Kendra should sort the results
    -- on, and specify whether the results should be sorted in ascending or
    -- descending order. In the case of ties in sorting the results, the
    -- results are sorted by relevance.
    --
    -- If you don\'t provide sorting configuration, the results are sorted by
    -- the relevance that Amazon Kendra determines for the result.
    sortingConfiguration :: Prelude.Maybe SortingConfiguration,
    -- | Provides an identifier for a specific user. The @VisitorId@ should be a
    -- unique identifier, such as a GUID. Don\'t use personally identifiable
    -- information, such as the user\'s email address, as the @VisitorId@.
    visitorId :: Prelude.Maybe Prelude.Text,
    -- | Enables filtered searches based on document attributes. You can only
    -- provide one attribute filter; however, the @AndAllFilters@, @NotFilter@,
    -- and @OrAllFilters@ parameters contain a list of other filters.
    --
    -- The @AttributeFilter@ parameter enables you to create a set of filtering
    -- rules that a document must satisfy to be included in the query results.
    attributeFilter :: Prelude.Maybe AttributeFilter,
    -- | The unique identifier of the index to search. The identifier is returned
    -- in the response from the @CreateIndex@ API.
    indexId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'Query' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'documentRelevanceOverrideConfigurations', 'query_documentRelevanceOverrideConfigurations' - Overrides relevance tuning configurations of fields or attributes set at
-- the index level.
--
-- If you use this API to override the relevance tuning configured at the
-- index level, but there is no relevance tuning configured at the index
-- level, then Amazon Kendra does not apply any relevance tuning.
--
-- If there is relevance tuning configured at the index level, but you do
-- not use this API to override any relevance tuning in the index, then
-- Amazon Kendra uses the relevance tuning that is configured at the index
-- level.
--
-- If there is relevance tuning configured for fields at the index level,
-- but you use this API to override only some of these fields, then for the
-- fields you did not override, the importance is set to 1.
--
-- 'requestedDocumentAttributes', 'query_requestedDocumentAttributes' - An array of document attributes to include in the response. You can
-- limit the response to include certain document attributes. By default
-- all document attributes are included in the response.
--
-- 'userContext', 'query_userContext' - The user context token or user and group information.
--
-- 'queryText', 'query_queryText' - The text to search for.
--
-- 'queryResultTypeFilter', 'query_queryResultTypeFilter' - Sets the type of query. Only results for the specified query type are
-- returned.
--
-- 'facets', 'query_facets' - An array of documents attributes. Amazon Kendra returns a count for each
-- attribute key specified. This helps your users narrow their search.
--
-- 'pageNumber', 'query_pageNumber' - Query results are returned in pages the size of the @PageSize@
-- parameter. By default, Amazon Kendra returns the first page of results.
-- Use this parameter to get result pages after the first one.
--
-- 'pageSize', 'query_pageSize' - Sets the number of results that are returned in each page of results.
-- The default page size is 10. The maximum number of results returned is
-- 100. If you ask for more than 100 results, only 100 are returned.
--
-- 'spellCorrectionConfiguration', 'query_spellCorrectionConfiguration' - Enables suggested spell corrections for queries.
--
-- 'sortingConfiguration', 'query_sortingConfiguration' - Provides information that determines how the results of the query are
-- sorted. You can set the field that Amazon Kendra should sort the results
-- on, and specify whether the results should be sorted in ascending or
-- descending order. In the case of ties in sorting the results, the
-- results are sorted by relevance.
--
-- If you don\'t provide sorting configuration, the results are sorted by
-- the relevance that Amazon Kendra determines for the result.
--
-- 'visitorId', 'query_visitorId' - Provides an identifier for a specific user. The @VisitorId@ should be a
-- unique identifier, such as a GUID. Don\'t use personally identifiable
-- information, such as the user\'s email address, as the @VisitorId@.
--
-- 'attributeFilter', 'query_attributeFilter' - Enables filtered searches based on document attributes. You can only
-- provide one attribute filter; however, the @AndAllFilters@, @NotFilter@,
-- and @OrAllFilters@ parameters contain a list of other filters.
--
-- The @AttributeFilter@ parameter enables you to create a set of filtering
-- rules that a document must satisfy to be included in the query results.
--
-- 'indexId', 'query_indexId' - The unique identifier of the index to search. The identifier is returned
-- in the response from the @CreateIndex@ API.
newQuery ::
  -- | 'indexId'
  Prelude.Text ->
  Query
newQuery pIndexId_ =
  Query'
    { documentRelevanceOverrideConfigurations =
        Prelude.Nothing,
      requestedDocumentAttributes = Prelude.Nothing,
      userContext = Prelude.Nothing,
      queryText = Prelude.Nothing,
      queryResultTypeFilter = Prelude.Nothing,
      facets = Prelude.Nothing,
      pageNumber = Prelude.Nothing,
      pageSize = Prelude.Nothing,
      spellCorrectionConfiguration = Prelude.Nothing,
      sortingConfiguration = Prelude.Nothing,
      visitorId = Prelude.Nothing,
      attributeFilter = Prelude.Nothing,
      indexId = pIndexId_
    }

-- | Overrides relevance tuning configurations of fields or attributes set at
-- the index level.
--
-- If you use this API to override the relevance tuning configured at the
-- index level, but there is no relevance tuning configured at the index
-- level, then Amazon Kendra does not apply any relevance tuning.
--
-- If there is relevance tuning configured at the index level, but you do
-- not use this API to override any relevance tuning in the index, then
-- Amazon Kendra uses the relevance tuning that is configured at the index
-- level.
--
-- If there is relevance tuning configured for fields at the index level,
-- but you use this API to override only some of these fields, then for the
-- fields you did not override, the importance is set to 1.
query_documentRelevanceOverrideConfigurations :: Lens.Lens' Query (Prelude.Maybe [DocumentRelevanceConfiguration])
query_documentRelevanceOverrideConfigurations = Lens.lens (\Query' {documentRelevanceOverrideConfigurations} -> documentRelevanceOverrideConfigurations) (\s@Query' {} a -> s {documentRelevanceOverrideConfigurations = a} :: Query) Prelude.. Lens.mapping Lens.coerced

-- | An array of document attributes to include in the response. You can
-- limit the response to include certain document attributes. By default
-- all document attributes are included in the response.
query_requestedDocumentAttributes :: Lens.Lens' Query (Prelude.Maybe (Prelude.NonEmpty Prelude.Text))
query_requestedDocumentAttributes = Lens.lens (\Query' {requestedDocumentAttributes} -> requestedDocumentAttributes) (\s@Query' {} a -> s {requestedDocumentAttributes = a} :: Query) Prelude.. Lens.mapping Lens.coerced

-- | The user context token or user and group information.
query_userContext :: Lens.Lens' Query (Prelude.Maybe UserContext)
query_userContext = Lens.lens (\Query' {userContext} -> userContext) (\s@Query' {} a -> s {userContext = a} :: Query)

-- | The text to search for.
query_queryText :: Lens.Lens' Query (Prelude.Maybe Prelude.Text)
query_queryText = Lens.lens (\Query' {queryText} -> queryText) (\s@Query' {} a -> s {queryText = a} :: Query)

-- | Sets the type of query. Only results for the specified query type are
-- returned.
query_queryResultTypeFilter :: Lens.Lens' Query (Prelude.Maybe QueryResultType)
query_queryResultTypeFilter = Lens.lens (\Query' {queryResultTypeFilter} -> queryResultTypeFilter) (\s@Query' {} a -> s {queryResultTypeFilter = a} :: Query)

-- | An array of documents attributes. Amazon Kendra returns a count for each
-- attribute key specified. This helps your users narrow their search.
query_facets :: Lens.Lens' Query (Prelude.Maybe [Facet])
query_facets = Lens.lens (\Query' {facets} -> facets) (\s@Query' {} a -> s {facets = a} :: Query) Prelude.. Lens.mapping Lens.coerced

-- | Query results are returned in pages the size of the @PageSize@
-- parameter. By default, Amazon Kendra returns the first page of results.
-- Use this parameter to get result pages after the first one.
query_pageNumber :: Lens.Lens' Query (Prelude.Maybe Prelude.Int)
query_pageNumber = Lens.lens (\Query' {pageNumber} -> pageNumber) (\s@Query' {} a -> s {pageNumber = a} :: Query)

-- | Sets the number of results that are returned in each page of results.
-- The default page size is 10. The maximum number of results returned is
-- 100. If you ask for more than 100 results, only 100 are returned.
query_pageSize :: Lens.Lens' Query (Prelude.Maybe Prelude.Int)
query_pageSize = Lens.lens (\Query' {pageSize} -> pageSize) (\s@Query' {} a -> s {pageSize = a} :: Query)

-- | Enables suggested spell corrections for queries.
query_spellCorrectionConfiguration :: Lens.Lens' Query (Prelude.Maybe SpellCorrectionConfiguration)
query_spellCorrectionConfiguration = Lens.lens (\Query' {spellCorrectionConfiguration} -> spellCorrectionConfiguration) (\s@Query' {} a -> s {spellCorrectionConfiguration = a} :: Query)

-- | Provides information that determines how the results of the query are
-- sorted. You can set the field that Amazon Kendra should sort the results
-- on, and specify whether the results should be sorted in ascending or
-- descending order. In the case of ties in sorting the results, the
-- results are sorted by relevance.
--
-- If you don\'t provide sorting configuration, the results are sorted by
-- the relevance that Amazon Kendra determines for the result.
query_sortingConfiguration :: Lens.Lens' Query (Prelude.Maybe SortingConfiguration)
query_sortingConfiguration = Lens.lens (\Query' {sortingConfiguration} -> sortingConfiguration) (\s@Query' {} a -> s {sortingConfiguration = a} :: Query)

-- | Provides an identifier for a specific user. The @VisitorId@ should be a
-- unique identifier, such as a GUID. Don\'t use personally identifiable
-- information, such as the user\'s email address, as the @VisitorId@.
query_visitorId :: Lens.Lens' Query (Prelude.Maybe Prelude.Text)
query_visitorId = Lens.lens (\Query' {visitorId} -> visitorId) (\s@Query' {} a -> s {visitorId = a} :: Query)

-- | Enables filtered searches based on document attributes. You can only
-- provide one attribute filter; however, the @AndAllFilters@, @NotFilter@,
-- and @OrAllFilters@ parameters contain a list of other filters.
--
-- The @AttributeFilter@ parameter enables you to create a set of filtering
-- rules that a document must satisfy to be included in the query results.
query_attributeFilter :: Lens.Lens' Query (Prelude.Maybe AttributeFilter)
query_attributeFilter = Lens.lens (\Query' {attributeFilter} -> attributeFilter) (\s@Query' {} a -> s {attributeFilter = a} :: Query)

-- | The unique identifier of the index to search. The identifier is returned
-- in the response from the @CreateIndex@ API.
query_indexId :: Lens.Lens' Query Prelude.Text
query_indexId = Lens.lens (\Query' {indexId} -> indexId) (\s@Query' {} a -> s {indexId = a} :: Query)

instance Core.AWSRequest Query where
  type AWSResponse Query = QueryResponse
  service _ = defaultService
  request srv = Request.postJSON srv
  response =
    Response.receiveJSON
      ( \s h x ->
          QueryResponse'
            Prelude.<$> ( x Core..?> "SpellCorrectedQueries"
                            Core..!@ Prelude.mempty
                        )
            Prelude.<*> (x Core..?> "FacetResults" Core..!@ Prelude.mempty)
            Prelude.<*> (x Core..?> "QueryId")
            Prelude.<*> (x Core..?> "ResultItems" Core..!@ Prelude.mempty)
            Prelude.<*> (x Core..?> "Warnings")
            Prelude.<*> (x Core..?> "TotalNumberOfResults")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable Query where
  hashWithSalt _salt Query' {..} =
    _salt
      `Prelude.hashWithSalt` documentRelevanceOverrideConfigurations
      `Prelude.hashWithSalt` requestedDocumentAttributes
      `Prelude.hashWithSalt` userContext
      `Prelude.hashWithSalt` queryText
      `Prelude.hashWithSalt` queryResultTypeFilter
      `Prelude.hashWithSalt` facets
      `Prelude.hashWithSalt` pageNumber
      `Prelude.hashWithSalt` pageSize
      `Prelude.hashWithSalt` spellCorrectionConfiguration
      `Prelude.hashWithSalt` sortingConfiguration
      `Prelude.hashWithSalt` visitorId
      `Prelude.hashWithSalt` attributeFilter
      `Prelude.hashWithSalt` indexId

instance Prelude.NFData Query where
  rnf Query' {..} =
    Prelude.rnf documentRelevanceOverrideConfigurations
      `Prelude.seq` Prelude.rnf requestedDocumentAttributes
      `Prelude.seq` Prelude.rnf userContext
      `Prelude.seq` Prelude.rnf queryText
      `Prelude.seq` Prelude.rnf queryResultTypeFilter
      `Prelude.seq` Prelude.rnf facets
      `Prelude.seq` Prelude.rnf pageNumber
      `Prelude.seq` Prelude.rnf pageSize
      `Prelude.seq` Prelude.rnf spellCorrectionConfiguration
      `Prelude.seq` Prelude.rnf sortingConfiguration
      `Prelude.seq` Prelude.rnf visitorId
      `Prelude.seq` Prelude.rnf attributeFilter
      `Prelude.seq` Prelude.rnf indexId

instance Core.ToHeaders Query where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "AWSKendraFrontendService.Query" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON Query where
  toJSON Query' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("DocumentRelevanceOverrideConfigurations" Core..=)
              Prelude.<$> documentRelevanceOverrideConfigurations,
            ("RequestedDocumentAttributes" Core..=)
              Prelude.<$> requestedDocumentAttributes,
            ("UserContext" Core..=) Prelude.<$> userContext,
            ("QueryText" Core..=) Prelude.<$> queryText,
            ("QueryResultTypeFilter" Core..=)
              Prelude.<$> queryResultTypeFilter,
            ("Facets" Core..=) Prelude.<$> facets,
            ("PageNumber" Core..=) Prelude.<$> pageNumber,
            ("PageSize" Core..=) Prelude.<$> pageSize,
            ("SpellCorrectionConfiguration" Core..=)
              Prelude.<$> spellCorrectionConfiguration,
            ("SortingConfiguration" Core..=)
              Prelude.<$> sortingConfiguration,
            ("VisitorId" Core..=) Prelude.<$> visitorId,
            ("AttributeFilter" Core..=)
              Prelude.<$> attributeFilter,
            Prelude.Just ("IndexId" Core..= indexId)
          ]
      )

instance Core.ToPath Query where
  toPath = Prelude.const "/"

instance Core.ToQuery Query where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newQueryResponse' smart constructor.
data QueryResponse = QueryResponse'
  { -- | A list of information related to suggested spell corrections for a
    -- query.
    spellCorrectedQueries :: Prelude.Maybe [SpellCorrectedQuery],
    -- | Contains the facet results. A @FacetResult@ contains the counts for each
    -- attribute key that was specified in the @Facets@ input parameter.
    facetResults :: Prelude.Maybe [FacetResult],
    -- | The unique identifier for the search. You use @QueryId@ to identify the
    -- search when using the feedback API.
    queryId :: Prelude.Maybe Prelude.Text,
    -- | The results of the search.
    resultItems :: Prelude.Maybe [QueryResultItem],
    -- | A list of warning codes and their messages on problems with your query.
    --
    -- Amazon Kendra currently only supports one type of warning, which is a
    -- warning on invalid syntax used in the query. For examples of invalid
    -- query syntax, see
    -- <https://docs.aws.amazon.com/kendra/latest/dg/searching-example.html#searching-index-query-syntax Searching with advanced query syntax>.
    warnings :: Prelude.Maybe (Prelude.NonEmpty Warning),
    -- | The total number of items found by the search; however, you can only
    -- retrieve up to 100 items. For example, if the search found 192 items,
    -- you can only retrieve the first 100 of the items.
    totalNumberOfResults :: Prelude.Maybe Prelude.Int,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'QueryResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'spellCorrectedQueries', 'queryResponse_spellCorrectedQueries' - A list of information related to suggested spell corrections for a
-- query.
--
-- 'facetResults', 'queryResponse_facetResults' - Contains the facet results. A @FacetResult@ contains the counts for each
-- attribute key that was specified in the @Facets@ input parameter.
--
-- 'queryId', 'queryResponse_queryId' - The unique identifier for the search. You use @QueryId@ to identify the
-- search when using the feedback API.
--
-- 'resultItems', 'queryResponse_resultItems' - The results of the search.
--
-- 'warnings', 'queryResponse_warnings' - A list of warning codes and their messages on problems with your query.
--
-- Amazon Kendra currently only supports one type of warning, which is a
-- warning on invalid syntax used in the query. For examples of invalid
-- query syntax, see
-- <https://docs.aws.amazon.com/kendra/latest/dg/searching-example.html#searching-index-query-syntax Searching with advanced query syntax>.
--
-- 'totalNumberOfResults', 'queryResponse_totalNumberOfResults' - The total number of items found by the search; however, you can only
-- retrieve up to 100 items. For example, if the search found 192 items,
-- you can only retrieve the first 100 of the items.
--
-- 'httpStatus', 'queryResponse_httpStatus' - The response's http status code.
newQueryResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  QueryResponse
newQueryResponse pHttpStatus_ =
  QueryResponse'
    { spellCorrectedQueries =
        Prelude.Nothing,
      facetResults = Prelude.Nothing,
      queryId = Prelude.Nothing,
      resultItems = Prelude.Nothing,
      warnings = Prelude.Nothing,
      totalNumberOfResults = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | A list of information related to suggested spell corrections for a
-- query.
queryResponse_spellCorrectedQueries :: Lens.Lens' QueryResponse (Prelude.Maybe [SpellCorrectedQuery])
queryResponse_spellCorrectedQueries = Lens.lens (\QueryResponse' {spellCorrectedQueries} -> spellCorrectedQueries) (\s@QueryResponse' {} a -> s {spellCorrectedQueries = a} :: QueryResponse) Prelude.. Lens.mapping Lens.coerced

-- | Contains the facet results. A @FacetResult@ contains the counts for each
-- attribute key that was specified in the @Facets@ input parameter.
queryResponse_facetResults :: Lens.Lens' QueryResponse (Prelude.Maybe [FacetResult])
queryResponse_facetResults = Lens.lens (\QueryResponse' {facetResults} -> facetResults) (\s@QueryResponse' {} a -> s {facetResults = a} :: QueryResponse) Prelude.. Lens.mapping Lens.coerced

-- | The unique identifier for the search. You use @QueryId@ to identify the
-- search when using the feedback API.
queryResponse_queryId :: Lens.Lens' QueryResponse (Prelude.Maybe Prelude.Text)
queryResponse_queryId = Lens.lens (\QueryResponse' {queryId} -> queryId) (\s@QueryResponse' {} a -> s {queryId = a} :: QueryResponse)

-- | The results of the search.
queryResponse_resultItems :: Lens.Lens' QueryResponse (Prelude.Maybe [QueryResultItem])
queryResponse_resultItems = Lens.lens (\QueryResponse' {resultItems} -> resultItems) (\s@QueryResponse' {} a -> s {resultItems = a} :: QueryResponse) Prelude.. Lens.mapping Lens.coerced

-- | A list of warning codes and their messages on problems with your query.
--
-- Amazon Kendra currently only supports one type of warning, which is a
-- warning on invalid syntax used in the query. For examples of invalid
-- query syntax, see
-- <https://docs.aws.amazon.com/kendra/latest/dg/searching-example.html#searching-index-query-syntax Searching with advanced query syntax>.
queryResponse_warnings :: Lens.Lens' QueryResponse (Prelude.Maybe (Prelude.NonEmpty Warning))
queryResponse_warnings = Lens.lens (\QueryResponse' {warnings} -> warnings) (\s@QueryResponse' {} a -> s {warnings = a} :: QueryResponse) Prelude.. Lens.mapping Lens.coerced

-- | The total number of items found by the search; however, you can only
-- retrieve up to 100 items. For example, if the search found 192 items,
-- you can only retrieve the first 100 of the items.
queryResponse_totalNumberOfResults :: Lens.Lens' QueryResponse (Prelude.Maybe Prelude.Int)
queryResponse_totalNumberOfResults = Lens.lens (\QueryResponse' {totalNumberOfResults} -> totalNumberOfResults) (\s@QueryResponse' {} a -> s {totalNumberOfResults = a} :: QueryResponse)

-- | The response's http status code.
queryResponse_httpStatus :: Lens.Lens' QueryResponse Prelude.Int
queryResponse_httpStatus = Lens.lens (\QueryResponse' {httpStatus} -> httpStatus) (\s@QueryResponse' {} a -> s {httpStatus = a} :: QueryResponse)

instance Prelude.NFData QueryResponse where
  rnf QueryResponse' {..} =
    Prelude.rnf spellCorrectedQueries
      `Prelude.seq` Prelude.rnf facetResults
      `Prelude.seq` Prelude.rnf queryId
      `Prelude.seq` Prelude.rnf resultItems
      `Prelude.seq` Prelude.rnf warnings
      `Prelude.seq` Prelude.rnf totalNumberOfResults
      `Prelude.seq` Prelude.rnf httpStatus
