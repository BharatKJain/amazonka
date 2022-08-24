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
-- Module      : Amazonka.SageMaker.Types.SearchRecord
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.SageMaker.Types.SearchRecord where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import Amazonka.SageMaker.Types.Endpoint
import Amazonka.SageMaker.Types.Experiment
import Amazonka.SageMaker.Types.FeatureGroup
import Amazonka.SageMaker.Types.FeatureMetadata
import Amazonka.SageMaker.Types.ModelPackage
import Amazonka.SageMaker.Types.ModelPackageGroup
import Amazonka.SageMaker.Types.Pipeline
import Amazonka.SageMaker.Types.PipelineExecution
import Amazonka.SageMaker.Types.Project
import Amazonka.SageMaker.Types.TrainingJob
import Amazonka.SageMaker.Types.Trial
import Amazonka.SageMaker.Types.TrialComponent

-- | A single resource returned as part of the Search API response.
--
-- /See:/ 'newSearchRecord' smart constructor.
data SearchRecord = SearchRecord'
  { modelPackageGroup :: Prelude.Maybe ModelPackageGroup,
    -- | The properties of a training job.
    trainingJob :: Prelude.Maybe TrainingJob,
    -- | The properties of a project.
    project :: Prelude.Maybe Project,
    -- | The properties of a trial component.
    trialComponent :: Prelude.Maybe TrialComponent,
    -- | The properties of an experiment.
    experiment :: Prelude.Maybe Experiment,
    endpoint :: Prelude.Maybe Endpoint,
    -- | The feature metadata used to search through the features.
    featureMetadata :: Prelude.Maybe FeatureMetadata,
    -- | The properties of a trial.
    trial :: Prelude.Maybe Trial,
    modelPackage :: Prelude.Maybe ModelPackage,
    pipeline :: Prelude.Maybe Pipeline,
    featureGroup :: Prelude.Maybe FeatureGroup,
    pipelineExecution :: Prelude.Maybe PipelineExecution
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'SearchRecord' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'modelPackageGroup', 'searchRecord_modelPackageGroup' - Undocumented member.
--
-- 'trainingJob', 'searchRecord_trainingJob' - The properties of a training job.
--
-- 'project', 'searchRecord_project' - The properties of a project.
--
-- 'trialComponent', 'searchRecord_trialComponent' - The properties of a trial component.
--
-- 'experiment', 'searchRecord_experiment' - The properties of an experiment.
--
-- 'endpoint', 'searchRecord_endpoint' - Undocumented member.
--
-- 'featureMetadata', 'searchRecord_featureMetadata' - The feature metadata used to search through the features.
--
-- 'trial', 'searchRecord_trial' - The properties of a trial.
--
-- 'modelPackage', 'searchRecord_modelPackage' - Undocumented member.
--
-- 'pipeline', 'searchRecord_pipeline' - Undocumented member.
--
-- 'featureGroup', 'searchRecord_featureGroup' - Undocumented member.
--
-- 'pipelineExecution', 'searchRecord_pipelineExecution' - Undocumented member.
newSearchRecord ::
  SearchRecord
newSearchRecord =
  SearchRecord'
    { modelPackageGroup = Prelude.Nothing,
      trainingJob = Prelude.Nothing,
      project = Prelude.Nothing,
      trialComponent = Prelude.Nothing,
      experiment = Prelude.Nothing,
      endpoint = Prelude.Nothing,
      featureMetadata = Prelude.Nothing,
      trial = Prelude.Nothing,
      modelPackage = Prelude.Nothing,
      pipeline = Prelude.Nothing,
      featureGroup = Prelude.Nothing,
      pipelineExecution = Prelude.Nothing
    }

-- | Undocumented member.
searchRecord_modelPackageGroup :: Lens.Lens' SearchRecord (Prelude.Maybe ModelPackageGroup)
searchRecord_modelPackageGroup = Lens.lens (\SearchRecord' {modelPackageGroup} -> modelPackageGroup) (\s@SearchRecord' {} a -> s {modelPackageGroup = a} :: SearchRecord)

-- | The properties of a training job.
searchRecord_trainingJob :: Lens.Lens' SearchRecord (Prelude.Maybe TrainingJob)
searchRecord_trainingJob = Lens.lens (\SearchRecord' {trainingJob} -> trainingJob) (\s@SearchRecord' {} a -> s {trainingJob = a} :: SearchRecord)

-- | The properties of a project.
searchRecord_project :: Lens.Lens' SearchRecord (Prelude.Maybe Project)
searchRecord_project = Lens.lens (\SearchRecord' {project} -> project) (\s@SearchRecord' {} a -> s {project = a} :: SearchRecord)

-- | The properties of a trial component.
searchRecord_trialComponent :: Lens.Lens' SearchRecord (Prelude.Maybe TrialComponent)
searchRecord_trialComponent = Lens.lens (\SearchRecord' {trialComponent} -> trialComponent) (\s@SearchRecord' {} a -> s {trialComponent = a} :: SearchRecord)

-- | The properties of an experiment.
searchRecord_experiment :: Lens.Lens' SearchRecord (Prelude.Maybe Experiment)
searchRecord_experiment = Lens.lens (\SearchRecord' {experiment} -> experiment) (\s@SearchRecord' {} a -> s {experiment = a} :: SearchRecord)

-- | Undocumented member.
searchRecord_endpoint :: Lens.Lens' SearchRecord (Prelude.Maybe Endpoint)
searchRecord_endpoint = Lens.lens (\SearchRecord' {endpoint} -> endpoint) (\s@SearchRecord' {} a -> s {endpoint = a} :: SearchRecord)

-- | The feature metadata used to search through the features.
searchRecord_featureMetadata :: Lens.Lens' SearchRecord (Prelude.Maybe FeatureMetadata)
searchRecord_featureMetadata = Lens.lens (\SearchRecord' {featureMetadata} -> featureMetadata) (\s@SearchRecord' {} a -> s {featureMetadata = a} :: SearchRecord)

-- | The properties of a trial.
searchRecord_trial :: Lens.Lens' SearchRecord (Prelude.Maybe Trial)
searchRecord_trial = Lens.lens (\SearchRecord' {trial} -> trial) (\s@SearchRecord' {} a -> s {trial = a} :: SearchRecord)

-- | Undocumented member.
searchRecord_modelPackage :: Lens.Lens' SearchRecord (Prelude.Maybe ModelPackage)
searchRecord_modelPackage = Lens.lens (\SearchRecord' {modelPackage} -> modelPackage) (\s@SearchRecord' {} a -> s {modelPackage = a} :: SearchRecord)

-- | Undocumented member.
searchRecord_pipeline :: Lens.Lens' SearchRecord (Prelude.Maybe Pipeline)
searchRecord_pipeline = Lens.lens (\SearchRecord' {pipeline} -> pipeline) (\s@SearchRecord' {} a -> s {pipeline = a} :: SearchRecord)

-- | Undocumented member.
searchRecord_featureGroup :: Lens.Lens' SearchRecord (Prelude.Maybe FeatureGroup)
searchRecord_featureGroup = Lens.lens (\SearchRecord' {featureGroup} -> featureGroup) (\s@SearchRecord' {} a -> s {featureGroup = a} :: SearchRecord)

-- | Undocumented member.
searchRecord_pipelineExecution :: Lens.Lens' SearchRecord (Prelude.Maybe PipelineExecution)
searchRecord_pipelineExecution = Lens.lens (\SearchRecord' {pipelineExecution} -> pipelineExecution) (\s@SearchRecord' {} a -> s {pipelineExecution = a} :: SearchRecord)

instance Core.FromJSON SearchRecord where
  parseJSON =
    Core.withObject
      "SearchRecord"
      ( \x ->
          SearchRecord'
            Prelude.<$> (x Core..:? "ModelPackageGroup")
            Prelude.<*> (x Core..:? "TrainingJob")
            Prelude.<*> (x Core..:? "Project")
            Prelude.<*> (x Core..:? "TrialComponent")
            Prelude.<*> (x Core..:? "Experiment")
            Prelude.<*> (x Core..:? "Endpoint")
            Prelude.<*> (x Core..:? "FeatureMetadata")
            Prelude.<*> (x Core..:? "Trial")
            Prelude.<*> (x Core..:? "ModelPackage")
            Prelude.<*> (x Core..:? "Pipeline")
            Prelude.<*> (x Core..:? "FeatureGroup")
            Prelude.<*> (x Core..:? "PipelineExecution")
      )

instance Prelude.Hashable SearchRecord where
  hashWithSalt _salt SearchRecord' {..} =
    _salt `Prelude.hashWithSalt` modelPackageGroup
      `Prelude.hashWithSalt` trainingJob
      `Prelude.hashWithSalt` project
      `Prelude.hashWithSalt` trialComponent
      `Prelude.hashWithSalt` experiment
      `Prelude.hashWithSalt` endpoint
      `Prelude.hashWithSalt` featureMetadata
      `Prelude.hashWithSalt` trial
      `Prelude.hashWithSalt` modelPackage
      `Prelude.hashWithSalt` pipeline
      `Prelude.hashWithSalt` featureGroup
      `Prelude.hashWithSalt` pipelineExecution

instance Prelude.NFData SearchRecord where
  rnf SearchRecord' {..} =
    Prelude.rnf modelPackageGroup
      `Prelude.seq` Prelude.rnf trainingJob
      `Prelude.seq` Prelude.rnf project
      `Prelude.seq` Prelude.rnf trialComponent
      `Prelude.seq` Prelude.rnf experiment
      `Prelude.seq` Prelude.rnf endpoint
      `Prelude.seq` Prelude.rnf featureMetadata
      `Prelude.seq` Prelude.rnf trial
      `Prelude.seq` Prelude.rnf modelPackage
      `Prelude.seq` Prelude.rnf pipeline
      `Prelude.seq` Prelude.rnf featureGroup
      `Prelude.seq` Prelude.rnf pipelineExecution
