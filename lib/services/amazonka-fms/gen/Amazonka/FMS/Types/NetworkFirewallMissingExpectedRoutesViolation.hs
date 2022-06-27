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
-- Module      : Amazonka.FMS.Types.NetworkFirewallMissingExpectedRoutesViolation
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.FMS.Types.NetworkFirewallMissingExpectedRoutesViolation where

import qualified Amazonka.Core as Core
import Amazonka.FMS.Types.ExpectedRoute
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | Violation detail for an expected route missing in Network Firewall.
--
-- /See:/ 'newNetworkFirewallMissingExpectedRoutesViolation' smart constructor.
data NetworkFirewallMissingExpectedRoutesViolation = NetworkFirewallMissingExpectedRoutesViolation'
  { -- | The target of the violation.
    violationTarget :: Prelude.Maybe Prelude.Text,
    -- | The expected routes.
    expectedRoutes :: Prelude.Maybe [ExpectedRoute],
    -- | Information about the VPC ID.
    vpcId :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'NetworkFirewallMissingExpectedRoutesViolation' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'violationTarget', 'networkFirewallMissingExpectedRoutesViolation_violationTarget' - The target of the violation.
--
-- 'expectedRoutes', 'networkFirewallMissingExpectedRoutesViolation_expectedRoutes' - The expected routes.
--
-- 'vpcId', 'networkFirewallMissingExpectedRoutesViolation_vpcId' - Information about the VPC ID.
newNetworkFirewallMissingExpectedRoutesViolation ::
  NetworkFirewallMissingExpectedRoutesViolation
newNetworkFirewallMissingExpectedRoutesViolation =
  NetworkFirewallMissingExpectedRoutesViolation'
    { violationTarget =
        Prelude.Nothing,
      expectedRoutes =
        Prelude.Nothing,
      vpcId = Prelude.Nothing
    }

-- | The target of the violation.
networkFirewallMissingExpectedRoutesViolation_violationTarget :: Lens.Lens' NetworkFirewallMissingExpectedRoutesViolation (Prelude.Maybe Prelude.Text)
networkFirewallMissingExpectedRoutesViolation_violationTarget = Lens.lens (\NetworkFirewallMissingExpectedRoutesViolation' {violationTarget} -> violationTarget) (\s@NetworkFirewallMissingExpectedRoutesViolation' {} a -> s {violationTarget = a} :: NetworkFirewallMissingExpectedRoutesViolation)

-- | The expected routes.
networkFirewallMissingExpectedRoutesViolation_expectedRoutes :: Lens.Lens' NetworkFirewallMissingExpectedRoutesViolation (Prelude.Maybe [ExpectedRoute])
networkFirewallMissingExpectedRoutesViolation_expectedRoutes = Lens.lens (\NetworkFirewallMissingExpectedRoutesViolation' {expectedRoutes} -> expectedRoutes) (\s@NetworkFirewallMissingExpectedRoutesViolation' {} a -> s {expectedRoutes = a} :: NetworkFirewallMissingExpectedRoutesViolation) Prelude.. Lens.mapping Lens.coerced

-- | Information about the VPC ID.
networkFirewallMissingExpectedRoutesViolation_vpcId :: Lens.Lens' NetworkFirewallMissingExpectedRoutesViolation (Prelude.Maybe Prelude.Text)
networkFirewallMissingExpectedRoutesViolation_vpcId = Lens.lens (\NetworkFirewallMissingExpectedRoutesViolation' {vpcId} -> vpcId) (\s@NetworkFirewallMissingExpectedRoutesViolation' {} a -> s {vpcId = a} :: NetworkFirewallMissingExpectedRoutesViolation)

instance
  Core.FromJSON
    NetworkFirewallMissingExpectedRoutesViolation
  where
  parseJSON =
    Core.withObject
      "NetworkFirewallMissingExpectedRoutesViolation"
      ( \x ->
          NetworkFirewallMissingExpectedRoutesViolation'
            Prelude.<$> (x Core..:? "ViolationTarget")
              Prelude.<*> (x Core..:? "ExpectedRoutes" Core..!= Prelude.mempty)
              Prelude.<*> (x Core..:? "VpcId")
      )

instance
  Prelude.Hashable
    NetworkFirewallMissingExpectedRoutesViolation
  where
  hashWithSalt
    _salt
    NetworkFirewallMissingExpectedRoutesViolation' {..} =
      _salt `Prelude.hashWithSalt` violationTarget
        `Prelude.hashWithSalt` expectedRoutes
        `Prelude.hashWithSalt` vpcId

instance
  Prelude.NFData
    NetworkFirewallMissingExpectedRoutesViolation
  where
  rnf
    NetworkFirewallMissingExpectedRoutesViolation' {..} =
      Prelude.rnf violationTarget
        `Prelude.seq` Prelude.rnf expectedRoutes
        `Prelude.seq` Prelude.rnf vpcId
