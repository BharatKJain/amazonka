{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Amazonka.SageMakerMetrics
-- Copyright   : (c) 2013-2023 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Derived from API version @2022-09-30@ of the AWS service descriptions, licensed under Apache 2.0.
--
-- Contains all data plane API operations and data types for Amazon
-- SageMaker Metrics. Use these APIs to put and retrieve (get) features
-- related to your training run.
--
-- -   <https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_metrics_BatchPutMetrics.html BatchPutMetrics>
module Amazonka.SageMakerMetrics
  ( -- * Service Configuration
    defaultService,

    -- * Errors
    -- $errors

    -- * Waiters
    -- $waiters

    -- * Operations
    -- $operations

    -- ** BatchPutMetrics
    BatchPutMetrics (BatchPutMetrics'),
    newBatchPutMetrics,
    BatchPutMetricsResponse (BatchPutMetricsResponse'),
    newBatchPutMetricsResponse,

    -- * Types

    -- ** PutMetricsErrorCode
    PutMetricsErrorCode (..),

    -- ** BatchPutMetricsError
    BatchPutMetricsError (BatchPutMetricsError'),
    newBatchPutMetricsError,

    -- ** RawMetricData
    RawMetricData (RawMetricData'),
    newRawMetricData,
  )
where

import Amazonka.SageMakerMetrics.BatchPutMetrics
import Amazonka.SageMakerMetrics.Lens
import Amazonka.SageMakerMetrics.Types
import Amazonka.SageMakerMetrics.Waiters

-- $errors
-- Error matchers are designed for use with the functions provided by
-- <http://hackage.haskell.org/package/lens/docs/Control-Exception-Lens.html Control.Exception.Lens>.
-- This allows catching (and rethrowing) service specific errors returned
-- by 'SageMakerMetrics'.

-- $operations
-- Some AWS operations return results that are incomplete and require subsequent
-- requests in order to obtain the entire result set. The process of sending
-- subsequent requests to continue where a previous request left off is called
-- pagination. For example, the 'ListObjects' operation of Amazon S3 returns up to
-- 1000 objects at a time, and you must send subsequent requests with the
-- appropriate Marker in order to retrieve the next page of results.
--
-- Operations that have an 'AWSPager' instance can transparently perform subsequent
-- requests, correctly setting Markers and other request facets to iterate through
-- the entire result set of a truncated API operation. Operations which support
-- this have an additional note in the documentation.
--
-- Many operations have the ability to filter results on the server side. See the
-- individual operation parameters for details.

-- $waiters
-- Waiters poll by repeatedly sending a request until some remote success condition
-- configured by the 'Wait' specification is fulfilled. The 'Wait' specification
-- determines how many attempts should be made, in addition to delay and retry strategies.
