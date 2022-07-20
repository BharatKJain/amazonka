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
-- Module      : Amazonka.IVS.Types.PlaybackKeyPairSummary
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.IVS.Types.PlaybackKeyPairSummary where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | Summary information about a playback key pair.
--
-- /See:/ 'newPlaybackKeyPairSummary' smart constructor.
data PlaybackKeyPairSummary = PlaybackKeyPairSummary'
  { -- | Array of 1-50 maps, each of the form @string:string (key:value)@.
    tags :: Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text),
    -- | Playback-key-pair name. The value does not need to be unique.
    name :: Prelude.Maybe Prelude.Text,
    -- | Key-pair ARN.
    arn :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'PlaybackKeyPairSummary' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'tags', 'playbackKeyPairSummary_tags' - Array of 1-50 maps, each of the form @string:string (key:value)@.
--
-- 'name', 'playbackKeyPairSummary_name' - Playback-key-pair name. The value does not need to be unique.
--
-- 'arn', 'playbackKeyPairSummary_arn' - Key-pair ARN.
newPlaybackKeyPairSummary ::
  PlaybackKeyPairSummary
newPlaybackKeyPairSummary =
  PlaybackKeyPairSummary'
    { tags = Prelude.Nothing,
      name = Prelude.Nothing,
      arn = Prelude.Nothing
    }

-- | Array of 1-50 maps, each of the form @string:string (key:value)@.
playbackKeyPairSummary_tags :: Lens.Lens' PlaybackKeyPairSummary (Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text))
playbackKeyPairSummary_tags = Lens.lens (\PlaybackKeyPairSummary' {tags} -> tags) (\s@PlaybackKeyPairSummary' {} a -> s {tags = a} :: PlaybackKeyPairSummary) Prelude.. Lens.mapping Lens.coerced

-- | Playback-key-pair name. The value does not need to be unique.
playbackKeyPairSummary_name :: Lens.Lens' PlaybackKeyPairSummary (Prelude.Maybe Prelude.Text)
playbackKeyPairSummary_name = Lens.lens (\PlaybackKeyPairSummary' {name} -> name) (\s@PlaybackKeyPairSummary' {} a -> s {name = a} :: PlaybackKeyPairSummary)

-- | Key-pair ARN.
playbackKeyPairSummary_arn :: Lens.Lens' PlaybackKeyPairSummary (Prelude.Maybe Prelude.Text)
playbackKeyPairSummary_arn = Lens.lens (\PlaybackKeyPairSummary' {arn} -> arn) (\s@PlaybackKeyPairSummary' {} a -> s {arn = a} :: PlaybackKeyPairSummary)

instance Core.FromJSON PlaybackKeyPairSummary where
  parseJSON =
    Core.withObject
      "PlaybackKeyPairSummary"
      ( \x ->
          PlaybackKeyPairSummary'
            Prelude.<$> (x Core..:? "tags" Core..!= Prelude.mempty)
            Prelude.<*> (x Core..:? "name")
            Prelude.<*> (x Core..:? "arn")
      )

instance Prelude.Hashable PlaybackKeyPairSummary where
  hashWithSalt _salt PlaybackKeyPairSummary' {..} =
    _salt `Prelude.hashWithSalt` tags
      `Prelude.hashWithSalt` name
      `Prelude.hashWithSalt` arn

instance Prelude.NFData PlaybackKeyPairSummary where
  rnf PlaybackKeyPairSummary' {..} =
    Prelude.rnf tags
      `Prelude.seq` Prelude.rnf name
      `Prelude.seq` Prelude.rnf arn
