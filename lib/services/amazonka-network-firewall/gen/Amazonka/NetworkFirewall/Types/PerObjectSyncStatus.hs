{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Amazonka.NetworkFirewall.Types.PerObjectSyncStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.NetworkFirewall.Types.PerObjectSyncStatus
  ( PerObjectSyncStatus
      ( ..,
        PerObjectSyncStatus_CAPACITY_CONSTRAINED,
        PerObjectSyncStatus_IN_SYNC,
        PerObjectSyncStatus_PENDING
      ),
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Prelude as Prelude

newtype PerObjectSyncStatus = PerObjectSyncStatus'
  { fromPerObjectSyncStatus ::
      Core.Text
  }
  deriving stock
    ( Prelude.Show,
      Prelude.Read,
      Prelude.Eq,
      Prelude.Ord,
      Prelude.Generic
    )
  deriving newtype
    ( Prelude.Hashable,
      Prelude.NFData,
      Core.FromText,
      Core.ToText,
      Core.ToByteString,
      Core.ToLog,
      Core.ToHeader,
      Core.ToQuery,
      Core.FromJSON,
      Core.FromJSONKey,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromXML,
      Core.ToXML
    )

pattern PerObjectSyncStatus_CAPACITY_CONSTRAINED :: PerObjectSyncStatus
pattern PerObjectSyncStatus_CAPACITY_CONSTRAINED = PerObjectSyncStatus' "CAPACITY_CONSTRAINED"

pattern PerObjectSyncStatus_IN_SYNC :: PerObjectSyncStatus
pattern PerObjectSyncStatus_IN_SYNC = PerObjectSyncStatus' "IN_SYNC"

pattern PerObjectSyncStatus_PENDING :: PerObjectSyncStatus
pattern PerObjectSyncStatus_PENDING = PerObjectSyncStatus' "PENDING"

{-# COMPLETE
  PerObjectSyncStatus_CAPACITY_CONSTRAINED,
  PerObjectSyncStatus_IN_SYNC,
  PerObjectSyncStatus_PENDING,
  PerObjectSyncStatus'
  #-}
