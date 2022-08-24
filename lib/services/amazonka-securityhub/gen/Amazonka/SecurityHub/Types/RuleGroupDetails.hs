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
-- Module      : Amazonka.SecurityHub.Types.RuleGroupDetails
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.SecurityHub.Types.RuleGroupDetails where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import Amazonka.SecurityHub.Types.RuleGroupSource
import Amazonka.SecurityHub.Types.RuleGroupVariables

-- | Details about the rule group.
--
-- /See:/ 'newRuleGroupDetails' smart constructor.
data RuleGroupDetails = RuleGroupDetails'
  { -- | The rules and actions for the rule group.
    --
    -- For stateful rule groups, can contain @RulesString@, @RulesSourceList@,
    -- or @StatefulRules@.
    --
    -- For stateless rule groups, contains @StatelessRulesAndCustomActions@.
    rulesSource :: Prelude.Maybe RuleGroupSource,
    -- | Additional settings to use in the specified rules.
    ruleVariables :: Prelude.Maybe RuleGroupVariables
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'RuleGroupDetails' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'rulesSource', 'ruleGroupDetails_rulesSource' - The rules and actions for the rule group.
--
-- For stateful rule groups, can contain @RulesString@, @RulesSourceList@,
-- or @StatefulRules@.
--
-- For stateless rule groups, contains @StatelessRulesAndCustomActions@.
--
-- 'ruleVariables', 'ruleGroupDetails_ruleVariables' - Additional settings to use in the specified rules.
newRuleGroupDetails ::
  RuleGroupDetails
newRuleGroupDetails =
  RuleGroupDetails'
    { rulesSource = Prelude.Nothing,
      ruleVariables = Prelude.Nothing
    }

-- | The rules and actions for the rule group.
--
-- For stateful rule groups, can contain @RulesString@, @RulesSourceList@,
-- or @StatefulRules@.
--
-- For stateless rule groups, contains @StatelessRulesAndCustomActions@.
ruleGroupDetails_rulesSource :: Lens.Lens' RuleGroupDetails (Prelude.Maybe RuleGroupSource)
ruleGroupDetails_rulesSource = Lens.lens (\RuleGroupDetails' {rulesSource} -> rulesSource) (\s@RuleGroupDetails' {} a -> s {rulesSource = a} :: RuleGroupDetails)

-- | Additional settings to use in the specified rules.
ruleGroupDetails_ruleVariables :: Lens.Lens' RuleGroupDetails (Prelude.Maybe RuleGroupVariables)
ruleGroupDetails_ruleVariables = Lens.lens (\RuleGroupDetails' {ruleVariables} -> ruleVariables) (\s@RuleGroupDetails' {} a -> s {ruleVariables = a} :: RuleGroupDetails)

instance Core.FromJSON RuleGroupDetails where
  parseJSON =
    Core.withObject
      "RuleGroupDetails"
      ( \x ->
          RuleGroupDetails'
            Prelude.<$> (x Core..:? "RulesSource")
            Prelude.<*> (x Core..:? "RuleVariables")
      )

instance Prelude.Hashable RuleGroupDetails where
  hashWithSalt _salt RuleGroupDetails' {..} =
    _salt `Prelude.hashWithSalt` rulesSource
      `Prelude.hashWithSalt` ruleVariables

instance Prelude.NFData RuleGroupDetails where
  rnf RuleGroupDetails' {..} =
    Prelude.rnf rulesSource
      `Prelude.seq` Prelude.rnf ruleVariables

instance Core.ToJSON RuleGroupDetails where
  toJSON RuleGroupDetails' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("RulesSource" Core..=) Prelude.<$> rulesSource,
            ("RuleVariables" Core..=) Prelude.<$> ruleVariables
          ]
      )
