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
-- Module      : Amazonka.CloudWatchEvents.Types.PutEventsResultEntry
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.CloudWatchEvents.Types.PutEventsResultEntry where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | Represents an event that failed to be submitted. For information about
-- the errors that are common to all actions, see
-- <https://docs.aws.amazon.com/eventbridge/latest/APIReference/CommonErrors.html Common Errors>.
--
-- /See:/ 'newPutEventsResultEntry' smart constructor.
data PutEventsResultEntry = PutEventsResultEntry'
  { -- | The error message that explains why the event submission failed.
    errorMessage :: Prelude.Maybe Prelude.Text,
    -- | The ID of the event.
    eventId :: Prelude.Maybe Prelude.Text,
    -- | The error code that indicates why the event submission failed.
    errorCode :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'PutEventsResultEntry' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'errorMessage', 'putEventsResultEntry_errorMessage' - The error message that explains why the event submission failed.
--
-- 'eventId', 'putEventsResultEntry_eventId' - The ID of the event.
--
-- 'errorCode', 'putEventsResultEntry_errorCode' - The error code that indicates why the event submission failed.
newPutEventsResultEntry ::
  PutEventsResultEntry
newPutEventsResultEntry =
  PutEventsResultEntry'
    { errorMessage =
        Prelude.Nothing,
      eventId = Prelude.Nothing,
      errorCode = Prelude.Nothing
    }

-- | The error message that explains why the event submission failed.
putEventsResultEntry_errorMessage :: Lens.Lens' PutEventsResultEntry (Prelude.Maybe Prelude.Text)
putEventsResultEntry_errorMessage = Lens.lens (\PutEventsResultEntry' {errorMessage} -> errorMessage) (\s@PutEventsResultEntry' {} a -> s {errorMessage = a} :: PutEventsResultEntry)

-- | The ID of the event.
putEventsResultEntry_eventId :: Lens.Lens' PutEventsResultEntry (Prelude.Maybe Prelude.Text)
putEventsResultEntry_eventId = Lens.lens (\PutEventsResultEntry' {eventId} -> eventId) (\s@PutEventsResultEntry' {} a -> s {eventId = a} :: PutEventsResultEntry)

-- | The error code that indicates why the event submission failed.
putEventsResultEntry_errorCode :: Lens.Lens' PutEventsResultEntry (Prelude.Maybe Prelude.Text)
putEventsResultEntry_errorCode = Lens.lens (\PutEventsResultEntry' {errorCode} -> errorCode) (\s@PutEventsResultEntry' {} a -> s {errorCode = a} :: PutEventsResultEntry)

instance Core.FromJSON PutEventsResultEntry where
  parseJSON =
    Core.withObject
      "PutEventsResultEntry"
      ( \x ->
          PutEventsResultEntry'
            Prelude.<$> (x Core..:? "ErrorMessage")
            Prelude.<*> (x Core..:? "EventId")
            Prelude.<*> (x Core..:? "ErrorCode")
      )

instance Prelude.Hashable PutEventsResultEntry where
  hashWithSalt _salt PutEventsResultEntry' {..} =
    _salt `Prelude.hashWithSalt` errorMessage
      `Prelude.hashWithSalt` eventId
      `Prelude.hashWithSalt` errorCode

instance Prelude.NFData PutEventsResultEntry where
  rnf PutEventsResultEntry' {..} =
    Prelude.rnf errorMessage
      `Prelude.seq` Prelude.rnf eventId
      `Prelude.seq` Prelude.rnf errorCode
