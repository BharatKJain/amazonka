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
-- Module      : Amazonka.Config.Types.OrganizationCustomPolicyRuleMetadataNoPolicy
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.Config.Types.OrganizationCustomPolicyRuleMetadataNoPolicy where

import Amazonka.Config.Types.MaximumExecutionFrequency
import Amazonka.Config.Types.OrganizationConfigRuleTriggerTypeNoSN
import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | An object that specifies metadata for your organization Config Custom
-- Policy rule including the runtime system in use, which accounts have
-- debug logging enabled, and other custom rule metadata such as resource
-- type, resource ID of Amazon Web Services resource, and organization
-- trigger types that trigger Config to evaluate Amazon Web Services
-- resources against a rule.
--
-- /See:/ 'newOrganizationCustomPolicyRuleMetadataNoPolicy' smart constructor.
data OrganizationCustomPolicyRuleMetadataNoPolicy = OrganizationCustomPolicyRuleMetadataNoPolicy'
  { -- | The maximum frequency with which Config runs evaluations for a rule.
    -- Your Config Custom Policy rule is triggered when Config delivers the
    -- configuration snapshot. For more information, see
    -- ConfigSnapshotDeliveryProperties.
    maximumExecutionFrequency :: Prelude.Maybe MaximumExecutionFrequency,
    -- | The type of the Amazon Web Services resource that was evaluated.
    resourceTypesScope :: Prelude.Maybe [Prelude.Text],
    -- | A string, in JSON format, that is passed to your organization Config
    -- Custom Policy rule.
    inputParameters :: Prelude.Maybe Prelude.Text,
    -- | The optional part of a key-value pair that make up a tag. A value acts
    -- as a descriptor within a tag category (key).
    tagValueScope :: Prelude.Maybe Prelude.Text,
    -- | The ID of the Amazon Web Services resource that was evaluated.
    resourceIdScope :: Prelude.Maybe Prelude.Text,
    -- | A list of accounts that you can enable debug logging for your
    -- organization Config Custom Policy rule. List is null when debug logging
    -- is enabled for all accounts.
    debugLogDeliveryAccounts :: Prelude.Maybe [Prelude.Text],
    -- | The description that you provide for your organization Config Custom
    -- Policy rule.
    description :: Prelude.Maybe Prelude.Text,
    -- | The type of notification that triggers Config to run an evaluation for a
    -- rule. For Config Custom Policy rules, Config supports change triggered
    -- notification types:
    --
    -- -   @ConfigurationItemChangeNotification@ - Triggers an evaluation when
    --     Config delivers a configuration item as a result of a resource
    --     change.
    --
    -- -   @OversizedConfigurationItemChangeNotification@ - Triggers an
    --     evaluation when Config delivers an oversized configuration item.
    --     Config may generate this notification type when a resource changes
    --     and the notification exceeds the maximum size allowed by Amazon SNS.
    organizationConfigRuleTriggerTypes :: Prelude.Maybe [OrganizationConfigRuleTriggerTypeNoSN],
    -- | The runtime system for your organization Config Custom Policy rules.
    -- Guard is a policy-as-code language that allows you to write policies
    -- that are enforced by Config Custom Policy rules. For more information
    -- about Guard, see the
    -- <https://github.com/aws-cloudformation/cloudformation-guard Guard GitHub Repository>.
    policyRuntime :: Prelude.Maybe Prelude.Text,
    -- | One part of a key-value pair that make up a tag. A key is a general
    -- label that acts like a category for more specific tag values.
    tagKeyScope :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'OrganizationCustomPolicyRuleMetadataNoPolicy' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'maximumExecutionFrequency', 'organizationCustomPolicyRuleMetadataNoPolicy_maximumExecutionFrequency' - The maximum frequency with which Config runs evaluations for a rule.
-- Your Config Custom Policy rule is triggered when Config delivers the
-- configuration snapshot. For more information, see
-- ConfigSnapshotDeliveryProperties.
--
-- 'resourceTypesScope', 'organizationCustomPolicyRuleMetadataNoPolicy_resourceTypesScope' - The type of the Amazon Web Services resource that was evaluated.
--
-- 'inputParameters', 'organizationCustomPolicyRuleMetadataNoPolicy_inputParameters' - A string, in JSON format, that is passed to your organization Config
-- Custom Policy rule.
--
-- 'tagValueScope', 'organizationCustomPolicyRuleMetadataNoPolicy_tagValueScope' - The optional part of a key-value pair that make up a tag. A value acts
-- as a descriptor within a tag category (key).
--
-- 'resourceIdScope', 'organizationCustomPolicyRuleMetadataNoPolicy_resourceIdScope' - The ID of the Amazon Web Services resource that was evaluated.
--
-- 'debugLogDeliveryAccounts', 'organizationCustomPolicyRuleMetadataNoPolicy_debugLogDeliveryAccounts' - A list of accounts that you can enable debug logging for your
-- organization Config Custom Policy rule. List is null when debug logging
-- is enabled for all accounts.
--
-- 'description', 'organizationCustomPolicyRuleMetadataNoPolicy_description' - The description that you provide for your organization Config Custom
-- Policy rule.
--
-- 'organizationConfigRuleTriggerTypes', 'organizationCustomPolicyRuleMetadataNoPolicy_organizationConfigRuleTriggerTypes' - The type of notification that triggers Config to run an evaluation for a
-- rule. For Config Custom Policy rules, Config supports change triggered
-- notification types:
--
-- -   @ConfigurationItemChangeNotification@ - Triggers an evaluation when
--     Config delivers a configuration item as a result of a resource
--     change.
--
-- -   @OversizedConfigurationItemChangeNotification@ - Triggers an
--     evaluation when Config delivers an oversized configuration item.
--     Config may generate this notification type when a resource changes
--     and the notification exceeds the maximum size allowed by Amazon SNS.
--
-- 'policyRuntime', 'organizationCustomPolicyRuleMetadataNoPolicy_policyRuntime' - The runtime system for your organization Config Custom Policy rules.
-- Guard is a policy-as-code language that allows you to write policies
-- that are enforced by Config Custom Policy rules. For more information
-- about Guard, see the
-- <https://github.com/aws-cloudformation/cloudformation-guard Guard GitHub Repository>.
--
-- 'tagKeyScope', 'organizationCustomPolicyRuleMetadataNoPolicy_tagKeyScope' - One part of a key-value pair that make up a tag. A key is a general
-- label that acts like a category for more specific tag values.
newOrganizationCustomPolicyRuleMetadataNoPolicy ::
  OrganizationCustomPolicyRuleMetadataNoPolicy
newOrganizationCustomPolicyRuleMetadataNoPolicy =
  OrganizationCustomPolicyRuleMetadataNoPolicy'
    { maximumExecutionFrequency =
        Prelude.Nothing,
      resourceTypesScope =
        Prelude.Nothing,
      inputParameters =
        Prelude.Nothing,
      tagValueScope =
        Prelude.Nothing,
      resourceIdScope =
        Prelude.Nothing,
      debugLogDeliveryAccounts =
        Prelude.Nothing,
      description = Prelude.Nothing,
      organizationConfigRuleTriggerTypes =
        Prelude.Nothing,
      policyRuntime =
        Prelude.Nothing,
      tagKeyScope = Prelude.Nothing
    }

-- | The maximum frequency with which Config runs evaluations for a rule.
-- Your Config Custom Policy rule is triggered when Config delivers the
-- configuration snapshot. For more information, see
-- ConfigSnapshotDeliveryProperties.
organizationCustomPolicyRuleMetadataNoPolicy_maximumExecutionFrequency :: Lens.Lens' OrganizationCustomPolicyRuleMetadataNoPolicy (Prelude.Maybe MaximumExecutionFrequency)
organizationCustomPolicyRuleMetadataNoPolicy_maximumExecutionFrequency = Lens.lens (\OrganizationCustomPolicyRuleMetadataNoPolicy' {maximumExecutionFrequency} -> maximumExecutionFrequency) (\s@OrganizationCustomPolicyRuleMetadataNoPolicy' {} a -> s {maximumExecutionFrequency = a} :: OrganizationCustomPolicyRuleMetadataNoPolicy)

-- | The type of the Amazon Web Services resource that was evaluated.
organizationCustomPolicyRuleMetadataNoPolicy_resourceTypesScope :: Lens.Lens' OrganizationCustomPolicyRuleMetadataNoPolicy (Prelude.Maybe [Prelude.Text])
organizationCustomPolicyRuleMetadataNoPolicy_resourceTypesScope = Lens.lens (\OrganizationCustomPolicyRuleMetadataNoPolicy' {resourceTypesScope} -> resourceTypesScope) (\s@OrganizationCustomPolicyRuleMetadataNoPolicy' {} a -> s {resourceTypesScope = a} :: OrganizationCustomPolicyRuleMetadataNoPolicy) Prelude.. Lens.mapping Lens.coerced

-- | A string, in JSON format, that is passed to your organization Config
-- Custom Policy rule.
organizationCustomPolicyRuleMetadataNoPolicy_inputParameters :: Lens.Lens' OrganizationCustomPolicyRuleMetadataNoPolicy (Prelude.Maybe Prelude.Text)
organizationCustomPolicyRuleMetadataNoPolicy_inputParameters = Lens.lens (\OrganizationCustomPolicyRuleMetadataNoPolicy' {inputParameters} -> inputParameters) (\s@OrganizationCustomPolicyRuleMetadataNoPolicy' {} a -> s {inputParameters = a} :: OrganizationCustomPolicyRuleMetadataNoPolicy)

-- | The optional part of a key-value pair that make up a tag. A value acts
-- as a descriptor within a tag category (key).
organizationCustomPolicyRuleMetadataNoPolicy_tagValueScope :: Lens.Lens' OrganizationCustomPolicyRuleMetadataNoPolicy (Prelude.Maybe Prelude.Text)
organizationCustomPolicyRuleMetadataNoPolicy_tagValueScope = Lens.lens (\OrganizationCustomPolicyRuleMetadataNoPolicy' {tagValueScope} -> tagValueScope) (\s@OrganizationCustomPolicyRuleMetadataNoPolicy' {} a -> s {tagValueScope = a} :: OrganizationCustomPolicyRuleMetadataNoPolicy)

-- | The ID of the Amazon Web Services resource that was evaluated.
organizationCustomPolicyRuleMetadataNoPolicy_resourceIdScope :: Lens.Lens' OrganizationCustomPolicyRuleMetadataNoPolicy (Prelude.Maybe Prelude.Text)
organizationCustomPolicyRuleMetadataNoPolicy_resourceIdScope = Lens.lens (\OrganizationCustomPolicyRuleMetadataNoPolicy' {resourceIdScope} -> resourceIdScope) (\s@OrganizationCustomPolicyRuleMetadataNoPolicy' {} a -> s {resourceIdScope = a} :: OrganizationCustomPolicyRuleMetadataNoPolicy)

-- | A list of accounts that you can enable debug logging for your
-- organization Config Custom Policy rule. List is null when debug logging
-- is enabled for all accounts.
organizationCustomPolicyRuleMetadataNoPolicy_debugLogDeliveryAccounts :: Lens.Lens' OrganizationCustomPolicyRuleMetadataNoPolicy (Prelude.Maybe [Prelude.Text])
organizationCustomPolicyRuleMetadataNoPolicy_debugLogDeliveryAccounts = Lens.lens (\OrganizationCustomPolicyRuleMetadataNoPolicy' {debugLogDeliveryAccounts} -> debugLogDeliveryAccounts) (\s@OrganizationCustomPolicyRuleMetadataNoPolicy' {} a -> s {debugLogDeliveryAccounts = a} :: OrganizationCustomPolicyRuleMetadataNoPolicy) Prelude.. Lens.mapping Lens.coerced

-- | The description that you provide for your organization Config Custom
-- Policy rule.
organizationCustomPolicyRuleMetadataNoPolicy_description :: Lens.Lens' OrganizationCustomPolicyRuleMetadataNoPolicy (Prelude.Maybe Prelude.Text)
organizationCustomPolicyRuleMetadataNoPolicy_description = Lens.lens (\OrganizationCustomPolicyRuleMetadataNoPolicy' {description} -> description) (\s@OrganizationCustomPolicyRuleMetadataNoPolicy' {} a -> s {description = a} :: OrganizationCustomPolicyRuleMetadataNoPolicy)

-- | The type of notification that triggers Config to run an evaluation for a
-- rule. For Config Custom Policy rules, Config supports change triggered
-- notification types:
--
-- -   @ConfigurationItemChangeNotification@ - Triggers an evaluation when
--     Config delivers a configuration item as a result of a resource
--     change.
--
-- -   @OversizedConfigurationItemChangeNotification@ - Triggers an
--     evaluation when Config delivers an oversized configuration item.
--     Config may generate this notification type when a resource changes
--     and the notification exceeds the maximum size allowed by Amazon SNS.
organizationCustomPolicyRuleMetadataNoPolicy_organizationConfigRuleTriggerTypes :: Lens.Lens' OrganizationCustomPolicyRuleMetadataNoPolicy (Prelude.Maybe [OrganizationConfigRuleTriggerTypeNoSN])
organizationCustomPolicyRuleMetadataNoPolicy_organizationConfigRuleTriggerTypes = Lens.lens (\OrganizationCustomPolicyRuleMetadataNoPolicy' {organizationConfigRuleTriggerTypes} -> organizationConfigRuleTriggerTypes) (\s@OrganizationCustomPolicyRuleMetadataNoPolicy' {} a -> s {organizationConfigRuleTriggerTypes = a} :: OrganizationCustomPolicyRuleMetadataNoPolicy) Prelude.. Lens.mapping Lens.coerced

-- | The runtime system for your organization Config Custom Policy rules.
-- Guard is a policy-as-code language that allows you to write policies
-- that are enforced by Config Custom Policy rules. For more information
-- about Guard, see the
-- <https://github.com/aws-cloudformation/cloudformation-guard Guard GitHub Repository>.
organizationCustomPolicyRuleMetadataNoPolicy_policyRuntime :: Lens.Lens' OrganizationCustomPolicyRuleMetadataNoPolicy (Prelude.Maybe Prelude.Text)
organizationCustomPolicyRuleMetadataNoPolicy_policyRuntime = Lens.lens (\OrganizationCustomPolicyRuleMetadataNoPolicy' {policyRuntime} -> policyRuntime) (\s@OrganizationCustomPolicyRuleMetadataNoPolicy' {} a -> s {policyRuntime = a} :: OrganizationCustomPolicyRuleMetadataNoPolicy)

-- | One part of a key-value pair that make up a tag. A key is a general
-- label that acts like a category for more specific tag values.
organizationCustomPolicyRuleMetadataNoPolicy_tagKeyScope :: Lens.Lens' OrganizationCustomPolicyRuleMetadataNoPolicy (Prelude.Maybe Prelude.Text)
organizationCustomPolicyRuleMetadataNoPolicy_tagKeyScope = Lens.lens (\OrganizationCustomPolicyRuleMetadataNoPolicy' {tagKeyScope} -> tagKeyScope) (\s@OrganizationCustomPolicyRuleMetadataNoPolicy' {} a -> s {tagKeyScope = a} :: OrganizationCustomPolicyRuleMetadataNoPolicy)

instance
  Core.FromJSON
    OrganizationCustomPolicyRuleMetadataNoPolicy
  where
  parseJSON =
    Core.withObject
      "OrganizationCustomPolicyRuleMetadataNoPolicy"
      ( \x ->
          OrganizationCustomPolicyRuleMetadataNoPolicy'
            Prelude.<$> (x Core..:? "MaximumExecutionFrequency")
              Prelude.<*> ( x Core..:? "ResourceTypesScope"
                              Core..!= Prelude.mempty
                          )
              Prelude.<*> (x Core..:? "InputParameters")
              Prelude.<*> (x Core..:? "TagValueScope")
              Prelude.<*> (x Core..:? "ResourceIdScope")
              Prelude.<*> ( x Core..:? "DebugLogDeliveryAccounts"
                              Core..!= Prelude.mempty
                          )
              Prelude.<*> (x Core..:? "Description")
              Prelude.<*> ( x Core..:? "OrganizationConfigRuleTriggerTypes"
                              Core..!= Prelude.mempty
                          )
              Prelude.<*> (x Core..:? "PolicyRuntime")
              Prelude.<*> (x Core..:? "TagKeyScope")
      )

instance
  Prelude.Hashable
    OrganizationCustomPolicyRuleMetadataNoPolicy
  where
  hashWithSalt
    _salt
    OrganizationCustomPolicyRuleMetadataNoPolicy' {..} =
      _salt
        `Prelude.hashWithSalt` maximumExecutionFrequency
        `Prelude.hashWithSalt` resourceTypesScope
        `Prelude.hashWithSalt` inputParameters
        `Prelude.hashWithSalt` tagValueScope
        `Prelude.hashWithSalt` resourceIdScope
        `Prelude.hashWithSalt` debugLogDeliveryAccounts
        `Prelude.hashWithSalt` description
        `Prelude.hashWithSalt` organizationConfigRuleTriggerTypes
        `Prelude.hashWithSalt` policyRuntime
        `Prelude.hashWithSalt` tagKeyScope

instance
  Prelude.NFData
    OrganizationCustomPolicyRuleMetadataNoPolicy
  where
  rnf OrganizationCustomPolicyRuleMetadataNoPolicy' {..} =
    Prelude.rnf maximumExecutionFrequency
      `Prelude.seq` Prelude.rnf resourceTypesScope
      `Prelude.seq` Prelude.rnf inputParameters
      `Prelude.seq` Prelude.rnf tagValueScope
      `Prelude.seq` Prelude.rnf resourceIdScope
      `Prelude.seq` Prelude.rnf debugLogDeliveryAccounts
      `Prelude.seq` Prelude.rnf description
      `Prelude.seq` Prelude.rnf organizationConfigRuleTriggerTypes
      `Prelude.seq` Prelude.rnf policyRuntime
      `Prelude.seq` Prelude.rnf tagKeyScope
