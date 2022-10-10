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
-- Module      : Amazonka.MwAA.Types.ModuleLoggingConfiguration
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.MwAA.Types.ModuleLoggingConfiguration where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import Amazonka.MwAA.Types.LoggingLevel
import qualified Amazonka.Prelude as Prelude

-- | Describes the Apache Airflow log details for the log type (e.g.
-- @DagProcessingLogs@).
--
-- /See:/ 'newModuleLoggingConfiguration' smart constructor.
data ModuleLoggingConfiguration = ModuleLoggingConfiguration'
  { -- | The Apache Airflow log level for the log type (e.g.
    -- @DagProcessingLogs@).
    logLevel :: Prelude.Maybe LoggingLevel,
    -- | The Amazon Resource Name (ARN) for the CloudWatch Logs group where the
    -- Apache Airflow log type (e.g. @DagProcessingLogs@) is published. For
    -- example,
    -- @arn:aws:logs:us-east-1:123456789012:log-group:airflow-MyMWAAEnvironment-MwaaEnvironment-DAGProcessing:*@.
    cloudWatchLogGroupArn :: Prelude.Maybe Prelude.Text,
    -- | Indicates whether the Apache Airflow log type (e.g. @DagProcessingLogs@)
    -- is enabled.
    enabled :: Prelude.Maybe Prelude.Bool
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ModuleLoggingConfiguration' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'logLevel', 'moduleLoggingConfiguration_logLevel' - The Apache Airflow log level for the log type (e.g.
-- @DagProcessingLogs@).
--
-- 'cloudWatchLogGroupArn', 'moduleLoggingConfiguration_cloudWatchLogGroupArn' - The Amazon Resource Name (ARN) for the CloudWatch Logs group where the
-- Apache Airflow log type (e.g. @DagProcessingLogs@) is published. For
-- example,
-- @arn:aws:logs:us-east-1:123456789012:log-group:airflow-MyMWAAEnvironment-MwaaEnvironment-DAGProcessing:*@.
--
-- 'enabled', 'moduleLoggingConfiguration_enabled' - Indicates whether the Apache Airflow log type (e.g. @DagProcessingLogs@)
-- is enabled.
newModuleLoggingConfiguration ::
  ModuleLoggingConfiguration
newModuleLoggingConfiguration =
  ModuleLoggingConfiguration'
    { logLevel =
        Prelude.Nothing,
      cloudWatchLogGroupArn = Prelude.Nothing,
      enabled = Prelude.Nothing
    }

-- | The Apache Airflow log level for the log type (e.g.
-- @DagProcessingLogs@).
moduleLoggingConfiguration_logLevel :: Lens.Lens' ModuleLoggingConfiguration (Prelude.Maybe LoggingLevel)
moduleLoggingConfiguration_logLevel = Lens.lens (\ModuleLoggingConfiguration' {logLevel} -> logLevel) (\s@ModuleLoggingConfiguration' {} a -> s {logLevel = a} :: ModuleLoggingConfiguration)

-- | The Amazon Resource Name (ARN) for the CloudWatch Logs group where the
-- Apache Airflow log type (e.g. @DagProcessingLogs@) is published. For
-- example,
-- @arn:aws:logs:us-east-1:123456789012:log-group:airflow-MyMWAAEnvironment-MwaaEnvironment-DAGProcessing:*@.
moduleLoggingConfiguration_cloudWatchLogGroupArn :: Lens.Lens' ModuleLoggingConfiguration (Prelude.Maybe Prelude.Text)
moduleLoggingConfiguration_cloudWatchLogGroupArn = Lens.lens (\ModuleLoggingConfiguration' {cloudWatchLogGroupArn} -> cloudWatchLogGroupArn) (\s@ModuleLoggingConfiguration' {} a -> s {cloudWatchLogGroupArn = a} :: ModuleLoggingConfiguration)

-- | Indicates whether the Apache Airflow log type (e.g. @DagProcessingLogs@)
-- is enabled.
moduleLoggingConfiguration_enabled :: Lens.Lens' ModuleLoggingConfiguration (Prelude.Maybe Prelude.Bool)
moduleLoggingConfiguration_enabled = Lens.lens (\ModuleLoggingConfiguration' {enabled} -> enabled) (\s@ModuleLoggingConfiguration' {} a -> s {enabled = a} :: ModuleLoggingConfiguration)

instance Core.FromJSON ModuleLoggingConfiguration where
  parseJSON =
    Core.withObject
      "ModuleLoggingConfiguration"
      ( \x ->
          ModuleLoggingConfiguration'
            Prelude.<$> (x Core..:? "LogLevel")
            Prelude.<*> (x Core..:? "CloudWatchLogGroupArn")
            Prelude.<*> (x Core..:? "Enabled")
      )

instance Prelude.Hashable ModuleLoggingConfiguration where
  hashWithSalt _salt ModuleLoggingConfiguration' {..} =
    _salt `Prelude.hashWithSalt` logLevel
      `Prelude.hashWithSalt` cloudWatchLogGroupArn
      `Prelude.hashWithSalt` enabled

instance Prelude.NFData ModuleLoggingConfiguration where
  rnf ModuleLoggingConfiguration' {..} =
    Prelude.rnf logLevel
      `Prelude.seq` Prelude.rnf cloudWatchLogGroupArn
      `Prelude.seq` Prelude.rnf enabled
