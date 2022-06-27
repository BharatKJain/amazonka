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
-- Module      : Amazonka.IoT1ClickDevices.Types.Device
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.IoT1ClickDevices.Types.Device where

import qualified Amazonka.Core as Core
import Amazonka.IoT1ClickDevices.Types.Attributes
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | /See:/ 'newDevice' smart constructor.
data Device = Device'
  { -- | The device type, such as \"button\".
    type' :: Prelude.Maybe Prelude.Text,
    -- | The unique identifier of the device.
    deviceId :: Prelude.Maybe Prelude.Text,
    -- | The user specified attributes associated with the device for an event.
    attributes :: Prelude.Maybe Attributes
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'Device' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'type'', 'device_type' - The device type, such as \"button\".
--
-- 'deviceId', 'device_deviceId' - The unique identifier of the device.
--
-- 'attributes', 'device_attributes' - The user specified attributes associated with the device for an event.
newDevice ::
  Device
newDevice =
  Device'
    { type' = Prelude.Nothing,
      deviceId = Prelude.Nothing,
      attributes = Prelude.Nothing
    }

-- | The device type, such as \"button\".
device_type :: Lens.Lens' Device (Prelude.Maybe Prelude.Text)
device_type = Lens.lens (\Device' {type'} -> type') (\s@Device' {} a -> s {type' = a} :: Device)

-- | The unique identifier of the device.
device_deviceId :: Lens.Lens' Device (Prelude.Maybe Prelude.Text)
device_deviceId = Lens.lens (\Device' {deviceId} -> deviceId) (\s@Device' {} a -> s {deviceId = a} :: Device)

-- | The user specified attributes associated with the device for an event.
device_attributes :: Lens.Lens' Device (Prelude.Maybe Attributes)
device_attributes = Lens.lens (\Device' {attributes} -> attributes) (\s@Device' {} a -> s {attributes = a} :: Device)

instance Core.FromJSON Device where
  parseJSON =
    Core.withObject
      "Device"
      ( \x ->
          Device'
            Prelude.<$> (x Core..:? "type")
            Prelude.<*> (x Core..:? "deviceId")
            Prelude.<*> (x Core..:? "attributes")
      )

instance Prelude.Hashable Device where
  hashWithSalt _salt Device' {..} =
    _salt `Prelude.hashWithSalt` type'
      `Prelude.hashWithSalt` deviceId
      `Prelude.hashWithSalt` attributes

instance Prelude.NFData Device where
  rnf Device' {..} =
    Prelude.rnf type'
      `Prelude.seq` Prelude.rnf deviceId
      `Prelude.seq` Prelude.rnf attributes
