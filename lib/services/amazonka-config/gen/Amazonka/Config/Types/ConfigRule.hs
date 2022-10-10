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
-- Module      : Amazonka.Config.Types.ConfigRule
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.Config.Types.ConfigRule where

import Amazonka.Config.Types.ConfigRuleState
import Amazonka.Config.Types.MaximumExecutionFrequency
import Amazonka.Config.Types.Scope
import Amazonka.Config.Types.Source
import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | Config rules evaluate the configuration settings of your Amazon Web
-- Services resources. A rule can run when Config detects a configuration
-- change to an Amazon Web Services resource or at a periodic frequency
-- that you choose (for example, every 24 hours). There are two types of
-- rules: Config Managed Rules and Config Custom Rules. Managed rules are
-- predefined, customizable rules created by Config. For a list of managed
-- rules, see
-- <https://docs.aws.amazon.com/config/latest/developerguide/managed-rules-by-aws-config.html List of Config Managed Rules>.
--
-- Custom rules are rules that you can create using either Guard or Lambda
-- functions. Guard
-- (<https://github.com/aws-cloudformation/cloudformation-guard Guard GitHub Repository>)
-- is a policy-as-code language that allows you to write policies that are
-- enforced by Config Custom Policy rules. Lambda uses custom code that you
-- upload to evaluate a custom rule. It is invoked by events that are
-- published to it by an event source, which Config invokes when the custom
-- rule is initiated.
--
-- For more information about developing and using Config rules, see
-- <https://docs.aws.amazon.com/config/latest/developerguide/evaluate-config.html Evaluating Amazon Web Services resource Configurations with Config>
-- in the /Config Developer Guide/.
--
-- You can use the Amazon Web Services CLI and Amazon Web Services SDKs if
-- you want to create a rule that triggers evaluations for your resources
-- when Config delivers the configuration snapshot. For more information,
-- see ConfigSnapshotDeliveryProperties.
--
-- /See:/ 'newConfigRule' smart constructor.
data ConfigRule = ConfigRule'
  { -- | The maximum frequency with which Config runs evaluations for a rule. You
    -- can specify a value for @MaximumExecutionFrequency@ when:
    --
    -- -   This is for an Config managed rule that is triggered at a periodic
    --     frequency.
    --
    -- -   Your custom rule is triggered when Config delivers the configuration
    --     snapshot. For more information, see
    --     ConfigSnapshotDeliveryProperties.
    --
    -- By default, rules with a periodic trigger are evaluated every 24 hours.
    -- To change the frequency, specify a valid value for the
    -- @MaximumExecutionFrequency@ parameter.
    maximumExecutionFrequency :: Prelude.Maybe MaximumExecutionFrequency,
    -- | A string, in JSON format, that is passed to the Config rule Lambda
    -- function.
    inputParameters :: Prelude.Maybe Prelude.Text,
    -- | The Amazon Resource Name (ARN) of the Config rule.
    configRuleArn :: Prelude.Maybe Prelude.Text,
    -- | The description that you provide for the Config rule.
    description :: Prelude.Maybe Prelude.Text,
    -- | The ID of the Config rule.
    configRuleId :: Prelude.Maybe Prelude.Text,
    -- | The name that you assign to the Config rule. The name is required if you
    -- are adding a new rule.
    configRuleName :: Prelude.Maybe Prelude.Text,
    -- | Defines which resources can trigger an evaluation for the rule. The
    -- scope can include one or more resource types, a combination of one
    -- resource type and one resource ID, or a combination of a tag key and
    -- value. Specify a scope to constrain the resources that can trigger an
    -- evaluation for the rule. If you do not specify a scope, evaluations are
    -- triggered when any resource in the recording group changes.
    --
    -- The scope can be empty.
    scope :: Prelude.Maybe Scope,
    -- | Indicates whether the Config rule is active or is currently being
    -- deleted by Config. It can also indicate the evaluation status for the
    -- Config rule.
    --
    -- Config sets the state of the rule to @EVALUATING@ temporarily after you
    -- use the @StartConfigRulesEvaluation@ request to evaluate your resources
    -- against the Config rule.
    --
    -- Config sets the state of the rule to @DELETING_RESULTS@ temporarily
    -- after you use the @DeleteEvaluationResults@ request to delete the
    -- current evaluation results for the Config rule.
    --
    -- Config temporarily sets the state of a rule to @DELETING@ after you use
    -- the @DeleteConfigRule@ request to delete the rule. After Config deletes
    -- the rule, the rule and all of its evaluations are erased and are no
    -- longer available.
    configRuleState :: Prelude.Maybe ConfigRuleState,
    -- | Service principal name of the service that created the rule.
    --
    -- The field is populated only if the service-linked rule is created by a
    -- service. The field is empty if you create your own rule.
    createdBy :: Prelude.Maybe Prelude.Text,
    -- | Provides the rule owner (@Amazon Web Services@ for managed rules,
    -- @CUSTOM_POLICY@ for Custom Policy rules, and @CUSTOM_LAMBDA@ for Custom
    -- Lambda rules), the rule identifier, and the notifications that cause the
    -- function to evaluate your Amazon Web Services resources.
    source :: Source
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ConfigRule' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'maximumExecutionFrequency', 'configRule_maximumExecutionFrequency' - The maximum frequency with which Config runs evaluations for a rule. You
-- can specify a value for @MaximumExecutionFrequency@ when:
--
-- -   This is for an Config managed rule that is triggered at a periodic
--     frequency.
--
-- -   Your custom rule is triggered when Config delivers the configuration
--     snapshot. For more information, see
--     ConfigSnapshotDeliveryProperties.
--
-- By default, rules with a periodic trigger are evaluated every 24 hours.
-- To change the frequency, specify a valid value for the
-- @MaximumExecutionFrequency@ parameter.
--
-- 'inputParameters', 'configRule_inputParameters' - A string, in JSON format, that is passed to the Config rule Lambda
-- function.
--
-- 'configRuleArn', 'configRule_configRuleArn' - The Amazon Resource Name (ARN) of the Config rule.
--
-- 'description', 'configRule_description' - The description that you provide for the Config rule.
--
-- 'configRuleId', 'configRule_configRuleId' - The ID of the Config rule.
--
-- 'configRuleName', 'configRule_configRuleName' - The name that you assign to the Config rule. The name is required if you
-- are adding a new rule.
--
-- 'scope', 'configRule_scope' - Defines which resources can trigger an evaluation for the rule. The
-- scope can include one or more resource types, a combination of one
-- resource type and one resource ID, or a combination of a tag key and
-- value. Specify a scope to constrain the resources that can trigger an
-- evaluation for the rule. If you do not specify a scope, evaluations are
-- triggered when any resource in the recording group changes.
--
-- The scope can be empty.
--
-- 'configRuleState', 'configRule_configRuleState' - Indicates whether the Config rule is active or is currently being
-- deleted by Config. It can also indicate the evaluation status for the
-- Config rule.
--
-- Config sets the state of the rule to @EVALUATING@ temporarily after you
-- use the @StartConfigRulesEvaluation@ request to evaluate your resources
-- against the Config rule.
--
-- Config sets the state of the rule to @DELETING_RESULTS@ temporarily
-- after you use the @DeleteEvaluationResults@ request to delete the
-- current evaluation results for the Config rule.
--
-- Config temporarily sets the state of a rule to @DELETING@ after you use
-- the @DeleteConfigRule@ request to delete the rule. After Config deletes
-- the rule, the rule and all of its evaluations are erased and are no
-- longer available.
--
-- 'createdBy', 'configRule_createdBy' - Service principal name of the service that created the rule.
--
-- The field is populated only if the service-linked rule is created by a
-- service. The field is empty if you create your own rule.
--
-- 'source', 'configRule_source' - Provides the rule owner (@Amazon Web Services@ for managed rules,
-- @CUSTOM_POLICY@ for Custom Policy rules, and @CUSTOM_LAMBDA@ for Custom
-- Lambda rules), the rule identifier, and the notifications that cause the
-- function to evaluate your Amazon Web Services resources.
newConfigRule ::
  -- | 'source'
  Source ->
  ConfigRule
newConfigRule pSource_ =
  ConfigRule'
    { maximumExecutionFrequency =
        Prelude.Nothing,
      inputParameters = Prelude.Nothing,
      configRuleArn = Prelude.Nothing,
      description = Prelude.Nothing,
      configRuleId = Prelude.Nothing,
      configRuleName = Prelude.Nothing,
      scope = Prelude.Nothing,
      configRuleState = Prelude.Nothing,
      createdBy = Prelude.Nothing,
      source = pSource_
    }

-- | The maximum frequency with which Config runs evaluations for a rule. You
-- can specify a value for @MaximumExecutionFrequency@ when:
--
-- -   This is for an Config managed rule that is triggered at a periodic
--     frequency.
--
-- -   Your custom rule is triggered when Config delivers the configuration
--     snapshot. For more information, see
--     ConfigSnapshotDeliveryProperties.
--
-- By default, rules with a periodic trigger are evaluated every 24 hours.
-- To change the frequency, specify a valid value for the
-- @MaximumExecutionFrequency@ parameter.
configRule_maximumExecutionFrequency :: Lens.Lens' ConfigRule (Prelude.Maybe MaximumExecutionFrequency)
configRule_maximumExecutionFrequency = Lens.lens (\ConfigRule' {maximumExecutionFrequency} -> maximumExecutionFrequency) (\s@ConfigRule' {} a -> s {maximumExecutionFrequency = a} :: ConfigRule)

-- | A string, in JSON format, that is passed to the Config rule Lambda
-- function.
configRule_inputParameters :: Lens.Lens' ConfigRule (Prelude.Maybe Prelude.Text)
configRule_inputParameters = Lens.lens (\ConfigRule' {inputParameters} -> inputParameters) (\s@ConfigRule' {} a -> s {inputParameters = a} :: ConfigRule)

-- | The Amazon Resource Name (ARN) of the Config rule.
configRule_configRuleArn :: Lens.Lens' ConfigRule (Prelude.Maybe Prelude.Text)
configRule_configRuleArn = Lens.lens (\ConfigRule' {configRuleArn} -> configRuleArn) (\s@ConfigRule' {} a -> s {configRuleArn = a} :: ConfigRule)

-- | The description that you provide for the Config rule.
configRule_description :: Lens.Lens' ConfigRule (Prelude.Maybe Prelude.Text)
configRule_description = Lens.lens (\ConfigRule' {description} -> description) (\s@ConfigRule' {} a -> s {description = a} :: ConfigRule)

-- | The ID of the Config rule.
configRule_configRuleId :: Lens.Lens' ConfigRule (Prelude.Maybe Prelude.Text)
configRule_configRuleId = Lens.lens (\ConfigRule' {configRuleId} -> configRuleId) (\s@ConfigRule' {} a -> s {configRuleId = a} :: ConfigRule)

-- | The name that you assign to the Config rule. The name is required if you
-- are adding a new rule.
configRule_configRuleName :: Lens.Lens' ConfigRule (Prelude.Maybe Prelude.Text)
configRule_configRuleName = Lens.lens (\ConfigRule' {configRuleName} -> configRuleName) (\s@ConfigRule' {} a -> s {configRuleName = a} :: ConfigRule)

-- | Defines which resources can trigger an evaluation for the rule. The
-- scope can include one or more resource types, a combination of one
-- resource type and one resource ID, or a combination of a tag key and
-- value. Specify a scope to constrain the resources that can trigger an
-- evaluation for the rule. If you do not specify a scope, evaluations are
-- triggered when any resource in the recording group changes.
--
-- The scope can be empty.
configRule_scope :: Lens.Lens' ConfigRule (Prelude.Maybe Scope)
configRule_scope = Lens.lens (\ConfigRule' {scope} -> scope) (\s@ConfigRule' {} a -> s {scope = a} :: ConfigRule)

-- | Indicates whether the Config rule is active or is currently being
-- deleted by Config. It can also indicate the evaluation status for the
-- Config rule.
--
-- Config sets the state of the rule to @EVALUATING@ temporarily after you
-- use the @StartConfigRulesEvaluation@ request to evaluate your resources
-- against the Config rule.
--
-- Config sets the state of the rule to @DELETING_RESULTS@ temporarily
-- after you use the @DeleteEvaluationResults@ request to delete the
-- current evaluation results for the Config rule.
--
-- Config temporarily sets the state of a rule to @DELETING@ after you use
-- the @DeleteConfigRule@ request to delete the rule. After Config deletes
-- the rule, the rule and all of its evaluations are erased and are no
-- longer available.
configRule_configRuleState :: Lens.Lens' ConfigRule (Prelude.Maybe ConfigRuleState)
configRule_configRuleState = Lens.lens (\ConfigRule' {configRuleState} -> configRuleState) (\s@ConfigRule' {} a -> s {configRuleState = a} :: ConfigRule)

-- | Service principal name of the service that created the rule.
--
-- The field is populated only if the service-linked rule is created by a
-- service. The field is empty if you create your own rule.
configRule_createdBy :: Lens.Lens' ConfigRule (Prelude.Maybe Prelude.Text)
configRule_createdBy = Lens.lens (\ConfigRule' {createdBy} -> createdBy) (\s@ConfigRule' {} a -> s {createdBy = a} :: ConfigRule)

-- | Provides the rule owner (@Amazon Web Services@ for managed rules,
-- @CUSTOM_POLICY@ for Custom Policy rules, and @CUSTOM_LAMBDA@ for Custom
-- Lambda rules), the rule identifier, and the notifications that cause the
-- function to evaluate your Amazon Web Services resources.
configRule_source :: Lens.Lens' ConfigRule Source
configRule_source = Lens.lens (\ConfigRule' {source} -> source) (\s@ConfigRule' {} a -> s {source = a} :: ConfigRule)

instance Core.FromJSON ConfigRule where
  parseJSON =
    Core.withObject
      "ConfigRule"
      ( \x ->
          ConfigRule'
            Prelude.<$> (x Core..:? "MaximumExecutionFrequency")
            Prelude.<*> (x Core..:? "InputParameters")
            Prelude.<*> (x Core..:? "ConfigRuleArn")
            Prelude.<*> (x Core..:? "Description")
            Prelude.<*> (x Core..:? "ConfigRuleId")
            Prelude.<*> (x Core..:? "ConfigRuleName")
            Prelude.<*> (x Core..:? "Scope")
            Prelude.<*> (x Core..:? "ConfigRuleState")
            Prelude.<*> (x Core..:? "CreatedBy")
            Prelude.<*> (x Core..: "Source")
      )

instance Prelude.Hashable ConfigRule where
  hashWithSalt _salt ConfigRule' {..} =
    _salt
      `Prelude.hashWithSalt` maximumExecutionFrequency
      `Prelude.hashWithSalt` inputParameters
      `Prelude.hashWithSalt` configRuleArn
      `Prelude.hashWithSalt` description
      `Prelude.hashWithSalt` configRuleId
      `Prelude.hashWithSalt` configRuleName
      `Prelude.hashWithSalt` scope
      `Prelude.hashWithSalt` configRuleState
      `Prelude.hashWithSalt` createdBy
      `Prelude.hashWithSalt` source

instance Prelude.NFData ConfigRule where
  rnf ConfigRule' {..} =
    Prelude.rnf maximumExecutionFrequency
      `Prelude.seq` Prelude.rnf inputParameters
      `Prelude.seq` Prelude.rnf configRuleArn
      `Prelude.seq` Prelude.rnf description
      `Prelude.seq` Prelude.rnf configRuleId
      `Prelude.seq` Prelude.rnf configRuleName
      `Prelude.seq` Prelude.rnf scope
      `Prelude.seq` Prelude.rnf configRuleState
      `Prelude.seq` Prelude.rnf createdBy
      `Prelude.seq` Prelude.rnf source

instance Core.ToJSON ConfigRule where
  toJSON ConfigRule' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("MaximumExecutionFrequency" Core..=)
              Prelude.<$> maximumExecutionFrequency,
            ("InputParameters" Core..=)
              Prelude.<$> inputParameters,
            ("ConfigRuleArn" Core..=) Prelude.<$> configRuleArn,
            ("Description" Core..=) Prelude.<$> description,
            ("ConfigRuleId" Core..=) Prelude.<$> configRuleId,
            ("ConfigRuleName" Core..=)
              Prelude.<$> configRuleName,
            ("Scope" Core..=) Prelude.<$> scope,
            ("ConfigRuleState" Core..=)
              Prelude.<$> configRuleState,
            ("CreatedBy" Core..=) Prelude.<$> createdBy,
            Prelude.Just ("Source" Core..= source)
          ]
      )
