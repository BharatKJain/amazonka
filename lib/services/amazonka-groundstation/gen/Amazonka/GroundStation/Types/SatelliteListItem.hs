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
-- Module      : Amazonka.GroundStation.Types.SatelliteListItem
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.GroundStation.Types.SatelliteListItem where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | Item in a list of satellites.
--
-- /See:/ 'newSatelliteListItem' smart constructor.
data SatelliteListItem = SatelliteListItem'
  { -- | ARN of a satellite.
    satelliteArn :: Prelude.Maybe Prelude.Text,
    -- | UUID of a satellite.
    satelliteId :: Prelude.Maybe Prelude.Text,
    -- | NORAD satellite ID number.
    noradSatelliteID :: Prelude.Maybe Prelude.Natural,
    -- | A list of ground stations to which the satellite is on-boarded.
    groundStations :: Prelude.Maybe [Prelude.Text]
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'SatelliteListItem' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'satelliteArn', 'satelliteListItem_satelliteArn' - ARN of a satellite.
--
-- 'satelliteId', 'satelliteListItem_satelliteId' - UUID of a satellite.
--
-- 'noradSatelliteID', 'satelliteListItem_noradSatelliteID' - NORAD satellite ID number.
--
-- 'groundStations', 'satelliteListItem_groundStations' - A list of ground stations to which the satellite is on-boarded.
newSatelliteListItem ::
  SatelliteListItem
newSatelliteListItem =
  SatelliteListItem'
    { satelliteArn = Prelude.Nothing,
      satelliteId = Prelude.Nothing,
      noradSatelliteID = Prelude.Nothing,
      groundStations = Prelude.Nothing
    }

-- | ARN of a satellite.
satelliteListItem_satelliteArn :: Lens.Lens' SatelliteListItem (Prelude.Maybe Prelude.Text)
satelliteListItem_satelliteArn = Lens.lens (\SatelliteListItem' {satelliteArn} -> satelliteArn) (\s@SatelliteListItem' {} a -> s {satelliteArn = a} :: SatelliteListItem)

-- | UUID of a satellite.
satelliteListItem_satelliteId :: Lens.Lens' SatelliteListItem (Prelude.Maybe Prelude.Text)
satelliteListItem_satelliteId = Lens.lens (\SatelliteListItem' {satelliteId} -> satelliteId) (\s@SatelliteListItem' {} a -> s {satelliteId = a} :: SatelliteListItem)

-- | NORAD satellite ID number.
satelliteListItem_noradSatelliteID :: Lens.Lens' SatelliteListItem (Prelude.Maybe Prelude.Natural)
satelliteListItem_noradSatelliteID = Lens.lens (\SatelliteListItem' {noradSatelliteID} -> noradSatelliteID) (\s@SatelliteListItem' {} a -> s {noradSatelliteID = a} :: SatelliteListItem)

-- | A list of ground stations to which the satellite is on-boarded.
satelliteListItem_groundStations :: Lens.Lens' SatelliteListItem (Prelude.Maybe [Prelude.Text])
satelliteListItem_groundStations = Lens.lens (\SatelliteListItem' {groundStations} -> groundStations) (\s@SatelliteListItem' {} a -> s {groundStations = a} :: SatelliteListItem) Prelude.. Lens.mapping Lens.coerced

instance Core.FromJSON SatelliteListItem where
  parseJSON =
    Core.withObject
      "SatelliteListItem"
      ( \x ->
          SatelliteListItem'
            Prelude.<$> (x Core..:? "satelliteArn")
            Prelude.<*> (x Core..:? "satelliteId")
            Prelude.<*> (x Core..:? "noradSatelliteID")
            Prelude.<*> ( x Core..:? "groundStations"
                            Core..!= Prelude.mempty
                        )
      )

instance Prelude.Hashable SatelliteListItem where
  hashWithSalt _salt SatelliteListItem' {..} =
    _salt `Prelude.hashWithSalt` satelliteArn
      `Prelude.hashWithSalt` satelliteId
      `Prelude.hashWithSalt` noradSatelliteID
      `Prelude.hashWithSalt` groundStations

instance Prelude.NFData SatelliteListItem where
  rnf SatelliteListItem' {..} =
    Prelude.rnf satelliteArn
      `Prelude.seq` Prelude.rnf satelliteId
      `Prelude.seq` Prelude.rnf noradSatelliteID
      `Prelude.seq` Prelude.rnf groundStations
