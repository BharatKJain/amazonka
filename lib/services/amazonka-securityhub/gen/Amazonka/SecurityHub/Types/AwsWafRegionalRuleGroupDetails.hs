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
-- Module      : Amazonka.SecurityHub.Types.AwsWafRegionalRuleGroupDetails
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.SecurityHub.Types.AwsWafRegionalRuleGroupDetails where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import Amazonka.SecurityHub.Types.AwsWafRegionalRuleGroupRulesDetails

-- | Provides information about an WAF Regional rule group. The rule group is
-- a collection of rules for inspecting and controlling web requests.
--
-- /See:/ 'newAwsWafRegionalRuleGroupDetails' smart constructor.
data AwsWafRegionalRuleGroupDetails = AwsWafRegionalRuleGroupDetails'
  { -- | The descriptive name of the rule group.
    name :: Prelude.Maybe Prelude.Text,
    -- | Provides information about the rule statements used to identify the web
    -- requests that you want to allow, block, or count.
    rules :: Prelude.Maybe [AwsWafRegionalRuleGroupRulesDetails],
    -- | The ID of the rule group.
    ruleGroupId :: Prelude.Maybe Prelude.Text,
    -- | A name for the metrics for this rule group.
    metricName :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'AwsWafRegionalRuleGroupDetails' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'name', 'awsWafRegionalRuleGroupDetails_name' - The descriptive name of the rule group.
--
-- 'rules', 'awsWafRegionalRuleGroupDetails_rules' - Provides information about the rule statements used to identify the web
-- requests that you want to allow, block, or count.
--
-- 'ruleGroupId', 'awsWafRegionalRuleGroupDetails_ruleGroupId' - The ID of the rule group.
--
-- 'metricName', 'awsWafRegionalRuleGroupDetails_metricName' - A name for the metrics for this rule group.
newAwsWafRegionalRuleGroupDetails ::
  AwsWafRegionalRuleGroupDetails
newAwsWafRegionalRuleGroupDetails =
  AwsWafRegionalRuleGroupDetails'
    { name =
        Prelude.Nothing,
      rules = Prelude.Nothing,
      ruleGroupId = Prelude.Nothing,
      metricName = Prelude.Nothing
    }

-- | The descriptive name of the rule group.
awsWafRegionalRuleGroupDetails_name :: Lens.Lens' AwsWafRegionalRuleGroupDetails (Prelude.Maybe Prelude.Text)
awsWafRegionalRuleGroupDetails_name = Lens.lens (\AwsWafRegionalRuleGroupDetails' {name} -> name) (\s@AwsWafRegionalRuleGroupDetails' {} a -> s {name = a} :: AwsWafRegionalRuleGroupDetails)

-- | Provides information about the rule statements used to identify the web
-- requests that you want to allow, block, or count.
awsWafRegionalRuleGroupDetails_rules :: Lens.Lens' AwsWafRegionalRuleGroupDetails (Prelude.Maybe [AwsWafRegionalRuleGroupRulesDetails])
awsWafRegionalRuleGroupDetails_rules = Lens.lens (\AwsWafRegionalRuleGroupDetails' {rules} -> rules) (\s@AwsWafRegionalRuleGroupDetails' {} a -> s {rules = a} :: AwsWafRegionalRuleGroupDetails) Prelude.. Lens.mapping Lens.coerced

-- | The ID of the rule group.
awsWafRegionalRuleGroupDetails_ruleGroupId :: Lens.Lens' AwsWafRegionalRuleGroupDetails (Prelude.Maybe Prelude.Text)
awsWafRegionalRuleGroupDetails_ruleGroupId = Lens.lens (\AwsWafRegionalRuleGroupDetails' {ruleGroupId} -> ruleGroupId) (\s@AwsWafRegionalRuleGroupDetails' {} a -> s {ruleGroupId = a} :: AwsWafRegionalRuleGroupDetails)

-- | A name for the metrics for this rule group.
awsWafRegionalRuleGroupDetails_metricName :: Lens.Lens' AwsWafRegionalRuleGroupDetails (Prelude.Maybe Prelude.Text)
awsWafRegionalRuleGroupDetails_metricName = Lens.lens (\AwsWafRegionalRuleGroupDetails' {metricName} -> metricName) (\s@AwsWafRegionalRuleGroupDetails' {} a -> s {metricName = a} :: AwsWafRegionalRuleGroupDetails)

instance Core.FromJSON AwsWafRegionalRuleGroupDetails where
  parseJSON =
    Core.withObject
      "AwsWafRegionalRuleGroupDetails"
      ( \x ->
          AwsWafRegionalRuleGroupDetails'
            Prelude.<$> (x Core..:? "Name")
            Prelude.<*> (x Core..:? "Rules" Core..!= Prelude.mempty)
            Prelude.<*> (x Core..:? "RuleGroupId")
            Prelude.<*> (x Core..:? "MetricName")
      )

instance
  Prelude.Hashable
    AwsWafRegionalRuleGroupDetails
  where
  hashWithSalt
    _salt
    AwsWafRegionalRuleGroupDetails' {..} =
      _salt `Prelude.hashWithSalt` name
        `Prelude.hashWithSalt` rules
        `Prelude.hashWithSalt` ruleGroupId
        `Prelude.hashWithSalt` metricName

instance
  Prelude.NFData
    AwsWafRegionalRuleGroupDetails
  where
  rnf AwsWafRegionalRuleGroupDetails' {..} =
    Prelude.rnf name
      `Prelude.seq` Prelude.rnf rules
      `Prelude.seq` Prelude.rnf ruleGroupId
      `Prelude.seq` Prelude.rnf metricName

instance Core.ToJSON AwsWafRegionalRuleGroupDetails where
  toJSON AwsWafRegionalRuleGroupDetails' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("Name" Core..=) Prelude.<$> name,
            ("Rules" Core..=) Prelude.<$> rules,
            ("RuleGroupId" Core..=) Prelude.<$> ruleGroupId,
            ("MetricName" Core..=) Prelude.<$> metricName
          ]
      )
