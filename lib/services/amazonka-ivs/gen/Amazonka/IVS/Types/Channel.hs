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
-- Module      : Amazonka.IVS.Types.Channel
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.IVS.Types.Channel where

import qualified Amazonka.Core as Core
import Amazonka.IVS.Types.ChannelLatencyMode
import Amazonka.IVS.Types.ChannelType
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | Object specifying a channel.
--
-- /See:/ 'newChannel' smart constructor.
data Channel = Channel'
  { -- | Array of 1-50 maps, each of the form @string:string (key:value)@. See
    -- <https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html Tagging Amazon Web Services Resources>
    -- for more information, including restrictions that apply to tags and
    -- \"Tag naming limits and requirements\"; Amazon IVS has no
    -- service-specific constraints beyond what is documented there.
    tags :: Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text),
    -- | Channel name.
    name :: Prelude.Maybe Prelude.Text,
    -- | Channel type, which determines the allowable resolution and bitrate. /If
    -- you exceed the allowable resolution or bitrate, the stream probably will
    -- disconnect immediately./ Default: @STANDARD@. Valid values:
    --
    -- -   @STANDARD@: Multiple qualities are generated from the original
    --     input, to automatically give viewers the best experience for their
    --     devices and network conditions. Resolution can be up to 1080p and
    --     bitrate can be up to 8.5 Mbps. Audio is transcoded only for
    --     renditions 360p and below; above that, audio is passed through.
    --
    -- -   @BASIC@: Amazon IVS delivers the original input to viewers. The
    --     viewer’s video-quality choice is limited to the original input.
    --     Resolution can be up to 480p and bitrate can be up to 1.5 Mbps.
    type' :: Prelude.Maybe ChannelType,
    -- | Channel latency mode. Use @NORMAL@ to broadcast and deliver live video
    -- up to Full HD. Use @LOW@ for near-real-time interaction with viewers.
    -- Default: @LOW@. (Note: In the Amazon IVS console, @LOW@ and @NORMAL@
    -- correspond to Ultra-low and Standard, respectively.)
    latencyMode :: Prelude.Maybe ChannelLatencyMode,
    -- | Channel ARN.
    arn :: Prelude.Maybe Prelude.Text,
    -- | Whether the channel is private (enabled for playback authorization).
    -- Default: @false@.
    authorized :: Prelude.Maybe Prelude.Bool,
    -- | Channel playback URL.
    playbackUrl :: Prelude.Maybe Prelude.Text,
    -- | Channel ingest endpoint, part of the definition of an ingest server,
    -- used when you set up streaming software.
    ingestEndpoint :: Prelude.Maybe Prelude.Text,
    -- | Recording-configuration ARN. A value other than an empty string
    -- indicates that recording is enabled. Default: \"\" (empty string,
    -- recording is disabled).
    recordingConfigurationArn :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'Channel' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'tags', 'channel_tags' - Array of 1-50 maps, each of the form @string:string (key:value)@. See
-- <https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html Tagging Amazon Web Services Resources>
-- for more information, including restrictions that apply to tags and
-- \"Tag naming limits and requirements\"; Amazon IVS has no
-- service-specific constraints beyond what is documented there.
--
-- 'name', 'channel_name' - Channel name.
--
-- 'type'', 'channel_type' - Channel type, which determines the allowable resolution and bitrate. /If
-- you exceed the allowable resolution or bitrate, the stream probably will
-- disconnect immediately./ Default: @STANDARD@. Valid values:
--
-- -   @STANDARD@: Multiple qualities are generated from the original
--     input, to automatically give viewers the best experience for their
--     devices and network conditions. Resolution can be up to 1080p and
--     bitrate can be up to 8.5 Mbps. Audio is transcoded only for
--     renditions 360p and below; above that, audio is passed through.
--
-- -   @BASIC@: Amazon IVS delivers the original input to viewers. The
--     viewer’s video-quality choice is limited to the original input.
--     Resolution can be up to 480p and bitrate can be up to 1.5 Mbps.
--
-- 'latencyMode', 'channel_latencyMode' - Channel latency mode. Use @NORMAL@ to broadcast and deliver live video
-- up to Full HD. Use @LOW@ for near-real-time interaction with viewers.
-- Default: @LOW@. (Note: In the Amazon IVS console, @LOW@ and @NORMAL@
-- correspond to Ultra-low and Standard, respectively.)
--
-- 'arn', 'channel_arn' - Channel ARN.
--
-- 'authorized', 'channel_authorized' - Whether the channel is private (enabled for playback authorization).
-- Default: @false@.
--
-- 'playbackUrl', 'channel_playbackUrl' - Channel playback URL.
--
-- 'ingestEndpoint', 'channel_ingestEndpoint' - Channel ingest endpoint, part of the definition of an ingest server,
-- used when you set up streaming software.
--
-- 'recordingConfigurationArn', 'channel_recordingConfigurationArn' - Recording-configuration ARN. A value other than an empty string
-- indicates that recording is enabled. Default: \"\" (empty string,
-- recording is disabled).
newChannel ::
  Channel
newChannel =
  Channel'
    { tags = Prelude.Nothing,
      name = Prelude.Nothing,
      type' = Prelude.Nothing,
      latencyMode = Prelude.Nothing,
      arn = Prelude.Nothing,
      authorized = Prelude.Nothing,
      playbackUrl = Prelude.Nothing,
      ingestEndpoint = Prelude.Nothing,
      recordingConfigurationArn = Prelude.Nothing
    }

-- | Array of 1-50 maps, each of the form @string:string (key:value)@. See
-- <https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html Tagging Amazon Web Services Resources>
-- for more information, including restrictions that apply to tags and
-- \"Tag naming limits and requirements\"; Amazon IVS has no
-- service-specific constraints beyond what is documented there.
channel_tags :: Lens.Lens' Channel (Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text))
channel_tags = Lens.lens (\Channel' {tags} -> tags) (\s@Channel' {} a -> s {tags = a} :: Channel) Prelude.. Lens.mapping Lens.coerced

-- | Channel name.
channel_name :: Lens.Lens' Channel (Prelude.Maybe Prelude.Text)
channel_name = Lens.lens (\Channel' {name} -> name) (\s@Channel' {} a -> s {name = a} :: Channel)

-- | Channel type, which determines the allowable resolution and bitrate. /If
-- you exceed the allowable resolution or bitrate, the stream probably will
-- disconnect immediately./ Default: @STANDARD@. Valid values:
--
-- -   @STANDARD@: Multiple qualities are generated from the original
--     input, to automatically give viewers the best experience for their
--     devices and network conditions. Resolution can be up to 1080p and
--     bitrate can be up to 8.5 Mbps. Audio is transcoded only for
--     renditions 360p and below; above that, audio is passed through.
--
-- -   @BASIC@: Amazon IVS delivers the original input to viewers. The
--     viewer’s video-quality choice is limited to the original input.
--     Resolution can be up to 480p and bitrate can be up to 1.5 Mbps.
channel_type :: Lens.Lens' Channel (Prelude.Maybe ChannelType)
channel_type = Lens.lens (\Channel' {type'} -> type') (\s@Channel' {} a -> s {type' = a} :: Channel)

-- | Channel latency mode. Use @NORMAL@ to broadcast and deliver live video
-- up to Full HD. Use @LOW@ for near-real-time interaction with viewers.
-- Default: @LOW@. (Note: In the Amazon IVS console, @LOW@ and @NORMAL@
-- correspond to Ultra-low and Standard, respectively.)
channel_latencyMode :: Lens.Lens' Channel (Prelude.Maybe ChannelLatencyMode)
channel_latencyMode = Lens.lens (\Channel' {latencyMode} -> latencyMode) (\s@Channel' {} a -> s {latencyMode = a} :: Channel)

-- | Channel ARN.
channel_arn :: Lens.Lens' Channel (Prelude.Maybe Prelude.Text)
channel_arn = Lens.lens (\Channel' {arn} -> arn) (\s@Channel' {} a -> s {arn = a} :: Channel)

-- | Whether the channel is private (enabled for playback authorization).
-- Default: @false@.
channel_authorized :: Lens.Lens' Channel (Prelude.Maybe Prelude.Bool)
channel_authorized = Lens.lens (\Channel' {authorized} -> authorized) (\s@Channel' {} a -> s {authorized = a} :: Channel)

-- | Channel playback URL.
channel_playbackUrl :: Lens.Lens' Channel (Prelude.Maybe Prelude.Text)
channel_playbackUrl = Lens.lens (\Channel' {playbackUrl} -> playbackUrl) (\s@Channel' {} a -> s {playbackUrl = a} :: Channel)

-- | Channel ingest endpoint, part of the definition of an ingest server,
-- used when you set up streaming software.
channel_ingestEndpoint :: Lens.Lens' Channel (Prelude.Maybe Prelude.Text)
channel_ingestEndpoint = Lens.lens (\Channel' {ingestEndpoint} -> ingestEndpoint) (\s@Channel' {} a -> s {ingestEndpoint = a} :: Channel)

-- | Recording-configuration ARN. A value other than an empty string
-- indicates that recording is enabled. Default: \"\" (empty string,
-- recording is disabled).
channel_recordingConfigurationArn :: Lens.Lens' Channel (Prelude.Maybe Prelude.Text)
channel_recordingConfigurationArn = Lens.lens (\Channel' {recordingConfigurationArn} -> recordingConfigurationArn) (\s@Channel' {} a -> s {recordingConfigurationArn = a} :: Channel)

instance Core.FromJSON Channel where
  parseJSON =
    Core.withObject
      "Channel"
      ( \x ->
          Channel'
            Prelude.<$> (x Core..:? "tags" Core..!= Prelude.mempty)
            Prelude.<*> (x Core..:? "name")
            Prelude.<*> (x Core..:? "type")
            Prelude.<*> (x Core..:? "latencyMode")
            Prelude.<*> (x Core..:? "arn")
            Prelude.<*> (x Core..:? "authorized")
            Prelude.<*> (x Core..:? "playbackUrl")
            Prelude.<*> (x Core..:? "ingestEndpoint")
            Prelude.<*> (x Core..:? "recordingConfigurationArn")
      )

instance Prelude.Hashable Channel where
  hashWithSalt _salt Channel' {..} =
    _salt `Prelude.hashWithSalt` tags
      `Prelude.hashWithSalt` name
      `Prelude.hashWithSalt` type'
      `Prelude.hashWithSalt` latencyMode
      `Prelude.hashWithSalt` arn
      `Prelude.hashWithSalt` authorized
      `Prelude.hashWithSalt` playbackUrl
      `Prelude.hashWithSalt` ingestEndpoint
      `Prelude.hashWithSalt` recordingConfigurationArn

instance Prelude.NFData Channel where
  rnf Channel' {..} =
    Prelude.rnf tags
      `Prelude.seq` Prelude.rnf name
      `Prelude.seq` Prelude.rnf type'
      `Prelude.seq` Prelude.rnf latencyMode
      `Prelude.seq` Prelude.rnf arn
      `Prelude.seq` Prelude.rnf authorized
      `Prelude.seq` Prelude.rnf playbackUrl
      `Prelude.seq` Prelude.rnf ingestEndpoint
      `Prelude.seq` Prelude.rnf recordingConfigurationArn
