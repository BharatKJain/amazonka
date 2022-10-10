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
-- Module      : Amazonka.MigrationHubOrchestrator.Types.TemplateInput
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.MigrationHubOrchestrator.Types.TemplateInput where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import Amazonka.MigrationHubOrchestrator.Types.DataType
import qualified Amazonka.Prelude as Prelude

-- | The input parameters of a template.
--
-- /See:/ 'newTemplateInput' smart constructor.
data TemplateInput = TemplateInput'
  { -- | Determine if an input is required from the template.
    required :: Prelude.Maybe Prelude.Bool,
    -- | The name of the template.
    inputName :: Prelude.Maybe Prelude.Text,
    -- | The data type of the template input.
    dataType :: Prelude.Maybe DataType
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'TemplateInput' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'required', 'templateInput_required' - Determine if an input is required from the template.
--
-- 'inputName', 'templateInput_inputName' - The name of the template.
--
-- 'dataType', 'templateInput_dataType' - The data type of the template input.
newTemplateInput ::
  TemplateInput
newTemplateInput =
  TemplateInput'
    { required = Prelude.Nothing,
      inputName = Prelude.Nothing,
      dataType = Prelude.Nothing
    }

-- | Determine if an input is required from the template.
templateInput_required :: Lens.Lens' TemplateInput (Prelude.Maybe Prelude.Bool)
templateInput_required = Lens.lens (\TemplateInput' {required} -> required) (\s@TemplateInput' {} a -> s {required = a} :: TemplateInput)

-- | The name of the template.
templateInput_inputName :: Lens.Lens' TemplateInput (Prelude.Maybe Prelude.Text)
templateInput_inputName = Lens.lens (\TemplateInput' {inputName} -> inputName) (\s@TemplateInput' {} a -> s {inputName = a} :: TemplateInput)

-- | The data type of the template input.
templateInput_dataType :: Lens.Lens' TemplateInput (Prelude.Maybe DataType)
templateInput_dataType = Lens.lens (\TemplateInput' {dataType} -> dataType) (\s@TemplateInput' {} a -> s {dataType = a} :: TemplateInput)

instance Core.FromJSON TemplateInput where
  parseJSON =
    Core.withObject
      "TemplateInput"
      ( \x ->
          TemplateInput'
            Prelude.<$> (x Core..:? "required")
            Prelude.<*> (x Core..:? "inputName")
            Prelude.<*> (x Core..:? "dataType")
      )

instance Prelude.Hashable TemplateInput where
  hashWithSalt _salt TemplateInput' {..} =
    _salt `Prelude.hashWithSalt` required
      `Prelude.hashWithSalt` inputName
      `Prelude.hashWithSalt` dataType

instance Prelude.NFData TemplateInput where
  rnf TemplateInput' {..} =
    Prelude.rnf required
      `Prelude.seq` Prelude.rnf inputName
      `Prelude.seq` Prelude.rnf dataType
