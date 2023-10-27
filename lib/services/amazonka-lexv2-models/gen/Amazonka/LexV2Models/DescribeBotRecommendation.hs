{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE NamedFieldPuns #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Amazonka.LexV2Models.DescribeBotRecommendation
-- Copyright   : (c) 2013-2023 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Provides metadata information about a bot recommendation. This
-- information will enable you to get a description on the request inputs,
-- to download associated transcripts after processing is complete, and to
-- download intents and slot-types generated by the bot recommendation.
module Amazonka.LexV2Models.DescribeBotRecommendation
  ( -- * Creating a Request
    DescribeBotRecommendation (..),
    newDescribeBotRecommendation,

    -- * Request Lenses
    describeBotRecommendation_botId,
    describeBotRecommendation_botVersion,
    describeBotRecommendation_localeId,
    describeBotRecommendation_botRecommendationId,

    -- * Destructuring the Response
    DescribeBotRecommendationResponse (..),
    newDescribeBotRecommendationResponse,

    -- * Response Lenses
    describeBotRecommendationResponse_botId,
    describeBotRecommendationResponse_botRecommendationId,
    describeBotRecommendationResponse_botRecommendationResults,
    describeBotRecommendationResponse_botRecommendationStatus,
    describeBotRecommendationResponse_botVersion,
    describeBotRecommendationResponse_creationDateTime,
    describeBotRecommendationResponse_encryptionSetting,
    describeBotRecommendationResponse_failureReasons,
    describeBotRecommendationResponse_lastUpdatedDateTime,
    describeBotRecommendationResponse_localeId,
    describeBotRecommendationResponse_transcriptSourceSetting,
    describeBotRecommendationResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import qualified Amazonka.Data as Data
import Amazonka.LexV2Models.Types
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newDescribeBotRecommendation' smart constructor.
data DescribeBotRecommendation = DescribeBotRecommendation'
  { -- | The unique identifier of the bot associated with the bot recommendation.
    botId :: Prelude.Text,
    -- | The version of the bot associated with the bot recommendation.
    botVersion :: Prelude.Text,
    -- | The identifier of the language and locale of the bot recommendation to
    -- describe. The string must match one of the supported locales. For more
    -- information, see
    -- <https://docs.aws.amazon.com/lexv2/latest/dg/how-languages.html Supported languages>.
    localeId :: Prelude.Text,
    -- | The identifier of the bot recommendation to describe.
    botRecommendationId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeBotRecommendation' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'botId', 'describeBotRecommendation_botId' - The unique identifier of the bot associated with the bot recommendation.
--
-- 'botVersion', 'describeBotRecommendation_botVersion' - The version of the bot associated with the bot recommendation.
--
-- 'localeId', 'describeBotRecommendation_localeId' - The identifier of the language and locale of the bot recommendation to
-- describe. The string must match one of the supported locales. For more
-- information, see
-- <https://docs.aws.amazon.com/lexv2/latest/dg/how-languages.html Supported languages>.
--
-- 'botRecommendationId', 'describeBotRecommendation_botRecommendationId' - The identifier of the bot recommendation to describe.
newDescribeBotRecommendation ::
  -- | 'botId'
  Prelude.Text ->
  -- | 'botVersion'
  Prelude.Text ->
  -- | 'localeId'
  Prelude.Text ->
  -- | 'botRecommendationId'
  Prelude.Text ->
  DescribeBotRecommendation
newDescribeBotRecommendation
  pBotId_
  pBotVersion_
  pLocaleId_
  pBotRecommendationId_ =
    DescribeBotRecommendation'
      { botId = pBotId_,
        botVersion = pBotVersion_,
        localeId = pLocaleId_,
        botRecommendationId = pBotRecommendationId_
      }

-- | The unique identifier of the bot associated with the bot recommendation.
describeBotRecommendation_botId :: Lens.Lens' DescribeBotRecommendation Prelude.Text
describeBotRecommendation_botId = Lens.lens (\DescribeBotRecommendation' {botId} -> botId) (\s@DescribeBotRecommendation' {} a -> s {botId = a} :: DescribeBotRecommendation)

-- | The version of the bot associated with the bot recommendation.
describeBotRecommendation_botVersion :: Lens.Lens' DescribeBotRecommendation Prelude.Text
describeBotRecommendation_botVersion = Lens.lens (\DescribeBotRecommendation' {botVersion} -> botVersion) (\s@DescribeBotRecommendation' {} a -> s {botVersion = a} :: DescribeBotRecommendation)

-- | The identifier of the language and locale of the bot recommendation to
-- describe. The string must match one of the supported locales. For more
-- information, see
-- <https://docs.aws.amazon.com/lexv2/latest/dg/how-languages.html Supported languages>.
describeBotRecommendation_localeId :: Lens.Lens' DescribeBotRecommendation Prelude.Text
describeBotRecommendation_localeId = Lens.lens (\DescribeBotRecommendation' {localeId} -> localeId) (\s@DescribeBotRecommendation' {} a -> s {localeId = a} :: DescribeBotRecommendation)

-- | The identifier of the bot recommendation to describe.
describeBotRecommendation_botRecommendationId :: Lens.Lens' DescribeBotRecommendation Prelude.Text
describeBotRecommendation_botRecommendationId = Lens.lens (\DescribeBotRecommendation' {botRecommendationId} -> botRecommendationId) (\s@DescribeBotRecommendation' {} a -> s {botRecommendationId = a} :: DescribeBotRecommendation)

instance Core.AWSRequest DescribeBotRecommendation where
  type
    AWSResponse DescribeBotRecommendation =
      DescribeBotRecommendationResponse
  request overrides =
    Request.get (overrides defaultService)
  response =
    Response.receiveJSON
      ( \s h x ->
          DescribeBotRecommendationResponse'
            Prelude.<$> (x Data..?> "botId")
            Prelude.<*> (x Data..?> "botRecommendationId")
            Prelude.<*> (x Data..?> "botRecommendationResults")
            Prelude.<*> (x Data..?> "botRecommendationStatus")
            Prelude.<*> (x Data..?> "botVersion")
            Prelude.<*> (x Data..?> "creationDateTime")
            Prelude.<*> (x Data..?> "encryptionSetting")
            Prelude.<*> (x Data..?> "failureReasons" Core..!@ Prelude.mempty)
            Prelude.<*> (x Data..?> "lastUpdatedDateTime")
            Prelude.<*> (x Data..?> "localeId")
            Prelude.<*> (x Data..?> "transcriptSourceSetting")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable DescribeBotRecommendation where
  hashWithSalt _salt DescribeBotRecommendation' {..} =
    _salt
      `Prelude.hashWithSalt` botId
      `Prelude.hashWithSalt` botVersion
      `Prelude.hashWithSalt` localeId
      `Prelude.hashWithSalt` botRecommendationId

instance Prelude.NFData DescribeBotRecommendation where
  rnf DescribeBotRecommendation' {..} =
    Prelude.rnf botId
      `Prelude.seq` Prelude.rnf botVersion
      `Prelude.seq` Prelude.rnf localeId
      `Prelude.seq` Prelude.rnf botRecommendationId

instance Data.ToHeaders DescribeBotRecommendation where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Data.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Data.ToPath DescribeBotRecommendation where
  toPath DescribeBotRecommendation' {..} =
    Prelude.mconcat
      [ "/bots/",
        Data.toBS botId,
        "/botversions/",
        Data.toBS botVersion,
        "/botlocales/",
        Data.toBS localeId,
        "/botrecommendations/",
        Data.toBS botRecommendationId,
        "/"
      ]

instance Data.ToQuery DescribeBotRecommendation where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newDescribeBotRecommendationResponse' smart constructor.
data DescribeBotRecommendationResponse = DescribeBotRecommendationResponse'
  { -- | The identifier of the bot associated with the bot recommendation.
    botId :: Prelude.Maybe Prelude.Text,
    -- | The identifier of the bot recommendation being described.
    botRecommendationId :: Prelude.Maybe Prelude.Text,
    -- | The object representing the URL of the bot definition, the URL of the
    -- associated transcript and a statistical summary of the bot
    -- recommendation results.
    botRecommendationResults :: Prelude.Maybe BotRecommendationResults,
    -- | The status of the bot recommendation. If the status is Failed, then the
    -- reasons for the failure are listed in the failureReasons field.
    botRecommendationStatus :: Prelude.Maybe BotRecommendationStatus,
    -- | The version of the bot associated with the bot recommendation.
    botVersion :: Prelude.Maybe Prelude.Text,
    -- | The date and time that the bot recommendation was created.
    creationDateTime :: Prelude.Maybe Data.POSIX,
    -- | The object representing the passwords that were used to encrypt the data
    -- related to the bot recommendation results, as well as the KMS key ARN
    -- used to encrypt the associated metadata.
    encryptionSetting :: Prelude.Maybe EncryptionSetting,
    -- | If botRecommendationStatus is Failed, Amazon Lex explains why.
    failureReasons :: Prelude.Maybe [Prelude.Text],
    -- | The date and time that the bot recommendation was last updated.
    lastUpdatedDateTime :: Prelude.Maybe Data.POSIX,
    -- | The identifier of the language and locale of the bot recommendation to
    -- describe.
    localeId :: Prelude.Maybe Prelude.Text,
    -- | The object representing the Amazon S3 bucket containing the transcript,
    -- as well as the associated metadata.
    transcriptSourceSetting :: Prelude.Maybe TranscriptSourceSetting,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeBotRecommendationResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'botId', 'describeBotRecommendationResponse_botId' - The identifier of the bot associated with the bot recommendation.
--
-- 'botRecommendationId', 'describeBotRecommendationResponse_botRecommendationId' - The identifier of the bot recommendation being described.
--
-- 'botRecommendationResults', 'describeBotRecommendationResponse_botRecommendationResults' - The object representing the URL of the bot definition, the URL of the
-- associated transcript and a statistical summary of the bot
-- recommendation results.
--
-- 'botRecommendationStatus', 'describeBotRecommendationResponse_botRecommendationStatus' - The status of the bot recommendation. If the status is Failed, then the
-- reasons for the failure are listed in the failureReasons field.
--
-- 'botVersion', 'describeBotRecommendationResponse_botVersion' - The version of the bot associated with the bot recommendation.
--
-- 'creationDateTime', 'describeBotRecommendationResponse_creationDateTime' - The date and time that the bot recommendation was created.
--
-- 'encryptionSetting', 'describeBotRecommendationResponse_encryptionSetting' - The object representing the passwords that were used to encrypt the data
-- related to the bot recommendation results, as well as the KMS key ARN
-- used to encrypt the associated metadata.
--
-- 'failureReasons', 'describeBotRecommendationResponse_failureReasons' - If botRecommendationStatus is Failed, Amazon Lex explains why.
--
-- 'lastUpdatedDateTime', 'describeBotRecommendationResponse_lastUpdatedDateTime' - The date and time that the bot recommendation was last updated.
--
-- 'localeId', 'describeBotRecommendationResponse_localeId' - The identifier of the language and locale of the bot recommendation to
-- describe.
--
-- 'transcriptSourceSetting', 'describeBotRecommendationResponse_transcriptSourceSetting' - The object representing the Amazon S3 bucket containing the transcript,
-- as well as the associated metadata.
--
-- 'httpStatus', 'describeBotRecommendationResponse_httpStatus' - The response's http status code.
newDescribeBotRecommendationResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DescribeBotRecommendationResponse
newDescribeBotRecommendationResponse pHttpStatus_ =
  DescribeBotRecommendationResponse'
    { botId =
        Prelude.Nothing,
      botRecommendationId = Prelude.Nothing,
      botRecommendationResults =
        Prelude.Nothing,
      botRecommendationStatus =
        Prelude.Nothing,
      botVersion = Prelude.Nothing,
      creationDateTime = Prelude.Nothing,
      encryptionSetting = Prelude.Nothing,
      failureReasons = Prelude.Nothing,
      lastUpdatedDateTime = Prelude.Nothing,
      localeId = Prelude.Nothing,
      transcriptSourceSetting =
        Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The identifier of the bot associated with the bot recommendation.
describeBotRecommendationResponse_botId :: Lens.Lens' DescribeBotRecommendationResponse (Prelude.Maybe Prelude.Text)
describeBotRecommendationResponse_botId = Lens.lens (\DescribeBotRecommendationResponse' {botId} -> botId) (\s@DescribeBotRecommendationResponse' {} a -> s {botId = a} :: DescribeBotRecommendationResponse)

-- | The identifier of the bot recommendation being described.
describeBotRecommendationResponse_botRecommendationId :: Lens.Lens' DescribeBotRecommendationResponse (Prelude.Maybe Prelude.Text)
describeBotRecommendationResponse_botRecommendationId = Lens.lens (\DescribeBotRecommendationResponse' {botRecommendationId} -> botRecommendationId) (\s@DescribeBotRecommendationResponse' {} a -> s {botRecommendationId = a} :: DescribeBotRecommendationResponse)

-- | The object representing the URL of the bot definition, the URL of the
-- associated transcript and a statistical summary of the bot
-- recommendation results.
describeBotRecommendationResponse_botRecommendationResults :: Lens.Lens' DescribeBotRecommendationResponse (Prelude.Maybe BotRecommendationResults)
describeBotRecommendationResponse_botRecommendationResults = Lens.lens (\DescribeBotRecommendationResponse' {botRecommendationResults} -> botRecommendationResults) (\s@DescribeBotRecommendationResponse' {} a -> s {botRecommendationResults = a} :: DescribeBotRecommendationResponse)

-- | The status of the bot recommendation. If the status is Failed, then the
-- reasons for the failure are listed in the failureReasons field.
describeBotRecommendationResponse_botRecommendationStatus :: Lens.Lens' DescribeBotRecommendationResponse (Prelude.Maybe BotRecommendationStatus)
describeBotRecommendationResponse_botRecommendationStatus = Lens.lens (\DescribeBotRecommendationResponse' {botRecommendationStatus} -> botRecommendationStatus) (\s@DescribeBotRecommendationResponse' {} a -> s {botRecommendationStatus = a} :: DescribeBotRecommendationResponse)

-- | The version of the bot associated with the bot recommendation.
describeBotRecommendationResponse_botVersion :: Lens.Lens' DescribeBotRecommendationResponse (Prelude.Maybe Prelude.Text)
describeBotRecommendationResponse_botVersion = Lens.lens (\DescribeBotRecommendationResponse' {botVersion} -> botVersion) (\s@DescribeBotRecommendationResponse' {} a -> s {botVersion = a} :: DescribeBotRecommendationResponse)

-- | The date and time that the bot recommendation was created.
describeBotRecommendationResponse_creationDateTime :: Lens.Lens' DescribeBotRecommendationResponse (Prelude.Maybe Prelude.UTCTime)
describeBotRecommendationResponse_creationDateTime = Lens.lens (\DescribeBotRecommendationResponse' {creationDateTime} -> creationDateTime) (\s@DescribeBotRecommendationResponse' {} a -> s {creationDateTime = a} :: DescribeBotRecommendationResponse) Prelude.. Lens.mapping Data._Time

-- | The object representing the passwords that were used to encrypt the data
-- related to the bot recommendation results, as well as the KMS key ARN
-- used to encrypt the associated metadata.
describeBotRecommendationResponse_encryptionSetting :: Lens.Lens' DescribeBotRecommendationResponse (Prelude.Maybe EncryptionSetting)
describeBotRecommendationResponse_encryptionSetting = Lens.lens (\DescribeBotRecommendationResponse' {encryptionSetting} -> encryptionSetting) (\s@DescribeBotRecommendationResponse' {} a -> s {encryptionSetting = a} :: DescribeBotRecommendationResponse)

-- | If botRecommendationStatus is Failed, Amazon Lex explains why.
describeBotRecommendationResponse_failureReasons :: Lens.Lens' DescribeBotRecommendationResponse (Prelude.Maybe [Prelude.Text])
describeBotRecommendationResponse_failureReasons = Lens.lens (\DescribeBotRecommendationResponse' {failureReasons} -> failureReasons) (\s@DescribeBotRecommendationResponse' {} a -> s {failureReasons = a} :: DescribeBotRecommendationResponse) Prelude.. Lens.mapping Lens.coerced

-- | The date and time that the bot recommendation was last updated.
describeBotRecommendationResponse_lastUpdatedDateTime :: Lens.Lens' DescribeBotRecommendationResponse (Prelude.Maybe Prelude.UTCTime)
describeBotRecommendationResponse_lastUpdatedDateTime = Lens.lens (\DescribeBotRecommendationResponse' {lastUpdatedDateTime} -> lastUpdatedDateTime) (\s@DescribeBotRecommendationResponse' {} a -> s {lastUpdatedDateTime = a} :: DescribeBotRecommendationResponse) Prelude.. Lens.mapping Data._Time

-- | The identifier of the language and locale of the bot recommendation to
-- describe.
describeBotRecommendationResponse_localeId :: Lens.Lens' DescribeBotRecommendationResponse (Prelude.Maybe Prelude.Text)
describeBotRecommendationResponse_localeId = Lens.lens (\DescribeBotRecommendationResponse' {localeId} -> localeId) (\s@DescribeBotRecommendationResponse' {} a -> s {localeId = a} :: DescribeBotRecommendationResponse)

-- | The object representing the Amazon S3 bucket containing the transcript,
-- as well as the associated metadata.
describeBotRecommendationResponse_transcriptSourceSetting :: Lens.Lens' DescribeBotRecommendationResponse (Prelude.Maybe TranscriptSourceSetting)
describeBotRecommendationResponse_transcriptSourceSetting = Lens.lens (\DescribeBotRecommendationResponse' {transcriptSourceSetting} -> transcriptSourceSetting) (\s@DescribeBotRecommendationResponse' {} a -> s {transcriptSourceSetting = a} :: DescribeBotRecommendationResponse)

-- | The response's http status code.
describeBotRecommendationResponse_httpStatus :: Lens.Lens' DescribeBotRecommendationResponse Prelude.Int
describeBotRecommendationResponse_httpStatus = Lens.lens (\DescribeBotRecommendationResponse' {httpStatus} -> httpStatus) (\s@DescribeBotRecommendationResponse' {} a -> s {httpStatus = a} :: DescribeBotRecommendationResponse)

instance
  Prelude.NFData
    DescribeBotRecommendationResponse
  where
  rnf DescribeBotRecommendationResponse' {..} =
    Prelude.rnf botId
      `Prelude.seq` Prelude.rnf botRecommendationId
      `Prelude.seq` Prelude.rnf botRecommendationResults
      `Prelude.seq` Prelude.rnf botRecommendationStatus
      `Prelude.seq` Prelude.rnf botVersion
      `Prelude.seq` Prelude.rnf creationDateTime
      `Prelude.seq` Prelude.rnf encryptionSetting
      `Prelude.seq` Prelude.rnf failureReasons
      `Prelude.seq` Prelude.rnf lastUpdatedDateTime
      `Prelude.seq` Prelude.rnf localeId
      `Prelude.seq` Prelude.rnf transcriptSourceSetting
      `Prelude.seq` Prelude.rnf httpStatus
