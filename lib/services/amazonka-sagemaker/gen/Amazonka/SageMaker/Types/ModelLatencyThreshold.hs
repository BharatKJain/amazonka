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
-- Module      : Amazonka.SageMaker.Types.ModelLatencyThreshold
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.SageMaker.Types.ModelLatencyThreshold where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | The model latency threshold.
--
-- /See:/ 'newModelLatencyThreshold' smart constructor.
data ModelLatencyThreshold = ModelLatencyThreshold'
  { -- | The model latency percentile value in milliseconds.
    valueInMilliseconds :: Prelude.Maybe Prelude.Int,
    -- | The model latency percentile threshold.
    percentile :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ModelLatencyThreshold' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'valueInMilliseconds', 'modelLatencyThreshold_valueInMilliseconds' - The model latency percentile value in milliseconds.
--
-- 'percentile', 'modelLatencyThreshold_percentile' - The model latency percentile threshold.
newModelLatencyThreshold ::
  ModelLatencyThreshold
newModelLatencyThreshold =
  ModelLatencyThreshold'
    { valueInMilliseconds =
        Prelude.Nothing,
      percentile = Prelude.Nothing
    }

-- | The model latency percentile value in milliseconds.
modelLatencyThreshold_valueInMilliseconds :: Lens.Lens' ModelLatencyThreshold (Prelude.Maybe Prelude.Int)
modelLatencyThreshold_valueInMilliseconds = Lens.lens (\ModelLatencyThreshold' {valueInMilliseconds} -> valueInMilliseconds) (\s@ModelLatencyThreshold' {} a -> s {valueInMilliseconds = a} :: ModelLatencyThreshold)

-- | The model latency percentile threshold.
modelLatencyThreshold_percentile :: Lens.Lens' ModelLatencyThreshold (Prelude.Maybe Prelude.Text)
modelLatencyThreshold_percentile = Lens.lens (\ModelLatencyThreshold' {percentile} -> percentile) (\s@ModelLatencyThreshold' {} a -> s {percentile = a} :: ModelLatencyThreshold)

instance Core.FromJSON ModelLatencyThreshold where
  parseJSON =
    Core.withObject
      "ModelLatencyThreshold"
      ( \x ->
          ModelLatencyThreshold'
            Prelude.<$> (x Core..:? "ValueInMilliseconds")
            Prelude.<*> (x Core..:? "Percentile")
      )

instance Prelude.Hashable ModelLatencyThreshold where
  hashWithSalt _salt ModelLatencyThreshold' {..} =
    _salt `Prelude.hashWithSalt` valueInMilliseconds
      `Prelude.hashWithSalt` percentile

instance Prelude.NFData ModelLatencyThreshold where
  rnf ModelLatencyThreshold' {..} =
    Prelude.rnf valueInMilliseconds
      `Prelude.seq` Prelude.rnf percentile

instance Core.ToJSON ModelLatencyThreshold where
  toJSON ModelLatencyThreshold' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("ValueInMilliseconds" Core..=)
              Prelude.<$> valueInMilliseconds,
            ("Percentile" Core..=) Prelude.<$> percentile
          ]
      )
