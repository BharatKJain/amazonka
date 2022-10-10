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
-- Module      : Amazonka.EC2.Types.LaunchTemplateOverrides
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.EC2.Types.LaunchTemplateOverrides where

import qualified Amazonka.Core as Core
import Amazonka.EC2.Internal
import Amazonka.EC2.Types.InstanceRequirements
import Amazonka.EC2.Types.InstanceType
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | Describes overrides for a launch template.
--
-- /See:/ 'newLaunchTemplateOverrides' smart constructor.
data LaunchTemplateOverrides = LaunchTemplateOverrides'
  { -- | The instance requirements. When you specify instance requirements,
    -- Amazon EC2 will identify instance types with the provided requirements,
    -- and then use your On-Demand and Spot allocation strategies to launch
    -- instances from these instance types, in the same way as when you specify
    -- a list of instance types.
    --
    -- If you specify @InstanceRequirements@, you can\'t specify
    -- @InstanceType@.
    instanceRequirements :: Prelude.Maybe InstanceRequirements,
    -- | The ID of the subnet in which to launch the instances.
    subnetId :: Prelude.Maybe Prelude.Text,
    -- | The Availability Zone in which to launch the instances.
    availabilityZone :: Prelude.Maybe Prelude.Text,
    -- | The instance type.
    instanceType :: Prelude.Maybe InstanceType,
    -- | The priority for the launch template override. The highest priority is
    -- launched first.
    --
    -- If @OnDemandAllocationStrategy@ is set to @prioritized@, Spot Fleet uses
    -- priority to determine which launch template override to use first in
    -- fulfilling On-Demand capacity.
    --
    -- If the Spot @AllocationStrategy@ is set to
    -- @capacityOptimizedPrioritized@, Spot Fleet uses priority on a
    -- best-effort basis to determine which launch template override to use in
    -- fulfilling Spot capacity, but optimizes for capacity first.
    --
    -- Valid values are whole numbers starting at @0@. The lower the number,
    -- the higher the priority. If no number is set, the launch template
    -- override has the lowest priority. You can set the same priority for
    -- different launch template overrides.
    priority :: Prelude.Maybe Prelude.Double,
    -- | The number of units provided by the specified instance type.
    weightedCapacity :: Prelude.Maybe Prelude.Double,
    -- | The maximum price per unit hour that you are willing to pay for a Spot
    -- Instance. We do not recommend using this parameter because it can lead
    -- to increased interruptions. If you do not specify this parameter, you
    -- will pay the current Spot price.
    --
    -- If you specify a maximum price, your instances will be interrupted more
    -- frequently than if you do not specify this parameter.
    spotPrice :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'LaunchTemplateOverrides' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'instanceRequirements', 'launchTemplateOverrides_instanceRequirements' - The instance requirements. When you specify instance requirements,
-- Amazon EC2 will identify instance types with the provided requirements,
-- and then use your On-Demand and Spot allocation strategies to launch
-- instances from these instance types, in the same way as when you specify
-- a list of instance types.
--
-- If you specify @InstanceRequirements@, you can\'t specify
-- @InstanceType@.
--
-- 'subnetId', 'launchTemplateOverrides_subnetId' - The ID of the subnet in which to launch the instances.
--
-- 'availabilityZone', 'launchTemplateOverrides_availabilityZone' - The Availability Zone in which to launch the instances.
--
-- 'instanceType', 'launchTemplateOverrides_instanceType' - The instance type.
--
-- 'priority', 'launchTemplateOverrides_priority' - The priority for the launch template override. The highest priority is
-- launched first.
--
-- If @OnDemandAllocationStrategy@ is set to @prioritized@, Spot Fleet uses
-- priority to determine which launch template override to use first in
-- fulfilling On-Demand capacity.
--
-- If the Spot @AllocationStrategy@ is set to
-- @capacityOptimizedPrioritized@, Spot Fleet uses priority on a
-- best-effort basis to determine which launch template override to use in
-- fulfilling Spot capacity, but optimizes for capacity first.
--
-- Valid values are whole numbers starting at @0@. The lower the number,
-- the higher the priority. If no number is set, the launch template
-- override has the lowest priority. You can set the same priority for
-- different launch template overrides.
--
-- 'weightedCapacity', 'launchTemplateOverrides_weightedCapacity' - The number of units provided by the specified instance type.
--
-- 'spotPrice', 'launchTemplateOverrides_spotPrice' - The maximum price per unit hour that you are willing to pay for a Spot
-- Instance. We do not recommend using this parameter because it can lead
-- to increased interruptions. If you do not specify this parameter, you
-- will pay the current Spot price.
--
-- If you specify a maximum price, your instances will be interrupted more
-- frequently than if you do not specify this parameter.
newLaunchTemplateOverrides ::
  LaunchTemplateOverrides
newLaunchTemplateOverrides =
  LaunchTemplateOverrides'
    { instanceRequirements =
        Prelude.Nothing,
      subnetId = Prelude.Nothing,
      availabilityZone = Prelude.Nothing,
      instanceType = Prelude.Nothing,
      priority = Prelude.Nothing,
      weightedCapacity = Prelude.Nothing,
      spotPrice = Prelude.Nothing
    }

-- | The instance requirements. When you specify instance requirements,
-- Amazon EC2 will identify instance types with the provided requirements,
-- and then use your On-Demand and Spot allocation strategies to launch
-- instances from these instance types, in the same way as when you specify
-- a list of instance types.
--
-- If you specify @InstanceRequirements@, you can\'t specify
-- @InstanceType@.
launchTemplateOverrides_instanceRequirements :: Lens.Lens' LaunchTemplateOverrides (Prelude.Maybe InstanceRequirements)
launchTemplateOverrides_instanceRequirements = Lens.lens (\LaunchTemplateOverrides' {instanceRequirements} -> instanceRequirements) (\s@LaunchTemplateOverrides' {} a -> s {instanceRequirements = a} :: LaunchTemplateOverrides)

-- | The ID of the subnet in which to launch the instances.
launchTemplateOverrides_subnetId :: Lens.Lens' LaunchTemplateOverrides (Prelude.Maybe Prelude.Text)
launchTemplateOverrides_subnetId = Lens.lens (\LaunchTemplateOverrides' {subnetId} -> subnetId) (\s@LaunchTemplateOverrides' {} a -> s {subnetId = a} :: LaunchTemplateOverrides)

-- | The Availability Zone in which to launch the instances.
launchTemplateOverrides_availabilityZone :: Lens.Lens' LaunchTemplateOverrides (Prelude.Maybe Prelude.Text)
launchTemplateOverrides_availabilityZone = Lens.lens (\LaunchTemplateOverrides' {availabilityZone} -> availabilityZone) (\s@LaunchTemplateOverrides' {} a -> s {availabilityZone = a} :: LaunchTemplateOverrides)

-- | The instance type.
launchTemplateOverrides_instanceType :: Lens.Lens' LaunchTemplateOverrides (Prelude.Maybe InstanceType)
launchTemplateOverrides_instanceType = Lens.lens (\LaunchTemplateOverrides' {instanceType} -> instanceType) (\s@LaunchTemplateOverrides' {} a -> s {instanceType = a} :: LaunchTemplateOverrides)

-- | The priority for the launch template override. The highest priority is
-- launched first.
--
-- If @OnDemandAllocationStrategy@ is set to @prioritized@, Spot Fleet uses
-- priority to determine which launch template override to use first in
-- fulfilling On-Demand capacity.
--
-- If the Spot @AllocationStrategy@ is set to
-- @capacityOptimizedPrioritized@, Spot Fleet uses priority on a
-- best-effort basis to determine which launch template override to use in
-- fulfilling Spot capacity, but optimizes for capacity first.
--
-- Valid values are whole numbers starting at @0@. The lower the number,
-- the higher the priority. If no number is set, the launch template
-- override has the lowest priority. You can set the same priority for
-- different launch template overrides.
launchTemplateOverrides_priority :: Lens.Lens' LaunchTemplateOverrides (Prelude.Maybe Prelude.Double)
launchTemplateOverrides_priority = Lens.lens (\LaunchTemplateOverrides' {priority} -> priority) (\s@LaunchTemplateOverrides' {} a -> s {priority = a} :: LaunchTemplateOverrides)

-- | The number of units provided by the specified instance type.
launchTemplateOverrides_weightedCapacity :: Lens.Lens' LaunchTemplateOverrides (Prelude.Maybe Prelude.Double)
launchTemplateOverrides_weightedCapacity = Lens.lens (\LaunchTemplateOverrides' {weightedCapacity} -> weightedCapacity) (\s@LaunchTemplateOverrides' {} a -> s {weightedCapacity = a} :: LaunchTemplateOverrides)

-- | The maximum price per unit hour that you are willing to pay for a Spot
-- Instance. We do not recommend using this parameter because it can lead
-- to increased interruptions. If you do not specify this parameter, you
-- will pay the current Spot price.
--
-- If you specify a maximum price, your instances will be interrupted more
-- frequently than if you do not specify this parameter.
launchTemplateOverrides_spotPrice :: Lens.Lens' LaunchTemplateOverrides (Prelude.Maybe Prelude.Text)
launchTemplateOverrides_spotPrice = Lens.lens (\LaunchTemplateOverrides' {spotPrice} -> spotPrice) (\s@LaunchTemplateOverrides' {} a -> s {spotPrice = a} :: LaunchTemplateOverrides)

instance Core.FromXML LaunchTemplateOverrides where
  parseXML x =
    LaunchTemplateOverrides'
      Prelude.<$> (x Core..@? "instanceRequirements")
      Prelude.<*> (x Core..@? "subnetId")
      Prelude.<*> (x Core..@? "availabilityZone")
      Prelude.<*> (x Core..@? "instanceType")
      Prelude.<*> (x Core..@? "priority")
      Prelude.<*> (x Core..@? "weightedCapacity")
      Prelude.<*> (x Core..@? "spotPrice")

instance Prelude.Hashable LaunchTemplateOverrides where
  hashWithSalt _salt LaunchTemplateOverrides' {..} =
    _salt `Prelude.hashWithSalt` instanceRequirements
      `Prelude.hashWithSalt` subnetId
      `Prelude.hashWithSalt` availabilityZone
      `Prelude.hashWithSalt` instanceType
      `Prelude.hashWithSalt` priority
      `Prelude.hashWithSalt` weightedCapacity
      `Prelude.hashWithSalt` spotPrice

instance Prelude.NFData LaunchTemplateOverrides where
  rnf LaunchTemplateOverrides' {..} =
    Prelude.rnf instanceRequirements
      `Prelude.seq` Prelude.rnf subnetId
      `Prelude.seq` Prelude.rnf availabilityZone
      `Prelude.seq` Prelude.rnf instanceType
      `Prelude.seq` Prelude.rnf priority
      `Prelude.seq` Prelude.rnf weightedCapacity
      `Prelude.seq` Prelude.rnf spotPrice

instance Core.ToQuery LaunchTemplateOverrides where
  toQuery LaunchTemplateOverrides' {..} =
    Prelude.mconcat
      [ "InstanceRequirements" Core.=: instanceRequirements,
        "SubnetId" Core.=: subnetId,
        "AvailabilityZone" Core.=: availabilityZone,
        "InstanceType" Core.=: instanceType,
        "Priority" Core.=: priority,
        "WeightedCapacity" Core.=: weightedCapacity,
        "SpotPrice" Core.=: spotPrice
      ]
