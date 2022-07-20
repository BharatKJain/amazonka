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
-- Module      : Amazonka.DeviceFarm.Types.DeviceInstance
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.DeviceFarm.Types.DeviceInstance where

import qualified Amazonka.Core as Core
import Amazonka.DeviceFarm.Types.InstanceProfile
import Amazonka.DeviceFarm.Types.InstanceStatus
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | Represents the device instance.
--
-- /See:/ 'newDeviceInstance' smart constructor.
data DeviceInstance = DeviceInstance'
  { -- | The Amazon Resource Name (ARN) of the device instance.
    arn :: Prelude.Maybe Prelude.Text,
    -- | The status of the device instance. Valid values are listed here.
    status :: Prelude.Maybe InstanceStatus,
    -- | A object that contains information about the instance profile.
    instanceProfile :: Prelude.Maybe InstanceProfile,
    -- | An array of strings that describe the device instance.
    labels :: Prelude.Maybe [Prelude.Text],
    -- | The ARN of the device.
    deviceArn :: Prelude.Maybe Prelude.Text,
    -- | Unique device identifier for the device instance.
    udid :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeviceInstance' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'arn', 'deviceInstance_arn' - The Amazon Resource Name (ARN) of the device instance.
--
-- 'status', 'deviceInstance_status' - The status of the device instance. Valid values are listed here.
--
-- 'instanceProfile', 'deviceInstance_instanceProfile' - A object that contains information about the instance profile.
--
-- 'labels', 'deviceInstance_labels' - An array of strings that describe the device instance.
--
-- 'deviceArn', 'deviceInstance_deviceArn' - The ARN of the device.
--
-- 'udid', 'deviceInstance_udid' - Unique device identifier for the device instance.
newDeviceInstance ::
  DeviceInstance
newDeviceInstance =
  DeviceInstance'
    { arn = Prelude.Nothing,
      status = Prelude.Nothing,
      instanceProfile = Prelude.Nothing,
      labels = Prelude.Nothing,
      deviceArn = Prelude.Nothing,
      udid = Prelude.Nothing
    }

-- | The Amazon Resource Name (ARN) of the device instance.
deviceInstance_arn :: Lens.Lens' DeviceInstance (Prelude.Maybe Prelude.Text)
deviceInstance_arn = Lens.lens (\DeviceInstance' {arn} -> arn) (\s@DeviceInstance' {} a -> s {arn = a} :: DeviceInstance)

-- | The status of the device instance. Valid values are listed here.
deviceInstance_status :: Lens.Lens' DeviceInstance (Prelude.Maybe InstanceStatus)
deviceInstance_status = Lens.lens (\DeviceInstance' {status} -> status) (\s@DeviceInstance' {} a -> s {status = a} :: DeviceInstance)

-- | A object that contains information about the instance profile.
deviceInstance_instanceProfile :: Lens.Lens' DeviceInstance (Prelude.Maybe InstanceProfile)
deviceInstance_instanceProfile = Lens.lens (\DeviceInstance' {instanceProfile} -> instanceProfile) (\s@DeviceInstance' {} a -> s {instanceProfile = a} :: DeviceInstance)

-- | An array of strings that describe the device instance.
deviceInstance_labels :: Lens.Lens' DeviceInstance (Prelude.Maybe [Prelude.Text])
deviceInstance_labels = Lens.lens (\DeviceInstance' {labels} -> labels) (\s@DeviceInstance' {} a -> s {labels = a} :: DeviceInstance) Prelude.. Lens.mapping Lens.coerced

-- | The ARN of the device.
deviceInstance_deviceArn :: Lens.Lens' DeviceInstance (Prelude.Maybe Prelude.Text)
deviceInstance_deviceArn = Lens.lens (\DeviceInstance' {deviceArn} -> deviceArn) (\s@DeviceInstance' {} a -> s {deviceArn = a} :: DeviceInstance)

-- | Unique device identifier for the device instance.
deviceInstance_udid :: Lens.Lens' DeviceInstance (Prelude.Maybe Prelude.Text)
deviceInstance_udid = Lens.lens (\DeviceInstance' {udid} -> udid) (\s@DeviceInstance' {} a -> s {udid = a} :: DeviceInstance)

instance Core.FromJSON DeviceInstance where
  parseJSON =
    Core.withObject
      "DeviceInstance"
      ( \x ->
          DeviceInstance'
            Prelude.<$> (x Core..:? "arn")
            Prelude.<*> (x Core..:? "status")
            Prelude.<*> (x Core..:? "instanceProfile")
            Prelude.<*> (x Core..:? "labels" Core..!= Prelude.mempty)
            Prelude.<*> (x Core..:? "deviceArn")
            Prelude.<*> (x Core..:? "udid")
      )

instance Prelude.Hashable DeviceInstance where
  hashWithSalt _salt DeviceInstance' {..} =
    _salt `Prelude.hashWithSalt` arn
      `Prelude.hashWithSalt` status
      `Prelude.hashWithSalt` instanceProfile
      `Prelude.hashWithSalt` labels
      `Prelude.hashWithSalt` deviceArn
      `Prelude.hashWithSalt` udid

instance Prelude.NFData DeviceInstance where
  rnf DeviceInstance' {..} =
    Prelude.rnf arn
      `Prelude.seq` Prelude.rnf status
      `Prelude.seq` Prelude.rnf instanceProfile
      `Prelude.seq` Prelude.rnf labels
      `Prelude.seq` Prelude.rnf deviceArn
      `Prelude.seq` Prelude.rnf udid
