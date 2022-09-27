{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE NamedFieldPuns #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Amazonka.Evidently.Types.MetricMonitor
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.Evidently.Types.MetricMonitor where

import qualified Amazonka.Core as Core
import Amazonka.Evidently.Types.MetricDefinition
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | A structure that defines a metric to be used to monitor performance of
-- the variations during a launch.
--
-- /See:/ 'newMetricMonitor' smart constructor.
data MetricMonitor = MetricMonitor'
  { -- | A structure that defines the metric.
    metricDefinition :: MetricDefinition
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'MetricMonitor' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'metricDefinition', 'metricMonitor_metricDefinition' - A structure that defines the metric.
newMetricMonitor ::
  -- | 'metricDefinition'
  MetricDefinition ->
  MetricMonitor
newMetricMonitor pMetricDefinition_ =
  MetricMonitor'
    { metricDefinition =
        pMetricDefinition_
    }

-- | A structure that defines the metric.
metricMonitor_metricDefinition :: Lens.Lens' MetricMonitor MetricDefinition
metricMonitor_metricDefinition = Lens.lens (\MetricMonitor' {metricDefinition} -> metricDefinition) (\s@MetricMonitor' {} a -> s {metricDefinition = a} :: MetricMonitor)

instance Core.FromJSON MetricMonitor where
  parseJSON =
    Core.withObject
      "MetricMonitor"
      ( \x ->
          MetricMonitor'
            Prelude.<$> (x Core..: "metricDefinition")
      )

instance Prelude.Hashable MetricMonitor where
  hashWithSalt _salt MetricMonitor' {..} =
    _salt `Prelude.hashWithSalt` metricDefinition

instance Prelude.NFData MetricMonitor where
  rnf MetricMonitor' {..} = Prelude.rnf metricDefinition
