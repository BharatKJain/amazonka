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
-- Module      : Amazonka.SecurityHub.Types.RuleGroupSourceListDetails
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.SecurityHub.Types.RuleGroupSourceListDetails where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | Stateful inspection criteria for a domain list rule group.
--
-- /See:/ 'newRuleGroupSourceListDetails' smart constructor.
data RuleGroupSourceListDetails = RuleGroupSourceListDetails'
  { -- | The protocols that you want to inspect. Specify @LS_SNI@ for HTTPS.
    -- Specify @HTTP_HOST@ for HTTP. You can specify either or both.
    targetTypes :: Prelude.Maybe [Prelude.Text],
    -- | Indicates whether to allow or deny access to the domains listed in
    -- @Targets@.
    generatedRulesType :: Prelude.Maybe Prelude.Text,
    -- | The domains that you want to inspect for in your traffic flows. You can
    -- provide full domain names, or use the \'.\' prefix as a wildcard. For
    -- example, @.example.com@ matches all domains that end with @example.com@.
    targets :: Prelude.Maybe [Prelude.Text]
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'RuleGroupSourceListDetails' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'targetTypes', 'ruleGroupSourceListDetails_targetTypes' - The protocols that you want to inspect. Specify @LS_SNI@ for HTTPS.
-- Specify @HTTP_HOST@ for HTTP. You can specify either or both.
--
-- 'generatedRulesType', 'ruleGroupSourceListDetails_generatedRulesType' - Indicates whether to allow or deny access to the domains listed in
-- @Targets@.
--
-- 'targets', 'ruleGroupSourceListDetails_targets' - The domains that you want to inspect for in your traffic flows. You can
-- provide full domain names, or use the \'.\' prefix as a wildcard. For
-- example, @.example.com@ matches all domains that end with @example.com@.
newRuleGroupSourceListDetails ::
  RuleGroupSourceListDetails
newRuleGroupSourceListDetails =
  RuleGroupSourceListDetails'
    { targetTypes =
        Prelude.Nothing,
      generatedRulesType = Prelude.Nothing,
      targets = Prelude.Nothing
    }

-- | The protocols that you want to inspect. Specify @LS_SNI@ for HTTPS.
-- Specify @HTTP_HOST@ for HTTP. You can specify either or both.
ruleGroupSourceListDetails_targetTypes :: Lens.Lens' RuleGroupSourceListDetails (Prelude.Maybe [Prelude.Text])
ruleGroupSourceListDetails_targetTypes = Lens.lens (\RuleGroupSourceListDetails' {targetTypes} -> targetTypes) (\s@RuleGroupSourceListDetails' {} a -> s {targetTypes = a} :: RuleGroupSourceListDetails) Prelude.. Lens.mapping Lens.coerced

-- | Indicates whether to allow or deny access to the domains listed in
-- @Targets@.
ruleGroupSourceListDetails_generatedRulesType :: Lens.Lens' RuleGroupSourceListDetails (Prelude.Maybe Prelude.Text)
ruleGroupSourceListDetails_generatedRulesType = Lens.lens (\RuleGroupSourceListDetails' {generatedRulesType} -> generatedRulesType) (\s@RuleGroupSourceListDetails' {} a -> s {generatedRulesType = a} :: RuleGroupSourceListDetails)

-- | The domains that you want to inspect for in your traffic flows. You can
-- provide full domain names, or use the \'.\' prefix as a wildcard. For
-- example, @.example.com@ matches all domains that end with @example.com@.
ruleGroupSourceListDetails_targets :: Lens.Lens' RuleGroupSourceListDetails (Prelude.Maybe [Prelude.Text])
ruleGroupSourceListDetails_targets = Lens.lens (\RuleGroupSourceListDetails' {targets} -> targets) (\s@RuleGroupSourceListDetails' {} a -> s {targets = a} :: RuleGroupSourceListDetails) Prelude.. Lens.mapping Lens.coerced

instance Core.FromJSON RuleGroupSourceListDetails where
  parseJSON =
    Core.withObject
      "RuleGroupSourceListDetails"
      ( \x ->
          RuleGroupSourceListDetails'
            Prelude.<$> (x Core..:? "TargetTypes" Core..!= Prelude.mempty)
            Prelude.<*> (x Core..:? "GeneratedRulesType")
            Prelude.<*> (x Core..:? "Targets" Core..!= Prelude.mempty)
      )

instance Prelude.Hashable RuleGroupSourceListDetails where
  hashWithSalt _salt RuleGroupSourceListDetails' {..} =
    _salt `Prelude.hashWithSalt` targetTypes
      `Prelude.hashWithSalt` generatedRulesType
      `Prelude.hashWithSalt` targets

instance Prelude.NFData RuleGroupSourceListDetails where
  rnf RuleGroupSourceListDetails' {..} =
    Prelude.rnf targetTypes
      `Prelude.seq` Prelude.rnf generatedRulesType
      `Prelude.seq` Prelude.rnf targets

instance Core.ToJSON RuleGroupSourceListDetails where
  toJSON RuleGroupSourceListDetails' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("TargetTypes" Core..=) Prelude.<$> targetTypes,
            ("GeneratedRulesType" Core..=)
              Prelude.<$> generatedRulesType,
            ("Targets" Core..=) Prelude.<$> targets
          ]
      )
