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
-- Module      : Amazonka.SageMaker.Types.DriftCheckExplainability
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.SageMaker.Types.DriftCheckExplainability where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import Amazonka.SageMaker.Types.FileSource
import Amazonka.SageMaker.Types.MetricsSource

-- | Represents the drift check explainability baselines that can be used
-- when the model monitor is set using the model package.
--
-- /See:/ 'newDriftCheckExplainability' smart constructor.
data DriftCheckExplainability = DriftCheckExplainability'
  { -- | The drift check explainability constraints.
    constraints :: Prelude.Maybe MetricsSource,
    -- | The explainability config file for the model.
    configFile :: Prelude.Maybe FileSource
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DriftCheckExplainability' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'constraints', 'driftCheckExplainability_constraints' - The drift check explainability constraints.
--
-- 'configFile', 'driftCheckExplainability_configFile' - The explainability config file for the model.
newDriftCheckExplainability ::
  DriftCheckExplainability
newDriftCheckExplainability =
  DriftCheckExplainability'
    { constraints =
        Prelude.Nothing,
      configFile = Prelude.Nothing
    }

-- | The drift check explainability constraints.
driftCheckExplainability_constraints :: Lens.Lens' DriftCheckExplainability (Prelude.Maybe MetricsSource)
driftCheckExplainability_constraints = Lens.lens (\DriftCheckExplainability' {constraints} -> constraints) (\s@DriftCheckExplainability' {} a -> s {constraints = a} :: DriftCheckExplainability)

-- | The explainability config file for the model.
driftCheckExplainability_configFile :: Lens.Lens' DriftCheckExplainability (Prelude.Maybe FileSource)
driftCheckExplainability_configFile = Lens.lens (\DriftCheckExplainability' {configFile} -> configFile) (\s@DriftCheckExplainability' {} a -> s {configFile = a} :: DriftCheckExplainability)

instance Core.FromJSON DriftCheckExplainability where
  parseJSON =
    Core.withObject
      "DriftCheckExplainability"
      ( \x ->
          DriftCheckExplainability'
            Prelude.<$> (x Core..:? "Constraints")
            Prelude.<*> (x Core..:? "ConfigFile")
      )

instance Prelude.Hashable DriftCheckExplainability where
  hashWithSalt _salt DriftCheckExplainability' {..} =
    _salt `Prelude.hashWithSalt` constraints
      `Prelude.hashWithSalt` configFile

instance Prelude.NFData DriftCheckExplainability where
  rnf DriftCheckExplainability' {..} =
    Prelude.rnf constraints
      `Prelude.seq` Prelude.rnf configFile

instance Core.ToJSON DriftCheckExplainability where
  toJSON DriftCheckExplainability' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("Constraints" Core..=) Prelude.<$> constraints,
            ("ConfigFile" Core..=) Prelude.<$> configFile
          ]
      )
