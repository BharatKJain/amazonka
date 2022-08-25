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
-- Module      : Amazonka.FraudDetector.Types.EvaluatedExternalModel
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.FraudDetector.Types.EvaluatedExternalModel where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | The details of the external (Amazon Sagemaker) model evaluated for
-- generating predictions.
--
-- /See:/ 'newEvaluatedExternalModel' smart constructor.
data EvaluatedExternalModel = EvaluatedExternalModel'
  { -- | Input variables use for generating predictions.
    inputVariables :: Prelude.Maybe (Core.Sensitive (Prelude.HashMap Prelude.Text Prelude.Text)),
    -- | The endpoint of the external (Amazon Sagemaker) model.
    modelEndpoint :: Prelude.Maybe Prelude.Text,
    -- | Indicates whether event variables were used to generate predictions.
    useEventVariables :: Prelude.Maybe Prelude.Bool,
    -- | Output variables.
    outputVariables :: Prelude.Maybe (Core.Sensitive (Prelude.HashMap Prelude.Text Prelude.Text))
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'EvaluatedExternalModel' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'inputVariables', 'evaluatedExternalModel_inputVariables' - Input variables use for generating predictions.
--
-- 'modelEndpoint', 'evaluatedExternalModel_modelEndpoint' - The endpoint of the external (Amazon Sagemaker) model.
--
-- 'useEventVariables', 'evaluatedExternalModel_useEventVariables' - Indicates whether event variables were used to generate predictions.
--
-- 'outputVariables', 'evaluatedExternalModel_outputVariables' - Output variables.
newEvaluatedExternalModel ::
  EvaluatedExternalModel
newEvaluatedExternalModel =
  EvaluatedExternalModel'
    { inputVariables =
        Prelude.Nothing,
      modelEndpoint = Prelude.Nothing,
      useEventVariables = Prelude.Nothing,
      outputVariables = Prelude.Nothing
    }

-- | Input variables use for generating predictions.
evaluatedExternalModel_inputVariables :: Lens.Lens' EvaluatedExternalModel (Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text))
evaluatedExternalModel_inputVariables = Lens.lens (\EvaluatedExternalModel' {inputVariables} -> inputVariables) (\s@EvaluatedExternalModel' {} a -> s {inputVariables = a} :: EvaluatedExternalModel) Prelude.. Lens.mapping (Core._Sensitive Prelude.. Lens.coerced)

-- | The endpoint of the external (Amazon Sagemaker) model.
evaluatedExternalModel_modelEndpoint :: Lens.Lens' EvaluatedExternalModel (Prelude.Maybe Prelude.Text)
evaluatedExternalModel_modelEndpoint = Lens.lens (\EvaluatedExternalModel' {modelEndpoint} -> modelEndpoint) (\s@EvaluatedExternalModel' {} a -> s {modelEndpoint = a} :: EvaluatedExternalModel)

-- | Indicates whether event variables were used to generate predictions.
evaluatedExternalModel_useEventVariables :: Lens.Lens' EvaluatedExternalModel (Prelude.Maybe Prelude.Bool)
evaluatedExternalModel_useEventVariables = Lens.lens (\EvaluatedExternalModel' {useEventVariables} -> useEventVariables) (\s@EvaluatedExternalModel' {} a -> s {useEventVariables = a} :: EvaluatedExternalModel)

-- | Output variables.
evaluatedExternalModel_outputVariables :: Lens.Lens' EvaluatedExternalModel (Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text))
evaluatedExternalModel_outputVariables = Lens.lens (\EvaluatedExternalModel' {outputVariables} -> outputVariables) (\s@EvaluatedExternalModel' {} a -> s {outputVariables = a} :: EvaluatedExternalModel) Prelude.. Lens.mapping (Core._Sensitive Prelude.. Lens.coerced)

instance Core.FromJSON EvaluatedExternalModel where
  parseJSON =
    Core.withObject
      "EvaluatedExternalModel"
      ( \x ->
          EvaluatedExternalModel'
            Prelude.<$> (x Core..:? "inputVariables" Core..!= Prelude.mempty)
            Prelude.<*> (x Core..:? "modelEndpoint")
            Prelude.<*> (x Core..:? "useEventVariables")
            Prelude.<*> ( x Core..:? "outputVariables"
                            Core..!= Prelude.mempty
                        )
      )

instance Prelude.Hashable EvaluatedExternalModel where
  hashWithSalt _salt EvaluatedExternalModel' {..} =
    _salt `Prelude.hashWithSalt` inputVariables
      `Prelude.hashWithSalt` modelEndpoint
      `Prelude.hashWithSalt` useEventVariables
      `Prelude.hashWithSalt` outputVariables

instance Prelude.NFData EvaluatedExternalModel where
  rnf EvaluatedExternalModel' {..} =
    Prelude.rnf inputVariables
      `Prelude.seq` Prelude.rnf modelEndpoint
      `Prelude.seq` Prelude.rnf useEventVariables
      `Prelude.seq` Prelude.rnf outputVariables
