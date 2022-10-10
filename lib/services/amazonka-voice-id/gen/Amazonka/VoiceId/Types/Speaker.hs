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
-- Module      : Amazonka.VoiceId.Types.Speaker
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.VoiceId.Types.Speaker where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import Amazonka.VoiceId.Types.SpeakerStatus

-- | Contains all the information about a speaker.
--
-- /See:/ 'newSpeaker' smart constructor.
data Speaker = Speaker'
  { -- | The timestamp when the speaker was last accessed for enrollment,
    -- re-enrollment or a successful authentication. This timestamp is accurate
    -- to one hour.
    lastAccessedAt :: Prelude.Maybe Core.POSIX,
    -- | The current status of the speaker.
    status :: Prelude.Maybe SpeakerStatus,
    -- | The client-provided identifier for the speaker.
    customerSpeakerId :: Prelude.Maybe (Core.Sensitive Prelude.Text),
    -- | The service-generated identifier for the speaker.
    generatedSpeakerId :: Prelude.Maybe Prelude.Text,
    -- | The identifier of the domain that contains the speaker.
    domainId :: Prelude.Maybe Prelude.Text,
    -- | A timestamp showing when the speaker is created.
    createdAt :: Prelude.Maybe Core.POSIX,
    -- | A timestamp showing the speaker\'s last update.
    updatedAt :: Prelude.Maybe Core.POSIX
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'Speaker' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'lastAccessedAt', 'speaker_lastAccessedAt' - The timestamp when the speaker was last accessed for enrollment,
-- re-enrollment or a successful authentication. This timestamp is accurate
-- to one hour.
--
-- 'status', 'speaker_status' - The current status of the speaker.
--
-- 'customerSpeakerId', 'speaker_customerSpeakerId' - The client-provided identifier for the speaker.
--
-- 'generatedSpeakerId', 'speaker_generatedSpeakerId' - The service-generated identifier for the speaker.
--
-- 'domainId', 'speaker_domainId' - The identifier of the domain that contains the speaker.
--
-- 'createdAt', 'speaker_createdAt' - A timestamp showing when the speaker is created.
--
-- 'updatedAt', 'speaker_updatedAt' - A timestamp showing the speaker\'s last update.
newSpeaker ::
  Speaker
newSpeaker =
  Speaker'
    { lastAccessedAt = Prelude.Nothing,
      status = Prelude.Nothing,
      customerSpeakerId = Prelude.Nothing,
      generatedSpeakerId = Prelude.Nothing,
      domainId = Prelude.Nothing,
      createdAt = Prelude.Nothing,
      updatedAt = Prelude.Nothing
    }

-- | The timestamp when the speaker was last accessed for enrollment,
-- re-enrollment or a successful authentication. This timestamp is accurate
-- to one hour.
speaker_lastAccessedAt :: Lens.Lens' Speaker (Prelude.Maybe Prelude.UTCTime)
speaker_lastAccessedAt = Lens.lens (\Speaker' {lastAccessedAt} -> lastAccessedAt) (\s@Speaker' {} a -> s {lastAccessedAt = a} :: Speaker) Prelude.. Lens.mapping Core._Time

-- | The current status of the speaker.
speaker_status :: Lens.Lens' Speaker (Prelude.Maybe SpeakerStatus)
speaker_status = Lens.lens (\Speaker' {status} -> status) (\s@Speaker' {} a -> s {status = a} :: Speaker)

-- | The client-provided identifier for the speaker.
speaker_customerSpeakerId :: Lens.Lens' Speaker (Prelude.Maybe Prelude.Text)
speaker_customerSpeakerId = Lens.lens (\Speaker' {customerSpeakerId} -> customerSpeakerId) (\s@Speaker' {} a -> s {customerSpeakerId = a} :: Speaker) Prelude.. Lens.mapping Core._Sensitive

-- | The service-generated identifier for the speaker.
speaker_generatedSpeakerId :: Lens.Lens' Speaker (Prelude.Maybe Prelude.Text)
speaker_generatedSpeakerId = Lens.lens (\Speaker' {generatedSpeakerId} -> generatedSpeakerId) (\s@Speaker' {} a -> s {generatedSpeakerId = a} :: Speaker)

-- | The identifier of the domain that contains the speaker.
speaker_domainId :: Lens.Lens' Speaker (Prelude.Maybe Prelude.Text)
speaker_domainId = Lens.lens (\Speaker' {domainId} -> domainId) (\s@Speaker' {} a -> s {domainId = a} :: Speaker)

-- | A timestamp showing when the speaker is created.
speaker_createdAt :: Lens.Lens' Speaker (Prelude.Maybe Prelude.UTCTime)
speaker_createdAt = Lens.lens (\Speaker' {createdAt} -> createdAt) (\s@Speaker' {} a -> s {createdAt = a} :: Speaker) Prelude.. Lens.mapping Core._Time

-- | A timestamp showing the speaker\'s last update.
speaker_updatedAt :: Lens.Lens' Speaker (Prelude.Maybe Prelude.UTCTime)
speaker_updatedAt = Lens.lens (\Speaker' {updatedAt} -> updatedAt) (\s@Speaker' {} a -> s {updatedAt = a} :: Speaker) Prelude.. Lens.mapping Core._Time

instance Core.FromJSON Speaker where
  parseJSON =
    Core.withObject
      "Speaker"
      ( \x ->
          Speaker'
            Prelude.<$> (x Core..:? "LastAccessedAt")
            Prelude.<*> (x Core..:? "Status")
            Prelude.<*> (x Core..:? "CustomerSpeakerId")
            Prelude.<*> (x Core..:? "GeneratedSpeakerId")
            Prelude.<*> (x Core..:? "DomainId")
            Prelude.<*> (x Core..:? "CreatedAt")
            Prelude.<*> (x Core..:? "UpdatedAt")
      )

instance Prelude.Hashable Speaker where
  hashWithSalt _salt Speaker' {..} =
    _salt `Prelude.hashWithSalt` lastAccessedAt
      `Prelude.hashWithSalt` status
      `Prelude.hashWithSalt` customerSpeakerId
      `Prelude.hashWithSalt` generatedSpeakerId
      `Prelude.hashWithSalt` domainId
      `Prelude.hashWithSalt` createdAt
      `Prelude.hashWithSalt` updatedAt

instance Prelude.NFData Speaker where
  rnf Speaker' {..} =
    Prelude.rnf lastAccessedAt
      `Prelude.seq` Prelude.rnf status
      `Prelude.seq` Prelude.rnf customerSpeakerId
      `Prelude.seq` Prelude.rnf generatedSpeakerId
      `Prelude.seq` Prelude.rnf domainId
      `Prelude.seq` Prelude.rnf createdAt
      `Prelude.seq` Prelude.rnf updatedAt
