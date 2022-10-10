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
-- Module      : Amazonka.IoTWireless.Types.LoRaWANGatewayVersion
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.IoTWireless.Types.LoRaWANGatewayVersion where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | LoRaWANGatewayVersion object.
--
-- /See:/ 'newLoRaWANGatewayVersion' smart constructor.
data LoRaWANGatewayVersion = LoRaWANGatewayVersion'
  { -- | The model number of the wireless gateway.
    model :: Prelude.Maybe Prelude.Text,
    -- | The basic station version of the wireless gateway.
    station :: Prelude.Maybe Prelude.Text,
    -- | The version of the wireless gateway firmware.
    packageVersion :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'LoRaWANGatewayVersion' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'model', 'loRaWANGatewayVersion_model' - The model number of the wireless gateway.
--
-- 'station', 'loRaWANGatewayVersion_station' - The basic station version of the wireless gateway.
--
-- 'packageVersion', 'loRaWANGatewayVersion_packageVersion' - The version of the wireless gateway firmware.
newLoRaWANGatewayVersion ::
  LoRaWANGatewayVersion
newLoRaWANGatewayVersion =
  LoRaWANGatewayVersion'
    { model = Prelude.Nothing,
      station = Prelude.Nothing,
      packageVersion = Prelude.Nothing
    }

-- | The model number of the wireless gateway.
loRaWANGatewayVersion_model :: Lens.Lens' LoRaWANGatewayVersion (Prelude.Maybe Prelude.Text)
loRaWANGatewayVersion_model = Lens.lens (\LoRaWANGatewayVersion' {model} -> model) (\s@LoRaWANGatewayVersion' {} a -> s {model = a} :: LoRaWANGatewayVersion)

-- | The basic station version of the wireless gateway.
loRaWANGatewayVersion_station :: Lens.Lens' LoRaWANGatewayVersion (Prelude.Maybe Prelude.Text)
loRaWANGatewayVersion_station = Lens.lens (\LoRaWANGatewayVersion' {station} -> station) (\s@LoRaWANGatewayVersion' {} a -> s {station = a} :: LoRaWANGatewayVersion)

-- | The version of the wireless gateway firmware.
loRaWANGatewayVersion_packageVersion :: Lens.Lens' LoRaWANGatewayVersion (Prelude.Maybe Prelude.Text)
loRaWANGatewayVersion_packageVersion = Lens.lens (\LoRaWANGatewayVersion' {packageVersion} -> packageVersion) (\s@LoRaWANGatewayVersion' {} a -> s {packageVersion = a} :: LoRaWANGatewayVersion)

instance Core.FromJSON LoRaWANGatewayVersion where
  parseJSON =
    Core.withObject
      "LoRaWANGatewayVersion"
      ( \x ->
          LoRaWANGatewayVersion'
            Prelude.<$> (x Core..:? "Model")
            Prelude.<*> (x Core..:? "Station")
            Prelude.<*> (x Core..:? "PackageVersion")
      )

instance Prelude.Hashable LoRaWANGatewayVersion where
  hashWithSalt _salt LoRaWANGatewayVersion' {..} =
    _salt `Prelude.hashWithSalt` model
      `Prelude.hashWithSalt` station
      `Prelude.hashWithSalt` packageVersion

instance Prelude.NFData LoRaWANGatewayVersion where
  rnf LoRaWANGatewayVersion' {..} =
    Prelude.rnf model
      `Prelude.seq` Prelude.rnf station
      `Prelude.seq` Prelude.rnf packageVersion

instance Core.ToJSON LoRaWANGatewayVersion where
  toJSON LoRaWANGatewayVersion' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("Model" Core..=) Prelude.<$> model,
            ("Station" Core..=) Prelude.<$> station,
            ("PackageVersion" Core..=)
              Prelude.<$> packageVersion
          ]
      )
