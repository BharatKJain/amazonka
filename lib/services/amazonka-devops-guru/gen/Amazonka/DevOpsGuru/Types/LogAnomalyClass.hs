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
-- Module      : Amazonka.DevOpsGuru.Types.LogAnomalyClass
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.DevOpsGuru.Types.LogAnomalyClass where

import qualified Amazonka.Core as Core
import Amazonka.DevOpsGuru.Types.LogAnomalyType
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | Information about an anomalous log event found within a log group.
--
-- /See:/ 'newLogAnomalyClass' smart constructor.
data LogAnomalyClass = LogAnomalyClass'
  { -- | The number of log lines where this anomalous log event occurs.
    numberOfLogLinesOccurrences :: Prelude.Maybe Prelude.Int,
    -- | The time of the first occurrence of the anomalous log event.
    logEventTimestamp :: Prelude.Maybe Core.POSIX,
    -- | The ID of the log event.
    logEventId :: Prelude.Maybe Prelude.Text,
    -- | The token where the anomaly was detected. This may refer to an exception
    -- or another location, or it may be blank for log anomalies such as format
    -- anomalies.
    logAnomalyToken :: Prelude.Maybe Prelude.Text,
    -- | The type of log anomaly that has been detected.
    logAnomalyType :: Prelude.Maybe LogAnomalyType,
    -- | The explanation for why the log event is considered an anomaly.
    explanation :: Prelude.Maybe Prelude.Text,
    -- | The name of the Amazon CloudWatch log stream that the anomalous log
    -- event belongs to. A log stream is a sequence of log events that share
    -- the same source.
    logStreamName :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'LogAnomalyClass' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'numberOfLogLinesOccurrences', 'logAnomalyClass_numberOfLogLinesOccurrences' - The number of log lines where this anomalous log event occurs.
--
-- 'logEventTimestamp', 'logAnomalyClass_logEventTimestamp' - The time of the first occurrence of the anomalous log event.
--
-- 'logEventId', 'logAnomalyClass_logEventId' - The ID of the log event.
--
-- 'logAnomalyToken', 'logAnomalyClass_logAnomalyToken' - The token where the anomaly was detected. This may refer to an exception
-- or another location, or it may be blank for log anomalies such as format
-- anomalies.
--
-- 'logAnomalyType', 'logAnomalyClass_logAnomalyType' - The type of log anomaly that has been detected.
--
-- 'explanation', 'logAnomalyClass_explanation' - The explanation for why the log event is considered an anomaly.
--
-- 'logStreamName', 'logAnomalyClass_logStreamName' - The name of the Amazon CloudWatch log stream that the anomalous log
-- event belongs to. A log stream is a sequence of log events that share
-- the same source.
newLogAnomalyClass ::
  LogAnomalyClass
newLogAnomalyClass =
  LogAnomalyClass'
    { numberOfLogLinesOccurrences =
        Prelude.Nothing,
      logEventTimestamp = Prelude.Nothing,
      logEventId = Prelude.Nothing,
      logAnomalyToken = Prelude.Nothing,
      logAnomalyType = Prelude.Nothing,
      explanation = Prelude.Nothing,
      logStreamName = Prelude.Nothing
    }

-- | The number of log lines where this anomalous log event occurs.
logAnomalyClass_numberOfLogLinesOccurrences :: Lens.Lens' LogAnomalyClass (Prelude.Maybe Prelude.Int)
logAnomalyClass_numberOfLogLinesOccurrences = Lens.lens (\LogAnomalyClass' {numberOfLogLinesOccurrences} -> numberOfLogLinesOccurrences) (\s@LogAnomalyClass' {} a -> s {numberOfLogLinesOccurrences = a} :: LogAnomalyClass)

-- | The time of the first occurrence of the anomalous log event.
logAnomalyClass_logEventTimestamp :: Lens.Lens' LogAnomalyClass (Prelude.Maybe Prelude.UTCTime)
logAnomalyClass_logEventTimestamp = Lens.lens (\LogAnomalyClass' {logEventTimestamp} -> logEventTimestamp) (\s@LogAnomalyClass' {} a -> s {logEventTimestamp = a} :: LogAnomalyClass) Prelude.. Lens.mapping Core._Time

-- | The ID of the log event.
logAnomalyClass_logEventId :: Lens.Lens' LogAnomalyClass (Prelude.Maybe Prelude.Text)
logAnomalyClass_logEventId = Lens.lens (\LogAnomalyClass' {logEventId} -> logEventId) (\s@LogAnomalyClass' {} a -> s {logEventId = a} :: LogAnomalyClass)

-- | The token where the anomaly was detected. This may refer to an exception
-- or another location, or it may be blank for log anomalies such as format
-- anomalies.
logAnomalyClass_logAnomalyToken :: Lens.Lens' LogAnomalyClass (Prelude.Maybe Prelude.Text)
logAnomalyClass_logAnomalyToken = Lens.lens (\LogAnomalyClass' {logAnomalyToken} -> logAnomalyToken) (\s@LogAnomalyClass' {} a -> s {logAnomalyToken = a} :: LogAnomalyClass)

-- | The type of log anomaly that has been detected.
logAnomalyClass_logAnomalyType :: Lens.Lens' LogAnomalyClass (Prelude.Maybe LogAnomalyType)
logAnomalyClass_logAnomalyType = Lens.lens (\LogAnomalyClass' {logAnomalyType} -> logAnomalyType) (\s@LogAnomalyClass' {} a -> s {logAnomalyType = a} :: LogAnomalyClass)

-- | The explanation for why the log event is considered an anomaly.
logAnomalyClass_explanation :: Lens.Lens' LogAnomalyClass (Prelude.Maybe Prelude.Text)
logAnomalyClass_explanation = Lens.lens (\LogAnomalyClass' {explanation} -> explanation) (\s@LogAnomalyClass' {} a -> s {explanation = a} :: LogAnomalyClass)

-- | The name of the Amazon CloudWatch log stream that the anomalous log
-- event belongs to. A log stream is a sequence of log events that share
-- the same source.
logAnomalyClass_logStreamName :: Lens.Lens' LogAnomalyClass (Prelude.Maybe Prelude.Text)
logAnomalyClass_logStreamName = Lens.lens (\LogAnomalyClass' {logStreamName} -> logStreamName) (\s@LogAnomalyClass' {} a -> s {logStreamName = a} :: LogAnomalyClass)

instance Core.FromJSON LogAnomalyClass where
  parseJSON =
    Core.withObject
      "LogAnomalyClass"
      ( \x ->
          LogAnomalyClass'
            Prelude.<$> (x Core..:? "NumberOfLogLinesOccurrences")
            Prelude.<*> (x Core..:? "LogEventTimestamp")
            Prelude.<*> (x Core..:? "LogEventId")
            Prelude.<*> (x Core..:? "LogAnomalyToken")
            Prelude.<*> (x Core..:? "LogAnomalyType")
            Prelude.<*> (x Core..:? "Explanation")
            Prelude.<*> (x Core..:? "LogStreamName")
      )

instance Prelude.Hashable LogAnomalyClass where
  hashWithSalt _salt LogAnomalyClass' {..} =
    _salt
      `Prelude.hashWithSalt` numberOfLogLinesOccurrences
      `Prelude.hashWithSalt` logEventTimestamp
      `Prelude.hashWithSalt` logEventId
      `Prelude.hashWithSalt` logAnomalyToken
      `Prelude.hashWithSalt` logAnomalyType
      `Prelude.hashWithSalt` explanation
      `Prelude.hashWithSalt` logStreamName

instance Prelude.NFData LogAnomalyClass where
  rnf LogAnomalyClass' {..} =
    Prelude.rnf numberOfLogLinesOccurrences
      `Prelude.seq` Prelude.rnf logEventTimestamp
      `Prelude.seq` Prelude.rnf logEventId
      `Prelude.seq` Prelude.rnf logAnomalyToken
      `Prelude.seq` Prelude.rnf logAnomalyType
      `Prelude.seq` Prelude.rnf explanation
      `Prelude.seq` Prelude.rnf logStreamName
