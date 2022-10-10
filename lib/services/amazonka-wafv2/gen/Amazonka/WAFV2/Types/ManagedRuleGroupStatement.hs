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
-- Module      : Amazonka.WAFV2.Types.ManagedRuleGroupStatement
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.WAFV2.Types.ManagedRuleGroupStatement where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import Amazonka.WAFV2.Types.ExcludedRule
import Amazonka.WAFV2.Types.ManagedRuleGroupConfig
import {-# SOURCE #-} Amazonka.WAFV2.Types.Statement

-- | A rule statement used to run the rules that are defined in a managed
-- rule group. To use this, provide the vendor name and the name of the
-- rule group in this statement. You can retrieve the required names by
-- calling ListAvailableManagedRuleGroups.
--
-- You cannot nest a @ManagedRuleGroupStatement@, for example for use
-- inside a @NotStatement@ or @OrStatement@. It can only be referenced as a
-- top-level statement within a rule.
--
-- You are charged additional fees when you use the WAF Bot Control managed
-- rule group @AWSManagedRulesBotControlRuleSet@ or the WAF Fraud Control
-- account takeover prevention (ATP) managed rule group
-- @AWSManagedRulesATPRuleSet@. For more information, see
-- <http://aws.amazon.com/waf/pricing/ WAF Pricing>.
--
-- /See:/ 'newManagedRuleGroupStatement' smart constructor.
data ManagedRuleGroupStatement = ManagedRuleGroupStatement'
  { -- | Additional information that\'s used by a managed rule group. Most
    -- managed rule groups don\'t require this.
    --
    -- Use this for the account takeover prevention managed rule group
    -- @AWSManagedRulesATPRuleSet@, to provide information about the sign-in
    -- page of your application.
    --
    -- You can provide multiple individual @ManagedRuleGroupConfig@ objects for
    -- any rule group configuration, for example @UsernameField@ and
    -- @PasswordField@. The configuration that you provide depends on the needs
    -- of the managed rule group. For the ATP managed rule group, you provide
    -- the following individual configuration objects: @LoginPath@,
    -- @PasswordField@, @PayloadType@ and @UsernameField@.
    managedRuleGroupConfigs :: Prelude.Maybe (Prelude.NonEmpty ManagedRuleGroupConfig),
    -- | An optional nested statement that narrows the scope of the web requests
    -- that are evaluated by the managed rule group. Requests are only
    -- evaluated by the rule group if they match the scope-down statement. You
    -- can use any nestable Statement in the scope-down statement, and you can
    -- nest statements at any level, the same as you can for a rule statement.
    scopeDownStatement :: Prelude.Maybe Statement,
    -- | The rules in the referenced rule group whose actions are set to @Count@.
    -- When you exclude a rule, WAF evaluates it exactly as it would if the
    -- rule action setting were @Count@. This is a useful option for testing
    -- the rules in a rule group without modifying how they handle your web
    -- traffic.
    excludedRules :: Prelude.Maybe [ExcludedRule],
    -- | The version of the managed rule group to use. If you specify this, the
    -- version setting is fixed until you change it. If you don\'t specify
    -- this, WAF uses the vendor\'s default version, and then keeps the version
    -- at the vendor\'s default when the vendor updates the managed rule group
    -- settings.
    version :: Prelude.Maybe Prelude.Text,
    -- | The name of the managed rule group vendor. You use this, along with the
    -- rule group name, to identify the rule group.
    vendorName :: Prelude.Text,
    -- | The name of the managed rule group. You use this, along with the vendor
    -- name, to identify the rule group.
    name :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ManagedRuleGroupStatement' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'managedRuleGroupConfigs', 'managedRuleGroupStatement_managedRuleGroupConfigs' - Additional information that\'s used by a managed rule group. Most
-- managed rule groups don\'t require this.
--
-- Use this for the account takeover prevention managed rule group
-- @AWSManagedRulesATPRuleSet@, to provide information about the sign-in
-- page of your application.
--
-- You can provide multiple individual @ManagedRuleGroupConfig@ objects for
-- any rule group configuration, for example @UsernameField@ and
-- @PasswordField@. The configuration that you provide depends on the needs
-- of the managed rule group. For the ATP managed rule group, you provide
-- the following individual configuration objects: @LoginPath@,
-- @PasswordField@, @PayloadType@ and @UsernameField@.
--
-- 'scopeDownStatement', 'managedRuleGroupStatement_scopeDownStatement' - An optional nested statement that narrows the scope of the web requests
-- that are evaluated by the managed rule group. Requests are only
-- evaluated by the rule group if they match the scope-down statement. You
-- can use any nestable Statement in the scope-down statement, and you can
-- nest statements at any level, the same as you can for a rule statement.
--
-- 'excludedRules', 'managedRuleGroupStatement_excludedRules' - The rules in the referenced rule group whose actions are set to @Count@.
-- When you exclude a rule, WAF evaluates it exactly as it would if the
-- rule action setting were @Count@. This is a useful option for testing
-- the rules in a rule group without modifying how they handle your web
-- traffic.
--
-- 'version', 'managedRuleGroupStatement_version' - The version of the managed rule group to use. If you specify this, the
-- version setting is fixed until you change it. If you don\'t specify
-- this, WAF uses the vendor\'s default version, and then keeps the version
-- at the vendor\'s default when the vendor updates the managed rule group
-- settings.
--
-- 'vendorName', 'managedRuleGroupStatement_vendorName' - The name of the managed rule group vendor. You use this, along with the
-- rule group name, to identify the rule group.
--
-- 'name', 'managedRuleGroupStatement_name' - The name of the managed rule group. You use this, along with the vendor
-- name, to identify the rule group.
newManagedRuleGroupStatement ::
  -- | 'vendorName'
  Prelude.Text ->
  -- | 'name'
  Prelude.Text ->
  ManagedRuleGroupStatement
newManagedRuleGroupStatement pVendorName_ pName_ =
  ManagedRuleGroupStatement'
    { managedRuleGroupConfigs =
        Prelude.Nothing,
      scopeDownStatement = Prelude.Nothing,
      excludedRules = Prelude.Nothing,
      version = Prelude.Nothing,
      vendorName = pVendorName_,
      name = pName_
    }

-- | Additional information that\'s used by a managed rule group. Most
-- managed rule groups don\'t require this.
--
-- Use this for the account takeover prevention managed rule group
-- @AWSManagedRulesATPRuleSet@, to provide information about the sign-in
-- page of your application.
--
-- You can provide multiple individual @ManagedRuleGroupConfig@ objects for
-- any rule group configuration, for example @UsernameField@ and
-- @PasswordField@. The configuration that you provide depends on the needs
-- of the managed rule group. For the ATP managed rule group, you provide
-- the following individual configuration objects: @LoginPath@,
-- @PasswordField@, @PayloadType@ and @UsernameField@.
managedRuleGroupStatement_managedRuleGroupConfigs :: Lens.Lens' ManagedRuleGroupStatement (Prelude.Maybe (Prelude.NonEmpty ManagedRuleGroupConfig))
managedRuleGroupStatement_managedRuleGroupConfigs = Lens.lens (\ManagedRuleGroupStatement' {managedRuleGroupConfigs} -> managedRuleGroupConfigs) (\s@ManagedRuleGroupStatement' {} a -> s {managedRuleGroupConfigs = a} :: ManagedRuleGroupStatement) Prelude.. Lens.mapping Lens.coerced

-- | An optional nested statement that narrows the scope of the web requests
-- that are evaluated by the managed rule group. Requests are only
-- evaluated by the rule group if they match the scope-down statement. You
-- can use any nestable Statement in the scope-down statement, and you can
-- nest statements at any level, the same as you can for a rule statement.
managedRuleGroupStatement_scopeDownStatement :: Lens.Lens' ManagedRuleGroupStatement (Prelude.Maybe Statement)
managedRuleGroupStatement_scopeDownStatement = Lens.lens (\ManagedRuleGroupStatement' {scopeDownStatement} -> scopeDownStatement) (\s@ManagedRuleGroupStatement' {} a -> s {scopeDownStatement = a} :: ManagedRuleGroupStatement)

-- | The rules in the referenced rule group whose actions are set to @Count@.
-- When you exclude a rule, WAF evaluates it exactly as it would if the
-- rule action setting were @Count@. This is a useful option for testing
-- the rules in a rule group without modifying how they handle your web
-- traffic.
managedRuleGroupStatement_excludedRules :: Lens.Lens' ManagedRuleGroupStatement (Prelude.Maybe [ExcludedRule])
managedRuleGroupStatement_excludedRules = Lens.lens (\ManagedRuleGroupStatement' {excludedRules} -> excludedRules) (\s@ManagedRuleGroupStatement' {} a -> s {excludedRules = a} :: ManagedRuleGroupStatement) Prelude.. Lens.mapping Lens.coerced

-- | The version of the managed rule group to use. If you specify this, the
-- version setting is fixed until you change it. If you don\'t specify
-- this, WAF uses the vendor\'s default version, and then keeps the version
-- at the vendor\'s default when the vendor updates the managed rule group
-- settings.
managedRuleGroupStatement_version :: Lens.Lens' ManagedRuleGroupStatement (Prelude.Maybe Prelude.Text)
managedRuleGroupStatement_version = Lens.lens (\ManagedRuleGroupStatement' {version} -> version) (\s@ManagedRuleGroupStatement' {} a -> s {version = a} :: ManagedRuleGroupStatement)

-- | The name of the managed rule group vendor. You use this, along with the
-- rule group name, to identify the rule group.
managedRuleGroupStatement_vendorName :: Lens.Lens' ManagedRuleGroupStatement Prelude.Text
managedRuleGroupStatement_vendorName = Lens.lens (\ManagedRuleGroupStatement' {vendorName} -> vendorName) (\s@ManagedRuleGroupStatement' {} a -> s {vendorName = a} :: ManagedRuleGroupStatement)

-- | The name of the managed rule group. You use this, along with the vendor
-- name, to identify the rule group.
managedRuleGroupStatement_name :: Lens.Lens' ManagedRuleGroupStatement Prelude.Text
managedRuleGroupStatement_name = Lens.lens (\ManagedRuleGroupStatement' {name} -> name) (\s@ManagedRuleGroupStatement' {} a -> s {name = a} :: ManagedRuleGroupStatement)

instance Core.FromJSON ManagedRuleGroupStatement where
  parseJSON =
    Core.withObject
      "ManagedRuleGroupStatement"
      ( \x ->
          ManagedRuleGroupStatement'
            Prelude.<$> (x Core..:? "ManagedRuleGroupConfigs")
            Prelude.<*> (x Core..:? "ScopeDownStatement")
            Prelude.<*> (x Core..:? "ExcludedRules" Core..!= Prelude.mempty)
            Prelude.<*> (x Core..:? "Version")
            Prelude.<*> (x Core..: "VendorName")
            Prelude.<*> (x Core..: "Name")
      )

instance Prelude.Hashable ManagedRuleGroupStatement where
  hashWithSalt _salt ManagedRuleGroupStatement' {..} =
    _salt
      `Prelude.hashWithSalt` managedRuleGroupConfigs
      `Prelude.hashWithSalt` scopeDownStatement
      `Prelude.hashWithSalt` excludedRules
      `Prelude.hashWithSalt` version
      `Prelude.hashWithSalt` vendorName
      `Prelude.hashWithSalt` name

instance Prelude.NFData ManagedRuleGroupStatement where
  rnf ManagedRuleGroupStatement' {..} =
    Prelude.rnf managedRuleGroupConfigs
      `Prelude.seq` Prelude.rnf scopeDownStatement
      `Prelude.seq` Prelude.rnf excludedRules
      `Prelude.seq` Prelude.rnf version
      `Prelude.seq` Prelude.rnf vendorName
      `Prelude.seq` Prelude.rnf name

instance Core.ToJSON ManagedRuleGroupStatement where
  toJSON ManagedRuleGroupStatement' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("ManagedRuleGroupConfigs" Core..=)
              Prelude.<$> managedRuleGroupConfigs,
            ("ScopeDownStatement" Core..=)
              Prelude.<$> scopeDownStatement,
            ("ExcludedRules" Core..=) Prelude.<$> excludedRules,
            ("Version" Core..=) Prelude.<$> version,
            Prelude.Just ("VendorName" Core..= vendorName),
            Prelude.Just ("Name" Core..= name)
          ]
      )
