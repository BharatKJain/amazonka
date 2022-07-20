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
-- Module      : Amazonka.MediaConvert.Types.MsSmoothGroupSettings
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.MediaConvert.Types.MsSmoothGroupSettings where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import Amazonka.MediaConvert.Types.DestinationSettings
import Amazonka.MediaConvert.Types.MsSmoothAdditionalManifest
import Amazonka.MediaConvert.Types.MsSmoothAudioDeduplication
import Amazonka.MediaConvert.Types.MsSmoothEncryptionSettings
import Amazonka.MediaConvert.Types.MsSmoothFragmentLengthControl
import Amazonka.MediaConvert.Types.MsSmoothManifestEncoding
import qualified Amazonka.Prelude as Prelude

-- | Settings related to your Microsoft Smooth Streaming output package. For
-- more information, see
-- https:\/\/docs.aws.amazon.com\/mediaconvert\/latest\/ug\/outputs-file-ABR.html.
-- When you work directly in your JSON job specification, include this
-- object and any required children when you set Type, under
-- OutputGroupSettings, to MS_SMOOTH_GROUP_SETTINGS.
--
-- /See:/ 'newMsSmoothGroupSettings' smart constructor.
data MsSmoothGroupSettings = MsSmoothGroupSettings'
  { -- | Use Destination (Destination) to specify the S3 output location and the
    -- output filename base. Destination accepts format identifiers. If you do
    -- not specify the base filename in the URI, the service will use the
    -- filename of the input file. If your job has multiple inputs, the service
    -- uses the filename of the first input file.
    destination :: Prelude.Maybe Prelude.Text,
    -- | Specify how you want MediaConvert to determine the fragment length.
    -- Choose Exact (EXACT) to have the encoder use the exact length that you
    -- specify with the setting Fragment length (FragmentLength). This might
    -- result in extra I-frames. Choose Multiple of GOP (GOP_MULTIPLE) to have
    -- the encoder round up the segment lengths to match the next GOP boundary.
    fragmentLengthControl :: Prelude.Maybe MsSmoothFragmentLengthControl,
    -- | Specify how you want MediaConvert to determine the fragment length.
    -- Choose Exact (EXACT) to have the encoder use the exact length that you
    -- specify with the setting Fragment length (FragmentLength). This might
    -- result in extra I-frames. Choose Multiple of GOP (GOP_MULTIPLE) to have
    -- the encoder round up the segment lengths to match the next GOP boundary.
    fragmentLength :: Prelude.Maybe Prelude.Natural,
    -- | COMBINE_DUPLICATE_STREAMS combines identical audio encoding settings
    -- across a Microsoft Smooth output group into a single audio stream.
    audioDeduplication :: Prelude.Maybe MsSmoothAudioDeduplication,
    -- | If you are using DRM, set DRM System (MsSmoothEncryptionSettings) to
    -- specify the value SpekeKeyProvider.
    encryption :: Prelude.Maybe MsSmoothEncryptionSettings,
    -- | By default, the service creates one .ism Microsoft Smooth Streaming
    -- manifest for each Microsoft Smooth Streaming output group in your job.
    -- This default manifest references every output in the output group. To
    -- create additional manifests that reference a subset of the outputs in
    -- the output group, specify a list of them here.
    additionalManifests :: Prelude.Maybe [MsSmoothAdditionalManifest],
    -- | Use Manifest encoding (MsSmoothManifestEncoding) to specify the encoding
    -- format for the server and client manifest. Valid options are utf8 and
    -- utf16.
    manifestEncoding :: Prelude.Maybe MsSmoothManifestEncoding,
    -- | Settings associated with the destination. Will vary based on the type of
    -- destination
    destinationSettings :: Prelude.Maybe DestinationSettings
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'MsSmoothGroupSettings' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'destination', 'msSmoothGroupSettings_destination' - Use Destination (Destination) to specify the S3 output location and the
-- output filename base. Destination accepts format identifiers. If you do
-- not specify the base filename in the URI, the service will use the
-- filename of the input file. If your job has multiple inputs, the service
-- uses the filename of the first input file.
--
-- 'fragmentLengthControl', 'msSmoothGroupSettings_fragmentLengthControl' - Specify how you want MediaConvert to determine the fragment length.
-- Choose Exact (EXACT) to have the encoder use the exact length that you
-- specify with the setting Fragment length (FragmentLength). This might
-- result in extra I-frames. Choose Multiple of GOP (GOP_MULTIPLE) to have
-- the encoder round up the segment lengths to match the next GOP boundary.
--
-- 'fragmentLength', 'msSmoothGroupSettings_fragmentLength' - Specify how you want MediaConvert to determine the fragment length.
-- Choose Exact (EXACT) to have the encoder use the exact length that you
-- specify with the setting Fragment length (FragmentLength). This might
-- result in extra I-frames. Choose Multiple of GOP (GOP_MULTIPLE) to have
-- the encoder round up the segment lengths to match the next GOP boundary.
--
-- 'audioDeduplication', 'msSmoothGroupSettings_audioDeduplication' - COMBINE_DUPLICATE_STREAMS combines identical audio encoding settings
-- across a Microsoft Smooth output group into a single audio stream.
--
-- 'encryption', 'msSmoothGroupSettings_encryption' - If you are using DRM, set DRM System (MsSmoothEncryptionSettings) to
-- specify the value SpekeKeyProvider.
--
-- 'additionalManifests', 'msSmoothGroupSettings_additionalManifests' - By default, the service creates one .ism Microsoft Smooth Streaming
-- manifest for each Microsoft Smooth Streaming output group in your job.
-- This default manifest references every output in the output group. To
-- create additional manifests that reference a subset of the outputs in
-- the output group, specify a list of them here.
--
-- 'manifestEncoding', 'msSmoothGroupSettings_manifestEncoding' - Use Manifest encoding (MsSmoothManifestEncoding) to specify the encoding
-- format for the server and client manifest. Valid options are utf8 and
-- utf16.
--
-- 'destinationSettings', 'msSmoothGroupSettings_destinationSettings' - Settings associated with the destination. Will vary based on the type of
-- destination
newMsSmoothGroupSettings ::
  MsSmoothGroupSettings
newMsSmoothGroupSettings =
  MsSmoothGroupSettings'
    { destination =
        Prelude.Nothing,
      fragmentLengthControl = Prelude.Nothing,
      fragmentLength = Prelude.Nothing,
      audioDeduplication = Prelude.Nothing,
      encryption = Prelude.Nothing,
      additionalManifests = Prelude.Nothing,
      manifestEncoding = Prelude.Nothing,
      destinationSettings = Prelude.Nothing
    }

-- | Use Destination (Destination) to specify the S3 output location and the
-- output filename base. Destination accepts format identifiers. If you do
-- not specify the base filename in the URI, the service will use the
-- filename of the input file. If your job has multiple inputs, the service
-- uses the filename of the first input file.
msSmoothGroupSettings_destination :: Lens.Lens' MsSmoothGroupSettings (Prelude.Maybe Prelude.Text)
msSmoothGroupSettings_destination = Lens.lens (\MsSmoothGroupSettings' {destination} -> destination) (\s@MsSmoothGroupSettings' {} a -> s {destination = a} :: MsSmoothGroupSettings)

-- | Specify how you want MediaConvert to determine the fragment length.
-- Choose Exact (EXACT) to have the encoder use the exact length that you
-- specify with the setting Fragment length (FragmentLength). This might
-- result in extra I-frames. Choose Multiple of GOP (GOP_MULTIPLE) to have
-- the encoder round up the segment lengths to match the next GOP boundary.
msSmoothGroupSettings_fragmentLengthControl :: Lens.Lens' MsSmoothGroupSettings (Prelude.Maybe MsSmoothFragmentLengthControl)
msSmoothGroupSettings_fragmentLengthControl = Lens.lens (\MsSmoothGroupSettings' {fragmentLengthControl} -> fragmentLengthControl) (\s@MsSmoothGroupSettings' {} a -> s {fragmentLengthControl = a} :: MsSmoothGroupSettings)

-- | Specify how you want MediaConvert to determine the fragment length.
-- Choose Exact (EXACT) to have the encoder use the exact length that you
-- specify with the setting Fragment length (FragmentLength). This might
-- result in extra I-frames. Choose Multiple of GOP (GOP_MULTIPLE) to have
-- the encoder round up the segment lengths to match the next GOP boundary.
msSmoothGroupSettings_fragmentLength :: Lens.Lens' MsSmoothGroupSettings (Prelude.Maybe Prelude.Natural)
msSmoothGroupSettings_fragmentLength = Lens.lens (\MsSmoothGroupSettings' {fragmentLength} -> fragmentLength) (\s@MsSmoothGroupSettings' {} a -> s {fragmentLength = a} :: MsSmoothGroupSettings)

-- | COMBINE_DUPLICATE_STREAMS combines identical audio encoding settings
-- across a Microsoft Smooth output group into a single audio stream.
msSmoothGroupSettings_audioDeduplication :: Lens.Lens' MsSmoothGroupSettings (Prelude.Maybe MsSmoothAudioDeduplication)
msSmoothGroupSettings_audioDeduplication = Lens.lens (\MsSmoothGroupSettings' {audioDeduplication} -> audioDeduplication) (\s@MsSmoothGroupSettings' {} a -> s {audioDeduplication = a} :: MsSmoothGroupSettings)

-- | If you are using DRM, set DRM System (MsSmoothEncryptionSettings) to
-- specify the value SpekeKeyProvider.
msSmoothGroupSettings_encryption :: Lens.Lens' MsSmoothGroupSettings (Prelude.Maybe MsSmoothEncryptionSettings)
msSmoothGroupSettings_encryption = Lens.lens (\MsSmoothGroupSettings' {encryption} -> encryption) (\s@MsSmoothGroupSettings' {} a -> s {encryption = a} :: MsSmoothGroupSettings)

-- | By default, the service creates one .ism Microsoft Smooth Streaming
-- manifest for each Microsoft Smooth Streaming output group in your job.
-- This default manifest references every output in the output group. To
-- create additional manifests that reference a subset of the outputs in
-- the output group, specify a list of them here.
msSmoothGroupSettings_additionalManifests :: Lens.Lens' MsSmoothGroupSettings (Prelude.Maybe [MsSmoothAdditionalManifest])
msSmoothGroupSettings_additionalManifests = Lens.lens (\MsSmoothGroupSettings' {additionalManifests} -> additionalManifests) (\s@MsSmoothGroupSettings' {} a -> s {additionalManifests = a} :: MsSmoothGroupSettings) Prelude.. Lens.mapping Lens.coerced

-- | Use Manifest encoding (MsSmoothManifestEncoding) to specify the encoding
-- format for the server and client manifest. Valid options are utf8 and
-- utf16.
msSmoothGroupSettings_manifestEncoding :: Lens.Lens' MsSmoothGroupSettings (Prelude.Maybe MsSmoothManifestEncoding)
msSmoothGroupSettings_manifestEncoding = Lens.lens (\MsSmoothGroupSettings' {manifestEncoding} -> manifestEncoding) (\s@MsSmoothGroupSettings' {} a -> s {manifestEncoding = a} :: MsSmoothGroupSettings)

-- | Settings associated with the destination. Will vary based on the type of
-- destination
msSmoothGroupSettings_destinationSettings :: Lens.Lens' MsSmoothGroupSettings (Prelude.Maybe DestinationSettings)
msSmoothGroupSettings_destinationSettings = Lens.lens (\MsSmoothGroupSettings' {destinationSettings} -> destinationSettings) (\s@MsSmoothGroupSettings' {} a -> s {destinationSettings = a} :: MsSmoothGroupSettings)

instance Core.FromJSON MsSmoothGroupSettings where
  parseJSON =
    Core.withObject
      "MsSmoothGroupSettings"
      ( \x ->
          MsSmoothGroupSettings'
            Prelude.<$> (x Core..:? "destination")
            Prelude.<*> (x Core..:? "fragmentLengthControl")
            Prelude.<*> (x Core..:? "fragmentLength")
            Prelude.<*> (x Core..:? "audioDeduplication")
            Prelude.<*> (x Core..:? "encryption")
            Prelude.<*> ( x Core..:? "additionalManifests"
                            Core..!= Prelude.mempty
                        )
            Prelude.<*> (x Core..:? "manifestEncoding")
            Prelude.<*> (x Core..:? "destinationSettings")
      )

instance Prelude.Hashable MsSmoothGroupSettings where
  hashWithSalt _salt MsSmoothGroupSettings' {..} =
    _salt `Prelude.hashWithSalt` destination
      `Prelude.hashWithSalt` fragmentLengthControl
      `Prelude.hashWithSalt` fragmentLength
      `Prelude.hashWithSalt` audioDeduplication
      `Prelude.hashWithSalt` encryption
      `Prelude.hashWithSalt` additionalManifests
      `Prelude.hashWithSalt` manifestEncoding
      `Prelude.hashWithSalt` destinationSettings

instance Prelude.NFData MsSmoothGroupSettings where
  rnf MsSmoothGroupSettings' {..} =
    Prelude.rnf destination
      `Prelude.seq` Prelude.rnf fragmentLengthControl
      `Prelude.seq` Prelude.rnf fragmentLength
      `Prelude.seq` Prelude.rnf audioDeduplication
      `Prelude.seq` Prelude.rnf encryption
      `Prelude.seq` Prelude.rnf additionalManifests
      `Prelude.seq` Prelude.rnf manifestEncoding
      `Prelude.seq` Prelude.rnf destinationSettings

instance Core.ToJSON MsSmoothGroupSettings where
  toJSON MsSmoothGroupSettings' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("destination" Core..=) Prelude.<$> destination,
            ("fragmentLengthControl" Core..=)
              Prelude.<$> fragmentLengthControl,
            ("fragmentLength" Core..=)
              Prelude.<$> fragmentLength,
            ("audioDeduplication" Core..=)
              Prelude.<$> audioDeduplication,
            ("encryption" Core..=) Prelude.<$> encryption,
            ("additionalManifests" Core..=)
              Prelude.<$> additionalManifests,
            ("manifestEncoding" Core..=)
              Prelude.<$> manifestEncoding,
            ("destinationSettings" Core..=)
              Prelude.<$> destinationSettings
          ]
      )
