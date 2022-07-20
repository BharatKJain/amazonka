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
-- Module      : Amazonka.DeviceFarm.Types.Radios
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.DeviceFarm.Types.Radios where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | Represents the set of radios and their states on a device. Examples of
-- radios include Wi-Fi, GPS, Bluetooth, and NFC.
--
-- /See:/ 'newRadios' smart constructor.
data Radios = Radios'
  { -- | True if GPS is enabled at the beginning of the test. Otherwise, false.
    gps :: Prelude.Maybe Prelude.Bool,
    -- | True if Wi-Fi is enabled at the beginning of the test. Otherwise, false.
    wifi :: Prelude.Maybe Prelude.Bool,
    -- | True if Bluetooth is enabled at the beginning of the test. Otherwise,
    -- false.
    bluetooth :: Prelude.Maybe Prelude.Bool,
    -- | True if NFC is enabled at the beginning of the test. Otherwise, false.
    nfc :: Prelude.Maybe Prelude.Bool
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'Radios' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'gps', 'radios_gps' - True if GPS is enabled at the beginning of the test. Otherwise, false.
--
-- 'wifi', 'radios_wifi' - True if Wi-Fi is enabled at the beginning of the test. Otherwise, false.
--
-- 'bluetooth', 'radios_bluetooth' - True if Bluetooth is enabled at the beginning of the test. Otherwise,
-- false.
--
-- 'nfc', 'radios_nfc' - True if NFC is enabled at the beginning of the test. Otherwise, false.
newRadios ::
  Radios
newRadios =
  Radios'
    { gps = Prelude.Nothing,
      wifi = Prelude.Nothing,
      bluetooth = Prelude.Nothing,
      nfc = Prelude.Nothing
    }

-- | True if GPS is enabled at the beginning of the test. Otherwise, false.
radios_gps :: Lens.Lens' Radios (Prelude.Maybe Prelude.Bool)
radios_gps = Lens.lens (\Radios' {gps} -> gps) (\s@Radios' {} a -> s {gps = a} :: Radios)

-- | True if Wi-Fi is enabled at the beginning of the test. Otherwise, false.
radios_wifi :: Lens.Lens' Radios (Prelude.Maybe Prelude.Bool)
radios_wifi = Lens.lens (\Radios' {wifi} -> wifi) (\s@Radios' {} a -> s {wifi = a} :: Radios)

-- | True if Bluetooth is enabled at the beginning of the test. Otherwise,
-- false.
radios_bluetooth :: Lens.Lens' Radios (Prelude.Maybe Prelude.Bool)
radios_bluetooth = Lens.lens (\Radios' {bluetooth} -> bluetooth) (\s@Radios' {} a -> s {bluetooth = a} :: Radios)

-- | True if NFC is enabled at the beginning of the test. Otherwise, false.
radios_nfc :: Lens.Lens' Radios (Prelude.Maybe Prelude.Bool)
radios_nfc = Lens.lens (\Radios' {nfc} -> nfc) (\s@Radios' {} a -> s {nfc = a} :: Radios)

instance Core.FromJSON Radios where
  parseJSON =
    Core.withObject
      "Radios"
      ( \x ->
          Radios'
            Prelude.<$> (x Core..:? "gps")
            Prelude.<*> (x Core..:? "wifi")
            Prelude.<*> (x Core..:? "bluetooth")
            Prelude.<*> (x Core..:? "nfc")
      )

instance Prelude.Hashable Radios where
  hashWithSalt _salt Radios' {..} =
    _salt `Prelude.hashWithSalt` gps
      `Prelude.hashWithSalt` wifi
      `Prelude.hashWithSalt` bluetooth
      `Prelude.hashWithSalt` nfc

instance Prelude.NFData Radios where
  rnf Radios' {..} =
    Prelude.rnf gps
      `Prelude.seq` Prelude.rnf wifi
      `Prelude.seq` Prelude.rnf bluetooth
      `Prelude.seq` Prelude.rnf nfc

instance Core.ToJSON Radios where
  toJSON Radios' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("gps" Core..=) Prelude.<$> gps,
            ("wifi" Core..=) Prelude.<$> wifi,
            ("bluetooth" Core..=) Prelude.<$> bluetooth,
            ("nfc" Core..=) Prelude.<$> nfc
          ]
      )
