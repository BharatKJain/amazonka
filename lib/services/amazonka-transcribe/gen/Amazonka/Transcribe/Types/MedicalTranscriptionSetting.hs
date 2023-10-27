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
-- Module      : Amazonka.Transcribe.Types.MedicalTranscriptionSetting
-- Copyright   : (c) 2013-2023 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.Transcribe.Types.MedicalTranscriptionSetting where

import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude

-- | Allows additional optional settings in your request, including channel
-- identification, alternative transcriptions, and speaker partitioning.
-- You can use that to apply custom vocabularies to your medical
-- transcription job.
--
-- /See:/ 'newMedicalTranscriptionSetting' smart constructor.
data MedicalTranscriptionSetting = MedicalTranscriptionSetting'
  { -- | Enables channel identification in multi-channel audio.
    --
    -- Channel identification transcribes the audio on each channel
    -- independently, then appends the output for each channel into one
    -- transcript.
    --
    -- If you have multi-channel audio and do not enable channel
    -- identification, your audio is transcribed in a continuous manner and
    -- your transcript does not separate the speech by channel.
    --
    -- You can\'t include both @ShowSpeakerLabels@ and @ChannelIdentification@
    -- in the same request. Including both parameters returns a
    -- @BadRequestException@.
    --
    -- For more information, see
    -- <https://docs.aws.amazon.com/transcribe/latest/dg/channel-id.html Transcribing multi-channel audio>.
    channelIdentification :: Prelude.Maybe Prelude.Bool,
    -- | Indicate the maximum number of alternative transcriptions you want
    -- Amazon Transcribe Medical to include in your transcript.
    --
    -- If you select a number greater than the number of alternative
    -- transcriptions generated by Amazon Transcribe Medical, only the actual
    -- number of alternative transcriptions are included.
    --
    -- If you include @MaxAlternatives@ in your request, you must also include
    -- @ShowAlternatives@ with a value of @true@.
    --
    -- For more information, see
    -- <https://docs.aws.amazon.com/transcribe/latest/dg/how-alternatives.html Alternative transcriptions>.
    maxAlternatives :: Prelude.Maybe Prelude.Natural,
    -- | Specify the maximum number of speakers you want to partition in your
    -- media.
    --
    -- Note that if your media contains more speakers than the specified
    -- number, multiple speakers are treated as a single speaker.
    --
    -- If you specify the @MaxSpeakerLabels@ field, you must set the
    -- @ShowSpeakerLabels@ field to true.
    maxSpeakerLabels :: Prelude.Maybe Prelude.Natural,
    -- | To include alternative transcriptions within your transcription output,
    -- include @ShowAlternatives@ in your transcription request.
    --
    -- If you include @ShowAlternatives@, you must also include
    -- @MaxAlternatives@, which is the maximum number of alternative
    -- transcriptions you want Amazon Transcribe Medical to generate.
    --
    -- For more information, see
    -- <https://docs.aws.amazon.com/transcribe/latest/dg/how-alternatives.html Alternative transcriptions>.
    showAlternatives :: Prelude.Maybe Prelude.Bool,
    -- | Enables speaker partitioning (diarization) in your transcription output.
    -- Speaker partitioning labels the speech from individual speakers in your
    -- media file.
    --
    -- If you enable @ShowSpeakerLabels@ in your request, you must also include
    -- @MaxSpeakerLabels@.
    --
    -- You can\'t include @ShowSpeakerLabels@ and @ChannelIdentification@ in
    -- the same request. Including both parameters returns a
    -- @BadRequestException@.
    --
    -- For more information, see
    -- <https://docs.aws.amazon.com/transcribe/latest/dg/diarization.html Partitioning speakers (diarization)>.
    showSpeakerLabels :: Prelude.Maybe Prelude.Bool,
    -- | The name of the custom vocabulary you want to use when processing your
    -- medical transcription job. Custom vocabulary names are case sensitive.
    --
    -- The language of the specified custom vocabulary must match the language
    -- code that you specify in your transcription request. If the languages
    -- don\'t match, the custom vocabulary isn\'t applied. There are no errors
    -- or warnings associated with a language mismatch. US English (@en-US@) is
    -- the only valid language for Amazon Transcribe Medical.
    vocabularyName :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'MedicalTranscriptionSetting' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'channelIdentification', 'medicalTranscriptionSetting_channelIdentification' - Enables channel identification in multi-channel audio.
--
-- Channel identification transcribes the audio on each channel
-- independently, then appends the output for each channel into one
-- transcript.
--
-- If you have multi-channel audio and do not enable channel
-- identification, your audio is transcribed in a continuous manner and
-- your transcript does not separate the speech by channel.
--
-- You can\'t include both @ShowSpeakerLabels@ and @ChannelIdentification@
-- in the same request. Including both parameters returns a
-- @BadRequestException@.
--
-- For more information, see
-- <https://docs.aws.amazon.com/transcribe/latest/dg/channel-id.html Transcribing multi-channel audio>.
--
-- 'maxAlternatives', 'medicalTranscriptionSetting_maxAlternatives' - Indicate the maximum number of alternative transcriptions you want
-- Amazon Transcribe Medical to include in your transcript.
--
-- If you select a number greater than the number of alternative
-- transcriptions generated by Amazon Transcribe Medical, only the actual
-- number of alternative transcriptions are included.
--
-- If you include @MaxAlternatives@ in your request, you must also include
-- @ShowAlternatives@ with a value of @true@.
--
-- For more information, see
-- <https://docs.aws.amazon.com/transcribe/latest/dg/how-alternatives.html Alternative transcriptions>.
--
-- 'maxSpeakerLabels', 'medicalTranscriptionSetting_maxSpeakerLabels' - Specify the maximum number of speakers you want to partition in your
-- media.
--
-- Note that if your media contains more speakers than the specified
-- number, multiple speakers are treated as a single speaker.
--
-- If you specify the @MaxSpeakerLabels@ field, you must set the
-- @ShowSpeakerLabels@ field to true.
--
-- 'showAlternatives', 'medicalTranscriptionSetting_showAlternatives' - To include alternative transcriptions within your transcription output,
-- include @ShowAlternatives@ in your transcription request.
--
-- If you include @ShowAlternatives@, you must also include
-- @MaxAlternatives@, which is the maximum number of alternative
-- transcriptions you want Amazon Transcribe Medical to generate.
--
-- For more information, see
-- <https://docs.aws.amazon.com/transcribe/latest/dg/how-alternatives.html Alternative transcriptions>.
--
-- 'showSpeakerLabels', 'medicalTranscriptionSetting_showSpeakerLabels' - Enables speaker partitioning (diarization) in your transcription output.
-- Speaker partitioning labels the speech from individual speakers in your
-- media file.
--
-- If you enable @ShowSpeakerLabels@ in your request, you must also include
-- @MaxSpeakerLabels@.
--
-- You can\'t include @ShowSpeakerLabels@ and @ChannelIdentification@ in
-- the same request. Including both parameters returns a
-- @BadRequestException@.
--
-- For more information, see
-- <https://docs.aws.amazon.com/transcribe/latest/dg/diarization.html Partitioning speakers (diarization)>.
--
-- 'vocabularyName', 'medicalTranscriptionSetting_vocabularyName' - The name of the custom vocabulary you want to use when processing your
-- medical transcription job. Custom vocabulary names are case sensitive.
--
-- The language of the specified custom vocabulary must match the language
-- code that you specify in your transcription request. If the languages
-- don\'t match, the custom vocabulary isn\'t applied. There are no errors
-- or warnings associated with a language mismatch. US English (@en-US@) is
-- the only valid language for Amazon Transcribe Medical.
newMedicalTranscriptionSetting ::
  MedicalTranscriptionSetting
newMedicalTranscriptionSetting =
  MedicalTranscriptionSetting'
    { channelIdentification =
        Prelude.Nothing,
      maxAlternatives = Prelude.Nothing,
      maxSpeakerLabels = Prelude.Nothing,
      showAlternatives = Prelude.Nothing,
      showSpeakerLabels = Prelude.Nothing,
      vocabularyName = Prelude.Nothing
    }

-- | Enables channel identification in multi-channel audio.
--
-- Channel identification transcribes the audio on each channel
-- independently, then appends the output for each channel into one
-- transcript.
--
-- If you have multi-channel audio and do not enable channel
-- identification, your audio is transcribed in a continuous manner and
-- your transcript does not separate the speech by channel.
--
-- You can\'t include both @ShowSpeakerLabels@ and @ChannelIdentification@
-- in the same request. Including both parameters returns a
-- @BadRequestException@.
--
-- For more information, see
-- <https://docs.aws.amazon.com/transcribe/latest/dg/channel-id.html Transcribing multi-channel audio>.
medicalTranscriptionSetting_channelIdentification :: Lens.Lens' MedicalTranscriptionSetting (Prelude.Maybe Prelude.Bool)
medicalTranscriptionSetting_channelIdentification = Lens.lens (\MedicalTranscriptionSetting' {channelIdentification} -> channelIdentification) (\s@MedicalTranscriptionSetting' {} a -> s {channelIdentification = a} :: MedicalTranscriptionSetting)

-- | Indicate the maximum number of alternative transcriptions you want
-- Amazon Transcribe Medical to include in your transcript.
--
-- If you select a number greater than the number of alternative
-- transcriptions generated by Amazon Transcribe Medical, only the actual
-- number of alternative transcriptions are included.
--
-- If you include @MaxAlternatives@ in your request, you must also include
-- @ShowAlternatives@ with a value of @true@.
--
-- For more information, see
-- <https://docs.aws.amazon.com/transcribe/latest/dg/how-alternatives.html Alternative transcriptions>.
medicalTranscriptionSetting_maxAlternatives :: Lens.Lens' MedicalTranscriptionSetting (Prelude.Maybe Prelude.Natural)
medicalTranscriptionSetting_maxAlternatives = Lens.lens (\MedicalTranscriptionSetting' {maxAlternatives} -> maxAlternatives) (\s@MedicalTranscriptionSetting' {} a -> s {maxAlternatives = a} :: MedicalTranscriptionSetting)

-- | Specify the maximum number of speakers you want to partition in your
-- media.
--
-- Note that if your media contains more speakers than the specified
-- number, multiple speakers are treated as a single speaker.
--
-- If you specify the @MaxSpeakerLabels@ field, you must set the
-- @ShowSpeakerLabels@ field to true.
medicalTranscriptionSetting_maxSpeakerLabels :: Lens.Lens' MedicalTranscriptionSetting (Prelude.Maybe Prelude.Natural)
medicalTranscriptionSetting_maxSpeakerLabels = Lens.lens (\MedicalTranscriptionSetting' {maxSpeakerLabels} -> maxSpeakerLabels) (\s@MedicalTranscriptionSetting' {} a -> s {maxSpeakerLabels = a} :: MedicalTranscriptionSetting)

-- | To include alternative transcriptions within your transcription output,
-- include @ShowAlternatives@ in your transcription request.
--
-- If you include @ShowAlternatives@, you must also include
-- @MaxAlternatives@, which is the maximum number of alternative
-- transcriptions you want Amazon Transcribe Medical to generate.
--
-- For more information, see
-- <https://docs.aws.amazon.com/transcribe/latest/dg/how-alternatives.html Alternative transcriptions>.
medicalTranscriptionSetting_showAlternatives :: Lens.Lens' MedicalTranscriptionSetting (Prelude.Maybe Prelude.Bool)
medicalTranscriptionSetting_showAlternatives = Lens.lens (\MedicalTranscriptionSetting' {showAlternatives} -> showAlternatives) (\s@MedicalTranscriptionSetting' {} a -> s {showAlternatives = a} :: MedicalTranscriptionSetting)

-- | Enables speaker partitioning (diarization) in your transcription output.
-- Speaker partitioning labels the speech from individual speakers in your
-- media file.
--
-- If you enable @ShowSpeakerLabels@ in your request, you must also include
-- @MaxSpeakerLabels@.
--
-- You can\'t include @ShowSpeakerLabels@ and @ChannelIdentification@ in
-- the same request. Including both parameters returns a
-- @BadRequestException@.
--
-- For more information, see
-- <https://docs.aws.amazon.com/transcribe/latest/dg/diarization.html Partitioning speakers (diarization)>.
medicalTranscriptionSetting_showSpeakerLabels :: Lens.Lens' MedicalTranscriptionSetting (Prelude.Maybe Prelude.Bool)
medicalTranscriptionSetting_showSpeakerLabels = Lens.lens (\MedicalTranscriptionSetting' {showSpeakerLabels} -> showSpeakerLabels) (\s@MedicalTranscriptionSetting' {} a -> s {showSpeakerLabels = a} :: MedicalTranscriptionSetting)

-- | The name of the custom vocabulary you want to use when processing your
-- medical transcription job. Custom vocabulary names are case sensitive.
--
-- The language of the specified custom vocabulary must match the language
-- code that you specify in your transcription request. If the languages
-- don\'t match, the custom vocabulary isn\'t applied. There are no errors
-- or warnings associated with a language mismatch. US English (@en-US@) is
-- the only valid language for Amazon Transcribe Medical.
medicalTranscriptionSetting_vocabularyName :: Lens.Lens' MedicalTranscriptionSetting (Prelude.Maybe Prelude.Text)
medicalTranscriptionSetting_vocabularyName = Lens.lens (\MedicalTranscriptionSetting' {vocabularyName} -> vocabularyName) (\s@MedicalTranscriptionSetting' {} a -> s {vocabularyName = a} :: MedicalTranscriptionSetting)

instance Data.FromJSON MedicalTranscriptionSetting where
  parseJSON =
    Data.withObject
      "MedicalTranscriptionSetting"
      ( \x ->
          MedicalTranscriptionSetting'
            Prelude.<$> (x Data..:? "ChannelIdentification")
            Prelude.<*> (x Data..:? "MaxAlternatives")
            Prelude.<*> (x Data..:? "MaxSpeakerLabels")
            Prelude.<*> (x Data..:? "ShowAlternatives")
            Prelude.<*> (x Data..:? "ShowSpeakerLabels")
            Prelude.<*> (x Data..:? "VocabularyName")
      )

instance Prelude.Hashable MedicalTranscriptionSetting where
  hashWithSalt _salt MedicalTranscriptionSetting' {..} =
    _salt
      `Prelude.hashWithSalt` channelIdentification
      `Prelude.hashWithSalt` maxAlternatives
      `Prelude.hashWithSalt` maxSpeakerLabels
      `Prelude.hashWithSalt` showAlternatives
      `Prelude.hashWithSalt` showSpeakerLabels
      `Prelude.hashWithSalt` vocabularyName

instance Prelude.NFData MedicalTranscriptionSetting where
  rnf MedicalTranscriptionSetting' {..} =
    Prelude.rnf channelIdentification
      `Prelude.seq` Prelude.rnf maxAlternatives
      `Prelude.seq` Prelude.rnf maxSpeakerLabels
      `Prelude.seq` Prelude.rnf showAlternatives
      `Prelude.seq` Prelude.rnf showSpeakerLabels
      `Prelude.seq` Prelude.rnf vocabularyName

instance Data.ToJSON MedicalTranscriptionSetting where
  toJSON MedicalTranscriptionSetting' {..} =
    Data.object
      ( Prelude.catMaybes
          [ ("ChannelIdentification" Data..=)
              Prelude.<$> channelIdentification,
            ("MaxAlternatives" Data..=)
              Prelude.<$> maxAlternatives,
            ("MaxSpeakerLabels" Data..=)
              Prelude.<$> maxSpeakerLabels,
            ("ShowAlternatives" Data..=)
              Prelude.<$> showAlternatives,
            ("ShowSpeakerLabels" Data..=)
              Prelude.<$> showSpeakerLabels,
            ("VocabularyName" Data..=)
              Prelude.<$> vocabularyName
          ]
      )
