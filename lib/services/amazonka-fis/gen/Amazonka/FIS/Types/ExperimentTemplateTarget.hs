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
-- Module      : Amazonka.FIS.Types.ExperimentTemplateTarget
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.FIS.Types.ExperimentTemplateTarget where

import qualified Amazonka.Core as Core
import Amazonka.FIS.Types.ExperimentTemplateTargetFilter
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | Describes a target for an experiment template.
--
-- /See:/ 'newExperimentTemplateTarget' smart constructor.
data ExperimentTemplateTarget = ExperimentTemplateTarget'
  { -- | The resource type.
    resourceType :: Prelude.Maybe Prelude.Text,
    -- | The filters to apply to identify target resources using specific
    -- attributes.
    filters :: Prelude.Maybe [ExperimentTemplateTargetFilter],
    -- | The tags for the target resources.
    resourceTags :: Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text),
    -- | The resource type parameters.
    parameters :: Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text),
    -- | The Amazon Resource Names (ARNs) of the targets.
    resourceArns :: Prelude.Maybe [Prelude.Text],
    -- | Scopes the identified resources to a specific count or percentage.
    selectionMode :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ExperimentTemplateTarget' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'resourceType', 'experimentTemplateTarget_resourceType' - The resource type.
--
-- 'filters', 'experimentTemplateTarget_filters' - The filters to apply to identify target resources using specific
-- attributes.
--
-- 'resourceTags', 'experimentTemplateTarget_resourceTags' - The tags for the target resources.
--
-- 'parameters', 'experimentTemplateTarget_parameters' - The resource type parameters.
--
-- 'resourceArns', 'experimentTemplateTarget_resourceArns' - The Amazon Resource Names (ARNs) of the targets.
--
-- 'selectionMode', 'experimentTemplateTarget_selectionMode' - Scopes the identified resources to a specific count or percentage.
newExperimentTemplateTarget ::
  ExperimentTemplateTarget
newExperimentTemplateTarget =
  ExperimentTemplateTarget'
    { resourceType =
        Prelude.Nothing,
      filters = Prelude.Nothing,
      resourceTags = Prelude.Nothing,
      parameters = Prelude.Nothing,
      resourceArns = Prelude.Nothing,
      selectionMode = Prelude.Nothing
    }

-- | The resource type.
experimentTemplateTarget_resourceType :: Lens.Lens' ExperimentTemplateTarget (Prelude.Maybe Prelude.Text)
experimentTemplateTarget_resourceType = Lens.lens (\ExperimentTemplateTarget' {resourceType} -> resourceType) (\s@ExperimentTemplateTarget' {} a -> s {resourceType = a} :: ExperimentTemplateTarget)

-- | The filters to apply to identify target resources using specific
-- attributes.
experimentTemplateTarget_filters :: Lens.Lens' ExperimentTemplateTarget (Prelude.Maybe [ExperimentTemplateTargetFilter])
experimentTemplateTarget_filters = Lens.lens (\ExperimentTemplateTarget' {filters} -> filters) (\s@ExperimentTemplateTarget' {} a -> s {filters = a} :: ExperimentTemplateTarget) Prelude.. Lens.mapping Lens.coerced

-- | The tags for the target resources.
experimentTemplateTarget_resourceTags :: Lens.Lens' ExperimentTemplateTarget (Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text))
experimentTemplateTarget_resourceTags = Lens.lens (\ExperimentTemplateTarget' {resourceTags} -> resourceTags) (\s@ExperimentTemplateTarget' {} a -> s {resourceTags = a} :: ExperimentTemplateTarget) Prelude.. Lens.mapping Lens.coerced

-- | The resource type parameters.
experimentTemplateTarget_parameters :: Lens.Lens' ExperimentTemplateTarget (Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text))
experimentTemplateTarget_parameters = Lens.lens (\ExperimentTemplateTarget' {parameters} -> parameters) (\s@ExperimentTemplateTarget' {} a -> s {parameters = a} :: ExperimentTemplateTarget) Prelude.. Lens.mapping Lens.coerced

-- | The Amazon Resource Names (ARNs) of the targets.
experimentTemplateTarget_resourceArns :: Lens.Lens' ExperimentTemplateTarget (Prelude.Maybe [Prelude.Text])
experimentTemplateTarget_resourceArns = Lens.lens (\ExperimentTemplateTarget' {resourceArns} -> resourceArns) (\s@ExperimentTemplateTarget' {} a -> s {resourceArns = a} :: ExperimentTemplateTarget) Prelude.. Lens.mapping Lens.coerced

-- | Scopes the identified resources to a specific count or percentage.
experimentTemplateTarget_selectionMode :: Lens.Lens' ExperimentTemplateTarget (Prelude.Maybe Prelude.Text)
experimentTemplateTarget_selectionMode = Lens.lens (\ExperimentTemplateTarget' {selectionMode} -> selectionMode) (\s@ExperimentTemplateTarget' {} a -> s {selectionMode = a} :: ExperimentTemplateTarget)

instance Core.FromJSON ExperimentTemplateTarget where
  parseJSON =
    Core.withObject
      "ExperimentTemplateTarget"
      ( \x ->
          ExperimentTemplateTarget'
            Prelude.<$> (x Core..:? "resourceType")
            Prelude.<*> (x Core..:? "filters" Core..!= Prelude.mempty)
            Prelude.<*> (x Core..:? "resourceTags" Core..!= Prelude.mempty)
            Prelude.<*> (x Core..:? "parameters" Core..!= Prelude.mempty)
            Prelude.<*> (x Core..:? "resourceArns" Core..!= Prelude.mempty)
            Prelude.<*> (x Core..:? "selectionMode")
      )

instance Prelude.Hashable ExperimentTemplateTarget where
  hashWithSalt _salt ExperimentTemplateTarget' {..} =
    _salt `Prelude.hashWithSalt` resourceType
      `Prelude.hashWithSalt` filters
      `Prelude.hashWithSalt` resourceTags
      `Prelude.hashWithSalt` parameters
      `Prelude.hashWithSalt` resourceArns
      `Prelude.hashWithSalt` selectionMode

instance Prelude.NFData ExperimentTemplateTarget where
  rnf ExperimentTemplateTarget' {..} =
    Prelude.rnf resourceType
      `Prelude.seq` Prelude.rnf filters
      `Prelude.seq` Prelude.rnf resourceTags
      `Prelude.seq` Prelude.rnf parameters
      `Prelude.seq` Prelude.rnf resourceArns
      `Prelude.seq` Prelude.rnf selectionMode
