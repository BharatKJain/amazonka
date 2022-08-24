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
-- Module      : Amazonka.EC2.Types.TransitGatewayPolicyRule
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.EC2.Types.TransitGatewayPolicyRule where

import qualified Amazonka.Core as Core
import Amazonka.EC2.Internal
import Amazonka.EC2.Types.TransitGatewayPolicyRuleMetaData
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | Describes a rule associated with a transit gateway policy.
--
-- /See:/ 'newTransitGatewayPolicyRule' smart constructor.
data TransitGatewayPolicyRule = TransitGatewayPolicyRule'
  { -- | The meta data tags used for the transit gateway policy rule.
    metaData :: Prelude.Maybe TransitGatewayPolicyRuleMetaData,
    -- | The destination CIDR block for the transit gateway policy rule.
    destinationCidrBlock :: Prelude.Maybe Prelude.Text,
    -- | The port range for the transit gateway policy rule. Currently this is
    -- set to * (all).
    destinationPortRange :: Prelude.Maybe Prelude.Text,
    -- | The source CIDR block for the transit gateway policy rule.
    sourceCidrBlock :: Prelude.Maybe Prelude.Text,
    -- | The protocol used by the transit gateway policy rule.
    protocol :: Prelude.Maybe Prelude.Text,
    -- | The port range for the transit gateway policy rule. Currently this is
    -- set to * (all).
    sourcePortRange :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'TransitGatewayPolicyRule' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'metaData', 'transitGatewayPolicyRule_metaData' - The meta data tags used for the transit gateway policy rule.
--
-- 'destinationCidrBlock', 'transitGatewayPolicyRule_destinationCidrBlock' - The destination CIDR block for the transit gateway policy rule.
--
-- 'destinationPortRange', 'transitGatewayPolicyRule_destinationPortRange' - The port range for the transit gateway policy rule. Currently this is
-- set to * (all).
--
-- 'sourceCidrBlock', 'transitGatewayPolicyRule_sourceCidrBlock' - The source CIDR block for the transit gateway policy rule.
--
-- 'protocol', 'transitGatewayPolicyRule_protocol' - The protocol used by the transit gateway policy rule.
--
-- 'sourcePortRange', 'transitGatewayPolicyRule_sourcePortRange' - The port range for the transit gateway policy rule. Currently this is
-- set to * (all).
newTransitGatewayPolicyRule ::
  TransitGatewayPolicyRule
newTransitGatewayPolicyRule =
  TransitGatewayPolicyRule'
    { metaData =
        Prelude.Nothing,
      destinationCidrBlock = Prelude.Nothing,
      destinationPortRange = Prelude.Nothing,
      sourceCidrBlock = Prelude.Nothing,
      protocol = Prelude.Nothing,
      sourcePortRange = Prelude.Nothing
    }

-- | The meta data tags used for the transit gateway policy rule.
transitGatewayPolicyRule_metaData :: Lens.Lens' TransitGatewayPolicyRule (Prelude.Maybe TransitGatewayPolicyRuleMetaData)
transitGatewayPolicyRule_metaData = Lens.lens (\TransitGatewayPolicyRule' {metaData} -> metaData) (\s@TransitGatewayPolicyRule' {} a -> s {metaData = a} :: TransitGatewayPolicyRule)

-- | The destination CIDR block for the transit gateway policy rule.
transitGatewayPolicyRule_destinationCidrBlock :: Lens.Lens' TransitGatewayPolicyRule (Prelude.Maybe Prelude.Text)
transitGatewayPolicyRule_destinationCidrBlock = Lens.lens (\TransitGatewayPolicyRule' {destinationCidrBlock} -> destinationCidrBlock) (\s@TransitGatewayPolicyRule' {} a -> s {destinationCidrBlock = a} :: TransitGatewayPolicyRule)

-- | The port range for the transit gateway policy rule. Currently this is
-- set to * (all).
transitGatewayPolicyRule_destinationPortRange :: Lens.Lens' TransitGatewayPolicyRule (Prelude.Maybe Prelude.Text)
transitGatewayPolicyRule_destinationPortRange = Lens.lens (\TransitGatewayPolicyRule' {destinationPortRange} -> destinationPortRange) (\s@TransitGatewayPolicyRule' {} a -> s {destinationPortRange = a} :: TransitGatewayPolicyRule)

-- | The source CIDR block for the transit gateway policy rule.
transitGatewayPolicyRule_sourceCidrBlock :: Lens.Lens' TransitGatewayPolicyRule (Prelude.Maybe Prelude.Text)
transitGatewayPolicyRule_sourceCidrBlock = Lens.lens (\TransitGatewayPolicyRule' {sourceCidrBlock} -> sourceCidrBlock) (\s@TransitGatewayPolicyRule' {} a -> s {sourceCidrBlock = a} :: TransitGatewayPolicyRule)

-- | The protocol used by the transit gateway policy rule.
transitGatewayPolicyRule_protocol :: Lens.Lens' TransitGatewayPolicyRule (Prelude.Maybe Prelude.Text)
transitGatewayPolicyRule_protocol = Lens.lens (\TransitGatewayPolicyRule' {protocol} -> protocol) (\s@TransitGatewayPolicyRule' {} a -> s {protocol = a} :: TransitGatewayPolicyRule)

-- | The port range for the transit gateway policy rule. Currently this is
-- set to * (all).
transitGatewayPolicyRule_sourcePortRange :: Lens.Lens' TransitGatewayPolicyRule (Prelude.Maybe Prelude.Text)
transitGatewayPolicyRule_sourcePortRange = Lens.lens (\TransitGatewayPolicyRule' {sourcePortRange} -> sourcePortRange) (\s@TransitGatewayPolicyRule' {} a -> s {sourcePortRange = a} :: TransitGatewayPolicyRule)

instance Core.FromXML TransitGatewayPolicyRule where
  parseXML x =
    TransitGatewayPolicyRule'
      Prelude.<$> (x Core..@? "metaData")
      Prelude.<*> (x Core..@? "destinationCidrBlock")
      Prelude.<*> (x Core..@? "destinationPortRange")
      Prelude.<*> (x Core..@? "sourceCidrBlock")
      Prelude.<*> (x Core..@? "protocol")
      Prelude.<*> (x Core..@? "sourcePortRange")

instance Prelude.Hashable TransitGatewayPolicyRule where
  hashWithSalt _salt TransitGatewayPolicyRule' {..} =
    _salt `Prelude.hashWithSalt` metaData
      `Prelude.hashWithSalt` destinationCidrBlock
      `Prelude.hashWithSalt` destinationPortRange
      `Prelude.hashWithSalt` sourceCidrBlock
      `Prelude.hashWithSalt` protocol
      `Prelude.hashWithSalt` sourcePortRange

instance Prelude.NFData TransitGatewayPolicyRule where
  rnf TransitGatewayPolicyRule' {..} =
    Prelude.rnf metaData
      `Prelude.seq` Prelude.rnf destinationCidrBlock
      `Prelude.seq` Prelude.rnf destinationPortRange
      `Prelude.seq` Prelude.rnf sourceCidrBlock
      `Prelude.seq` Prelude.rnf protocol
      `Prelude.seq` Prelude.rnf sourcePortRange
