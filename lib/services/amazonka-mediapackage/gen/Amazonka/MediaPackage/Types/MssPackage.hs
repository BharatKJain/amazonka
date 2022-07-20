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
-- Module      : Amazonka.MediaPackage.Types.MssPackage
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.MediaPackage.Types.MssPackage where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import Amazonka.MediaPackage.Types.MssEncryption
import Amazonka.MediaPackage.Types.StreamSelection
import qualified Amazonka.Prelude as Prelude

-- | A Microsoft Smooth Streaming (MSS) packaging configuration.
--
-- /See:/ 'newMssPackage' smart constructor.
data MssPackage = MssPackage'
  { streamSelection :: Prelude.Maybe StreamSelection,
    -- | The time window (in seconds) contained in each manifest.
    manifestWindowSeconds :: Prelude.Maybe Prelude.Int,
    -- | The duration (in seconds) of each segment.
    segmentDurationSeconds :: Prelude.Maybe Prelude.Int,
    encryption :: Prelude.Maybe MssEncryption
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'MssPackage' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'streamSelection', 'mssPackage_streamSelection' - Undocumented member.
--
-- 'manifestWindowSeconds', 'mssPackage_manifestWindowSeconds' - The time window (in seconds) contained in each manifest.
--
-- 'segmentDurationSeconds', 'mssPackage_segmentDurationSeconds' - The duration (in seconds) of each segment.
--
-- 'encryption', 'mssPackage_encryption' - Undocumented member.
newMssPackage ::
  MssPackage
newMssPackage =
  MssPackage'
    { streamSelection = Prelude.Nothing,
      manifestWindowSeconds = Prelude.Nothing,
      segmentDurationSeconds = Prelude.Nothing,
      encryption = Prelude.Nothing
    }

-- | Undocumented member.
mssPackage_streamSelection :: Lens.Lens' MssPackage (Prelude.Maybe StreamSelection)
mssPackage_streamSelection = Lens.lens (\MssPackage' {streamSelection} -> streamSelection) (\s@MssPackage' {} a -> s {streamSelection = a} :: MssPackage)

-- | The time window (in seconds) contained in each manifest.
mssPackage_manifestWindowSeconds :: Lens.Lens' MssPackage (Prelude.Maybe Prelude.Int)
mssPackage_manifestWindowSeconds = Lens.lens (\MssPackage' {manifestWindowSeconds} -> manifestWindowSeconds) (\s@MssPackage' {} a -> s {manifestWindowSeconds = a} :: MssPackage)

-- | The duration (in seconds) of each segment.
mssPackage_segmentDurationSeconds :: Lens.Lens' MssPackage (Prelude.Maybe Prelude.Int)
mssPackage_segmentDurationSeconds = Lens.lens (\MssPackage' {segmentDurationSeconds} -> segmentDurationSeconds) (\s@MssPackage' {} a -> s {segmentDurationSeconds = a} :: MssPackage)

-- | Undocumented member.
mssPackage_encryption :: Lens.Lens' MssPackage (Prelude.Maybe MssEncryption)
mssPackage_encryption = Lens.lens (\MssPackage' {encryption} -> encryption) (\s@MssPackage' {} a -> s {encryption = a} :: MssPackage)

instance Core.FromJSON MssPackage where
  parseJSON =
    Core.withObject
      "MssPackage"
      ( \x ->
          MssPackage'
            Prelude.<$> (x Core..:? "streamSelection")
            Prelude.<*> (x Core..:? "manifestWindowSeconds")
            Prelude.<*> (x Core..:? "segmentDurationSeconds")
            Prelude.<*> (x Core..:? "encryption")
      )

instance Prelude.Hashable MssPackage where
  hashWithSalt _salt MssPackage' {..} =
    _salt `Prelude.hashWithSalt` streamSelection
      `Prelude.hashWithSalt` manifestWindowSeconds
      `Prelude.hashWithSalt` segmentDurationSeconds
      `Prelude.hashWithSalt` encryption

instance Prelude.NFData MssPackage where
  rnf MssPackage' {..} =
    Prelude.rnf streamSelection
      `Prelude.seq` Prelude.rnf manifestWindowSeconds
      `Prelude.seq` Prelude.rnf segmentDurationSeconds
      `Prelude.seq` Prelude.rnf encryption

instance Core.ToJSON MssPackage where
  toJSON MssPackage' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("streamSelection" Core..=)
              Prelude.<$> streamSelection,
            ("manifestWindowSeconds" Core..=)
              Prelude.<$> manifestWindowSeconds,
            ("segmentDurationSeconds" Core..=)
              Prelude.<$> segmentDurationSeconds,
            ("encryption" Core..=) Prelude.<$> encryption
          ]
      )
