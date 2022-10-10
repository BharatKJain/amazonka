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
-- Module      : Amazonka.Transcribe.Types.TranscriptionJobSummary
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.Transcribe.Types.TranscriptionJobSummary where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import Amazonka.Transcribe.Types.ContentRedaction
import Amazonka.Transcribe.Types.LanguageCode
import Amazonka.Transcribe.Types.LanguageCodeItem
import Amazonka.Transcribe.Types.ModelSettings
import Amazonka.Transcribe.Types.OutputLocationType
import Amazonka.Transcribe.Types.TranscriptionJobStatus

-- | Provides detailed information about a specific transcription job.
--
-- /See:/ 'newTranscriptionJobSummary' smart constructor.
data TranscriptionJobSummary = TranscriptionJobSummary'
  { -- | Indicates whether automatic multi-language identification was enabled
    -- (@TRUE@) for the specified transcription job.
    identifyMultipleLanguages :: Prelude.Maybe Prelude.Bool,
    -- | Indicates whether automatic language identification was enabled (@TRUE@)
    -- for the specified transcription job.
    identifyLanguage :: Prelude.Maybe Prelude.Bool,
    -- | The content redaction settings of the transcription job.
    contentRedaction :: Prelude.Maybe ContentRedaction,
    -- | The name of the transcription job. Job names are case sensitive and must
    -- be unique within an Amazon Web Services account.
    transcriptionJobName :: Prelude.Maybe Prelude.Text,
    -- | The date and time the specified transcription job finished processing.
    --
    -- Timestamps are in the format @YYYY-MM-DD\'T\'HH:MM:SS.SSSSSS-UTC@. For
    -- example, @2022-05-04T12:33:13.922000-07:00@ represents a transcription
    -- job that started processing at 12:33 PM UTC-7 on May 4, 2022.
    completionTime :: Prelude.Maybe Core.POSIX,
    -- | Indicates where the specified transcription output is stored.
    --
    -- If the value is @CUSTOMER_BUCKET@, the location is the Amazon S3 bucket
    -- you specified using the @OutputBucketName@ parameter in your request. If
    -- you also included @OutputKey@ in your request, your output is located in
    -- the path you specified in your request.
    --
    -- If the value is @SERVICE_BUCKET@, the location is a service-managed
    -- Amazon S3 bucket. To access a transcript stored in a service-managed
    -- bucket, use the URI shown in the @TranscriptFileUri@ or
    -- @RedactedTranscriptFileUri@ field.
    outputLocationType :: Prelude.Maybe OutputLocationType,
    -- | The language code used to create your transcription.
    languageCode :: Prelude.Maybe LanguageCode,
    -- | Provides the status of your transcription job.
    --
    -- If the status is @COMPLETED@, the job is finished and you can find the
    -- results at the location specified in @TranscriptFileUri@ (or
    -- @RedactedTranscriptFileUri@, if you requested transcript redaction). If
    -- the status is @FAILED@, @FailureReason@ provides details on why your
    -- transcription job failed.
    transcriptionJobStatus :: Prelude.Maybe TranscriptionJobStatus,
    -- | The date and time the specified transcription job request was made.
    --
    -- Timestamps are in the format @YYYY-MM-DD\'T\'HH:MM:SS.SSSSSS-UTC@. For
    -- example, @2022-05-04T12:32:58.761000-07:00@ represents a transcription
    -- job that started processing at 12:32 PM UTC-7 on May 4, 2022.
    creationTime :: Prelude.Maybe Core.POSIX,
    modelSettings :: Prelude.Maybe ModelSettings,
    -- | The confidence score associated with the language identified in your
    -- media file.
    --
    -- Confidence scores are values between 0 and 1; a larger value indicates a
    -- higher probability that the identified language correctly matches the
    -- language spoken in your media.
    identifiedLanguageScore :: Prelude.Maybe Prelude.Double,
    -- | The date and time your transcription job began processing.
    --
    -- Timestamps are in the format @YYYY-MM-DD\'T\'HH:MM:SS.SSSSSS-UTC@. For
    -- example, @2022-05-04T12:32:58.789000-07:00@ represents a transcription
    -- job that started processing at 12:32 PM UTC-7 on May 4, 2022.
    startTime :: Prelude.Maybe Core.POSIX,
    -- | If @TranscriptionJobStatus@ is @FAILED@, @FailureReason@ contains
    -- information about why the transcription job failed. See also:
    -- <https://docs.aws.amazon.com/transcribe/latest/APIReference/CommonErrors.html Common Errors>.
    failureReason :: Prelude.Maybe Prelude.Text,
    -- | The language codes used to create your transcription job. This parameter
    -- is used with multi-language identification. For single-language
    -- identification, the singular version of this parameter, @LanguageCode@,
    -- is present.
    languageCodes :: Prelude.Maybe [LanguageCodeItem]
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'TranscriptionJobSummary' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'identifyMultipleLanguages', 'transcriptionJobSummary_identifyMultipleLanguages' - Indicates whether automatic multi-language identification was enabled
-- (@TRUE@) for the specified transcription job.
--
-- 'identifyLanguage', 'transcriptionJobSummary_identifyLanguage' - Indicates whether automatic language identification was enabled (@TRUE@)
-- for the specified transcription job.
--
-- 'contentRedaction', 'transcriptionJobSummary_contentRedaction' - The content redaction settings of the transcription job.
--
-- 'transcriptionJobName', 'transcriptionJobSummary_transcriptionJobName' - The name of the transcription job. Job names are case sensitive and must
-- be unique within an Amazon Web Services account.
--
-- 'completionTime', 'transcriptionJobSummary_completionTime' - The date and time the specified transcription job finished processing.
--
-- Timestamps are in the format @YYYY-MM-DD\'T\'HH:MM:SS.SSSSSS-UTC@. For
-- example, @2022-05-04T12:33:13.922000-07:00@ represents a transcription
-- job that started processing at 12:33 PM UTC-7 on May 4, 2022.
--
-- 'outputLocationType', 'transcriptionJobSummary_outputLocationType' - Indicates where the specified transcription output is stored.
--
-- If the value is @CUSTOMER_BUCKET@, the location is the Amazon S3 bucket
-- you specified using the @OutputBucketName@ parameter in your request. If
-- you also included @OutputKey@ in your request, your output is located in
-- the path you specified in your request.
--
-- If the value is @SERVICE_BUCKET@, the location is a service-managed
-- Amazon S3 bucket. To access a transcript stored in a service-managed
-- bucket, use the URI shown in the @TranscriptFileUri@ or
-- @RedactedTranscriptFileUri@ field.
--
-- 'languageCode', 'transcriptionJobSummary_languageCode' - The language code used to create your transcription.
--
-- 'transcriptionJobStatus', 'transcriptionJobSummary_transcriptionJobStatus' - Provides the status of your transcription job.
--
-- If the status is @COMPLETED@, the job is finished and you can find the
-- results at the location specified in @TranscriptFileUri@ (or
-- @RedactedTranscriptFileUri@, if you requested transcript redaction). If
-- the status is @FAILED@, @FailureReason@ provides details on why your
-- transcription job failed.
--
-- 'creationTime', 'transcriptionJobSummary_creationTime' - The date and time the specified transcription job request was made.
--
-- Timestamps are in the format @YYYY-MM-DD\'T\'HH:MM:SS.SSSSSS-UTC@. For
-- example, @2022-05-04T12:32:58.761000-07:00@ represents a transcription
-- job that started processing at 12:32 PM UTC-7 on May 4, 2022.
--
-- 'modelSettings', 'transcriptionJobSummary_modelSettings' - Undocumented member.
--
-- 'identifiedLanguageScore', 'transcriptionJobSummary_identifiedLanguageScore' - The confidence score associated with the language identified in your
-- media file.
--
-- Confidence scores are values between 0 and 1; a larger value indicates a
-- higher probability that the identified language correctly matches the
-- language spoken in your media.
--
-- 'startTime', 'transcriptionJobSummary_startTime' - The date and time your transcription job began processing.
--
-- Timestamps are in the format @YYYY-MM-DD\'T\'HH:MM:SS.SSSSSS-UTC@. For
-- example, @2022-05-04T12:32:58.789000-07:00@ represents a transcription
-- job that started processing at 12:32 PM UTC-7 on May 4, 2022.
--
-- 'failureReason', 'transcriptionJobSummary_failureReason' - If @TranscriptionJobStatus@ is @FAILED@, @FailureReason@ contains
-- information about why the transcription job failed. See also:
-- <https://docs.aws.amazon.com/transcribe/latest/APIReference/CommonErrors.html Common Errors>.
--
-- 'languageCodes', 'transcriptionJobSummary_languageCodes' - The language codes used to create your transcription job. This parameter
-- is used with multi-language identification. For single-language
-- identification, the singular version of this parameter, @LanguageCode@,
-- is present.
newTranscriptionJobSummary ::
  TranscriptionJobSummary
newTranscriptionJobSummary =
  TranscriptionJobSummary'
    { identifyMultipleLanguages =
        Prelude.Nothing,
      identifyLanguage = Prelude.Nothing,
      contentRedaction = Prelude.Nothing,
      transcriptionJobName = Prelude.Nothing,
      completionTime = Prelude.Nothing,
      outputLocationType = Prelude.Nothing,
      languageCode = Prelude.Nothing,
      transcriptionJobStatus = Prelude.Nothing,
      creationTime = Prelude.Nothing,
      modelSettings = Prelude.Nothing,
      identifiedLanguageScore = Prelude.Nothing,
      startTime = Prelude.Nothing,
      failureReason = Prelude.Nothing,
      languageCodes = Prelude.Nothing
    }

-- | Indicates whether automatic multi-language identification was enabled
-- (@TRUE@) for the specified transcription job.
transcriptionJobSummary_identifyMultipleLanguages :: Lens.Lens' TranscriptionJobSummary (Prelude.Maybe Prelude.Bool)
transcriptionJobSummary_identifyMultipleLanguages = Lens.lens (\TranscriptionJobSummary' {identifyMultipleLanguages} -> identifyMultipleLanguages) (\s@TranscriptionJobSummary' {} a -> s {identifyMultipleLanguages = a} :: TranscriptionJobSummary)

-- | Indicates whether automatic language identification was enabled (@TRUE@)
-- for the specified transcription job.
transcriptionJobSummary_identifyLanguage :: Lens.Lens' TranscriptionJobSummary (Prelude.Maybe Prelude.Bool)
transcriptionJobSummary_identifyLanguage = Lens.lens (\TranscriptionJobSummary' {identifyLanguage} -> identifyLanguage) (\s@TranscriptionJobSummary' {} a -> s {identifyLanguage = a} :: TranscriptionJobSummary)

-- | The content redaction settings of the transcription job.
transcriptionJobSummary_contentRedaction :: Lens.Lens' TranscriptionJobSummary (Prelude.Maybe ContentRedaction)
transcriptionJobSummary_contentRedaction = Lens.lens (\TranscriptionJobSummary' {contentRedaction} -> contentRedaction) (\s@TranscriptionJobSummary' {} a -> s {contentRedaction = a} :: TranscriptionJobSummary)

-- | The name of the transcription job. Job names are case sensitive and must
-- be unique within an Amazon Web Services account.
transcriptionJobSummary_transcriptionJobName :: Lens.Lens' TranscriptionJobSummary (Prelude.Maybe Prelude.Text)
transcriptionJobSummary_transcriptionJobName = Lens.lens (\TranscriptionJobSummary' {transcriptionJobName} -> transcriptionJobName) (\s@TranscriptionJobSummary' {} a -> s {transcriptionJobName = a} :: TranscriptionJobSummary)

-- | The date and time the specified transcription job finished processing.
--
-- Timestamps are in the format @YYYY-MM-DD\'T\'HH:MM:SS.SSSSSS-UTC@. For
-- example, @2022-05-04T12:33:13.922000-07:00@ represents a transcription
-- job that started processing at 12:33 PM UTC-7 on May 4, 2022.
transcriptionJobSummary_completionTime :: Lens.Lens' TranscriptionJobSummary (Prelude.Maybe Prelude.UTCTime)
transcriptionJobSummary_completionTime = Lens.lens (\TranscriptionJobSummary' {completionTime} -> completionTime) (\s@TranscriptionJobSummary' {} a -> s {completionTime = a} :: TranscriptionJobSummary) Prelude.. Lens.mapping Core._Time

-- | Indicates where the specified transcription output is stored.
--
-- If the value is @CUSTOMER_BUCKET@, the location is the Amazon S3 bucket
-- you specified using the @OutputBucketName@ parameter in your request. If
-- you also included @OutputKey@ in your request, your output is located in
-- the path you specified in your request.
--
-- If the value is @SERVICE_BUCKET@, the location is a service-managed
-- Amazon S3 bucket. To access a transcript stored in a service-managed
-- bucket, use the URI shown in the @TranscriptFileUri@ or
-- @RedactedTranscriptFileUri@ field.
transcriptionJobSummary_outputLocationType :: Lens.Lens' TranscriptionJobSummary (Prelude.Maybe OutputLocationType)
transcriptionJobSummary_outputLocationType = Lens.lens (\TranscriptionJobSummary' {outputLocationType} -> outputLocationType) (\s@TranscriptionJobSummary' {} a -> s {outputLocationType = a} :: TranscriptionJobSummary)

-- | The language code used to create your transcription.
transcriptionJobSummary_languageCode :: Lens.Lens' TranscriptionJobSummary (Prelude.Maybe LanguageCode)
transcriptionJobSummary_languageCode = Lens.lens (\TranscriptionJobSummary' {languageCode} -> languageCode) (\s@TranscriptionJobSummary' {} a -> s {languageCode = a} :: TranscriptionJobSummary)

-- | Provides the status of your transcription job.
--
-- If the status is @COMPLETED@, the job is finished and you can find the
-- results at the location specified in @TranscriptFileUri@ (or
-- @RedactedTranscriptFileUri@, if you requested transcript redaction). If
-- the status is @FAILED@, @FailureReason@ provides details on why your
-- transcription job failed.
transcriptionJobSummary_transcriptionJobStatus :: Lens.Lens' TranscriptionJobSummary (Prelude.Maybe TranscriptionJobStatus)
transcriptionJobSummary_transcriptionJobStatus = Lens.lens (\TranscriptionJobSummary' {transcriptionJobStatus} -> transcriptionJobStatus) (\s@TranscriptionJobSummary' {} a -> s {transcriptionJobStatus = a} :: TranscriptionJobSummary)

-- | The date and time the specified transcription job request was made.
--
-- Timestamps are in the format @YYYY-MM-DD\'T\'HH:MM:SS.SSSSSS-UTC@. For
-- example, @2022-05-04T12:32:58.761000-07:00@ represents a transcription
-- job that started processing at 12:32 PM UTC-7 on May 4, 2022.
transcriptionJobSummary_creationTime :: Lens.Lens' TranscriptionJobSummary (Prelude.Maybe Prelude.UTCTime)
transcriptionJobSummary_creationTime = Lens.lens (\TranscriptionJobSummary' {creationTime} -> creationTime) (\s@TranscriptionJobSummary' {} a -> s {creationTime = a} :: TranscriptionJobSummary) Prelude.. Lens.mapping Core._Time

-- | Undocumented member.
transcriptionJobSummary_modelSettings :: Lens.Lens' TranscriptionJobSummary (Prelude.Maybe ModelSettings)
transcriptionJobSummary_modelSettings = Lens.lens (\TranscriptionJobSummary' {modelSettings} -> modelSettings) (\s@TranscriptionJobSummary' {} a -> s {modelSettings = a} :: TranscriptionJobSummary)

-- | The confidence score associated with the language identified in your
-- media file.
--
-- Confidence scores are values between 0 and 1; a larger value indicates a
-- higher probability that the identified language correctly matches the
-- language spoken in your media.
transcriptionJobSummary_identifiedLanguageScore :: Lens.Lens' TranscriptionJobSummary (Prelude.Maybe Prelude.Double)
transcriptionJobSummary_identifiedLanguageScore = Lens.lens (\TranscriptionJobSummary' {identifiedLanguageScore} -> identifiedLanguageScore) (\s@TranscriptionJobSummary' {} a -> s {identifiedLanguageScore = a} :: TranscriptionJobSummary)

-- | The date and time your transcription job began processing.
--
-- Timestamps are in the format @YYYY-MM-DD\'T\'HH:MM:SS.SSSSSS-UTC@. For
-- example, @2022-05-04T12:32:58.789000-07:00@ represents a transcription
-- job that started processing at 12:32 PM UTC-7 on May 4, 2022.
transcriptionJobSummary_startTime :: Lens.Lens' TranscriptionJobSummary (Prelude.Maybe Prelude.UTCTime)
transcriptionJobSummary_startTime = Lens.lens (\TranscriptionJobSummary' {startTime} -> startTime) (\s@TranscriptionJobSummary' {} a -> s {startTime = a} :: TranscriptionJobSummary) Prelude.. Lens.mapping Core._Time

-- | If @TranscriptionJobStatus@ is @FAILED@, @FailureReason@ contains
-- information about why the transcription job failed. See also:
-- <https://docs.aws.amazon.com/transcribe/latest/APIReference/CommonErrors.html Common Errors>.
transcriptionJobSummary_failureReason :: Lens.Lens' TranscriptionJobSummary (Prelude.Maybe Prelude.Text)
transcriptionJobSummary_failureReason = Lens.lens (\TranscriptionJobSummary' {failureReason} -> failureReason) (\s@TranscriptionJobSummary' {} a -> s {failureReason = a} :: TranscriptionJobSummary)

-- | The language codes used to create your transcription job. This parameter
-- is used with multi-language identification. For single-language
-- identification, the singular version of this parameter, @LanguageCode@,
-- is present.
transcriptionJobSummary_languageCodes :: Lens.Lens' TranscriptionJobSummary (Prelude.Maybe [LanguageCodeItem])
transcriptionJobSummary_languageCodes = Lens.lens (\TranscriptionJobSummary' {languageCodes} -> languageCodes) (\s@TranscriptionJobSummary' {} a -> s {languageCodes = a} :: TranscriptionJobSummary) Prelude.. Lens.mapping Lens.coerced

instance Core.FromJSON TranscriptionJobSummary where
  parseJSON =
    Core.withObject
      "TranscriptionJobSummary"
      ( \x ->
          TranscriptionJobSummary'
            Prelude.<$> (x Core..:? "IdentifyMultipleLanguages")
            Prelude.<*> (x Core..:? "IdentifyLanguage")
            Prelude.<*> (x Core..:? "ContentRedaction")
            Prelude.<*> (x Core..:? "TranscriptionJobName")
            Prelude.<*> (x Core..:? "CompletionTime")
            Prelude.<*> (x Core..:? "OutputLocationType")
            Prelude.<*> (x Core..:? "LanguageCode")
            Prelude.<*> (x Core..:? "TranscriptionJobStatus")
            Prelude.<*> (x Core..:? "CreationTime")
            Prelude.<*> (x Core..:? "ModelSettings")
            Prelude.<*> (x Core..:? "IdentifiedLanguageScore")
            Prelude.<*> (x Core..:? "StartTime")
            Prelude.<*> (x Core..:? "FailureReason")
            Prelude.<*> (x Core..:? "LanguageCodes" Core..!= Prelude.mempty)
      )

instance Prelude.Hashable TranscriptionJobSummary where
  hashWithSalt _salt TranscriptionJobSummary' {..} =
    _salt
      `Prelude.hashWithSalt` identifyMultipleLanguages
      `Prelude.hashWithSalt` identifyLanguage
      `Prelude.hashWithSalt` contentRedaction
      `Prelude.hashWithSalt` transcriptionJobName
      `Prelude.hashWithSalt` completionTime
      `Prelude.hashWithSalt` outputLocationType
      `Prelude.hashWithSalt` languageCode
      `Prelude.hashWithSalt` transcriptionJobStatus
      `Prelude.hashWithSalt` creationTime
      `Prelude.hashWithSalt` modelSettings
      `Prelude.hashWithSalt` identifiedLanguageScore
      `Prelude.hashWithSalt` startTime
      `Prelude.hashWithSalt` failureReason
      `Prelude.hashWithSalt` languageCodes

instance Prelude.NFData TranscriptionJobSummary where
  rnf TranscriptionJobSummary' {..} =
    Prelude.rnf identifyMultipleLanguages
      `Prelude.seq` Prelude.rnf identifyLanguage
      `Prelude.seq` Prelude.rnf contentRedaction
      `Prelude.seq` Prelude.rnf transcriptionJobName
      `Prelude.seq` Prelude.rnf completionTime
      `Prelude.seq` Prelude.rnf outputLocationType
      `Prelude.seq` Prelude.rnf languageCode
      `Prelude.seq` Prelude.rnf transcriptionJobStatus
      `Prelude.seq` Prelude.rnf creationTime
      `Prelude.seq` Prelude.rnf modelSettings
      `Prelude.seq` Prelude.rnf identifiedLanguageScore
      `Prelude.seq` Prelude.rnf startTime
      `Prelude.seq` Prelude.rnf failureReason
      `Prelude.seq` Prelude.rnf languageCodes
