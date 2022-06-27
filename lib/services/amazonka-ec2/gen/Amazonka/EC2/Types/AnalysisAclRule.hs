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
-- Module      : Amazonka.EC2.Types.AnalysisAclRule
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.EC2.Types.AnalysisAclRule where

import qualified Amazonka.Core as Core
import Amazonka.EC2.Internal
import Amazonka.EC2.Types.PortRange
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | Describes a network access control (ACL) rule.
--
-- /See:/ 'newAnalysisAclRule' smart constructor.
data AnalysisAclRule = AnalysisAclRule'
  { -- | Indicates whether the rule is an outbound rule.
    egress :: Prelude.Maybe Prelude.Bool,
    -- | The range of ports.
    portRange :: Prelude.Maybe PortRange,
    -- | The IPv4 address range, in CIDR notation.
    cidr :: Prelude.Maybe Prelude.Text,
    -- | The rule number.
    ruleNumber :: Prelude.Maybe Prelude.Int,
    -- | Indicates whether to allow or deny traffic that matches the rule.
    ruleAction :: Prelude.Maybe Prelude.Text,
    -- | The protocol.
    protocol :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'AnalysisAclRule' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'egress', 'analysisAclRule_egress' - Indicates whether the rule is an outbound rule.
--
-- 'portRange', 'analysisAclRule_portRange' - The range of ports.
--
-- 'cidr', 'analysisAclRule_cidr' - The IPv4 address range, in CIDR notation.
--
-- 'ruleNumber', 'analysisAclRule_ruleNumber' - The rule number.
--
-- 'ruleAction', 'analysisAclRule_ruleAction' - Indicates whether to allow or deny traffic that matches the rule.
--
-- 'protocol', 'analysisAclRule_protocol' - The protocol.
newAnalysisAclRule ::
  AnalysisAclRule
newAnalysisAclRule =
  AnalysisAclRule'
    { egress = Prelude.Nothing,
      portRange = Prelude.Nothing,
      cidr = Prelude.Nothing,
      ruleNumber = Prelude.Nothing,
      ruleAction = Prelude.Nothing,
      protocol = Prelude.Nothing
    }

-- | Indicates whether the rule is an outbound rule.
analysisAclRule_egress :: Lens.Lens' AnalysisAclRule (Prelude.Maybe Prelude.Bool)
analysisAclRule_egress = Lens.lens (\AnalysisAclRule' {egress} -> egress) (\s@AnalysisAclRule' {} a -> s {egress = a} :: AnalysisAclRule)

-- | The range of ports.
analysisAclRule_portRange :: Lens.Lens' AnalysisAclRule (Prelude.Maybe PortRange)
analysisAclRule_portRange = Lens.lens (\AnalysisAclRule' {portRange} -> portRange) (\s@AnalysisAclRule' {} a -> s {portRange = a} :: AnalysisAclRule)

-- | The IPv4 address range, in CIDR notation.
analysisAclRule_cidr :: Lens.Lens' AnalysisAclRule (Prelude.Maybe Prelude.Text)
analysisAclRule_cidr = Lens.lens (\AnalysisAclRule' {cidr} -> cidr) (\s@AnalysisAclRule' {} a -> s {cidr = a} :: AnalysisAclRule)

-- | The rule number.
analysisAclRule_ruleNumber :: Lens.Lens' AnalysisAclRule (Prelude.Maybe Prelude.Int)
analysisAclRule_ruleNumber = Lens.lens (\AnalysisAclRule' {ruleNumber} -> ruleNumber) (\s@AnalysisAclRule' {} a -> s {ruleNumber = a} :: AnalysisAclRule)

-- | Indicates whether to allow or deny traffic that matches the rule.
analysisAclRule_ruleAction :: Lens.Lens' AnalysisAclRule (Prelude.Maybe Prelude.Text)
analysisAclRule_ruleAction = Lens.lens (\AnalysisAclRule' {ruleAction} -> ruleAction) (\s@AnalysisAclRule' {} a -> s {ruleAction = a} :: AnalysisAclRule)

-- | The protocol.
analysisAclRule_protocol :: Lens.Lens' AnalysisAclRule (Prelude.Maybe Prelude.Text)
analysisAclRule_protocol = Lens.lens (\AnalysisAclRule' {protocol} -> protocol) (\s@AnalysisAclRule' {} a -> s {protocol = a} :: AnalysisAclRule)

instance Core.FromXML AnalysisAclRule where
  parseXML x =
    AnalysisAclRule'
      Prelude.<$> (x Core..@? "egress")
      Prelude.<*> (x Core..@? "portRange")
      Prelude.<*> (x Core..@? "cidr")
      Prelude.<*> (x Core..@? "ruleNumber")
      Prelude.<*> (x Core..@? "ruleAction")
      Prelude.<*> (x Core..@? "protocol")

instance Prelude.Hashable AnalysisAclRule where
  hashWithSalt _salt AnalysisAclRule' {..} =
    _salt `Prelude.hashWithSalt` egress
      `Prelude.hashWithSalt` portRange
      `Prelude.hashWithSalt` cidr
      `Prelude.hashWithSalt` ruleNumber
      `Prelude.hashWithSalt` ruleAction
      `Prelude.hashWithSalt` protocol

instance Prelude.NFData AnalysisAclRule where
  rnf AnalysisAclRule' {..} =
    Prelude.rnf egress
      `Prelude.seq` Prelude.rnf portRange
      `Prelude.seq` Prelude.rnf cidr
      `Prelude.seq` Prelude.rnf ruleNumber
      `Prelude.seq` Prelude.rnf ruleAction
      `Prelude.seq` Prelude.rnf protocol
