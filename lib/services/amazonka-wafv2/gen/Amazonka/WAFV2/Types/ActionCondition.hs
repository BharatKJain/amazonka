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
-- Module      : Amazonka.WAFV2.Types.ActionCondition
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.WAFV2.Types.ActionCondition where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import Amazonka.WAFV2.Types.ActionValue

-- | A single action condition for a Condition in a logging filter.
--
-- /See:/ 'newActionCondition' smart constructor.
data ActionCondition = ActionCondition'
  { -- | The action setting that a log record must contain in order to meet the
    -- condition.
    action :: ActionValue
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ActionCondition' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'action', 'actionCondition_action' - The action setting that a log record must contain in order to meet the
-- condition.
newActionCondition ::
  -- | 'action'
  ActionValue ->
  ActionCondition
newActionCondition pAction_ =
  ActionCondition' {action = pAction_}

-- | The action setting that a log record must contain in order to meet the
-- condition.
actionCondition_action :: Lens.Lens' ActionCondition ActionValue
actionCondition_action = Lens.lens (\ActionCondition' {action} -> action) (\s@ActionCondition' {} a -> s {action = a} :: ActionCondition)

instance Core.FromJSON ActionCondition where
  parseJSON =
    Core.withObject
      "ActionCondition"
      ( \x ->
          ActionCondition' Prelude.<$> (x Core..: "Action")
      )

instance Prelude.Hashable ActionCondition where
  hashWithSalt _salt ActionCondition' {..} =
    _salt `Prelude.hashWithSalt` action

instance Prelude.NFData ActionCondition where
  rnf ActionCondition' {..} = Prelude.rnf action

instance Core.ToJSON ActionCondition where
  toJSON ActionCondition' {..} =
    Core.object
      ( Prelude.catMaybes
          [Prelude.Just ("Action" Core..= action)]
      )
