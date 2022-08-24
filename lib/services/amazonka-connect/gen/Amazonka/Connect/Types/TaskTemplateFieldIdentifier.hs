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
-- Module      : Amazonka.Connect.Types.TaskTemplateFieldIdentifier
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.Connect.Types.TaskTemplateFieldIdentifier where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | The identifier of the task template field.
--
-- /See:/ 'newTaskTemplateFieldIdentifier' smart constructor.
data TaskTemplateFieldIdentifier = TaskTemplateFieldIdentifier'
  { -- | The name of the task template field.
    name :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'TaskTemplateFieldIdentifier' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'name', 'taskTemplateFieldIdentifier_name' - The name of the task template field.
newTaskTemplateFieldIdentifier ::
  TaskTemplateFieldIdentifier
newTaskTemplateFieldIdentifier =
  TaskTemplateFieldIdentifier'
    { name =
        Prelude.Nothing
    }

-- | The name of the task template field.
taskTemplateFieldIdentifier_name :: Lens.Lens' TaskTemplateFieldIdentifier (Prelude.Maybe Prelude.Text)
taskTemplateFieldIdentifier_name = Lens.lens (\TaskTemplateFieldIdentifier' {name} -> name) (\s@TaskTemplateFieldIdentifier' {} a -> s {name = a} :: TaskTemplateFieldIdentifier)

instance Core.FromJSON TaskTemplateFieldIdentifier where
  parseJSON =
    Core.withObject
      "TaskTemplateFieldIdentifier"
      ( \x ->
          TaskTemplateFieldIdentifier'
            Prelude.<$> (x Core..:? "Name")
      )

instance Prelude.Hashable TaskTemplateFieldIdentifier where
  hashWithSalt _salt TaskTemplateFieldIdentifier' {..} =
    _salt `Prelude.hashWithSalt` name

instance Prelude.NFData TaskTemplateFieldIdentifier where
  rnf TaskTemplateFieldIdentifier' {..} =
    Prelude.rnf name

instance Core.ToJSON TaskTemplateFieldIdentifier where
  toJSON TaskTemplateFieldIdentifier' {..} =
    Core.object
      ( Prelude.catMaybes
          [("Name" Core..=) Prelude.<$> name]
      )
