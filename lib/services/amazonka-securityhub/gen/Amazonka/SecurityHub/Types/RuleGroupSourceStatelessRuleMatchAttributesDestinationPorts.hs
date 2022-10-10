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
-- Module      : Amazonka.SecurityHub.Types.RuleGroupSourceStatelessRuleMatchAttributesDestinationPorts
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.SecurityHub.Types.RuleGroupSourceStatelessRuleMatchAttributesDestinationPorts where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | A port range to specify the destination ports to inspect for.
--
-- /See:/ 'newRuleGroupSourceStatelessRuleMatchAttributesDestinationPorts' smart constructor.
data RuleGroupSourceStatelessRuleMatchAttributesDestinationPorts = RuleGroupSourceStatelessRuleMatchAttributesDestinationPorts'
  { -- | The ending port value for the port range.
    toPort :: Prelude.Maybe Prelude.Int,
    -- | The starting port value for the port range.
    fromPort :: Prelude.Maybe Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'RuleGroupSourceStatelessRuleMatchAttributesDestinationPorts' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'toPort', 'ruleGroupSourceStatelessRuleMatchAttributesDestinationPorts_toPort' - The ending port value for the port range.
--
-- 'fromPort', 'ruleGroupSourceStatelessRuleMatchAttributesDestinationPorts_fromPort' - The starting port value for the port range.
newRuleGroupSourceStatelessRuleMatchAttributesDestinationPorts ::
  RuleGroupSourceStatelessRuleMatchAttributesDestinationPorts
newRuleGroupSourceStatelessRuleMatchAttributesDestinationPorts =
  RuleGroupSourceStatelessRuleMatchAttributesDestinationPorts'
    { toPort =
        Prelude.Nothing,
      fromPort =
        Prelude.Nothing
    }

-- | The ending port value for the port range.
ruleGroupSourceStatelessRuleMatchAttributesDestinationPorts_toPort :: Lens.Lens' RuleGroupSourceStatelessRuleMatchAttributesDestinationPorts (Prelude.Maybe Prelude.Int)
ruleGroupSourceStatelessRuleMatchAttributesDestinationPorts_toPort = Lens.lens (\RuleGroupSourceStatelessRuleMatchAttributesDestinationPorts' {toPort} -> toPort) (\s@RuleGroupSourceStatelessRuleMatchAttributesDestinationPorts' {} a -> s {toPort = a} :: RuleGroupSourceStatelessRuleMatchAttributesDestinationPorts)

-- | The starting port value for the port range.
ruleGroupSourceStatelessRuleMatchAttributesDestinationPorts_fromPort :: Lens.Lens' RuleGroupSourceStatelessRuleMatchAttributesDestinationPorts (Prelude.Maybe Prelude.Int)
ruleGroupSourceStatelessRuleMatchAttributesDestinationPorts_fromPort = Lens.lens (\RuleGroupSourceStatelessRuleMatchAttributesDestinationPorts' {fromPort} -> fromPort) (\s@RuleGroupSourceStatelessRuleMatchAttributesDestinationPorts' {} a -> s {fromPort = a} :: RuleGroupSourceStatelessRuleMatchAttributesDestinationPorts)

instance
  Core.FromJSON
    RuleGroupSourceStatelessRuleMatchAttributesDestinationPorts
  where
  parseJSON =
    Core.withObject
      "RuleGroupSourceStatelessRuleMatchAttributesDestinationPorts"
      ( \x ->
          RuleGroupSourceStatelessRuleMatchAttributesDestinationPorts'
            Prelude.<$> (x Core..:? "ToPort")
              Prelude.<*> (x Core..:? "FromPort")
      )

instance
  Prelude.Hashable
    RuleGroupSourceStatelessRuleMatchAttributesDestinationPorts
  where
  hashWithSalt
    _salt
    RuleGroupSourceStatelessRuleMatchAttributesDestinationPorts' {..} =
      _salt `Prelude.hashWithSalt` toPort
        `Prelude.hashWithSalt` fromPort

instance
  Prelude.NFData
    RuleGroupSourceStatelessRuleMatchAttributesDestinationPorts
  where
  rnf
    RuleGroupSourceStatelessRuleMatchAttributesDestinationPorts' {..} =
      Prelude.rnf toPort
        `Prelude.seq` Prelude.rnf fromPort

instance
  Core.ToJSON
    RuleGroupSourceStatelessRuleMatchAttributesDestinationPorts
  where
  toJSON
    RuleGroupSourceStatelessRuleMatchAttributesDestinationPorts' {..} =
      Core.object
        ( Prelude.catMaybes
            [ ("ToPort" Core..=) Prelude.<$> toPort,
              ("FromPort" Core..=) Prelude.<$> fromPort
            ]
        )
