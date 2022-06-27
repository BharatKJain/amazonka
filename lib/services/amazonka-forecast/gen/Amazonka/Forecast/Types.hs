{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Amazonka.Forecast.Types
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.Forecast.Types
  ( -- * Service Configuration
    defaultService,

    -- * Errors
    _ResourceAlreadyExistsException,
    _InvalidInputException,
    _ResourceNotFoundException,
    _ResourceInUseException,
    _LimitExceededException,
    _InvalidNextTokenException,

    -- * AttributeType
    AttributeType (..),

    -- * AutoMLOverrideStrategy
    AutoMLOverrideStrategy (..),

    -- * DatasetType
    DatasetType (..),

    -- * Domain
    Domain (..),

    -- * EvaluationType
    EvaluationType (..),

    -- * FeaturizationMethodName
    FeaturizationMethodName (..),

    -- * FilterConditionString
    FilterConditionString (..),

    -- * OptimizationMetric
    OptimizationMetric (..),

    -- * ScalingType
    ScalingType (..),

    -- * CategoricalParameterRange
    CategoricalParameterRange (..),
    newCategoricalParameterRange,
    categoricalParameterRange_name,
    categoricalParameterRange_values,

    -- * ContinuousParameterRange
    ContinuousParameterRange (..),
    newContinuousParameterRange,
    continuousParameterRange_scalingType,
    continuousParameterRange_name,
    continuousParameterRange_maxValue,
    continuousParameterRange_minValue,

    -- * DataDestination
    DataDestination (..),
    newDataDestination,
    dataDestination_s3Config,

    -- * DataSource
    DataSource (..),
    newDataSource,
    dataSource_s3Config,

    -- * DatasetGroupSummary
    DatasetGroupSummary (..),
    newDatasetGroupSummary,
    datasetGroupSummary_lastModificationTime,
    datasetGroupSummary_datasetGroupName,
    datasetGroupSummary_creationTime,
    datasetGroupSummary_datasetGroupArn,

    -- * DatasetImportJobSummary
    DatasetImportJobSummary (..),
    newDatasetImportJobSummary,
    datasetImportJobSummary_lastModificationTime,
    datasetImportJobSummary_message,
    datasetImportJobSummary_status,
    datasetImportJobSummary_datasetImportJobArn,
    datasetImportJobSummary_dataSource,
    datasetImportJobSummary_creationTime,
    datasetImportJobSummary_datasetImportJobName,

    -- * DatasetSummary
    DatasetSummary (..),
    newDatasetSummary,
    datasetSummary_lastModificationTime,
    datasetSummary_domain,
    datasetSummary_datasetType,
    datasetSummary_datasetName,
    datasetSummary_datasetArn,
    datasetSummary_creationTime,

    -- * EncryptionConfig
    EncryptionConfig (..),
    newEncryptionConfig,
    encryptionConfig_roleArn,
    encryptionConfig_kmsKeyArn,

    -- * ErrorMetric
    ErrorMetric (..),
    newErrorMetric,
    errorMetric_wape,
    errorMetric_mase,
    errorMetric_forecastType,
    errorMetric_rmse,
    errorMetric_mape,

    -- * EvaluationParameters
    EvaluationParameters (..),
    newEvaluationParameters,
    evaluationParameters_numberOfBacktestWindows,
    evaluationParameters_backTestWindowOffset,

    -- * EvaluationResult
    EvaluationResult (..),
    newEvaluationResult,
    evaluationResult_testWindows,
    evaluationResult_algorithmArn,

    -- * Featurization
    Featurization (..),
    newFeaturization,
    featurization_featurizationPipeline,
    featurization_attributeName,

    -- * FeaturizationConfig
    FeaturizationConfig (..),
    newFeaturizationConfig,
    featurizationConfig_forecastDimensions,
    featurizationConfig_featurizations,
    featurizationConfig_forecastFrequency,

    -- * FeaturizationMethod
    FeaturizationMethod (..),
    newFeaturizationMethod,
    featurizationMethod_featurizationMethodParameters,
    featurizationMethod_featurizationMethodName,

    -- * Filter
    Filter (..),
    newFilter,
    filter_key,
    filter_value,
    filter_condition,

    -- * ForecastExportJobSummary
    ForecastExportJobSummary (..),
    newForecastExportJobSummary,
    forecastExportJobSummary_lastModificationTime,
    forecastExportJobSummary_destination,
    forecastExportJobSummary_message,
    forecastExportJobSummary_forecastExportJobName,
    forecastExportJobSummary_forecastExportJobArn,
    forecastExportJobSummary_status,
    forecastExportJobSummary_creationTime,

    -- * ForecastSummary
    ForecastSummary (..),
    newForecastSummary,
    forecastSummary_lastModificationTime,
    forecastSummary_message,
    forecastSummary_status,
    forecastSummary_predictorArn,
    forecastSummary_forecastArn,
    forecastSummary_creationTime,
    forecastSummary_datasetGroupArn,
    forecastSummary_forecastName,

    -- * HyperParameterTuningJobConfig
    HyperParameterTuningJobConfig (..),
    newHyperParameterTuningJobConfig,
    hyperParameterTuningJobConfig_parameterRanges,

    -- * InputDataConfig
    InputDataConfig (..),
    newInputDataConfig,
    inputDataConfig_supplementaryFeatures,
    inputDataConfig_datasetGroupArn,

    -- * IntegerParameterRange
    IntegerParameterRange (..),
    newIntegerParameterRange,
    integerParameterRange_scalingType,
    integerParameterRange_name,
    integerParameterRange_maxValue,
    integerParameterRange_minValue,

    -- * Metrics
    Metrics (..),
    newMetrics,
    metrics_averageWeightedQuantileLoss,
    metrics_weightedQuantileLosses,
    metrics_errorMetrics,
    metrics_rmse,

    -- * ParameterRanges
    ParameterRanges (..),
    newParameterRanges,
    parameterRanges_categoricalParameterRanges,
    parameterRanges_integerParameterRanges,
    parameterRanges_continuousParameterRanges,

    -- * PredictorBacktestExportJobSummary
    PredictorBacktestExportJobSummary (..),
    newPredictorBacktestExportJobSummary,
    predictorBacktestExportJobSummary_lastModificationTime,
    predictorBacktestExportJobSummary_destination,
    predictorBacktestExportJobSummary_message,
    predictorBacktestExportJobSummary_status,
    predictorBacktestExportJobSummary_predictorBacktestExportJobName,
    predictorBacktestExportJobSummary_predictorBacktestExportJobArn,
    predictorBacktestExportJobSummary_creationTime,

    -- * PredictorExecution
    PredictorExecution (..),
    newPredictorExecution,
    predictorExecution_testWindows,
    predictorExecution_algorithmArn,

    -- * PredictorExecutionDetails
    PredictorExecutionDetails (..),
    newPredictorExecutionDetails,
    predictorExecutionDetails_predictorExecutions,

    -- * PredictorSummary
    PredictorSummary (..),
    newPredictorSummary,
    predictorSummary_lastModificationTime,
    predictorSummary_message,
    predictorSummary_predictorName,
    predictorSummary_status,
    predictorSummary_predictorArn,
    predictorSummary_creationTime,
    predictorSummary_datasetGroupArn,

    -- * S3Config
    S3Config (..),
    newS3Config,
    s3Config_kmsKeyArn,
    s3Config_path,
    s3Config_roleArn,

    -- * Schema
    Schema (..),
    newSchema,
    schema_attributes,

    -- * SchemaAttribute
    SchemaAttribute (..),
    newSchemaAttribute,
    schemaAttribute_attributeType,
    schemaAttribute_attributeName,

    -- * Statistics
    Statistics (..),
    newStatistics,
    statistics_countNanLong,
    statistics_countNullLong,
    statistics_countNull,
    statistics_max,
    statistics_countLong,
    statistics_countDistinctLong,
    statistics_avg,
    statistics_count,
    statistics_min,
    statistics_countNan,
    statistics_stddev,
    statistics_countDistinct,

    -- * SupplementaryFeature
    SupplementaryFeature (..),
    newSupplementaryFeature,
    supplementaryFeature_name,
    supplementaryFeature_value,

    -- * Tag
    Tag (..),
    newTag,
    tag_key,
    tag_value,

    -- * TestWindowSummary
    TestWindowSummary (..),
    newTestWindowSummary,
    testWindowSummary_message,
    testWindowSummary_status,
    testWindowSummary_testWindowEnd,
    testWindowSummary_testWindowStart,

    -- * WeightedQuantileLoss
    WeightedQuantileLoss (..),
    newWeightedQuantileLoss,
    weightedQuantileLoss_quantile,
    weightedQuantileLoss_lossValue,

    -- * WindowSummary
    WindowSummary (..),
    newWindowSummary,
    windowSummary_itemCount,
    windowSummary_metrics,
    windowSummary_evaluationType,
    windowSummary_testWindowEnd,
    windowSummary_testWindowStart,
  )
where

import qualified Amazonka.Core as Core
import Amazonka.Forecast.Types.AttributeType
import Amazonka.Forecast.Types.AutoMLOverrideStrategy
import Amazonka.Forecast.Types.CategoricalParameterRange
import Amazonka.Forecast.Types.ContinuousParameterRange
import Amazonka.Forecast.Types.DataDestination
import Amazonka.Forecast.Types.DataSource
import Amazonka.Forecast.Types.DatasetGroupSummary
import Amazonka.Forecast.Types.DatasetImportJobSummary
import Amazonka.Forecast.Types.DatasetSummary
import Amazonka.Forecast.Types.DatasetType
import Amazonka.Forecast.Types.Domain
import Amazonka.Forecast.Types.EncryptionConfig
import Amazonka.Forecast.Types.ErrorMetric
import Amazonka.Forecast.Types.EvaluationParameters
import Amazonka.Forecast.Types.EvaluationResult
import Amazonka.Forecast.Types.EvaluationType
import Amazonka.Forecast.Types.Featurization
import Amazonka.Forecast.Types.FeaturizationConfig
import Amazonka.Forecast.Types.FeaturizationMethod
import Amazonka.Forecast.Types.FeaturizationMethodName
import Amazonka.Forecast.Types.Filter
import Amazonka.Forecast.Types.FilterConditionString
import Amazonka.Forecast.Types.ForecastExportJobSummary
import Amazonka.Forecast.Types.ForecastSummary
import Amazonka.Forecast.Types.HyperParameterTuningJobConfig
import Amazonka.Forecast.Types.InputDataConfig
import Amazonka.Forecast.Types.IntegerParameterRange
import Amazonka.Forecast.Types.Metrics
import Amazonka.Forecast.Types.OptimizationMetric
import Amazonka.Forecast.Types.ParameterRanges
import Amazonka.Forecast.Types.PredictorBacktestExportJobSummary
import Amazonka.Forecast.Types.PredictorExecution
import Amazonka.Forecast.Types.PredictorExecutionDetails
import Amazonka.Forecast.Types.PredictorSummary
import Amazonka.Forecast.Types.S3Config
import Amazonka.Forecast.Types.ScalingType
import Amazonka.Forecast.Types.Schema
import Amazonka.Forecast.Types.SchemaAttribute
import Amazonka.Forecast.Types.Statistics
import Amazonka.Forecast.Types.SupplementaryFeature
import Amazonka.Forecast.Types.Tag
import Amazonka.Forecast.Types.TestWindowSummary
import Amazonka.Forecast.Types.WeightedQuantileLoss
import Amazonka.Forecast.Types.WindowSummary
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Sign.V4 as Sign

-- | API version @2018-06-26@ of the Amazon Forecast Service SDK configuration.
defaultService :: Core.Service
defaultService =
  Core.Service
    { Core._serviceAbbrev = "Forecast",
      Core._serviceSigner = Sign.v4,
      Core._serviceEndpointPrefix = "forecast",
      Core._serviceSigningName = "forecast",
      Core._serviceVersion = "2018-06-26",
      Core._serviceEndpoint =
        Core.defaultEndpoint defaultService,
      Core._serviceTimeout = Prelude.Just 70,
      Core._serviceCheck = Core.statusSuccess,
      Core._serviceError = Core.parseJSONError "Forecast",
      Core._serviceRetry = retry
    }
  where
    retry =
      Core.Exponential
        { Core._retryBase = 5.0e-2,
          Core._retryGrowth = 2,
          Core._retryAttempts = 5,
          Core._retryCheck = check
        }
    check e
      | Lens.has (Core.hasStatus 429) e =
        Prelude.Just "too_many_requests"
      | Lens.has
          ( Core.hasCode "RequestThrottledException"
              Prelude.. Core.hasStatus 400
          )
          e =
        Prelude.Just "request_throttled_exception"
      | Lens.has (Core.hasStatus 502) e =
        Prelude.Just "bad_gateway"
      | Lens.has (Core.hasStatus 500) e =
        Prelude.Just "general_server_error"
      | Lens.has
          ( Core.hasCode "Throttling"
              Prelude.. Core.hasStatus 400
          )
          e =
        Prelude.Just "throttling"
      | Lens.has (Core.hasStatus 503) e =
        Prelude.Just "service_unavailable"
      | Lens.has (Core.hasStatus 509) e =
        Prelude.Just "limit_exceeded"
      | Lens.has
          ( Core.hasCode "ThrottledException"
              Prelude.. Core.hasStatus 400
          )
          e =
        Prelude.Just "throttled_exception"
      | Lens.has
          ( Core.hasCode "ThrottlingException"
              Prelude.. Core.hasStatus 400
          )
          e =
        Prelude.Just "throttling_exception"
      | Lens.has (Core.hasStatus 504) e =
        Prelude.Just "gateway_timeout"
      | Lens.has
          ( Core.hasCode
              "ProvisionedThroughputExceededException"
              Prelude.. Core.hasStatus 400
          )
          e =
        Prelude.Just "throughput_exceeded"
      | Prelude.otherwise = Prelude.Nothing

-- | There is already a resource with this name. Try again with a different
-- name.
_ResourceAlreadyExistsException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_ResourceAlreadyExistsException =
  Core._MatchServiceError
    defaultService
    "ResourceAlreadyExistsException"

-- | We can\'t process the request because it includes an invalid value or a
-- value that exceeds the valid range.
_InvalidInputException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_InvalidInputException =
  Core._MatchServiceError
    defaultService
    "InvalidInputException"

-- | We can\'t find a resource with that Amazon Resource Name (ARN). Check
-- the ARN and try again.
_ResourceNotFoundException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_ResourceNotFoundException =
  Core._MatchServiceError
    defaultService
    "ResourceNotFoundException"

-- | The specified resource is in use.
_ResourceInUseException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_ResourceInUseException =
  Core._MatchServiceError
    defaultService
    "ResourceInUseException"

-- | The limit on the number of resources per account has been exceeded.
_LimitExceededException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_LimitExceededException =
  Core._MatchServiceError
    defaultService
    "LimitExceededException"

-- | The token is not valid. Tokens expire after 24 hours.
_InvalidNextTokenException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_InvalidNextTokenException =
  Core._MatchServiceError
    defaultService
    "InvalidNextTokenException"
