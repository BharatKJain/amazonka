{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Amazonka.ElasticBeanstalk.Waiters
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.ElasticBeanstalk.Waiters where

import qualified Amazonka.Core as Core
import Amazonka.ElasticBeanstalk.DescribeEnvironments
import Amazonka.ElasticBeanstalk.Lens
import Amazonka.ElasticBeanstalk.Types
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | Polls 'Amazonka.ElasticBeanstalk.DescribeEnvironments' every 20 seconds until a successful state is reached. An error is returned after 20 failed checks.
newEnvironmentUpdated :: Core.Wait DescribeEnvironments
newEnvironmentUpdated =
  Core.Wait
    { Core._waitName = "EnvironmentUpdated",
      Core._waitAttempts = 20,
      Core._waitDelay = 20,
      Core._waitAcceptors =
        [ Core.matchAll
            "Ready"
            Core.AcceptSuccess
            ( Lens.folding
                ( Lens.concatOf
                    ( environmentDescriptionsMessage_environments
                        Prelude.. Lens._Just
                    )
                )
                Prelude.. environmentDescription_status
                Prelude.. Lens._Just
                Prelude.. Lens.to Core.toTextCI
            ),
          Core.matchAll
            "Updating"
            Core.AcceptRetry
            ( Lens.folding
                ( Lens.concatOf
                    ( environmentDescriptionsMessage_environments
                        Prelude.. Lens._Just
                    )
                )
                Prelude.. environmentDescription_status
                Prelude.. Lens._Just
                Prelude.. Lens.to Core.toTextCI
            )
        ]
    }

-- | Polls 'Amazonka.ElasticBeanstalk.DescribeEnvironments' every 20 seconds until a successful state is reached. An error is returned after 20 failed checks.
newEnvironmentTerminated :: Core.Wait DescribeEnvironments
newEnvironmentTerminated =
  Core.Wait
    { Core._waitName = "EnvironmentTerminated",
      Core._waitAttempts = 20,
      Core._waitDelay = 20,
      Core._waitAcceptors =
        [ Core.matchAll
            "Terminated"
            Core.AcceptSuccess
            ( Lens.folding
                ( Lens.concatOf
                    ( environmentDescriptionsMessage_environments
                        Prelude.. Lens._Just
                    )
                )
                Prelude.. environmentDescription_status
                Prelude.. Lens._Just
                Prelude.. Lens.to Core.toTextCI
            ),
          Core.matchAll
            "Terminating"
            Core.AcceptRetry
            ( Lens.folding
                ( Lens.concatOf
                    ( environmentDescriptionsMessage_environments
                        Prelude.. Lens._Just
                    )
                )
                Prelude.. environmentDescription_status
                Prelude.. Lens._Just
                Prelude.. Lens.to Core.toTextCI
            )
        ]
    }

-- | Polls 'Amazonka.ElasticBeanstalk.DescribeEnvironments' every 20 seconds until a successful state is reached. An error is returned after 20 failed checks.
newEnvironmentExists :: Core.Wait DescribeEnvironments
newEnvironmentExists =
  Core.Wait
    { Core._waitName = "EnvironmentExists",
      Core._waitAttempts = 20,
      Core._waitDelay = 20,
      Core._waitAcceptors =
        [ Core.matchAll
            "Ready"
            Core.AcceptSuccess
            ( Lens.folding
                ( Lens.concatOf
                    ( environmentDescriptionsMessage_environments
                        Prelude.. Lens._Just
                    )
                )
                Prelude.. environmentDescription_status
                Prelude.. Lens._Just
                Prelude.. Lens.to Core.toTextCI
            ),
          Core.matchAll
            "Launching"
            Core.AcceptRetry
            ( Lens.folding
                ( Lens.concatOf
                    ( environmentDescriptionsMessage_environments
                        Prelude.. Lens._Just
                    )
                )
                Prelude.. environmentDescription_status
                Prelude.. Lens._Just
                Prelude.. Lens.to Core.toTextCI
            )
        ]
    }
