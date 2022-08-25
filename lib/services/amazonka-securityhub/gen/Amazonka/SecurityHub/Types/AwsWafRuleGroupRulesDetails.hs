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
-- Module      : Amazonka.SecurityHub.Types.AwsWafRuleGroupRulesDetails
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.SecurityHub.Types.AwsWafRuleGroupRulesDetails where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import Amazonka.SecurityHub.Types.AwsWafRuleGroupRulesActionDetails

-- | Provides information about the rules attached to the rule group. These
-- rules identify the web requests that you want to allow, block, or count.
--
-- /See:/ 'newAwsWafRuleGroupRulesDetails' smart constructor.
data AwsWafRuleGroupRulesDetails = AwsWafRuleGroupRulesDetails'
  { -- | The type of rule.
    type' :: Prelude.Maybe Prelude.Text,
    -- | The rule ID for a rule.
    ruleId :: Prelude.Maybe Prelude.Text,
    -- | If you define more than one rule in a web ACL, WAF evaluates each
    -- request against the rules in order based on the value of @Priority@.
    priority :: Prelude.Maybe Prelude.Int,
    -- | Provides information about what action WAF should take on a web request
    -- when it matches the criteria defined in the rule.
    action :: Prelude.Maybe AwsWafRuleGroupRulesActionDetails
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'AwsWafRuleGroupRulesDetails' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'type'', 'awsWafRuleGroupRulesDetails_type' - The type of rule.
--
-- 'ruleId', 'awsWafRuleGroupRulesDetails_ruleId' - The rule ID for a rule.
--
-- 'priority', 'awsWafRuleGroupRulesDetails_priority' - If you define more than one rule in a web ACL, WAF evaluates each
-- request against the rules in order based on the value of @Priority@.
--
-- 'action', 'awsWafRuleGroupRulesDetails_action' - Provides information about what action WAF should take on a web request
-- when it matches the criteria defined in the rule.
newAwsWafRuleGroupRulesDetails ::
  AwsWafRuleGroupRulesDetails
newAwsWafRuleGroupRulesDetails =
  AwsWafRuleGroupRulesDetails'
    { type' =
        Prelude.Nothing,
      ruleId = Prelude.Nothing,
      priority = Prelude.Nothing,
      action = Prelude.Nothing
    }

-- | The type of rule.
awsWafRuleGroupRulesDetails_type :: Lens.Lens' AwsWafRuleGroupRulesDetails (Prelude.Maybe Prelude.Text)
awsWafRuleGroupRulesDetails_type = Lens.lens (\AwsWafRuleGroupRulesDetails' {type'} -> type') (\s@AwsWafRuleGroupRulesDetails' {} a -> s {type' = a} :: AwsWafRuleGroupRulesDetails)

-- | The rule ID for a rule.
awsWafRuleGroupRulesDetails_ruleId :: Lens.Lens' AwsWafRuleGroupRulesDetails (Prelude.Maybe Prelude.Text)
awsWafRuleGroupRulesDetails_ruleId = Lens.lens (\AwsWafRuleGroupRulesDetails' {ruleId} -> ruleId) (\s@AwsWafRuleGroupRulesDetails' {} a -> s {ruleId = a} :: AwsWafRuleGroupRulesDetails)

-- | If you define more than one rule in a web ACL, WAF evaluates each
-- request against the rules in order based on the value of @Priority@.
awsWafRuleGroupRulesDetails_priority :: Lens.Lens' AwsWafRuleGroupRulesDetails (Prelude.Maybe Prelude.Int)
awsWafRuleGroupRulesDetails_priority = Lens.lens (\AwsWafRuleGroupRulesDetails' {priority} -> priority) (\s@AwsWafRuleGroupRulesDetails' {} a -> s {priority = a} :: AwsWafRuleGroupRulesDetails)

-- | Provides information about what action WAF should take on a web request
-- when it matches the criteria defined in the rule.
awsWafRuleGroupRulesDetails_action :: Lens.Lens' AwsWafRuleGroupRulesDetails (Prelude.Maybe AwsWafRuleGroupRulesActionDetails)
awsWafRuleGroupRulesDetails_action = Lens.lens (\AwsWafRuleGroupRulesDetails' {action} -> action) (\s@AwsWafRuleGroupRulesDetails' {} a -> s {action = a} :: AwsWafRuleGroupRulesDetails)

instance Core.FromJSON AwsWafRuleGroupRulesDetails where
  parseJSON =
    Core.withObject
      "AwsWafRuleGroupRulesDetails"
      ( \x ->
          AwsWafRuleGroupRulesDetails'
            Prelude.<$> (x Core..:? "Type")
            Prelude.<*> (x Core..:? "RuleId")
            Prelude.<*> (x Core..:? "Priority")
            Prelude.<*> (x Core..:? "Action")
      )

instance Prelude.Hashable AwsWafRuleGroupRulesDetails where
  hashWithSalt _salt AwsWafRuleGroupRulesDetails' {..} =
    _salt `Prelude.hashWithSalt` type'
      `Prelude.hashWithSalt` ruleId
      `Prelude.hashWithSalt` priority
      `Prelude.hashWithSalt` action

instance Prelude.NFData AwsWafRuleGroupRulesDetails where
  rnf AwsWafRuleGroupRulesDetails' {..} =
    Prelude.rnf type'
      `Prelude.seq` Prelude.rnf ruleId
      `Prelude.seq` Prelude.rnf priority
      `Prelude.seq` Prelude.rnf action

instance Core.ToJSON AwsWafRuleGroupRulesDetails where
  toJSON AwsWafRuleGroupRulesDetails' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("Type" Core..=) Prelude.<$> type',
            ("RuleId" Core..=) Prelude.<$> ruleId,
            ("Priority" Core..=) Prelude.<$> priority,
            ("Action" Core..=) Prelude.<$> action
          ]
      )
