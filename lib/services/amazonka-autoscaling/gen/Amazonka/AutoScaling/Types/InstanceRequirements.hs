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
-- Module      : Amazonka.AutoScaling.Types.InstanceRequirements
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.AutoScaling.Types.InstanceRequirements where

import Amazonka.AutoScaling.Types.AcceleratorCountRequest
import Amazonka.AutoScaling.Types.AcceleratorManufacturer
import Amazonka.AutoScaling.Types.AcceleratorName
import Amazonka.AutoScaling.Types.AcceleratorTotalMemoryMiBRequest
import Amazonka.AutoScaling.Types.AcceleratorType
import Amazonka.AutoScaling.Types.BareMetal
import Amazonka.AutoScaling.Types.BaselineEbsBandwidthMbpsRequest
import Amazonka.AutoScaling.Types.BurstablePerformance
import Amazonka.AutoScaling.Types.CpuManufacturer
import Amazonka.AutoScaling.Types.InstanceGeneration
import Amazonka.AutoScaling.Types.LocalStorage
import Amazonka.AutoScaling.Types.LocalStorageType
import Amazonka.AutoScaling.Types.MemoryGiBPerVCpuRequest
import Amazonka.AutoScaling.Types.MemoryMiBRequest
import Amazonka.AutoScaling.Types.NetworkInterfaceCountRequest
import Amazonka.AutoScaling.Types.TotalLocalStorageGBRequest
import Amazonka.AutoScaling.Types.VCpuCountRequest
import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | When you specify multiple parameters, you get instance types that
-- satisfy all of the specified parameters. If you specify multiple values
-- for a parameter, you get instance types that satisfy any of the
-- specified values.
--
-- Represents requirements for the types of instances that can be launched.
-- You must specify @VCpuCount@ and @MemoryMiB@, but all other parameters
-- are optional. For more information, see
-- <https://docs.aws.amazon.com/autoscaling/ec2/userguide/create-asg-instance-type-requirements.html Creating an Auto Scaling group using attribute-based instance type selection>
-- in the /Amazon EC2 Auto Scaling User Guide/.
--
-- /See:/ 'newInstanceRequirements' smart constructor.
data InstanceRequirements = InstanceRequirements'
  { -- | Indicates whether current or previous generation instance types are
    -- included.
    --
    -- -   For current generation instance types, specify @current@. The
    --     current generation includes EC2 instance types currently recommended
    --     for use. This typically includes the latest two to three generations
    --     in each instance family. For more information, see
    --     <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-types.html Instance types>
    --     in the /Amazon EC2 User Guide for Linux Instances/.
    --
    -- -   For previous generation instance types, specify @previous@.
    --
    -- Default: Any current or previous generation
    instanceGenerations :: Prelude.Maybe [InstanceGeneration],
    -- | The minimum and maximum baseline bandwidth performance for an instance
    -- type, in Mbps. For more information, see
    -- <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebs-optimized.html Amazon EBS–optimized instances>
    -- in the /Amazon EC2 User Guide for Linux Instances/.
    --
    -- Default: No minimum or maximum
    baselineEbsBandwidthMbps :: Prelude.Maybe BaselineEbsBandwidthMbpsRequest,
    -- | Indicates whether bare metal instance types are included, excluded, or
    -- required.
    --
    -- Default: @excluded@
    bareMetal :: Prelude.Maybe BareMetal,
    -- | The price protection threshold for Spot Instances. This is the maximum
    -- you’ll pay for a Spot Instance, expressed as a percentage higher than
    -- the least expensive current generation M, C, or R instance type with
    -- your specified attributes. When Amazon EC2 Auto Scaling selects instance
    -- types with your attributes, we will exclude instance types whose price
    -- is higher than your threshold. The parameter accepts an integer, which
    -- Amazon EC2 Auto Scaling interprets as a percentage. To turn off price
    -- protection, specify a high value, such as @999999@.
    --
    -- If you set @DesiredCapacityType@ to @vcpu@ or @memory-mib@, the price
    -- protection threshold is applied based on the per vCPU or per memory
    -- price instead of the per instance price.
    --
    -- Default: @100@
    spotMaxPricePercentageOverLowestPrice :: Prelude.Maybe Prelude.Natural,
    -- | Lists the accelerator types that must be on an instance type.
    --
    -- -   For instance types with GPU accelerators, specify @gpu@.
    --
    -- -   For instance types with FPGA accelerators, specify @fpga@.
    --
    -- -   For instance types with inference accelerators, specify @inference@.
    --
    -- Default: Any accelerator type
    acceleratorTypes :: Prelude.Maybe [AcceleratorType],
    -- | The minimum and maximum total local storage size for an instance type,
    -- in GB.
    --
    -- Default: No minimum or maximum
    totalLocalStorageGB :: Prelude.Maybe TotalLocalStorageGBRequest,
    -- | Indicates the type of local storage that is required.
    --
    -- -   For instance types with hard disk drive (HDD) storage, specify
    --     @hdd@.
    --
    -- -   For instance types with solid state drive (SSD) storage, specify
    --     @ssd@.
    --
    -- Default: Any local storage type
    localStorageTypes :: Prelude.Maybe [LocalStorageType],
    -- | The price protection threshold for On-Demand Instances. This is the
    -- maximum you’ll pay for an On-Demand Instance, expressed as a percentage
    -- higher than the least expensive current generation M, C, or R instance
    -- type with your specified attributes. When Amazon EC2 Auto Scaling
    -- selects instance types with your attributes, we will exclude instance
    -- types whose price is higher than your threshold. The parameter accepts
    -- an integer, which Amazon EC2 Auto Scaling interprets as a percentage. To
    -- turn off price protection, specify a high value, such as @999999@.
    --
    -- If you set @DesiredCapacityType@ to @vcpu@ or @memory-mib@, the price
    -- protection threshold is applied based on the per vCPU or per memory
    -- price instead of the per instance price.
    --
    -- Default: @20@
    onDemandMaxPricePercentageOverLowestPrice :: Prelude.Maybe Prelude.Natural,
    -- | Lists the accelerators that must be on an instance type.
    --
    -- -   For instance types with NVIDIA A100 GPUs, specify @a100@.
    --
    -- -   For instance types with NVIDIA V100 GPUs, specify @v100@.
    --
    -- -   For instance types with NVIDIA K80 GPUs, specify @k80@.
    --
    -- -   For instance types with NVIDIA T4 GPUs, specify @t4@.
    --
    -- -   For instance types with NVIDIA M60 GPUs, specify @m60@.
    --
    -- -   For instance types with AMD Radeon Pro V520 GPUs, specify
    --     @radeon-pro-v520@.
    --
    -- -   For instance types with Xilinx VU9P FPGAs, specify @vu9p@.
    --
    -- Default: Any accelerator
    acceleratorNames :: Prelude.Maybe [AcceleratorName],
    -- | Indicates whether instance types must have accelerators by specific
    -- manufacturers.
    --
    -- -   For instance types with NVIDIA devices, specify @nvidia@.
    --
    -- -   For instance types with AMD devices, specify @amd@.
    --
    -- -   For instance types with Amazon Web Services devices, specify
    --     @amazon-web-services@.
    --
    -- -   For instance types with Xilinx devices, specify @xilinx@.
    --
    -- Default: Any manufacturer
    acceleratorManufacturers :: Prelude.Maybe [AcceleratorManufacturer],
    -- | Lists which instance types to exclude. You can use strings with one or
    -- more wild cards, represented by an asterisk (@*@). The following are
    -- examples: @c5*@, @m5a.*@, @r*@, @*3*@.
    --
    -- For example, if you specify @c5*@, you are excluding the entire C5
    -- instance family, which includes all C5a and C5n instance types. If you
    -- specify @m5a.*@, you are excluding all the M5a instance types, but not
    -- the M5n instance types.
    --
    -- Default: No excluded instance types
    excludedInstanceTypes :: Prelude.Maybe [Prelude.Text],
    -- | The minimum and maximum number of network interfaces for an instance
    -- type.
    --
    -- Default: No minimum or maximum
    networkInterfaceCount :: Prelude.Maybe NetworkInterfaceCountRequest,
    -- | Indicates whether instance types must provide On-Demand Instance
    -- hibernation support.
    --
    -- Default: @false@
    requireHibernateSupport :: Prelude.Maybe Prelude.Bool,
    -- | The minimum and maximum total memory size for the accelerators on an
    -- instance type, in MiB.
    --
    -- Default: No minimum or maximum
    acceleratorTotalMemoryMiB :: Prelude.Maybe AcceleratorTotalMemoryMiBRequest,
    -- | The minimum and maximum number of accelerators (GPUs, FPGAs, or Amazon
    -- Web Services Inferentia chips) for an instance type.
    --
    -- To exclude accelerator-enabled instance types, set @Max@ to @0@.
    --
    -- Default: No minimum or maximum
    acceleratorCount :: Prelude.Maybe AcceleratorCountRequest,
    -- | Indicates whether burstable performance instance types are included,
    -- excluded, or required. For more information, see
    -- <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/burstable-performance-instances.html Burstable performance instances>
    -- in the /Amazon EC2 User Guide for Linux Instances/.
    --
    -- Default: @excluded@
    burstablePerformance :: Prelude.Maybe BurstablePerformance,
    -- | Lists which specific CPU manufacturers to include.
    --
    -- -   For instance types with Intel CPUs, specify @intel@.
    --
    -- -   For instance types with AMD CPUs, specify @amd@.
    --
    -- -   For instance types with Amazon Web Services CPUs, specify
    --     @amazon-web-services@.
    --
    -- Don\'t confuse the CPU hardware manufacturer with the CPU hardware
    -- architecture. Instances will be launched with a compatible CPU
    -- architecture based on the Amazon Machine Image (AMI) that you specify in
    -- your launch template.
    --
    -- Default: Any manufacturer
    cpuManufacturers :: Prelude.Maybe [CpuManufacturer],
    -- | The minimum and maximum amount of memory per vCPU for an instance type,
    -- in GiB.
    --
    -- Default: No minimum or maximum
    memoryGiBPerVCpu :: Prelude.Maybe MemoryGiBPerVCpuRequest,
    -- | Indicates whether instance types with instance store volumes are
    -- included, excluded, or required. For more information, see
    -- <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/InstanceStorage.html Amazon EC2 instance store>
    -- in the /Amazon EC2 User Guide for Linux Instances/.
    --
    -- Default: @included@
    localStorage :: Prelude.Maybe LocalStorage,
    -- | The minimum and maximum number of vCPUs for an instance type.
    vCpuCount :: VCpuCountRequest,
    -- | The minimum and maximum instance memory size for an instance type, in
    -- MiB.
    memoryMiB :: MemoryMiBRequest
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'InstanceRequirements' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'instanceGenerations', 'instanceRequirements_instanceGenerations' - Indicates whether current or previous generation instance types are
-- included.
--
-- -   For current generation instance types, specify @current@. The
--     current generation includes EC2 instance types currently recommended
--     for use. This typically includes the latest two to three generations
--     in each instance family. For more information, see
--     <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-types.html Instance types>
--     in the /Amazon EC2 User Guide for Linux Instances/.
--
-- -   For previous generation instance types, specify @previous@.
--
-- Default: Any current or previous generation
--
-- 'baselineEbsBandwidthMbps', 'instanceRequirements_baselineEbsBandwidthMbps' - The minimum and maximum baseline bandwidth performance for an instance
-- type, in Mbps. For more information, see
-- <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebs-optimized.html Amazon EBS–optimized instances>
-- in the /Amazon EC2 User Guide for Linux Instances/.
--
-- Default: No minimum or maximum
--
-- 'bareMetal', 'instanceRequirements_bareMetal' - Indicates whether bare metal instance types are included, excluded, or
-- required.
--
-- Default: @excluded@
--
-- 'spotMaxPricePercentageOverLowestPrice', 'instanceRequirements_spotMaxPricePercentageOverLowestPrice' - The price protection threshold for Spot Instances. This is the maximum
-- you’ll pay for a Spot Instance, expressed as a percentage higher than
-- the least expensive current generation M, C, or R instance type with
-- your specified attributes. When Amazon EC2 Auto Scaling selects instance
-- types with your attributes, we will exclude instance types whose price
-- is higher than your threshold. The parameter accepts an integer, which
-- Amazon EC2 Auto Scaling interprets as a percentage. To turn off price
-- protection, specify a high value, such as @999999@.
--
-- If you set @DesiredCapacityType@ to @vcpu@ or @memory-mib@, the price
-- protection threshold is applied based on the per vCPU or per memory
-- price instead of the per instance price.
--
-- Default: @100@
--
-- 'acceleratorTypes', 'instanceRequirements_acceleratorTypes' - Lists the accelerator types that must be on an instance type.
--
-- -   For instance types with GPU accelerators, specify @gpu@.
--
-- -   For instance types with FPGA accelerators, specify @fpga@.
--
-- -   For instance types with inference accelerators, specify @inference@.
--
-- Default: Any accelerator type
--
-- 'totalLocalStorageGB', 'instanceRequirements_totalLocalStorageGB' - The minimum and maximum total local storage size for an instance type,
-- in GB.
--
-- Default: No minimum or maximum
--
-- 'localStorageTypes', 'instanceRequirements_localStorageTypes' - Indicates the type of local storage that is required.
--
-- -   For instance types with hard disk drive (HDD) storage, specify
--     @hdd@.
--
-- -   For instance types with solid state drive (SSD) storage, specify
--     @ssd@.
--
-- Default: Any local storage type
--
-- 'onDemandMaxPricePercentageOverLowestPrice', 'instanceRequirements_onDemandMaxPricePercentageOverLowestPrice' - The price protection threshold for On-Demand Instances. This is the
-- maximum you’ll pay for an On-Demand Instance, expressed as a percentage
-- higher than the least expensive current generation M, C, or R instance
-- type with your specified attributes. When Amazon EC2 Auto Scaling
-- selects instance types with your attributes, we will exclude instance
-- types whose price is higher than your threshold. The parameter accepts
-- an integer, which Amazon EC2 Auto Scaling interprets as a percentage. To
-- turn off price protection, specify a high value, such as @999999@.
--
-- If you set @DesiredCapacityType@ to @vcpu@ or @memory-mib@, the price
-- protection threshold is applied based on the per vCPU or per memory
-- price instead of the per instance price.
--
-- Default: @20@
--
-- 'acceleratorNames', 'instanceRequirements_acceleratorNames' - Lists the accelerators that must be on an instance type.
--
-- -   For instance types with NVIDIA A100 GPUs, specify @a100@.
--
-- -   For instance types with NVIDIA V100 GPUs, specify @v100@.
--
-- -   For instance types with NVIDIA K80 GPUs, specify @k80@.
--
-- -   For instance types with NVIDIA T4 GPUs, specify @t4@.
--
-- -   For instance types with NVIDIA M60 GPUs, specify @m60@.
--
-- -   For instance types with AMD Radeon Pro V520 GPUs, specify
--     @radeon-pro-v520@.
--
-- -   For instance types with Xilinx VU9P FPGAs, specify @vu9p@.
--
-- Default: Any accelerator
--
-- 'acceleratorManufacturers', 'instanceRequirements_acceleratorManufacturers' - Indicates whether instance types must have accelerators by specific
-- manufacturers.
--
-- -   For instance types with NVIDIA devices, specify @nvidia@.
--
-- -   For instance types with AMD devices, specify @amd@.
--
-- -   For instance types with Amazon Web Services devices, specify
--     @amazon-web-services@.
--
-- -   For instance types with Xilinx devices, specify @xilinx@.
--
-- Default: Any manufacturer
--
-- 'excludedInstanceTypes', 'instanceRequirements_excludedInstanceTypes' - Lists which instance types to exclude. You can use strings with one or
-- more wild cards, represented by an asterisk (@*@). The following are
-- examples: @c5*@, @m5a.*@, @r*@, @*3*@.
--
-- For example, if you specify @c5*@, you are excluding the entire C5
-- instance family, which includes all C5a and C5n instance types. If you
-- specify @m5a.*@, you are excluding all the M5a instance types, but not
-- the M5n instance types.
--
-- Default: No excluded instance types
--
-- 'networkInterfaceCount', 'instanceRequirements_networkInterfaceCount' - The minimum and maximum number of network interfaces for an instance
-- type.
--
-- Default: No minimum or maximum
--
-- 'requireHibernateSupport', 'instanceRequirements_requireHibernateSupport' - Indicates whether instance types must provide On-Demand Instance
-- hibernation support.
--
-- Default: @false@
--
-- 'acceleratorTotalMemoryMiB', 'instanceRequirements_acceleratorTotalMemoryMiB' - The minimum and maximum total memory size for the accelerators on an
-- instance type, in MiB.
--
-- Default: No minimum or maximum
--
-- 'acceleratorCount', 'instanceRequirements_acceleratorCount' - The minimum and maximum number of accelerators (GPUs, FPGAs, or Amazon
-- Web Services Inferentia chips) for an instance type.
--
-- To exclude accelerator-enabled instance types, set @Max@ to @0@.
--
-- Default: No minimum or maximum
--
-- 'burstablePerformance', 'instanceRequirements_burstablePerformance' - Indicates whether burstable performance instance types are included,
-- excluded, or required. For more information, see
-- <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/burstable-performance-instances.html Burstable performance instances>
-- in the /Amazon EC2 User Guide for Linux Instances/.
--
-- Default: @excluded@
--
-- 'cpuManufacturers', 'instanceRequirements_cpuManufacturers' - Lists which specific CPU manufacturers to include.
--
-- -   For instance types with Intel CPUs, specify @intel@.
--
-- -   For instance types with AMD CPUs, specify @amd@.
--
-- -   For instance types with Amazon Web Services CPUs, specify
--     @amazon-web-services@.
--
-- Don\'t confuse the CPU hardware manufacturer with the CPU hardware
-- architecture. Instances will be launched with a compatible CPU
-- architecture based on the Amazon Machine Image (AMI) that you specify in
-- your launch template.
--
-- Default: Any manufacturer
--
-- 'memoryGiBPerVCpu', 'instanceRequirements_memoryGiBPerVCpu' - The minimum and maximum amount of memory per vCPU for an instance type,
-- in GiB.
--
-- Default: No minimum or maximum
--
-- 'localStorage', 'instanceRequirements_localStorage' - Indicates whether instance types with instance store volumes are
-- included, excluded, or required. For more information, see
-- <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/InstanceStorage.html Amazon EC2 instance store>
-- in the /Amazon EC2 User Guide for Linux Instances/.
--
-- Default: @included@
--
-- 'vCpuCount', 'instanceRequirements_vCpuCount' - The minimum and maximum number of vCPUs for an instance type.
--
-- 'memoryMiB', 'instanceRequirements_memoryMiB' - The minimum and maximum instance memory size for an instance type, in
-- MiB.
newInstanceRequirements ::
  -- | 'vCpuCount'
  VCpuCountRequest ->
  -- | 'memoryMiB'
  MemoryMiBRequest ->
  InstanceRequirements
newInstanceRequirements pVCpuCount_ pMemoryMiB_ =
  InstanceRequirements'
    { instanceGenerations =
        Prelude.Nothing,
      baselineEbsBandwidthMbps = Prelude.Nothing,
      bareMetal = Prelude.Nothing,
      spotMaxPricePercentageOverLowestPrice =
        Prelude.Nothing,
      acceleratorTypes = Prelude.Nothing,
      totalLocalStorageGB = Prelude.Nothing,
      localStorageTypes = Prelude.Nothing,
      onDemandMaxPricePercentageOverLowestPrice =
        Prelude.Nothing,
      acceleratorNames = Prelude.Nothing,
      acceleratorManufacturers = Prelude.Nothing,
      excludedInstanceTypes = Prelude.Nothing,
      networkInterfaceCount = Prelude.Nothing,
      requireHibernateSupport = Prelude.Nothing,
      acceleratorTotalMemoryMiB = Prelude.Nothing,
      acceleratorCount = Prelude.Nothing,
      burstablePerformance = Prelude.Nothing,
      cpuManufacturers = Prelude.Nothing,
      memoryGiBPerVCpu = Prelude.Nothing,
      localStorage = Prelude.Nothing,
      vCpuCount = pVCpuCount_,
      memoryMiB = pMemoryMiB_
    }

-- | Indicates whether current or previous generation instance types are
-- included.
--
-- -   For current generation instance types, specify @current@. The
--     current generation includes EC2 instance types currently recommended
--     for use. This typically includes the latest two to three generations
--     in each instance family. For more information, see
--     <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-types.html Instance types>
--     in the /Amazon EC2 User Guide for Linux Instances/.
--
-- -   For previous generation instance types, specify @previous@.
--
-- Default: Any current or previous generation
instanceRequirements_instanceGenerations :: Lens.Lens' InstanceRequirements (Prelude.Maybe [InstanceGeneration])
instanceRequirements_instanceGenerations = Lens.lens (\InstanceRequirements' {instanceGenerations} -> instanceGenerations) (\s@InstanceRequirements' {} a -> s {instanceGenerations = a} :: InstanceRequirements) Prelude.. Lens.mapping Lens.coerced

-- | The minimum and maximum baseline bandwidth performance for an instance
-- type, in Mbps. For more information, see
-- <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebs-optimized.html Amazon EBS–optimized instances>
-- in the /Amazon EC2 User Guide for Linux Instances/.
--
-- Default: No minimum or maximum
instanceRequirements_baselineEbsBandwidthMbps :: Lens.Lens' InstanceRequirements (Prelude.Maybe BaselineEbsBandwidthMbpsRequest)
instanceRequirements_baselineEbsBandwidthMbps = Lens.lens (\InstanceRequirements' {baselineEbsBandwidthMbps} -> baselineEbsBandwidthMbps) (\s@InstanceRequirements' {} a -> s {baselineEbsBandwidthMbps = a} :: InstanceRequirements)

-- | Indicates whether bare metal instance types are included, excluded, or
-- required.
--
-- Default: @excluded@
instanceRequirements_bareMetal :: Lens.Lens' InstanceRequirements (Prelude.Maybe BareMetal)
instanceRequirements_bareMetal = Lens.lens (\InstanceRequirements' {bareMetal} -> bareMetal) (\s@InstanceRequirements' {} a -> s {bareMetal = a} :: InstanceRequirements)

-- | The price protection threshold for Spot Instances. This is the maximum
-- you’ll pay for a Spot Instance, expressed as a percentage higher than
-- the least expensive current generation M, C, or R instance type with
-- your specified attributes. When Amazon EC2 Auto Scaling selects instance
-- types with your attributes, we will exclude instance types whose price
-- is higher than your threshold. The parameter accepts an integer, which
-- Amazon EC2 Auto Scaling interprets as a percentage. To turn off price
-- protection, specify a high value, such as @999999@.
--
-- If you set @DesiredCapacityType@ to @vcpu@ or @memory-mib@, the price
-- protection threshold is applied based on the per vCPU or per memory
-- price instead of the per instance price.
--
-- Default: @100@
instanceRequirements_spotMaxPricePercentageOverLowestPrice :: Lens.Lens' InstanceRequirements (Prelude.Maybe Prelude.Natural)
instanceRequirements_spotMaxPricePercentageOverLowestPrice = Lens.lens (\InstanceRequirements' {spotMaxPricePercentageOverLowestPrice} -> spotMaxPricePercentageOverLowestPrice) (\s@InstanceRequirements' {} a -> s {spotMaxPricePercentageOverLowestPrice = a} :: InstanceRequirements)

-- | Lists the accelerator types that must be on an instance type.
--
-- -   For instance types with GPU accelerators, specify @gpu@.
--
-- -   For instance types with FPGA accelerators, specify @fpga@.
--
-- -   For instance types with inference accelerators, specify @inference@.
--
-- Default: Any accelerator type
instanceRequirements_acceleratorTypes :: Lens.Lens' InstanceRequirements (Prelude.Maybe [AcceleratorType])
instanceRequirements_acceleratorTypes = Lens.lens (\InstanceRequirements' {acceleratorTypes} -> acceleratorTypes) (\s@InstanceRequirements' {} a -> s {acceleratorTypes = a} :: InstanceRequirements) Prelude.. Lens.mapping Lens.coerced

-- | The minimum and maximum total local storage size for an instance type,
-- in GB.
--
-- Default: No minimum or maximum
instanceRequirements_totalLocalStorageGB :: Lens.Lens' InstanceRequirements (Prelude.Maybe TotalLocalStorageGBRequest)
instanceRequirements_totalLocalStorageGB = Lens.lens (\InstanceRequirements' {totalLocalStorageGB} -> totalLocalStorageGB) (\s@InstanceRequirements' {} a -> s {totalLocalStorageGB = a} :: InstanceRequirements)

-- | Indicates the type of local storage that is required.
--
-- -   For instance types with hard disk drive (HDD) storage, specify
--     @hdd@.
--
-- -   For instance types with solid state drive (SSD) storage, specify
--     @ssd@.
--
-- Default: Any local storage type
instanceRequirements_localStorageTypes :: Lens.Lens' InstanceRequirements (Prelude.Maybe [LocalStorageType])
instanceRequirements_localStorageTypes = Lens.lens (\InstanceRequirements' {localStorageTypes} -> localStorageTypes) (\s@InstanceRequirements' {} a -> s {localStorageTypes = a} :: InstanceRequirements) Prelude.. Lens.mapping Lens.coerced

-- | The price protection threshold for On-Demand Instances. This is the
-- maximum you’ll pay for an On-Demand Instance, expressed as a percentage
-- higher than the least expensive current generation M, C, or R instance
-- type with your specified attributes. When Amazon EC2 Auto Scaling
-- selects instance types with your attributes, we will exclude instance
-- types whose price is higher than your threshold. The parameter accepts
-- an integer, which Amazon EC2 Auto Scaling interprets as a percentage. To
-- turn off price protection, specify a high value, such as @999999@.
--
-- If you set @DesiredCapacityType@ to @vcpu@ or @memory-mib@, the price
-- protection threshold is applied based on the per vCPU or per memory
-- price instead of the per instance price.
--
-- Default: @20@
instanceRequirements_onDemandMaxPricePercentageOverLowestPrice :: Lens.Lens' InstanceRequirements (Prelude.Maybe Prelude.Natural)
instanceRequirements_onDemandMaxPricePercentageOverLowestPrice = Lens.lens (\InstanceRequirements' {onDemandMaxPricePercentageOverLowestPrice} -> onDemandMaxPricePercentageOverLowestPrice) (\s@InstanceRequirements' {} a -> s {onDemandMaxPricePercentageOverLowestPrice = a} :: InstanceRequirements)

-- | Lists the accelerators that must be on an instance type.
--
-- -   For instance types with NVIDIA A100 GPUs, specify @a100@.
--
-- -   For instance types with NVIDIA V100 GPUs, specify @v100@.
--
-- -   For instance types with NVIDIA K80 GPUs, specify @k80@.
--
-- -   For instance types with NVIDIA T4 GPUs, specify @t4@.
--
-- -   For instance types with NVIDIA M60 GPUs, specify @m60@.
--
-- -   For instance types with AMD Radeon Pro V520 GPUs, specify
--     @radeon-pro-v520@.
--
-- -   For instance types with Xilinx VU9P FPGAs, specify @vu9p@.
--
-- Default: Any accelerator
instanceRequirements_acceleratorNames :: Lens.Lens' InstanceRequirements (Prelude.Maybe [AcceleratorName])
instanceRequirements_acceleratorNames = Lens.lens (\InstanceRequirements' {acceleratorNames} -> acceleratorNames) (\s@InstanceRequirements' {} a -> s {acceleratorNames = a} :: InstanceRequirements) Prelude.. Lens.mapping Lens.coerced

-- | Indicates whether instance types must have accelerators by specific
-- manufacturers.
--
-- -   For instance types with NVIDIA devices, specify @nvidia@.
--
-- -   For instance types with AMD devices, specify @amd@.
--
-- -   For instance types with Amazon Web Services devices, specify
--     @amazon-web-services@.
--
-- -   For instance types with Xilinx devices, specify @xilinx@.
--
-- Default: Any manufacturer
instanceRequirements_acceleratorManufacturers :: Lens.Lens' InstanceRequirements (Prelude.Maybe [AcceleratorManufacturer])
instanceRequirements_acceleratorManufacturers = Lens.lens (\InstanceRequirements' {acceleratorManufacturers} -> acceleratorManufacturers) (\s@InstanceRequirements' {} a -> s {acceleratorManufacturers = a} :: InstanceRequirements) Prelude.. Lens.mapping Lens.coerced

-- | Lists which instance types to exclude. You can use strings with one or
-- more wild cards, represented by an asterisk (@*@). The following are
-- examples: @c5*@, @m5a.*@, @r*@, @*3*@.
--
-- For example, if you specify @c5*@, you are excluding the entire C5
-- instance family, which includes all C5a and C5n instance types. If you
-- specify @m5a.*@, you are excluding all the M5a instance types, but not
-- the M5n instance types.
--
-- Default: No excluded instance types
instanceRequirements_excludedInstanceTypes :: Lens.Lens' InstanceRequirements (Prelude.Maybe [Prelude.Text])
instanceRequirements_excludedInstanceTypes = Lens.lens (\InstanceRequirements' {excludedInstanceTypes} -> excludedInstanceTypes) (\s@InstanceRequirements' {} a -> s {excludedInstanceTypes = a} :: InstanceRequirements) Prelude.. Lens.mapping Lens.coerced

-- | The minimum and maximum number of network interfaces for an instance
-- type.
--
-- Default: No minimum or maximum
instanceRequirements_networkInterfaceCount :: Lens.Lens' InstanceRequirements (Prelude.Maybe NetworkInterfaceCountRequest)
instanceRequirements_networkInterfaceCount = Lens.lens (\InstanceRequirements' {networkInterfaceCount} -> networkInterfaceCount) (\s@InstanceRequirements' {} a -> s {networkInterfaceCount = a} :: InstanceRequirements)

-- | Indicates whether instance types must provide On-Demand Instance
-- hibernation support.
--
-- Default: @false@
instanceRequirements_requireHibernateSupport :: Lens.Lens' InstanceRequirements (Prelude.Maybe Prelude.Bool)
instanceRequirements_requireHibernateSupport = Lens.lens (\InstanceRequirements' {requireHibernateSupport} -> requireHibernateSupport) (\s@InstanceRequirements' {} a -> s {requireHibernateSupport = a} :: InstanceRequirements)

-- | The minimum and maximum total memory size for the accelerators on an
-- instance type, in MiB.
--
-- Default: No minimum or maximum
instanceRequirements_acceleratorTotalMemoryMiB :: Lens.Lens' InstanceRequirements (Prelude.Maybe AcceleratorTotalMemoryMiBRequest)
instanceRequirements_acceleratorTotalMemoryMiB = Lens.lens (\InstanceRequirements' {acceleratorTotalMemoryMiB} -> acceleratorTotalMemoryMiB) (\s@InstanceRequirements' {} a -> s {acceleratorTotalMemoryMiB = a} :: InstanceRequirements)

-- | The minimum and maximum number of accelerators (GPUs, FPGAs, or Amazon
-- Web Services Inferentia chips) for an instance type.
--
-- To exclude accelerator-enabled instance types, set @Max@ to @0@.
--
-- Default: No minimum or maximum
instanceRequirements_acceleratorCount :: Lens.Lens' InstanceRequirements (Prelude.Maybe AcceleratorCountRequest)
instanceRequirements_acceleratorCount = Lens.lens (\InstanceRequirements' {acceleratorCount} -> acceleratorCount) (\s@InstanceRequirements' {} a -> s {acceleratorCount = a} :: InstanceRequirements)

-- | Indicates whether burstable performance instance types are included,
-- excluded, or required. For more information, see
-- <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/burstable-performance-instances.html Burstable performance instances>
-- in the /Amazon EC2 User Guide for Linux Instances/.
--
-- Default: @excluded@
instanceRequirements_burstablePerformance :: Lens.Lens' InstanceRequirements (Prelude.Maybe BurstablePerformance)
instanceRequirements_burstablePerformance = Lens.lens (\InstanceRequirements' {burstablePerformance} -> burstablePerformance) (\s@InstanceRequirements' {} a -> s {burstablePerformance = a} :: InstanceRequirements)

-- | Lists which specific CPU manufacturers to include.
--
-- -   For instance types with Intel CPUs, specify @intel@.
--
-- -   For instance types with AMD CPUs, specify @amd@.
--
-- -   For instance types with Amazon Web Services CPUs, specify
--     @amazon-web-services@.
--
-- Don\'t confuse the CPU hardware manufacturer with the CPU hardware
-- architecture. Instances will be launched with a compatible CPU
-- architecture based on the Amazon Machine Image (AMI) that you specify in
-- your launch template.
--
-- Default: Any manufacturer
instanceRequirements_cpuManufacturers :: Lens.Lens' InstanceRequirements (Prelude.Maybe [CpuManufacturer])
instanceRequirements_cpuManufacturers = Lens.lens (\InstanceRequirements' {cpuManufacturers} -> cpuManufacturers) (\s@InstanceRequirements' {} a -> s {cpuManufacturers = a} :: InstanceRequirements) Prelude.. Lens.mapping Lens.coerced

-- | The minimum and maximum amount of memory per vCPU for an instance type,
-- in GiB.
--
-- Default: No minimum or maximum
instanceRequirements_memoryGiBPerVCpu :: Lens.Lens' InstanceRequirements (Prelude.Maybe MemoryGiBPerVCpuRequest)
instanceRequirements_memoryGiBPerVCpu = Lens.lens (\InstanceRequirements' {memoryGiBPerVCpu} -> memoryGiBPerVCpu) (\s@InstanceRequirements' {} a -> s {memoryGiBPerVCpu = a} :: InstanceRequirements)

-- | Indicates whether instance types with instance store volumes are
-- included, excluded, or required. For more information, see
-- <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/InstanceStorage.html Amazon EC2 instance store>
-- in the /Amazon EC2 User Guide for Linux Instances/.
--
-- Default: @included@
instanceRequirements_localStorage :: Lens.Lens' InstanceRequirements (Prelude.Maybe LocalStorage)
instanceRequirements_localStorage = Lens.lens (\InstanceRequirements' {localStorage} -> localStorage) (\s@InstanceRequirements' {} a -> s {localStorage = a} :: InstanceRequirements)

-- | The minimum and maximum number of vCPUs for an instance type.
instanceRequirements_vCpuCount :: Lens.Lens' InstanceRequirements VCpuCountRequest
instanceRequirements_vCpuCount = Lens.lens (\InstanceRequirements' {vCpuCount} -> vCpuCount) (\s@InstanceRequirements' {} a -> s {vCpuCount = a} :: InstanceRequirements)

-- | The minimum and maximum instance memory size for an instance type, in
-- MiB.
instanceRequirements_memoryMiB :: Lens.Lens' InstanceRequirements MemoryMiBRequest
instanceRequirements_memoryMiB = Lens.lens (\InstanceRequirements' {memoryMiB} -> memoryMiB) (\s@InstanceRequirements' {} a -> s {memoryMiB = a} :: InstanceRequirements)

instance Core.FromXML InstanceRequirements where
  parseXML x =
    InstanceRequirements'
      Prelude.<$> ( x Core..@? "InstanceGenerations"
                      Core..!@ Prelude.mempty
                      Prelude.>>= Core.may (Core.parseXMLList "member")
                  )
      Prelude.<*> (x Core..@? "BaselineEbsBandwidthMbps")
      Prelude.<*> (x Core..@? "BareMetal")
      Prelude.<*> (x Core..@? "SpotMaxPricePercentageOverLowestPrice")
      Prelude.<*> ( x Core..@? "AcceleratorTypes"
                      Core..!@ Prelude.mempty
                      Prelude.>>= Core.may (Core.parseXMLList "member")
                  )
      Prelude.<*> (x Core..@? "TotalLocalStorageGB")
      Prelude.<*> ( x Core..@? "LocalStorageTypes"
                      Core..!@ Prelude.mempty
                      Prelude.>>= Core.may (Core.parseXMLList "member")
                  )
      Prelude.<*> ( x
                      Core..@? "OnDemandMaxPricePercentageOverLowestPrice"
                  )
      Prelude.<*> ( x Core..@? "AcceleratorNames"
                      Core..!@ Prelude.mempty
                      Prelude.>>= Core.may (Core.parseXMLList "member")
                  )
      Prelude.<*> ( x Core..@? "AcceleratorManufacturers"
                      Core..!@ Prelude.mempty
                      Prelude.>>= Core.may (Core.parseXMLList "member")
                  )
      Prelude.<*> ( x Core..@? "ExcludedInstanceTypes"
                      Core..!@ Prelude.mempty
                      Prelude.>>= Core.may (Core.parseXMLList "member")
                  )
      Prelude.<*> (x Core..@? "NetworkInterfaceCount")
      Prelude.<*> (x Core..@? "RequireHibernateSupport")
      Prelude.<*> (x Core..@? "AcceleratorTotalMemoryMiB")
      Prelude.<*> (x Core..@? "AcceleratorCount")
      Prelude.<*> (x Core..@? "BurstablePerformance")
      Prelude.<*> ( x Core..@? "CpuManufacturers"
                      Core..!@ Prelude.mempty
                      Prelude.>>= Core.may (Core.parseXMLList "member")
                  )
      Prelude.<*> (x Core..@? "MemoryGiBPerVCpu")
      Prelude.<*> (x Core..@? "LocalStorage")
      Prelude.<*> (x Core..@ "VCpuCount")
      Prelude.<*> (x Core..@ "MemoryMiB")

instance Prelude.Hashable InstanceRequirements where
  hashWithSalt _salt InstanceRequirements' {..} =
    _salt `Prelude.hashWithSalt` instanceGenerations
      `Prelude.hashWithSalt` baselineEbsBandwidthMbps
      `Prelude.hashWithSalt` bareMetal
      `Prelude.hashWithSalt` spotMaxPricePercentageOverLowestPrice
      `Prelude.hashWithSalt` acceleratorTypes
      `Prelude.hashWithSalt` totalLocalStorageGB
      `Prelude.hashWithSalt` localStorageTypes
      `Prelude.hashWithSalt` onDemandMaxPricePercentageOverLowestPrice
      `Prelude.hashWithSalt` acceleratorNames
      `Prelude.hashWithSalt` acceleratorManufacturers
      `Prelude.hashWithSalt` excludedInstanceTypes
      `Prelude.hashWithSalt` networkInterfaceCount
      `Prelude.hashWithSalt` requireHibernateSupport
      `Prelude.hashWithSalt` acceleratorTotalMemoryMiB
      `Prelude.hashWithSalt` acceleratorCount
      `Prelude.hashWithSalt` burstablePerformance
      `Prelude.hashWithSalt` cpuManufacturers
      `Prelude.hashWithSalt` memoryGiBPerVCpu
      `Prelude.hashWithSalt` localStorage
      `Prelude.hashWithSalt` vCpuCount
      `Prelude.hashWithSalt` memoryMiB

instance Prelude.NFData InstanceRequirements where
  rnf InstanceRequirements' {..} =
    Prelude.rnf instanceGenerations
      `Prelude.seq` Prelude.rnf baselineEbsBandwidthMbps
      `Prelude.seq` Prelude.rnf bareMetal
      `Prelude.seq` Prelude.rnf spotMaxPricePercentageOverLowestPrice
      `Prelude.seq` Prelude.rnf acceleratorTypes
      `Prelude.seq` Prelude.rnf totalLocalStorageGB
      `Prelude.seq` Prelude.rnf localStorageTypes
      `Prelude.seq` Prelude.rnf onDemandMaxPricePercentageOverLowestPrice
      `Prelude.seq` Prelude.rnf acceleratorNames
      `Prelude.seq` Prelude.rnf acceleratorManufacturers
      `Prelude.seq` Prelude.rnf excludedInstanceTypes
      `Prelude.seq` Prelude.rnf networkInterfaceCount
      `Prelude.seq` Prelude.rnf requireHibernateSupport
      `Prelude.seq` Prelude.rnf acceleratorTotalMemoryMiB
      `Prelude.seq` Prelude.rnf acceleratorCount
      `Prelude.seq` Prelude.rnf burstablePerformance
      `Prelude.seq` Prelude.rnf cpuManufacturers
      `Prelude.seq` Prelude.rnf memoryGiBPerVCpu
      `Prelude.seq` Prelude.rnf localStorage
      `Prelude.seq` Prelude.rnf vCpuCount
      `Prelude.seq` Prelude.rnf memoryMiB

instance Core.ToQuery InstanceRequirements where
  toQuery InstanceRequirements' {..} =
    Prelude.mconcat
      [ "InstanceGenerations"
          Core.=: Core.toQuery
            ( Core.toQueryList "member"
                Prelude.<$> instanceGenerations
            ),
        "BaselineEbsBandwidthMbps"
          Core.=: baselineEbsBandwidthMbps,
        "BareMetal" Core.=: bareMetal,
        "SpotMaxPricePercentageOverLowestPrice"
          Core.=: spotMaxPricePercentageOverLowestPrice,
        "AcceleratorTypes"
          Core.=: Core.toQuery
            ( Core.toQueryList "member"
                Prelude.<$> acceleratorTypes
            ),
        "TotalLocalStorageGB" Core.=: totalLocalStorageGB,
        "LocalStorageTypes"
          Core.=: Core.toQuery
            ( Core.toQueryList "member"
                Prelude.<$> localStorageTypes
            ),
        "OnDemandMaxPricePercentageOverLowestPrice"
          Core.=: onDemandMaxPricePercentageOverLowestPrice,
        "AcceleratorNames"
          Core.=: Core.toQuery
            ( Core.toQueryList "member"
                Prelude.<$> acceleratorNames
            ),
        "AcceleratorManufacturers"
          Core.=: Core.toQuery
            ( Core.toQueryList "member"
                Prelude.<$> acceleratorManufacturers
            ),
        "ExcludedInstanceTypes"
          Core.=: Core.toQuery
            ( Core.toQueryList "member"
                Prelude.<$> excludedInstanceTypes
            ),
        "NetworkInterfaceCount"
          Core.=: networkInterfaceCount,
        "RequireHibernateSupport"
          Core.=: requireHibernateSupport,
        "AcceleratorTotalMemoryMiB"
          Core.=: acceleratorTotalMemoryMiB,
        "AcceleratorCount" Core.=: acceleratorCount,
        "BurstablePerformance" Core.=: burstablePerformance,
        "CpuManufacturers"
          Core.=: Core.toQuery
            ( Core.toQueryList "member"
                Prelude.<$> cpuManufacturers
            ),
        "MemoryGiBPerVCpu" Core.=: memoryGiBPerVCpu,
        "LocalStorage" Core.=: localStorage,
        "VCpuCount" Core.=: vCpuCount,
        "MemoryMiB" Core.=: memoryMiB
      ]
