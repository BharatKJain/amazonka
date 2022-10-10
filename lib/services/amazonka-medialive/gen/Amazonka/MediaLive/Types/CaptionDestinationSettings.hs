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
-- Module      : Amazonka.MediaLive.Types.CaptionDestinationSettings
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.MediaLive.Types.CaptionDestinationSettings where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import Amazonka.MediaLive.Types.AribDestinationSettings
import Amazonka.MediaLive.Types.BurnInDestinationSettings
import Amazonka.MediaLive.Types.DvbSubDestinationSettings
import Amazonka.MediaLive.Types.EbuTtDDestinationSettings
import Amazonka.MediaLive.Types.EmbeddedDestinationSettings
import Amazonka.MediaLive.Types.EmbeddedPlusScte20DestinationSettings
import Amazonka.MediaLive.Types.RtmpCaptionInfoDestinationSettings
import Amazonka.MediaLive.Types.Scte20PlusEmbeddedDestinationSettings
import Amazonka.MediaLive.Types.Scte27DestinationSettings
import Amazonka.MediaLive.Types.SmpteTtDestinationSettings
import Amazonka.MediaLive.Types.TeletextDestinationSettings
import Amazonka.MediaLive.Types.TtmlDestinationSettings
import Amazonka.MediaLive.Types.WebvttDestinationSettings
import qualified Amazonka.Prelude as Prelude

-- | Caption Destination Settings
--
-- /See:/ 'newCaptionDestinationSettings' smart constructor.
data CaptionDestinationSettings = CaptionDestinationSettings'
  { teletextDestinationSettings :: Prelude.Maybe TeletextDestinationSettings,
    embeddedPlusScte20DestinationSettings :: Prelude.Maybe EmbeddedPlusScte20DestinationSettings,
    scte20PlusEmbeddedDestinationSettings :: Prelude.Maybe Scte20PlusEmbeddedDestinationSettings,
    aribDestinationSettings :: Prelude.Maybe AribDestinationSettings,
    webvttDestinationSettings :: Prelude.Maybe WebvttDestinationSettings,
    ttmlDestinationSettings :: Prelude.Maybe TtmlDestinationSettings,
    embeddedDestinationSettings :: Prelude.Maybe EmbeddedDestinationSettings,
    smpteTtDestinationSettings :: Prelude.Maybe SmpteTtDestinationSettings,
    scte27DestinationSettings :: Prelude.Maybe Scte27DestinationSettings,
    burnInDestinationSettings :: Prelude.Maybe BurnInDestinationSettings,
    dvbSubDestinationSettings :: Prelude.Maybe DvbSubDestinationSettings,
    ebuTtDDestinationSettings :: Prelude.Maybe EbuTtDDestinationSettings,
    rtmpCaptionInfoDestinationSettings :: Prelude.Maybe RtmpCaptionInfoDestinationSettings
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CaptionDestinationSettings' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'teletextDestinationSettings', 'captionDestinationSettings_teletextDestinationSettings' - Undocumented member.
--
-- 'embeddedPlusScte20DestinationSettings', 'captionDestinationSettings_embeddedPlusScte20DestinationSettings' - Undocumented member.
--
-- 'scte20PlusEmbeddedDestinationSettings', 'captionDestinationSettings_scte20PlusEmbeddedDestinationSettings' - Undocumented member.
--
-- 'aribDestinationSettings', 'captionDestinationSettings_aribDestinationSettings' - Undocumented member.
--
-- 'webvttDestinationSettings', 'captionDestinationSettings_webvttDestinationSettings' - Undocumented member.
--
-- 'ttmlDestinationSettings', 'captionDestinationSettings_ttmlDestinationSettings' - Undocumented member.
--
-- 'embeddedDestinationSettings', 'captionDestinationSettings_embeddedDestinationSettings' - Undocumented member.
--
-- 'smpteTtDestinationSettings', 'captionDestinationSettings_smpteTtDestinationSettings' - Undocumented member.
--
-- 'scte27DestinationSettings', 'captionDestinationSettings_scte27DestinationSettings' - Undocumented member.
--
-- 'burnInDestinationSettings', 'captionDestinationSettings_burnInDestinationSettings' - Undocumented member.
--
-- 'dvbSubDestinationSettings', 'captionDestinationSettings_dvbSubDestinationSettings' - Undocumented member.
--
-- 'ebuTtDDestinationSettings', 'captionDestinationSettings_ebuTtDDestinationSettings' - Undocumented member.
--
-- 'rtmpCaptionInfoDestinationSettings', 'captionDestinationSettings_rtmpCaptionInfoDestinationSettings' - Undocumented member.
newCaptionDestinationSettings ::
  CaptionDestinationSettings
newCaptionDestinationSettings =
  CaptionDestinationSettings'
    { teletextDestinationSettings =
        Prelude.Nothing,
      embeddedPlusScte20DestinationSettings =
        Prelude.Nothing,
      scte20PlusEmbeddedDestinationSettings =
        Prelude.Nothing,
      aribDestinationSettings = Prelude.Nothing,
      webvttDestinationSettings = Prelude.Nothing,
      ttmlDestinationSettings = Prelude.Nothing,
      embeddedDestinationSettings = Prelude.Nothing,
      smpteTtDestinationSettings = Prelude.Nothing,
      scte27DestinationSettings = Prelude.Nothing,
      burnInDestinationSettings = Prelude.Nothing,
      dvbSubDestinationSettings = Prelude.Nothing,
      ebuTtDDestinationSettings = Prelude.Nothing,
      rtmpCaptionInfoDestinationSettings =
        Prelude.Nothing
    }

-- | Undocumented member.
captionDestinationSettings_teletextDestinationSettings :: Lens.Lens' CaptionDestinationSettings (Prelude.Maybe TeletextDestinationSettings)
captionDestinationSettings_teletextDestinationSettings = Lens.lens (\CaptionDestinationSettings' {teletextDestinationSettings} -> teletextDestinationSettings) (\s@CaptionDestinationSettings' {} a -> s {teletextDestinationSettings = a} :: CaptionDestinationSettings)

-- | Undocumented member.
captionDestinationSettings_embeddedPlusScte20DestinationSettings :: Lens.Lens' CaptionDestinationSettings (Prelude.Maybe EmbeddedPlusScte20DestinationSettings)
captionDestinationSettings_embeddedPlusScte20DestinationSettings = Lens.lens (\CaptionDestinationSettings' {embeddedPlusScte20DestinationSettings} -> embeddedPlusScte20DestinationSettings) (\s@CaptionDestinationSettings' {} a -> s {embeddedPlusScte20DestinationSettings = a} :: CaptionDestinationSettings)

-- | Undocumented member.
captionDestinationSettings_scte20PlusEmbeddedDestinationSettings :: Lens.Lens' CaptionDestinationSettings (Prelude.Maybe Scte20PlusEmbeddedDestinationSettings)
captionDestinationSettings_scte20PlusEmbeddedDestinationSettings = Lens.lens (\CaptionDestinationSettings' {scte20PlusEmbeddedDestinationSettings} -> scte20PlusEmbeddedDestinationSettings) (\s@CaptionDestinationSettings' {} a -> s {scte20PlusEmbeddedDestinationSettings = a} :: CaptionDestinationSettings)

-- | Undocumented member.
captionDestinationSettings_aribDestinationSettings :: Lens.Lens' CaptionDestinationSettings (Prelude.Maybe AribDestinationSettings)
captionDestinationSettings_aribDestinationSettings = Lens.lens (\CaptionDestinationSettings' {aribDestinationSettings} -> aribDestinationSettings) (\s@CaptionDestinationSettings' {} a -> s {aribDestinationSettings = a} :: CaptionDestinationSettings)

-- | Undocumented member.
captionDestinationSettings_webvttDestinationSettings :: Lens.Lens' CaptionDestinationSettings (Prelude.Maybe WebvttDestinationSettings)
captionDestinationSettings_webvttDestinationSettings = Lens.lens (\CaptionDestinationSettings' {webvttDestinationSettings} -> webvttDestinationSettings) (\s@CaptionDestinationSettings' {} a -> s {webvttDestinationSettings = a} :: CaptionDestinationSettings)

-- | Undocumented member.
captionDestinationSettings_ttmlDestinationSettings :: Lens.Lens' CaptionDestinationSettings (Prelude.Maybe TtmlDestinationSettings)
captionDestinationSettings_ttmlDestinationSettings = Lens.lens (\CaptionDestinationSettings' {ttmlDestinationSettings} -> ttmlDestinationSettings) (\s@CaptionDestinationSettings' {} a -> s {ttmlDestinationSettings = a} :: CaptionDestinationSettings)

-- | Undocumented member.
captionDestinationSettings_embeddedDestinationSettings :: Lens.Lens' CaptionDestinationSettings (Prelude.Maybe EmbeddedDestinationSettings)
captionDestinationSettings_embeddedDestinationSettings = Lens.lens (\CaptionDestinationSettings' {embeddedDestinationSettings} -> embeddedDestinationSettings) (\s@CaptionDestinationSettings' {} a -> s {embeddedDestinationSettings = a} :: CaptionDestinationSettings)

-- | Undocumented member.
captionDestinationSettings_smpteTtDestinationSettings :: Lens.Lens' CaptionDestinationSettings (Prelude.Maybe SmpteTtDestinationSettings)
captionDestinationSettings_smpteTtDestinationSettings = Lens.lens (\CaptionDestinationSettings' {smpteTtDestinationSettings} -> smpteTtDestinationSettings) (\s@CaptionDestinationSettings' {} a -> s {smpteTtDestinationSettings = a} :: CaptionDestinationSettings)

-- | Undocumented member.
captionDestinationSettings_scte27DestinationSettings :: Lens.Lens' CaptionDestinationSettings (Prelude.Maybe Scte27DestinationSettings)
captionDestinationSettings_scte27DestinationSettings = Lens.lens (\CaptionDestinationSettings' {scte27DestinationSettings} -> scte27DestinationSettings) (\s@CaptionDestinationSettings' {} a -> s {scte27DestinationSettings = a} :: CaptionDestinationSettings)

-- | Undocumented member.
captionDestinationSettings_burnInDestinationSettings :: Lens.Lens' CaptionDestinationSettings (Prelude.Maybe BurnInDestinationSettings)
captionDestinationSettings_burnInDestinationSettings = Lens.lens (\CaptionDestinationSettings' {burnInDestinationSettings} -> burnInDestinationSettings) (\s@CaptionDestinationSettings' {} a -> s {burnInDestinationSettings = a} :: CaptionDestinationSettings)

-- | Undocumented member.
captionDestinationSettings_dvbSubDestinationSettings :: Lens.Lens' CaptionDestinationSettings (Prelude.Maybe DvbSubDestinationSettings)
captionDestinationSettings_dvbSubDestinationSettings = Lens.lens (\CaptionDestinationSettings' {dvbSubDestinationSettings} -> dvbSubDestinationSettings) (\s@CaptionDestinationSettings' {} a -> s {dvbSubDestinationSettings = a} :: CaptionDestinationSettings)

-- | Undocumented member.
captionDestinationSettings_ebuTtDDestinationSettings :: Lens.Lens' CaptionDestinationSettings (Prelude.Maybe EbuTtDDestinationSettings)
captionDestinationSettings_ebuTtDDestinationSettings = Lens.lens (\CaptionDestinationSettings' {ebuTtDDestinationSettings} -> ebuTtDDestinationSettings) (\s@CaptionDestinationSettings' {} a -> s {ebuTtDDestinationSettings = a} :: CaptionDestinationSettings)

-- | Undocumented member.
captionDestinationSettings_rtmpCaptionInfoDestinationSettings :: Lens.Lens' CaptionDestinationSettings (Prelude.Maybe RtmpCaptionInfoDestinationSettings)
captionDestinationSettings_rtmpCaptionInfoDestinationSettings = Lens.lens (\CaptionDestinationSettings' {rtmpCaptionInfoDestinationSettings} -> rtmpCaptionInfoDestinationSettings) (\s@CaptionDestinationSettings' {} a -> s {rtmpCaptionInfoDestinationSettings = a} :: CaptionDestinationSettings)

instance Core.FromJSON CaptionDestinationSettings where
  parseJSON =
    Core.withObject
      "CaptionDestinationSettings"
      ( \x ->
          CaptionDestinationSettings'
            Prelude.<$> (x Core..:? "teletextDestinationSettings")
            Prelude.<*> (x Core..:? "embeddedPlusScte20DestinationSettings")
            Prelude.<*> (x Core..:? "scte20PlusEmbeddedDestinationSettings")
            Prelude.<*> (x Core..:? "aribDestinationSettings")
            Prelude.<*> (x Core..:? "webvttDestinationSettings")
            Prelude.<*> (x Core..:? "ttmlDestinationSettings")
            Prelude.<*> (x Core..:? "embeddedDestinationSettings")
            Prelude.<*> (x Core..:? "smpteTtDestinationSettings")
            Prelude.<*> (x Core..:? "scte27DestinationSettings")
            Prelude.<*> (x Core..:? "burnInDestinationSettings")
            Prelude.<*> (x Core..:? "dvbSubDestinationSettings")
            Prelude.<*> (x Core..:? "ebuTtDDestinationSettings")
            Prelude.<*> (x Core..:? "rtmpCaptionInfoDestinationSettings")
      )

instance Prelude.Hashable CaptionDestinationSettings where
  hashWithSalt _salt CaptionDestinationSettings' {..} =
    _salt
      `Prelude.hashWithSalt` teletextDestinationSettings
      `Prelude.hashWithSalt` embeddedPlusScte20DestinationSettings
      `Prelude.hashWithSalt` scte20PlusEmbeddedDestinationSettings
      `Prelude.hashWithSalt` aribDestinationSettings
      `Prelude.hashWithSalt` webvttDestinationSettings
      `Prelude.hashWithSalt` ttmlDestinationSettings
      `Prelude.hashWithSalt` embeddedDestinationSettings
      `Prelude.hashWithSalt` smpteTtDestinationSettings
      `Prelude.hashWithSalt` scte27DestinationSettings
      `Prelude.hashWithSalt` burnInDestinationSettings
      `Prelude.hashWithSalt` dvbSubDestinationSettings
      `Prelude.hashWithSalt` ebuTtDDestinationSettings
      `Prelude.hashWithSalt` rtmpCaptionInfoDestinationSettings

instance Prelude.NFData CaptionDestinationSettings where
  rnf CaptionDestinationSettings' {..} =
    Prelude.rnf teletextDestinationSettings
      `Prelude.seq` Prelude.rnf embeddedPlusScte20DestinationSettings
      `Prelude.seq` Prelude.rnf scte20PlusEmbeddedDestinationSettings
      `Prelude.seq` Prelude.rnf aribDestinationSettings
      `Prelude.seq` Prelude.rnf webvttDestinationSettings
      `Prelude.seq` Prelude.rnf ttmlDestinationSettings
      `Prelude.seq` Prelude.rnf embeddedDestinationSettings
      `Prelude.seq` Prelude.rnf smpteTtDestinationSettings
      `Prelude.seq` Prelude.rnf scte27DestinationSettings
      `Prelude.seq` Prelude.rnf burnInDestinationSettings
      `Prelude.seq` Prelude.rnf dvbSubDestinationSettings
      `Prelude.seq` Prelude.rnf ebuTtDDestinationSettings
      `Prelude.seq` Prelude.rnf
        rtmpCaptionInfoDestinationSettings

instance Core.ToJSON CaptionDestinationSettings where
  toJSON CaptionDestinationSettings' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("teletextDestinationSettings" Core..=)
              Prelude.<$> teletextDestinationSettings,
            ("embeddedPlusScte20DestinationSettings" Core..=)
              Prelude.<$> embeddedPlusScte20DestinationSettings,
            ("scte20PlusEmbeddedDestinationSettings" Core..=)
              Prelude.<$> scte20PlusEmbeddedDestinationSettings,
            ("aribDestinationSettings" Core..=)
              Prelude.<$> aribDestinationSettings,
            ("webvttDestinationSettings" Core..=)
              Prelude.<$> webvttDestinationSettings,
            ("ttmlDestinationSettings" Core..=)
              Prelude.<$> ttmlDestinationSettings,
            ("embeddedDestinationSettings" Core..=)
              Prelude.<$> embeddedDestinationSettings,
            ("smpteTtDestinationSettings" Core..=)
              Prelude.<$> smpteTtDestinationSettings,
            ("scte27DestinationSettings" Core..=)
              Prelude.<$> scte27DestinationSettings,
            ("burnInDestinationSettings" Core..=)
              Prelude.<$> burnInDestinationSettings,
            ("dvbSubDestinationSettings" Core..=)
              Prelude.<$> dvbSubDestinationSettings,
            ("ebuTtDDestinationSettings" Core..=)
              Prelude.<$> ebuTtDDestinationSettings,
            ("rtmpCaptionInfoDestinationSettings" Core..=)
              Prelude.<$> rtmpCaptionInfoDestinationSettings
          ]
      )
