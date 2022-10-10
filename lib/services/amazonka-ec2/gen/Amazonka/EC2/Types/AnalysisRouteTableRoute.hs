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
-- Module      : Amazonka.EC2.Types.AnalysisRouteTableRoute
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.EC2.Types.AnalysisRouteTableRoute where

import qualified Amazonka.Core as Core
import Amazonka.EC2.Internal
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | Describes a route table route.
--
-- /See:/ 'newAnalysisRouteTableRoute' smart constructor.
data AnalysisRouteTableRoute = AnalysisRouteTableRoute'
  { -- | The prefix of the Amazon Web Service.
    destinationPrefixListId :: Prelude.Maybe Prelude.Text,
    -- | The ID of a transit gateway.
    transitGatewayId :: Prelude.Maybe Prelude.Text,
    -- | The destination IPv4 address, in CIDR notation.
    destinationCidr :: Prelude.Maybe Prelude.Text,
    -- | The state. The following are the possible values:
    --
    -- -   active
    --
    -- -   blackhole
    state :: Prelude.Maybe Prelude.Text,
    -- | The ID of a NAT gateway.
    natGatewayId :: Prelude.Maybe Prelude.Text,
    -- | The ID of a VPC peering connection.
    vpcPeeringConnectionId :: Prelude.Maybe Prelude.Text,
    -- | The ID of the instance, such as a NAT instance.
    instanceId :: Prelude.Maybe Prelude.Text,
    -- | The ID of an egress-only internet gateway.
    egressOnlyInternetGatewayId :: Prelude.Maybe Prelude.Text,
    -- | The ID of a network interface.
    networkInterfaceId :: Prelude.Maybe Prelude.Text,
    -- | The ID of the gateway, such as an internet gateway or virtual private
    -- gateway.
    gatewayId :: Prelude.Maybe Prelude.Text,
    -- | Describes how the route was created. The following are the possible
    -- values:
    --
    -- -   CreateRouteTable - The route was automatically created when the
    --     route table was created.
    --
    -- -   CreateRoute - The route was manually added to the route table.
    --
    -- -   EnableVgwRoutePropagation - The route was propagated by route
    --     propagation.
    origin :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'AnalysisRouteTableRoute' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'destinationPrefixListId', 'analysisRouteTableRoute_destinationPrefixListId' - The prefix of the Amazon Web Service.
--
-- 'transitGatewayId', 'analysisRouteTableRoute_transitGatewayId' - The ID of a transit gateway.
--
-- 'destinationCidr', 'analysisRouteTableRoute_destinationCidr' - The destination IPv4 address, in CIDR notation.
--
-- 'state', 'analysisRouteTableRoute_state' - The state. The following are the possible values:
--
-- -   active
--
-- -   blackhole
--
-- 'natGatewayId', 'analysisRouteTableRoute_natGatewayId' - The ID of a NAT gateway.
--
-- 'vpcPeeringConnectionId', 'analysisRouteTableRoute_vpcPeeringConnectionId' - The ID of a VPC peering connection.
--
-- 'instanceId', 'analysisRouteTableRoute_instanceId' - The ID of the instance, such as a NAT instance.
--
-- 'egressOnlyInternetGatewayId', 'analysisRouteTableRoute_egressOnlyInternetGatewayId' - The ID of an egress-only internet gateway.
--
-- 'networkInterfaceId', 'analysisRouteTableRoute_networkInterfaceId' - The ID of a network interface.
--
-- 'gatewayId', 'analysisRouteTableRoute_gatewayId' - The ID of the gateway, such as an internet gateway or virtual private
-- gateway.
--
-- 'origin', 'analysisRouteTableRoute_origin' - Describes how the route was created. The following are the possible
-- values:
--
-- -   CreateRouteTable - The route was automatically created when the
--     route table was created.
--
-- -   CreateRoute - The route was manually added to the route table.
--
-- -   EnableVgwRoutePropagation - The route was propagated by route
--     propagation.
newAnalysisRouteTableRoute ::
  AnalysisRouteTableRoute
newAnalysisRouteTableRoute =
  AnalysisRouteTableRoute'
    { destinationPrefixListId =
        Prelude.Nothing,
      transitGatewayId = Prelude.Nothing,
      destinationCidr = Prelude.Nothing,
      state = Prelude.Nothing,
      natGatewayId = Prelude.Nothing,
      vpcPeeringConnectionId = Prelude.Nothing,
      instanceId = Prelude.Nothing,
      egressOnlyInternetGatewayId = Prelude.Nothing,
      networkInterfaceId = Prelude.Nothing,
      gatewayId = Prelude.Nothing,
      origin = Prelude.Nothing
    }

-- | The prefix of the Amazon Web Service.
analysisRouteTableRoute_destinationPrefixListId :: Lens.Lens' AnalysisRouteTableRoute (Prelude.Maybe Prelude.Text)
analysisRouteTableRoute_destinationPrefixListId = Lens.lens (\AnalysisRouteTableRoute' {destinationPrefixListId} -> destinationPrefixListId) (\s@AnalysisRouteTableRoute' {} a -> s {destinationPrefixListId = a} :: AnalysisRouteTableRoute)

-- | The ID of a transit gateway.
analysisRouteTableRoute_transitGatewayId :: Lens.Lens' AnalysisRouteTableRoute (Prelude.Maybe Prelude.Text)
analysisRouteTableRoute_transitGatewayId = Lens.lens (\AnalysisRouteTableRoute' {transitGatewayId} -> transitGatewayId) (\s@AnalysisRouteTableRoute' {} a -> s {transitGatewayId = a} :: AnalysisRouteTableRoute)

-- | The destination IPv4 address, in CIDR notation.
analysisRouteTableRoute_destinationCidr :: Lens.Lens' AnalysisRouteTableRoute (Prelude.Maybe Prelude.Text)
analysisRouteTableRoute_destinationCidr = Lens.lens (\AnalysisRouteTableRoute' {destinationCidr} -> destinationCidr) (\s@AnalysisRouteTableRoute' {} a -> s {destinationCidr = a} :: AnalysisRouteTableRoute)

-- | The state. The following are the possible values:
--
-- -   active
--
-- -   blackhole
analysisRouteTableRoute_state :: Lens.Lens' AnalysisRouteTableRoute (Prelude.Maybe Prelude.Text)
analysisRouteTableRoute_state = Lens.lens (\AnalysisRouteTableRoute' {state} -> state) (\s@AnalysisRouteTableRoute' {} a -> s {state = a} :: AnalysisRouteTableRoute)

-- | The ID of a NAT gateway.
analysisRouteTableRoute_natGatewayId :: Lens.Lens' AnalysisRouteTableRoute (Prelude.Maybe Prelude.Text)
analysisRouteTableRoute_natGatewayId = Lens.lens (\AnalysisRouteTableRoute' {natGatewayId} -> natGatewayId) (\s@AnalysisRouteTableRoute' {} a -> s {natGatewayId = a} :: AnalysisRouteTableRoute)

-- | The ID of a VPC peering connection.
analysisRouteTableRoute_vpcPeeringConnectionId :: Lens.Lens' AnalysisRouteTableRoute (Prelude.Maybe Prelude.Text)
analysisRouteTableRoute_vpcPeeringConnectionId = Lens.lens (\AnalysisRouteTableRoute' {vpcPeeringConnectionId} -> vpcPeeringConnectionId) (\s@AnalysisRouteTableRoute' {} a -> s {vpcPeeringConnectionId = a} :: AnalysisRouteTableRoute)

-- | The ID of the instance, such as a NAT instance.
analysisRouteTableRoute_instanceId :: Lens.Lens' AnalysisRouteTableRoute (Prelude.Maybe Prelude.Text)
analysisRouteTableRoute_instanceId = Lens.lens (\AnalysisRouteTableRoute' {instanceId} -> instanceId) (\s@AnalysisRouteTableRoute' {} a -> s {instanceId = a} :: AnalysisRouteTableRoute)

-- | The ID of an egress-only internet gateway.
analysisRouteTableRoute_egressOnlyInternetGatewayId :: Lens.Lens' AnalysisRouteTableRoute (Prelude.Maybe Prelude.Text)
analysisRouteTableRoute_egressOnlyInternetGatewayId = Lens.lens (\AnalysisRouteTableRoute' {egressOnlyInternetGatewayId} -> egressOnlyInternetGatewayId) (\s@AnalysisRouteTableRoute' {} a -> s {egressOnlyInternetGatewayId = a} :: AnalysisRouteTableRoute)

-- | The ID of a network interface.
analysisRouteTableRoute_networkInterfaceId :: Lens.Lens' AnalysisRouteTableRoute (Prelude.Maybe Prelude.Text)
analysisRouteTableRoute_networkInterfaceId = Lens.lens (\AnalysisRouteTableRoute' {networkInterfaceId} -> networkInterfaceId) (\s@AnalysisRouteTableRoute' {} a -> s {networkInterfaceId = a} :: AnalysisRouteTableRoute)

-- | The ID of the gateway, such as an internet gateway or virtual private
-- gateway.
analysisRouteTableRoute_gatewayId :: Lens.Lens' AnalysisRouteTableRoute (Prelude.Maybe Prelude.Text)
analysisRouteTableRoute_gatewayId = Lens.lens (\AnalysisRouteTableRoute' {gatewayId} -> gatewayId) (\s@AnalysisRouteTableRoute' {} a -> s {gatewayId = a} :: AnalysisRouteTableRoute)

-- | Describes how the route was created. The following are the possible
-- values:
--
-- -   CreateRouteTable - The route was automatically created when the
--     route table was created.
--
-- -   CreateRoute - The route was manually added to the route table.
--
-- -   EnableVgwRoutePropagation - The route was propagated by route
--     propagation.
analysisRouteTableRoute_origin :: Lens.Lens' AnalysisRouteTableRoute (Prelude.Maybe Prelude.Text)
analysisRouteTableRoute_origin = Lens.lens (\AnalysisRouteTableRoute' {origin} -> origin) (\s@AnalysisRouteTableRoute' {} a -> s {origin = a} :: AnalysisRouteTableRoute)

instance Core.FromXML AnalysisRouteTableRoute where
  parseXML x =
    AnalysisRouteTableRoute'
      Prelude.<$> (x Core..@? "destinationPrefixListId")
      Prelude.<*> (x Core..@? "transitGatewayId")
      Prelude.<*> (x Core..@? "destinationCidr")
      Prelude.<*> (x Core..@? "state")
      Prelude.<*> (x Core..@? "natGatewayId")
      Prelude.<*> (x Core..@? "vpcPeeringConnectionId")
      Prelude.<*> (x Core..@? "instanceId")
      Prelude.<*> (x Core..@? "egressOnlyInternetGatewayId")
      Prelude.<*> (x Core..@? "networkInterfaceId")
      Prelude.<*> (x Core..@? "gatewayId")
      Prelude.<*> (x Core..@? "origin")

instance Prelude.Hashable AnalysisRouteTableRoute where
  hashWithSalt _salt AnalysisRouteTableRoute' {..} =
    _salt
      `Prelude.hashWithSalt` destinationPrefixListId
      `Prelude.hashWithSalt` transitGatewayId
      `Prelude.hashWithSalt` destinationCidr
      `Prelude.hashWithSalt` state
      `Prelude.hashWithSalt` natGatewayId
      `Prelude.hashWithSalt` vpcPeeringConnectionId
      `Prelude.hashWithSalt` instanceId
      `Prelude.hashWithSalt` egressOnlyInternetGatewayId
      `Prelude.hashWithSalt` networkInterfaceId
      `Prelude.hashWithSalt` gatewayId
      `Prelude.hashWithSalt` origin

instance Prelude.NFData AnalysisRouteTableRoute where
  rnf AnalysisRouteTableRoute' {..} =
    Prelude.rnf destinationPrefixListId
      `Prelude.seq` Prelude.rnf transitGatewayId
      `Prelude.seq` Prelude.rnf destinationCidr
      `Prelude.seq` Prelude.rnf state
      `Prelude.seq` Prelude.rnf natGatewayId
      `Prelude.seq` Prelude.rnf vpcPeeringConnectionId
      `Prelude.seq` Prelude.rnf instanceId
      `Prelude.seq` Prelude.rnf egressOnlyInternetGatewayId
      `Prelude.seq` Prelude.rnf networkInterfaceId
      `Prelude.seq` Prelude.rnf gatewayId
      `Prelude.seq` Prelude.rnf origin
