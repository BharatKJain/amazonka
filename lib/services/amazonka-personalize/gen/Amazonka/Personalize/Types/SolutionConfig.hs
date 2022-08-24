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
-- Module      : Amazonka.Personalize.Types.SolutionConfig
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.Personalize.Types.SolutionConfig where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import Amazonka.Personalize.Types.AutoMLConfig
import Amazonka.Personalize.Types.HPOConfig
import Amazonka.Personalize.Types.OptimizationObjective
import qualified Amazonka.Prelude as Prelude

-- | Describes the configuration properties for the solution.
--
-- /See:/ 'newSolutionConfig' smart constructor.
data SolutionConfig = SolutionConfig'
  { -- | Lists the feature transformation parameters.
    featureTransformationParameters :: Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text),
    -- | Describes the additional objective for the solution, such as maximizing
    -- streaming minutes or increasing revenue. For more information see
    -- <https://docs.aws.amazon.com/personalize/latest/dg/optimizing-solution-for-objective.html Optimizing a solution>.
    optimizationObjective :: Prelude.Maybe OptimizationObjective,
    -- | Lists the hyperparameter names and ranges.
    algorithmHyperParameters :: Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text),
    -- | The
    -- <https://docs.aws.amazon.com/personalize/latest/dg/API_AutoMLConfig.html AutoMLConfig>
    -- object containing a list of recipes to search when AutoML is performed.
    autoMLConfig :: Prelude.Maybe AutoMLConfig,
    -- | Only events with a value greater than or equal to this threshold are
    -- used for training a model.
    eventValueThreshold :: Prelude.Maybe Prelude.Text,
    -- | Describes the properties for hyperparameter optimization (HPO).
    hpoConfig :: Prelude.Maybe HPOConfig
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'SolutionConfig' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'featureTransformationParameters', 'solutionConfig_featureTransformationParameters' - Lists the feature transformation parameters.
--
-- 'optimizationObjective', 'solutionConfig_optimizationObjective' - Describes the additional objective for the solution, such as maximizing
-- streaming minutes or increasing revenue. For more information see
-- <https://docs.aws.amazon.com/personalize/latest/dg/optimizing-solution-for-objective.html Optimizing a solution>.
--
-- 'algorithmHyperParameters', 'solutionConfig_algorithmHyperParameters' - Lists the hyperparameter names and ranges.
--
-- 'autoMLConfig', 'solutionConfig_autoMLConfig' - The
-- <https://docs.aws.amazon.com/personalize/latest/dg/API_AutoMLConfig.html AutoMLConfig>
-- object containing a list of recipes to search when AutoML is performed.
--
-- 'eventValueThreshold', 'solutionConfig_eventValueThreshold' - Only events with a value greater than or equal to this threshold are
-- used for training a model.
--
-- 'hpoConfig', 'solutionConfig_hpoConfig' - Describes the properties for hyperparameter optimization (HPO).
newSolutionConfig ::
  SolutionConfig
newSolutionConfig =
  SolutionConfig'
    { featureTransformationParameters =
        Prelude.Nothing,
      optimizationObjective = Prelude.Nothing,
      algorithmHyperParameters = Prelude.Nothing,
      autoMLConfig = Prelude.Nothing,
      eventValueThreshold = Prelude.Nothing,
      hpoConfig = Prelude.Nothing
    }

-- | Lists the feature transformation parameters.
solutionConfig_featureTransformationParameters :: Lens.Lens' SolutionConfig (Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text))
solutionConfig_featureTransformationParameters = Lens.lens (\SolutionConfig' {featureTransformationParameters} -> featureTransformationParameters) (\s@SolutionConfig' {} a -> s {featureTransformationParameters = a} :: SolutionConfig) Prelude.. Lens.mapping Lens.coerced

-- | Describes the additional objective for the solution, such as maximizing
-- streaming minutes or increasing revenue. For more information see
-- <https://docs.aws.amazon.com/personalize/latest/dg/optimizing-solution-for-objective.html Optimizing a solution>.
solutionConfig_optimizationObjective :: Lens.Lens' SolutionConfig (Prelude.Maybe OptimizationObjective)
solutionConfig_optimizationObjective = Lens.lens (\SolutionConfig' {optimizationObjective} -> optimizationObjective) (\s@SolutionConfig' {} a -> s {optimizationObjective = a} :: SolutionConfig)

-- | Lists the hyperparameter names and ranges.
solutionConfig_algorithmHyperParameters :: Lens.Lens' SolutionConfig (Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text))
solutionConfig_algorithmHyperParameters = Lens.lens (\SolutionConfig' {algorithmHyperParameters} -> algorithmHyperParameters) (\s@SolutionConfig' {} a -> s {algorithmHyperParameters = a} :: SolutionConfig) Prelude.. Lens.mapping Lens.coerced

-- | The
-- <https://docs.aws.amazon.com/personalize/latest/dg/API_AutoMLConfig.html AutoMLConfig>
-- object containing a list of recipes to search when AutoML is performed.
solutionConfig_autoMLConfig :: Lens.Lens' SolutionConfig (Prelude.Maybe AutoMLConfig)
solutionConfig_autoMLConfig = Lens.lens (\SolutionConfig' {autoMLConfig} -> autoMLConfig) (\s@SolutionConfig' {} a -> s {autoMLConfig = a} :: SolutionConfig)

-- | Only events with a value greater than or equal to this threshold are
-- used for training a model.
solutionConfig_eventValueThreshold :: Lens.Lens' SolutionConfig (Prelude.Maybe Prelude.Text)
solutionConfig_eventValueThreshold = Lens.lens (\SolutionConfig' {eventValueThreshold} -> eventValueThreshold) (\s@SolutionConfig' {} a -> s {eventValueThreshold = a} :: SolutionConfig)

-- | Describes the properties for hyperparameter optimization (HPO).
solutionConfig_hpoConfig :: Lens.Lens' SolutionConfig (Prelude.Maybe HPOConfig)
solutionConfig_hpoConfig = Lens.lens (\SolutionConfig' {hpoConfig} -> hpoConfig) (\s@SolutionConfig' {} a -> s {hpoConfig = a} :: SolutionConfig)

instance Core.FromJSON SolutionConfig where
  parseJSON =
    Core.withObject
      "SolutionConfig"
      ( \x ->
          SolutionConfig'
            Prelude.<$> ( x Core..:? "featureTransformationParameters"
                            Core..!= Prelude.mempty
                        )
            Prelude.<*> (x Core..:? "optimizationObjective")
            Prelude.<*> ( x Core..:? "algorithmHyperParameters"
                            Core..!= Prelude.mempty
                        )
            Prelude.<*> (x Core..:? "autoMLConfig")
            Prelude.<*> (x Core..:? "eventValueThreshold")
            Prelude.<*> (x Core..:? "hpoConfig")
      )

instance Prelude.Hashable SolutionConfig where
  hashWithSalt _salt SolutionConfig' {..} =
    _salt
      `Prelude.hashWithSalt` featureTransformationParameters
      `Prelude.hashWithSalt` optimizationObjective
      `Prelude.hashWithSalt` algorithmHyperParameters
      `Prelude.hashWithSalt` autoMLConfig
      `Prelude.hashWithSalt` eventValueThreshold
      `Prelude.hashWithSalt` hpoConfig

instance Prelude.NFData SolutionConfig where
  rnf SolutionConfig' {..} =
    Prelude.rnf featureTransformationParameters
      `Prelude.seq` Prelude.rnf optimizationObjective
      `Prelude.seq` Prelude.rnf algorithmHyperParameters
      `Prelude.seq` Prelude.rnf autoMLConfig
      `Prelude.seq` Prelude.rnf eventValueThreshold
      `Prelude.seq` Prelude.rnf hpoConfig

instance Core.ToJSON SolutionConfig where
  toJSON SolutionConfig' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("featureTransformationParameters" Core..=)
              Prelude.<$> featureTransformationParameters,
            ("optimizationObjective" Core..=)
              Prelude.<$> optimizationObjective,
            ("algorithmHyperParameters" Core..=)
              Prelude.<$> algorithmHyperParameters,
            ("autoMLConfig" Core..=) Prelude.<$> autoMLConfig,
            ("eventValueThreshold" Core..=)
              Prelude.<$> eventValueThreshold,
            ("hpoConfig" Core..=) Prelude.<$> hpoConfig
          ]
      )
