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
-- Module      : Amazonka.Chime.Types.SourceConfiguration
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.Chime.Types.SourceConfiguration where

import Amazonka.Chime.Types.SelectedVideoStreams
import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | Source configuration for a specified media capture pipeline.
--
-- /See:/ 'newSourceConfiguration' smart constructor.
data SourceConfiguration = SourceConfiguration'
  { -- | The selected video streams to capture for a specified media capture
    -- pipeline. The number of video streams can\'t exceed 25.
    selectedVideoStreams :: Prelude.Maybe SelectedVideoStreams
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'SourceConfiguration' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'selectedVideoStreams', 'sourceConfiguration_selectedVideoStreams' - The selected video streams to capture for a specified media capture
-- pipeline. The number of video streams can\'t exceed 25.
newSourceConfiguration ::
  SourceConfiguration
newSourceConfiguration =
  SourceConfiguration'
    { selectedVideoStreams =
        Prelude.Nothing
    }

-- | The selected video streams to capture for a specified media capture
-- pipeline. The number of video streams can\'t exceed 25.
sourceConfiguration_selectedVideoStreams :: Lens.Lens' SourceConfiguration (Prelude.Maybe SelectedVideoStreams)
sourceConfiguration_selectedVideoStreams = Lens.lens (\SourceConfiguration' {selectedVideoStreams} -> selectedVideoStreams) (\s@SourceConfiguration' {} a -> s {selectedVideoStreams = a} :: SourceConfiguration)

instance Core.FromJSON SourceConfiguration where
  parseJSON =
    Core.withObject
      "SourceConfiguration"
      ( \x ->
          SourceConfiguration'
            Prelude.<$> (x Core..:? "SelectedVideoStreams")
      )

instance Prelude.Hashable SourceConfiguration where
  hashWithSalt _salt SourceConfiguration' {..} =
    _salt `Prelude.hashWithSalt` selectedVideoStreams

instance Prelude.NFData SourceConfiguration where
  rnf SourceConfiguration' {..} =
    Prelude.rnf selectedVideoStreams

instance Core.ToJSON SourceConfiguration where
  toJSON SourceConfiguration' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("SelectedVideoStreams" Core..=)
              Prelude.<$> selectedVideoStreams
          ]
      )
