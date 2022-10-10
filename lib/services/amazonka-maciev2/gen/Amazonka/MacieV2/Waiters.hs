{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Amazonka.MacieV2.Waiters
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.MacieV2.Waiters where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import Amazonka.MacieV2.GetSensitiveDataOccurrences
import Amazonka.MacieV2.Lens
import Amazonka.MacieV2.Types
import qualified Amazonka.Prelude as Prelude

-- | Polls 'Amazonka.MacieV2.GetSensitiveDataOccurrences' every 2 seconds until a successful state is reached. An error is returned after 60 failed checks.
newFindingRevealed :: Core.Wait GetSensitiveDataOccurrences
newFindingRevealed =
  Core.Wait
    { Core._waitName = "FindingRevealed",
      Core._waitAttempts = 60,
      Core._waitDelay = 2,
      Core._waitAcceptors =
        [ Core.matchAll
            "SUCCESS"
            Core.AcceptSuccess
            ( getSensitiveDataOccurrencesResponse_status
                Prelude.. Lens._Just
                Prelude.. Lens.to Core.toTextCI
            ),
          Core.matchAll
            "ERROR"
            Core.AcceptSuccess
            ( getSensitiveDataOccurrencesResponse_status
                Prelude.. Lens._Just
                Prelude.. Lens.to Core.toTextCI
            )
        ]
    }
