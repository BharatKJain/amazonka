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
-- Module      : Amazonka.Transcribe.Types.ChannelDefinition
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.Transcribe.Types.ChannelDefinition where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import Amazonka.Transcribe.Types.ParticipantRole

-- | Allows you to specify which speaker is on which channel. For example, if
-- your agent is the first participant to speak, you would set @ChannelId@
-- to @0@ (to indicate the first channel) and @ParticipantRole@ to @AGENT@
-- (to indicate that it\'s the agent speaking).
--
-- /See:/ 'newChannelDefinition' smart constructor.
data ChannelDefinition = ChannelDefinition'
  { -- | Specify the speaker you want to define. Omitting this parameter is
    -- equivalent to specifying both participants.
    participantRole :: Prelude.Maybe ParticipantRole,
    -- | Specify the audio channel you want to define.
    channelId :: Prelude.Maybe Prelude.Natural
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ChannelDefinition' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'participantRole', 'channelDefinition_participantRole' - Specify the speaker you want to define. Omitting this parameter is
-- equivalent to specifying both participants.
--
-- 'channelId', 'channelDefinition_channelId' - Specify the audio channel you want to define.
newChannelDefinition ::
  ChannelDefinition
newChannelDefinition =
  ChannelDefinition'
    { participantRole =
        Prelude.Nothing,
      channelId = Prelude.Nothing
    }

-- | Specify the speaker you want to define. Omitting this parameter is
-- equivalent to specifying both participants.
channelDefinition_participantRole :: Lens.Lens' ChannelDefinition (Prelude.Maybe ParticipantRole)
channelDefinition_participantRole = Lens.lens (\ChannelDefinition' {participantRole} -> participantRole) (\s@ChannelDefinition' {} a -> s {participantRole = a} :: ChannelDefinition)

-- | Specify the audio channel you want to define.
channelDefinition_channelId :: Lens.Lens' ChannelDefinition (Prelude.Maybe Prelude.Natural)
channelDefinition_channelId = Lens.lens (\ChannelDefinition' {channelId} -> channelId) (\s@ChannelDefinition' {} a -> s {channelId = a} :: ChannelDefinition)

instance Core.FromJSON ChannelDefinition where
  parseJSON =
    Core.withObject
      "ChannelDefinition"
      ( \x ->
          ChannelDefinition'
            Prelude.<$> (x Core..:? "ParticipantRole")
            Prelude.<*> (x Core..:? "ChannelId")
      )

instance Prelude.Hashable ChannelDefinition where
  hashWithSalt _salt ChannelDefinition' {..} =
    _salt `Prelude.hashWithSalt` participantRole
      `Prelude.hashWithSalt` channelId

instance Prelude.NFData ChannelDefinition where
  rnf ChannelDefinition' {..} =
    Prelude.rnf participantRole
      `Prelude.seq` Prelude.rnf channelId

instance Core.ToJSON ChannelDefinition where
  toJSON ChannelDefinition' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("ParticipantRole" Core..=)
              Prelude.<$> participantRole,
            ("ChannelId" Core..=) Prelude.<$> channelId
          ]
      )
