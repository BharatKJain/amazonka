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
-- Module      : Amazonka.EC2.Types.CapacityReservationFleetState
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.EC2.Types.CapacityReservationFleetState
  ( CapacityReservationFleetState
      ( ..,
        CapacityReservationFleetState_Active,
        CapacityReservationFleetState_Cancelled,
        CapacityReservationFleetState_Cancelling,
        CapacityReservationFleetState_Expired,
        CapacityReservationFleetState_Expiring,
        CapacityReservationFleetState_Failed,
        CapacityReservationFleetState_Modifying,
        CapacityReservationFleetState_Partially_fulfilled,
        CapacityReservationFleetState_Submitted
      ),
  )
where

import qualified Amazonka.Core as Core
import Amazonka.EC2.Internal
import qualified Amazonka.Prelude as Prelude

newtype CapacityReservationFleetState = CapacityReservationFleetState'
  { fromCapacityReservationFleetState ::
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

pattern CapacityReservationFleetState_Active :: CapacityReservationFleetState
pattern CapacityReservationFleetState_Active = CapacityReservationFleetState' "active"

pattern CapacityReservationFleetState_Cancelled :: CapacityReservationFleetState
pattern CapacityReservationFleetState_Cancelled = CapacityReservationFleetState' "cancelled"

pattern CapacityReservationFleetState_Cancelling :: CapacityReservationFleetState
pattern CapacityReservationFleetState_Cancelling = CapacityReservationFleetState' "cancelling"

pattern CapacityReservationFleetState_Expired :: CapacityReservationFleetState
pattern CapacityReservationFleetState_Expired = CapacityReservationFleetState' "expired"

pattern CapacityReservationFleetState_Expiring :: CapacityReservationFleetState
pattern CapacityReservationFleetState_Expiring = CapacityReservationFleetState' "expiring"

pattern CapacityReservationFleetState_Failed :: CapacityReservationFleetState
pattern CapacityReservationFleetState_Failed = CapacityReservationFleetState' "failed"

pattern CapacityReservationFleetState_Modifying :: CapacityReservationFleetState
pattern CapacityReservationFleetState_Modifying = CapacityReservationFleetState' "modifying"

pattern CapacityReservationFleetState_Partially_fulfilled :: CapacityReservationFleetState
pattern CapacityReservationFleetState_Partially_fulfilled = CapacityReservationFleetState' "partially_fulfilled"

pattern CapacityReservationFleetState_Submitted :: CapacityReservationFleetState
pattern CapacityReservationFleetState_Submitted = CapacityReservationFleetState' "submitted"

{-# COMPLETE
  CapacityReservationFleetState_Active,
  CapacityReservationFleetState_Cancelled,
  CapacityReservationFleetState_Cancelling,
  CapacityReservationFleetState_Expired,
  CapacityReservationFleetState_Expiring,
  CapacityReservationFleetState_Failed,
  CapacityReservationFleetState_Modifying,
  CapacityReservationFleetState_Partially_fulfilled,
  CapacityReservationFleetState_Submitted,
  CapacityReservationFleetState'
  #-}
