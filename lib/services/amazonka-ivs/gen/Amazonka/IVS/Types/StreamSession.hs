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
-- Module      : Amazonka.IVS.Types.StreamSession
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.IVS.Types.StreamSession where

import qualified Amazonka.Core as Core
import Amazonka.IVS.Types.Channel
import Amazonka.IVS.Types.IngestConfiguration
import Amazonka.IVS.Types.RecordingConfiguration
import Amazonka.IVS.Types.StreamEvent
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | Object that captures the Amazon IVS configuration that the customer
-- provisioned, the ingest configurations that the broadcaster used, and
-- the most recent Amazon IVS stream events it encountered.
--
-- /See:/ 'newStreamSession' smart constructor.
data StreamSession = StreamSession'
  { -- | The properties of the incoming RTMP stream for the stream.
    ingestConfiguration :: Prelude.Maybe IngestConfiguration,
    -- | The properties of the channel at the time of going live.
    channel :: Prelude.Maybe Channel,
    -- | Unique identifier for a live or previously live stream in the specified
    -- channel.
    streamId :: Prelude.Maybe Prelude.Text,
    -- | Time when the channel went offline. This is an ISO 8601 timestamp; /note
    -- that this is returned as a string/. For live streams, this is @NULL@.
    endTime :: Prelude.Maybe Core.POSIX,
    -- | The properties of recording the live stream.
    recordingConfiguration :: Prelude.Maybe RecordingConfiguration,
    -- | Time when the channel went live. This is an ISO 8601 timestamp; /note
    -- that this is returned as a string/.
    startTime :: Prelude.Maybe Core.POSIX,
    -- | List of Amazon IVS events that the stream encountered. The list is
    -- sorted by most recent events and contains up to 500 events. For Amazon
    -- IVS events, see
    -- <https://docs.aws.amazon.com/ivs/latest/userguide/eventbridge.html Using Amazon EventBridge with Amazon IVS>.
    truncatedEvents :: Prelude.Maybe [StreamEvent]
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'StreamSession' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'ingestConfiguration', 'streamSession_ingestConfiguration' - The properties of the incoming RTMP stream for the stream.
--
-- 'channel', 'streamSession_channel' - The properties of the channel at the time of going live.
--
-- 'streamId', 'streamSession_streamId' - Unique identifier for a live or previously live stream in the specified
-- channel.
--
-- 'endTime', 'streamSession_endTime' - Time when the channel went offline. This is an ISO 8601 timestamp; /note
-- that this is returned as a string/. For live streams, this is @NULL@.
--
-- 'recordingConfiguration', 'streamSession_recordingConfiguration' - The properties of recording the live stream.
--
-- 'startTime', 'streamSession_startTime' - Time when the channel went live. This is an ISO 8601 timestamp; /note
-- that this is returned as a string/.
--
-- 'truncatedEvents', 'streamSession_truncatedEvents' - List of Amazon IVS events that the stream encountered. The list is
-- sorted by most recent events and contains up to 500 events. For Amazon
-- IVS events, see
-- <https://docs.aws.amazon.com/ivs/latest/userguide/eventbridge.html Using Amazon EventBridge with Amazon IVS>.
newStreamSession ::
  StreamSession
newStreamSession =
  StreamSession'
    { ingestConfiguration =
        Prelude.Nothing,
      channel = Prelude.Nothing,
      streamId = Prelude.Nothing,
      endTime = Prelude.Nothing,
      recordingConfiguration = Prelude.Nothing,
      startTime = Prelude.Nothing,
      truncatedEvents = Prelude.Nothing
    }

-- | The properties of the incoming RTMP stream for the stream.
streamSession_ingestConfiguration :: Lens.Lens' StreamSession (Prelude.Maybe IngestConfiguration)
streamSession_ingestConfiguration = Lens.lens (\StreamSession' {ingestConfiguration} -> ingestConfiguration) (\s@StreamSession' {} a -> s {ingestConfiguration = a} :: StreamSession)

-- | The properties of the channel at the time of going live.
streamSession_channel :: Lens.Lens' StreamSession (Prelude.Maybe Channel)
streamSession_channel = Lens.lens (\StreamSession' {channel} -> channel) (\s@StreamSession' {} a -> s {channel = a} :: StreamSession)

-- | Unique identifier for a live or previously live stream in the specified
-- channel.
streamSession_streamId :: Lens.Lens' StreamSession (Prelude.Maybe Prelude.Text)
streamSession_streamId = Lens.lens (\StreamSession' {streamId} -> streamId) (\s@StreamSession' {} a -> s {streamId = a} :: StreamSession)

-- | Time when the channel went offline. This is an ISO 8601 timestamp; /note
-- that this is returned as a string/. For live streams, this is @NULL@.
streamSession_endTime :: Lens.Lens' StreamSession (Prelude.Maybe Prelude.UTCTime)
streamSession_endTime = Lens.lens (\StreamSession' {endTime} -> endTime) (\s@StreamSession' {} a -> s {endTime = a} :: StreamSession) Prelude.. Lens.mapping Core._Time

-- | The properties of recording the live stream.
streamSession_recordingConfiguration :: Lens.Lens' StreamSession (Prelude.Maybe RecordingConfiguration)
streamSession_recordingConfiguration = Lens.lens (\StreamSession' {recordingConfiguration} -> recordingConfiguration) (\s@StreamSession' {} a -> s {recordingConfiguration = a} :: StreamSession)

-- | Time when the channel went live. This is an ISO 8601 timestamp; /note
-- that this is returned as a string/.
streamSession_startTime :: Lens.Lens' StreamSession (Prelude.Maybe Prelude.UTCTime)
streamSession_startTime = Lens.lens (\StreamSession' {startTime} -> startTime) (\s@StreamSession' {} a -> s {startTime = a} :: StreamSession) Prelude.. Lens.mapping Core._Time

-- | List of Amazon IVS events that the stream encountered. The list is
-- sorted by most recent events and contains up to 500 events. For Amazon
-- IVS events, see
-- <https://docs.aws.amazon.com/ivs/latest/userguide/eventbridge.html Using Amazon EventBridge with Amazon IVS>.
streamSession_truncatedEvents :: Lens.Lens' StreamSession (Prelude.Maybe [StreamEvent])
streamSession_truncatedEvents = Lens.lens (\StreamSession' {truncatedEvents} -> truncatedEvents) (\s@StreamSession' {} a -> s {truncatedEvents = a} :: StreamSession) Prelude.. Lens.mapping Lens.coerced

instance Core.FromJSON StreamSession where
  parseJSON =
    Core.withObject
      "StreamSession"
      ( \x ->
          StreamSession'
            Prelude.<$> (x Core..:? "ingestConfiguration")
            Prelude.<*> (x Core..:? "channel")
            Prelude.<*> (x Core..:? "streamId")
            Prelude.<*> (x Core..:? "endTime")
            Prelude.<*> (x Core..:? "recordingConfiguration")
            Prelude.<*> (x Core..:? "startTime")
            Prelude.<*> ( x Core..:? "truncatedEvents"
                            Core..!= Prelude.mempty
                        )
      )

instance Prelude.Hashable StreamSession where
  hashWithSalt _salt StreamSession' {..} =
    _salt `Prelude.hashWithSalt` ingestConfiguration
      `Prelude.hashWithSalt` channel
      `Prelude.hashWithSalt` streamId
      `Prelude.hashWithSalt` endTime
      `Prelude.hashWithSalt` recordingConfiguration
      `Prelude.hashWithSalt` startTime
      `Prelude.hashWithSalt` truncatedEvents

instance Prelude.NFData StreamSession where
  rnf StreamSession' {..} =
    Prelude.rnf ingestConfiguration
      `Prelude.seq` Prelude.rnf channel
      `Prelude.seq` Prelude.rnf streamId
      `Prelude.seq` Prelude.rnf endTime
      `Prelude.seq` Prelude.rnf recordingConfiguration
      `Prelude.seq` Prelude.rnf startTime
      `Prelude.seq` Prelude.rnf truncatedEvents
