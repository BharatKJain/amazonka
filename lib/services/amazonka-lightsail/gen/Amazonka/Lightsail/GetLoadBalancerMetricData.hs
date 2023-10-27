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
-- Module      : Amazonka.Lightsail.GetLoadBalancerMetricData
-- Copyright   : (c) 2013-2023 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns information about health metrics for your Lightsail load
-- balancer.
--
-- Metrics report the utilization of your resources, and the error counts
-- generated by them. Monitor and collect metric data regularly to maintain
-- the reliability, availability, and performance of your resources.
module Amazonka.Lightsail.GetLoadBalancerMetricData
  ( -- * Creating a Request
    GetLoadBalancerMetricData (..),
    newGetLoadBalancerMetricData,

    -- * Request Lenses
    getLoadBalancerMetricData_loadBalancerName,
    getLoadBalancerMetricData_metricName,
    getLoadBalancerMetricData_period,
    getLoadBalancerMetricData_startTime,
    getLoadBalancerMetricData_endTime,
    getLoadBalancerMetricData_unit,
    getLoadBalancerMetricData_statistics,

    -- * Destructuring the Response
    GetLoadBalancerMetricDataResponse (..),
    newGetLoadBalancerMetricDataResponse,

    -- * Response Lenses
    getLoadBalancerMetricDataResponse_metricData,
    getLoadBalancerMetricDataResponse_metricName,
    getLoadBalancerMetricDataResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import qualified Amazonka.Data as Data
import Amazonka.Lightsail.Types
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newGetLoadBalancerMetricData' smart constructor.
data GetLoadBalancerMetricData = GetLoadBalancerMetricData'
  { -- | The name of the load balancer.
    loadBalancerName :: Prelude.Text,
    -- | The metric for which you want to return information.
    --
    -- Valid load balancer metric names are listed below, along with the most
    -- useful @statistics@ to include in your request, and the published @unit@
    -- value.
    --
    -- -   __@ClientTLSNegotiationErrorCount@__ - The number of TLS connections
    --     initiated by the client that did not establish a session with the
    --     load balancer due to a TLS error generated by the load balancer.
    --     Possible causes include a mismatch of ciphers or protocols.
    --
    --     @Statistics@: The most useful statistic is @Sum@.
    --
    --     @Unit@: The published unit is @Count@.
    --
    -- -   __@HealthyHostCount@__ - The number of target instances that are
    --     considered healthy.
    --
    --     @Statistics@: The most useful statistic are @Average@, @Minimum@,
    --     and @Maximum@.
    --
    --     @Unit@: The published unit is @Count@.
    --
    -- -   __@HTTPCode_Instance_2XX_Count@__ - The number of HTTP 2XX response
    --     codes generated by the target instances. This does not include any
    --     response codes generated by the load balancer.
    --
    --     @Statistics@: The most useful statistic is @Sum@. Note that
    --     @Minimum@, @Maximum@, and @Average@ all return @1@.
    --
    --     @Unit@: The published unit is @Count@.
    --
    -- -   __@HTTPCode_Instance_3XX_Count@__ - The number of HTTP 3XX response
    --     codes generated by the target instances. This does not include any
    --     response codes generated by the load balancer.
    --
    --     @Statistics@: The most useful statistic is @Sum@. Note that
    --     @Minimum@, @Maximum@, and @Average@ all return @1@.
    --
    --     @Unit@: The published unit is @Count@.
    --
    -- -   __@HTTPCode_Instance_4XX_Count@__ - The number of HTTP 4XX response
    --     codes generated by the target instances. This does not include any
    --     response codes generated by the load balancer.
    --
    --     @Statistics@: The most useful statistic is @Sum@. Note that
    --     @Minimum@, @Maximum@, and @Average@ all return @1@.
    --
    --     @Unit@: The published unit is @Count@.
    --
    -- -   __@HTTPCode_Instance_5XX_Count@__ - The number of HTTP 5XX response
    --     codes generated by the target instances. This does not include any
    --     response codes generated by the load balancer.
    --
    --     @Statistics@: The most useful statistic is @Sum@. Note that
    --     @Minimum@, @Maximum@, and @Average@ all return @1@.
    --
    --     @Unit@: The published unit is @Count@.
    --
    -- -   __@HTTPCode_LB_4XX_Count@__ - The number of HTTP 4XX client error
    --     codes that originated from the load balancer. Client errors are
    --     generated when requests are malformed or incomplete. These requests
    --     were not received by the target instance. This count does not
    --     include response codes generated by the target instances.
    --
    --     @Statistics@: The most useful statistic is @Sum@. Note that
    --     @Minimum@, @Maximum@, and @Average@ all return @1@.
    --
    --     @Unit@: The published unit is @Count@.
    --
    -- -   __@HTTPCode_LB_5XX_Count@__ - The number of HTTP 5XX server error
    --     codes that originated from the load balancer. This does not include
    --     any response codes generated by the target instance. This metric is
    --     reported if there are no healthy instances attached to the load
    --     balancer, or if the request rate exceeds the capacity of the
    --     instances (spillover) or the load balancer.
    --
    --     @Statistics@: The most useful statistic is @Sum@. Note that
    --     @Minimum@, @Maximum@, and @Average@ all return @1@.
    --
    --     @Unit@: The published unit is @Count@.
    --
    -- -   __@InstanceResponseTime@__ - The time elapsed, in seconds, after the
    --     request leaves the load balancer until a response from the target
    --     instance is received.
    --
    --     @Statistics@: The most useful statistic is @Average@.
    --
    --     @Unit@: The published unit is @Seconds@.
    --
    -- -   __@RejectedConnectionCount@__ - The number of connections that were
    --     rejected because the load balancer had reached its maximum number of
    --     connections.
    --
    --     @Statistics@: The most useful statistic is @Sum@.
    --
    --     @Unit@: The published unit is @Count@.
    --
    -- -   __@RequestCount@__ - The number of requests processed over IPv4.
    --     This count includes only the requests with a response generated by a
    --     target instance of the load balancer.
    --
    --     @Statistics@: The most useful statistic is @Sum@. Note that
    --     @Minimum@, @Maximum@, and @Average@ all return @1@.
    --
    --     @Unit@: The published unit is @Count@.
    --
    -- -   __@UnhealthyHostCount@__ - The number of target instances that are
    --     considered unhealthy.
    --
    --     @Statistics@: The most useful statistic are @Average@, @Minimum@,
    --     and @Maximum@.
    --
    --     @Unit@: The published unit is @Count@.
    metricName :: LoadBalancerMetricName,
    -- | The granularity, in seconds, of the returned data points.
    period :: Prelude.Natural,
    -- | The start time of the period.
    startTime :: Data.POSIX,
    -- | The end time of the period.
    endTime :: Data.POSIX,
    -- | The unit for the metric data request. Valid units depend on the metric
    -- data being requested. For the valid units with each available metric,
    -- see the @metricName@ parameter.
    unit :: MetricUnit,
    -- | The statistic for the metric.
    --
    -- The following statistics are available:
    --
    -- -   @Minimum@ - The lowest value observed during the specified period.
    --     Use this value to determine low volumes of activity for your
    --     application.
    --
    -- -   @Maximum@ - The highest value observed during the specified period.
    --     Use this value to determine high volumes of activity for your
    --     application.
    --
    -- -   @Sum@ - All values submitted for the matching metric added together.
    --     You can use this statistic to determine the total volume of a
    --     metric.
    --
    -- -   @Average@ - The value of Sum \/ SampleCount during the specified
    --     period. By comparing this statistic with the Minimum and Maximum
    --     values, you can determine the full scope of a metric and how close
    --     the average use is to the Minimum and Maximum values. This
    --     comparison helps you to know when to increase or decrease your
    --     resources.
    --
    -- -   @SampleCount@ - The count, or number, of data points used for the
    --     statistical calculation.
    statistics :: [MetricStatistic]
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetLoadBalancerMetricData' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'loadBalancerName', 'getLoadBalancerMetricData_loadBalancerName' - The name of the load balancer.
--
-- 'metricName', 'getLoadBalancerMetricData_metricName' - The metric for which you want to return information.
--
-- Valid load balancer metric names are listed below, along with the most
-- useful @statistics@ to include in your request, and the published @unit@
-- value.
--
-- -   __@ClientTLSNegotiationErrorCount@__ - The number of TLS connections
--     initiated by the client that did not establish a session with the
--     load balancer due to a TLS error generated by the load balancer.
--     Possible causes include a mismatch of ciphers or protocols.
--
--     @Statistics@: The most useful statistic is @Sum@.
--
--     @Unit@: The published unit is @Count@.
--
-- -   __@HealthyHostCount@__ - The number of target instances that are
--     considered healthy.
--
--     @Statistics@: The most useful statistic are @Average@, @Minimum@,
--     and @Maximum@.
--
--     @Unit@: The published unit is @Count@.
--
-- -   __@HTTPCode_Instance_2XX_Count@__ - The number of HTTP 2XX response
--     codes generated by the target instances. This does not include any
--     response codes generated by the load balancer.
--
--     @Statistics@: The most useful statistic is @Sum@. Note that
--     @Minimum@, @Maximum@, and @Average@ all return @1@.
--
--     @Unit@: The published unit is @Count@.
--
-- -   __@HTTPCode_Instance_3XX_Count@__ - The number of HTTP 3XX response
--     codes generated by the target instances. This does not include any
--     response codes generated by the load balancer.
--
--     @Statistics@: The most useful statistic is @Sum@. Note that
--     @Minimum@, @Maximum@, and @Average@ all return @1@.
--
--     @Unit@: The published unit is @Count@.
--
-- -   __@HTTPCode_Instance_4XX_Count@__ - The number of HTTP 4XX response
--     codes generated by the target instances. This does not include any
--     response codes generated by the load balancer.
--
--     @Statistics@: The most useful statistic is @Sum@. Note that
--     @Minimum@, @Maximum@, and @Average@ all return @1@.
--
--     @Unit@: The published unit is @Count@.
--
-- -   __@HTTPCode_Instance_5XX_Count@__ - The number of HTTP 5XX response
--     codes generated by the target instances. This does not include any
--     response codes generated by the load balancer.
--
--     @Statistics@: The most useful statistic is @Sum@. Note that
--     @Minimum@, @Maximum@, and @Average@ all return @1@.
--
--     @Unit@: The published unit is @Count@.
--
-- -   __@HTTPCode_LB_4XX_Count@__ - The number of HTTP 4XX client error
--     codes that originated from the load balancer. Client errors are
--     generated when requests are malformed or incomplete. These requests
--     were not received by the target instance. This count does not
--     include response codes generated by the target instances.
--
--     @Statistics@: The most useful statistic is @Sum@. Note that
--     @Minimum@, @Maximum@, and @Average@ all return @1@.
--
--     @Unit@: The published unit is @Count@.
--
-- -   __@HTTPCode_LB_5XX_Count@__ - The number of HTTP 5XX server error
--     codes that originated from the load balancer. This does not include
--     any response codes generated by the target instance. This metric is
--     reported if there are no healthy instances attached to the load
--     balancer, or if the request rate exceeds the capacity of the
--     instances (spillover) or the load balancer.
--
--     @Statistics@: The most useful statistic is @Sum@. Note that
--     @Minimum@, @Maximum@, and @Average@ all return @1@.
--
--     @Unit@: The published unit is @Count@.
--
-- -   __@InstanceResponseTime@__ - The time elapsed, in seconds, after the
--     request leaves the load balancer until a response from the target
--     instance is received.
--
--     @Statistics@: The most useful statistic is @Average@.
--
--     @Unit@: The published unit is @Seconds@.
--
-- -   __@RejectedConnectionCount@__ - The number of connections that were
--     rejected because the load balancer had reached its maximum number of
--     connections.
--
--     @Statistics@: The most useful statistic is @Sum@.
--
--     @Unit@: The published unit is @Count@.
--
-- -   __@RequestCount@__ - The number of requests processed over IPv4.
--     This count includes only the requests with a response generated by a
--     target instance of the load balancer.
--
--     @Statistics@: The most useful statistic is @Sum@. Note that
--     @Minimum@, @Maximum@, and @Average@ all return @1@.
--
--     @Unit@: The published unit is @Count@.
--
-- -   __@UnhealthyHostCount@__ - The number of target instances that are
--     considered unhealthy.
--
--     @Statistics@: The most useful statistic are @Average@, @Minimum@,
--     and @Maximum@.
--
--     @Unit@: The published unit is @Count@.
--
-- 'period', 'getLoadBalancerMetricData_period' - The granularity, in seconds, of the returned data points.
--
-- 'startTime', 'getLoadBalancerMetricData_startTime' - The start time of the period.
--
-- 'endTime', 'getLoadBalancerMetricData_endTime' - The end time of the period.
--
-- 'unit', 'getLoadBalancerMetricData_unit' - The unit for the metric data request. Valid units depend on the metric
-- data being requested. For the valid units with each available metric,
-- see the @metricName@ parameter.
--
-- 'statistics', 'getLoadBalancerMetricData_statistics' - The statistic for the metric.
--
-- The following statistics are available:
--
-- -   @Minimum@ - The lowest value observed during the specified period.
--     Use this value to determine low volumes of activity for your
--     application.
--
-- -   @Maximum@ - The highest value observed during the specified period.
--     Use this value to determine high volumes of activity for your
--     application.
--
-- -   @Sum@ - All values submitted for the matching metric added together.
--     You can use this statistic to determine the total volume of a
--     metric.
--
-- -   @Average@ - The value of Sum \/ SampleCount during the specified
--     period. By comparing this statistic with the Minimum and Maximum
--     values, you can determine the full scope of a metric and how close
--     the average use is to the Minimum and Maximum values. This
--     comparison helps you to know when to increase or decrease your
--     resources.
--
-- -   @SampleCount@ - The count, or number, of data points used for the
--     statistical calculation.
newGetLoadBalancerMetricData ::
  -- | 'loadBalancerName'
  Prelude.Text ->
  -- | 'metricName'
  LoadBalancerMetricName ->
  -- | 'period'
  Prelude.Natural ->
  -- | 'startTime'
  Prelude.UTCTime ->
  -- | 'endTime'
  Prelude.UTCTime ->
  -- | 'unit'
  MetricUnit ->
  GetLoadBalancerMetricData
newGetLoadBalancerMetricData
  pLoadBalancerName_
  pMetricName_
  pPeriod_
  pStartTime_
  pEndTime_
  pUnit_ =
    GetLoadBalancerMetricData'
      { loadBalancerName =
          pLoadBalancerName_,
        metricName = pMetricName_,
        period = pPeriod_,
        startTime = Data._Time Lens.# pStartTime_,
        endTime = Data._Time Lens.# pEndTime_,
        unit = pUnit_,
        statistics = Prelude.mempty
      }

-- | The name of the load balancer.
getLoadBalancerMetricData_loadBalancerName :: Lens.Lens' GetLoadBalancerMetricData Prelude.Text
getLoadBalancerMetricData_loadBalancerName = Lens.lens (\GetLoadBalancerMetricData' {loadBalancerName} -> loadBalancerName) (\s@GetLoadBalancerMetricData' {} a -> s {loadBalancerName = a} :: GetLoadBalancerMetricData)

-- | The metric for which you want to return information.
--
-- Valid load balancer metric names are listed below, along with the most
-- useful @statistics@ to include in your request, and the published @unit@
-- value.
--
-- -   __@ClientTLSNegotiationErrorCount@__ - The number of TLS connections
--     initiated by the client that did not establish a session with the
--     load balancer due to a TLS error generated by the load balancer.
--     Possible causes include a mismatch of ciphers or protocols.
--
--     @Statistics@: The most useful statistic is @Sum@.
--
--     @Unit@: The published unit is @Count@.
--
-- -   __@HealthyHostCount@__ - The number of target instances that are
--     considered healthy.
--
--     @Statistics@: The most useful statistic are @Average@, @Minimum@,
--     and @Maximum@.
--
--     @Unit@: The published unit is @Count@.
--
-- -   __@HTTPCode_Instance_2XX_Count@__ - The number of HTTP 2XX response
--     codes generated by the target instances. This does not include any
--     response codes generated by the load balancer.
--
--     @Statistics@: The most useful statistic is @Sum@. Note that
--     @Minimum@, @Maximum@, and @Average@ all return @1@.
--
--     @Unit@: The published unit is @Count@.
--
-- -   __@HTTPCode_Instance_3XX_Count@__ - The number of HTTP 3XX response
--     codes generated by the target instances. This does not include any
--     response codes generated by the load balancer.
--
--     @Statistics@: The most useful statistic is @Sum@. Note that
--     @Minimum@, @Maximum@, and @Average@ all return @1@.
--
--     @Unit@: The published unit is @Count@.
--
-- -   __@HTTPCode_Instance_4XX_Count@__ - The number of HTTP 4XX response
--     codes generated by the target instances. This does not include any
--     response codes generated by the load balancer.
--
--     @Statistics@: The most useful statistic is @Sum@. Note that
--     @Minimum@, @Maximum@, and @Average@ all return @1@.
--
--     @Unit@: The published unit is @Count@.
--
-- -   __@HTTPCode_Instance_5XX_Count@__ - The number of HTTP 5XX response
--     codes generated by the target instances. This does not include any
--     response codes generated by the load balancer.
--
--     @Statistics@: The most useful statistic is @Sum@. Note that
--     @Minimum@, @Maximum@, and @Average@ all return @1@.
--
--     @Unit@: The published unit is @Count@.
--
-- -   __@HTTPCode_LB_4XX_Count@__ - The number of HTTP 4XX client error
--     codes that originated from the load balancer. Client errors are
--     generated when requests are malformed or incomplete. These requests
--     were not received by the target instance. This count does not
--     include response codes generated by the target instances.
--
--     @Statistics@: The most useful statistic is @Sum@. Note that
--     @Minimum@, @Maximum@, and @Average@ all return @1@.
--
--     @Unit@: The published unit is @Count@.
--
-- -   __@HTTPCode_LB_5XX_Count@__ - The number of HTTP 5XX server error
--     codes that originated from the load balancer. This does not include
--     any response codes generated by the target instance. This metric is
--     reported if there are no healthy instances attached to the load
--     balancer, or if the request rate exceeds the capacity of the
--     instances (spillover) or the load balancer.
--
--     @Statistics@: The most useful statistic is @Sum@. Note that
--     @Minimum@, @Maximum@, and @Average@ all return @1@.
--
--     @Unit@: The published unit is @Count@.
--
-- -   __@InstanceResponseTime@__ - The time elapsed, in seconds, after the
--     request leaves the load balancer until a response from the target
--     instance is received.
--
--     @Statistics@: The most useful statistic is @Average@.
--
--     @Unit@: The published unit is @Seconds@.
--
-- -   __@RejectedConnectionCount@__ - The number of connections that were
--     rejected because the load balancer had reached its maximum number of
--     connections.
--
--     @Statistics@: The most useful statistic is @Sum@.
--
--     @Unit@: The published unit is @Count@.
--
-- -   __@RequestCount@__ - The number of requests processed over IPv4.
--     This count includes only the requests with a response generated by a
--     target instance of the load balancer.
--
--     @Statistics@: The most useful statistic is @Sum@. Note that
--     @Minimum@, @Maximum@, and @Average@ all return @1@.
--
--     @Unit@: The published unit is @Count@.
--
-- -   __@UnhealthyHostCount@__ - The number of target instances that are
--     considered unhealthy.
--
--     @Statistics@: The most useful statistic are @Average@, @Minimum@,
--     and @Maximum@.
--
--     @Unit@: The published unit is @Count@.
getLoadBalancerMetricData_metricName :: Lens.Lens' GetLoadBalancerMetricData LoadBalancerMetricName
getLoadBalancerMetricData_metricName = Lens.lens (\GetLoadBalancerMetricData' {metricName} -> metricName) (\s@GetLoadBalancerMetricData' {} a -> s {metricName = a} :: GetLoadBalancerMetricData)

-- | The granularity, in seconds, of the returned data points.
getLoadBalancerMetricData_period :: Lens.Lens' GetLoadBalancerMetricData Prelude.Natural
getLoadBalancerMetricData_period = Lens.lens (\GetLoadBalancerMetricData' {period} -> period) (\s@GetLoadBalancerMetricData' {} a -> s {period = a} :: GetLoadBalancerMetricData)

-- | The start time of the period.
getLoadBalancerMetricData_startTime :: Lens.Lens' GetLoadBalancerMetricData Prelude.UTCTime
getLoadBalancerMetricData_startTime = Lens.lens (\GetLoadBalancerMetricData' {startTime} -> startTime) (\s@GetLoadBalancerMetricData' {} a -> s {startTime = a} :: GetLoadBalancerMetricData) Prelude.. Data._Time

-- | The end time of the period.
getLoadBalancerMetricData_endTime :: Lens.Lens' GetLoadBalancerMetricData Prelude.UTCTime
getLoadBalancerMetricData_endTime = Lens.lens (\GetLoadBalancerMetricData' {endTime} -> endTime) (\s@GetLoadBalancerMetricData' {} a -> s {endTime = a} :: GetLoadBalancerMetricData) Prelude.. Data._Time

-- | The unit for the metric data request. Valid units depend on the metric
-- data being requested. For the valid units with each available metric,
-- see the @metricName@ parameter.
getLoadBalancerMetricData_unit :: Lens.Lens' GetLoadBalancerMetricData MetricUnit
getLoadBalancerMetricData_unit = Lens.lens (\GetLoadBalancerMetricData' {unit} -> unit) (\s@GetLoadBalancerMetricData' {} a -> s {unit = a} :: GetLoadBalancerMetricData)

-- | The statistic for the metric.
--
-- The following statistics are available:
--
-- -   @Minimum@ - The lowest value observed during the specified period.
--     Use this value to determine low volumes of activity for your
--     application.
--
-- -   @Maximum@ - The highest value observed during the specified period.
--     Use this value to determine high volumes of activity for your
--     application.
--
-- -   @Sum@ - All values submitted for the matching metric added together.
--     You can use this statistic to determine the total volume of a
--     metric.
--
-- -   @Average@ - The value of Sum \/ SampleCount during the specified
--     period. By comparing this statistic with the Minimum and Maximum
--     values, you can determine the full scope of a metric and how close
--     the average use is to the Minimum and Maximum values. This
--     comparison helps you to know when to increase or decrease your
--     resources.
--
-- -   @SampleCount@ - The count, or number, of data points used for the
--     statistical calculation.
getLoadBalancerMetricData_statistics :: Lens.Lens' GetLoadBalancerMetricData [MetricStatistic]
getLoadBalancerMetricData_statistics = Lens.lens (\GetLoadBalancerMetricData' {statistics} -> statistics) (\s@GetLoadBalancerMetricData' {} a -> s {statistics = a} :: GetLoadBalancerMetricData) Prelude.. Lens.coerced

instance Core.AWSRequest GetLoadBalancerMetricData where
  type
    AWSResponse GetLoadBalancerMetricData =
      GetLoadBalancerMetricDataResponse
  request overrides =
    Request.postJSON (overrides defaultService)
  response =
    Response.receiveJSON
      ( \s h x ->
          GetLoadBalancerMetricDataResponse'
            Prelude.<$> (x Data..?> "metricData" Core..!@ Prelude.mempty)
            Prelude.<*> (x Data..?> "metricName")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable GetLoadBalancerMetricData where
  hashWithSalt _salt GetLoadBalancerMetricData' {..} =
    _salt
      `Prelude.hashWithSalt` loadBalancerName
      `Prelude.hashWithSalt` metricName
      `Prelude.hashWithSalt` period
      `Prelude.hashWithSalt` startTime
      `Prelude.hashWithSalt` endTime
      `Prelude.hashWithSalt` unit
      `Prelude.hashWithSalt` statistics

instance Prelude.NFData GetLoadBalancerMetricData where
  rnf GetLoadBalancerMetricData' {..} =
    Prelude.rnf loadBalancerName
      `Prelude.seq` Prelude.rnf metricName
      `Prelude.seq` Prelude.rnf period
      `Prelude.seq` Prelude.rnf startTime
      `Prelude.seq` Prelude.rnf endTime
      `Prelude.seq` Prelude.rnf unit
      `Prelude.seq` Prelude.rnf statistics

instance Data.ToHeaders GetLoadBalancerMetricData where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Data.=# ( "Lightsail_20161128.GetLoadBalancerMetricData" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Data.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Data.ToJSON GetLoadBalancerMetricData where
  toJSON GetLoadBalancerMetricData' {..} =
    Data.object
      ( Prelude.catMaybes
          [ Prelude.Just
              ("loadBalancerName" Data..= loadBalancerName),
            Prelude.Just ("metricName" Data..= metricName),
            Prelude.Just ("period" Data..= period),
            Prelude.Just ("startTime" Data..= startTime),
            Prelude.Just ("endTime" Data..= endTime),
            Prelude.Just ("unit" Data..= unit),
            Prelude.Just ("statistics" Data..= statistics)
          ]
      )

instance Data.ToPath GetLoadBalancerMetricData where
  toPath = Prelude.const "/"

instance Data.ToQuery GetLoadBalancerMetricData where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newGetLoadBalancerMetricDataResponse' smart constructor.
data GetLoadBalancerMetricDataResponse = GetLoadBalancerMetricDataResponse'
  { -- | An array of objects that describe the metric data returned.
    metricData :: Prelude.Maybe [MetricDatapoint],
    -- | The name of the metric returned.
    metricName :: Prelude.Maybe LoadBalancerMetricName,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetLoadBalancerMetricDataResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'metricData', 'getLoadBalancerMetricDataResponse_metricData' - An array of objects that describe the metric data returned.
--
-- 'metricName', 'getLoadBalancerMetricDataResponse_metricName' - The name of the metric returned.
--
-- 'httpStatus', 'getLoadBalancerMetricDataResponse_httpStatus' - The response's http status code.
newGetLoadBalancerMetricDataResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  GetLoadBalancerMetricDataResponse
newGetLoadBalancerMetricDataResponse pHttpStatus_ =
  GetLoadBalancerMetricDataResponse'
    { metricData =
        Prelude.Nothing,
      metricName = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | An array of objects that describe the metric data returned.
getLoadBalancerMetricDataResponse_metricData :: Lens.Lens' GetLoadBalancerMetricDataResponse (Prelude.Maybe [MetricDatapoint])
getLoadBalancerMetricDataResponse_metricData = Lens.lens (\GetLoadBalancerMetricDataResponse' {metricData} -> metricData) (\s@GetLoadBalancerMetricDataResponse' {} a -> s {metricData = a} :: GetLoadBalancerMetricDataResponse) Prelude.. Lens.mapping Lens.coerced

-- | The name of the metric returned.
getLoadBalancerMetricDataResponse_metricName :: Lens.Lens' GetLoadBalancerMetricDataResponse (Prelude.Maybe LoadBalancerMetricName)
getLoadBalancerMetricDataResponse_metricName = Lens.lens (\GetLoadBalancerMetricDataResponse' {metricName} -> metricName) (\s@GetLoadBalancerMetricDataResponse' {} a -> s {metricName = a} :: GetLoadBalancerMetricDataResponse)

-- | The response's http status code.
getLoadBalancerMetricDataResponse_httpStatus :: Lens.Lens' GetLoadBalancerMetricDataResponse Prelude.Int
getLoadBalancerMetricDataResponse_httpStatus = Lens.lens (\GetLoadBalancerMetricDataResponse' {httpStatus} -> httpStatus) (\s@GetLoadBalancerMetricDataResponse' {} a -> s {httpStatus = a} :: GetLoadBalancerMetricDataResponse)

instance
  Prelude.NFData
    GetLoadBalancerMetricDataResponse
  where
  rnf GetLoadBalancerMetricDataResponse' {..} =
    Prelude.rnf metricData
      `Prelude.seq` Prelude.rnf metricName
      `Prelude.seq` Prelude.rnf httpStatus
