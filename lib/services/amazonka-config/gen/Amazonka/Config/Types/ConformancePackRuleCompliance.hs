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
-- Module      : Amazonka.Config.Types.ConformancePackRuleCompliance
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.Config.Types.ConformancePackRuleCompliance where

import Amazonka.Config.Types.ConformancePackComplianceType
import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | Compliance information of one or more Config rules within a conformance
-- pack. You can filter using Config rule names and compliance types.
--
-- /See:/ 'newConformancePackRuleCompliance' smart constructor.
data ConformancePackRuleCompliance = ConformancePackRuleCompliance'
  { -- | Name of the Config rule.
    configRuleName :: Prelude.Maybe Prelude.Text,
    -- | Controls for the conformance pack. A control is a process to prevent or
    -- detect problems while meeting objectives. A control can align with a
    -- specific compliance regime or map to internal controls defined by an
    -- organization.
    controls :: Prelude.Maybe [Prelude.Text],
    -- | Compliance of the Config rule.
    --
    -- The allowed values are @COMPLIANT@, @NON_COMPLIANT@, and
    -- @INSUFFICIENT_DATA@.
    complianceType :: Prelude.Maybe ConformancePackComplianceType
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ConformancePackRuleCompliance' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'configRuleName', 'conformancePackRuleCompliance_configRuleName' - Name of the Config rule.
--
-- 'controls', 'conformancePackRuleCompliance_controls' - Controls for the conformance pack. A control is a process to prevent or
-- detect problems while meeting objectives. A control can align with a
-- specific compliance regime or map to internal controls defined by an
-- organization.
--
-- 'complianceType', 'conformancePackRuleCompliance_complianceType' - Compliance of the Config rule.
--
-- The allowed values are @COMPLIANT@, @NON_COMPLIANT@, and
-- @INSUFFICIENT_DATA@.
newConformancePackRuleCompliance ::
  ConformancePackRuleCompliance
newConformancePackRuleCompliance =
  ConformancePackRuleCompliance'
    { configRuleName =
        Prelude.Nothing,
      controls = Prelude.Nothing,
      complianceType = Prelude.Nothing
    }

-- | Name of the Config rule.
conformancePackRuleCompliance_configRuleName :: Lens.Lens' ConformancePackRuleCompliance (Prelude.Maybe Prelude.Text)
conformancePackRuleCompliance_configRuleName = Lens.lens (\ConformancePackRuleCompliance' {configRuleName} -> configRuleName) (\s@ConformancePackRuleCompliance' {} a -> s {configRuleName = a} :: ConformancePackRuleCompliance)

-- | Controls for the conformance pack. A control is a process to prevent or
-- detect problems while meeting objectives. A control can align with a
-- specific compliance regime or map to internal controls defined by an
-- organization.
conformancePackRuleCompliance_controls :: Lens.Lens' ConformancePackRuleCompliance (Prelude.Maybe [Prelude.Text])
conformancePackRuleCompliance_controls = Lens.lens (\ConformancePackRuleCompliance' {controls} -> controls) (\s@ConformancePackRuleCompliance' {} a -> s {controls = a} :: ConformancePackRuleCompliance) Prelude.. Lens.mapping Lens.coerced

-- | Compliance of the Config rule.
--
-- The allowed values are @COMPLIANT@, @NON_COMPLIANT@, and
-- @INSUFFICIENT_DATA@.
conformancePackRuleCompliance_complianceType :: Lens.Lens' ConformancePackRuleCompliance (Prelude.Maybe ConformancePackComplianceType)
conformancePackRuleCompliance_complianceType = Lens.lens (\ConformancePackRuleCompliance' {complianceType} -> complianceType) (\s@ConformancePackRuleCompliance' {} a -> s {complianceType = a} :: ConformancePackRuleCompliance)

instance Core.FromJSON ConformancePackRuleCompliance where
  parseJSON =
    Core.withObject
      "ConformancePackRuleCompliance"
      ( \x ->
          ConformancePackRuleCompliance'
            Prelude.<$> (x Core..:? "ConfigRuleName")
            Prelude.<*> (x Core..:? "Controls" Core..!= Prelude.mempty)
            Prelude.<*> (x Core..:? "ComplianceType")
      )

instance
  Prelude.Hashable
    ConformancePackRuleCompliance
  where
  hashWithSalt _salt ConformancePackRuleCompliance' {..} =
    _salt `Prelude.hashWithSalt` configRuleName
      `Prelude.hashWithSalt` controls
      `Prelude.hashWithSalt` complianceType

instance Prelude.NFData ConformancePackRuleCompliance where
  rnf ConformancePackRuleCompliance' {..} =
    Prelude.rnf configRuleName
      `Prelude.seq` Prelude.rnf controls
      `Prelude.seq` Prelude.rnf complianceType
