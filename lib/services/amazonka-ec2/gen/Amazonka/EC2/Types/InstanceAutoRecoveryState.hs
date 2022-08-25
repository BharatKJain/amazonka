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
-- Module      : Amazonka.EC2.Types.InstanceAutoRecoveryState
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.EC2.Types.InstanceAutoRecoveryState
  ( InstanceAutoRecoveryState
      ( ..,
        InstanceAutoRecoveryState_Default,
        InstanceAutoRecoveryState_Disabled
      ),
  )
where

import qualified Amazonka.Core as Core
import Amazonka.EC2.Internal
import qualified Amazonka.Prelude as Prelude

newtype InstanceAutoRecoveryState = InstanceAutoRecoveryState'
  { fromInstanceAutoRecoveryState ::
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

pattern InstanceAutoRecoveryState_Default :: InstanceAutoRecoveryState
pattern InstanceAutoRecoveryState_Default = InstanceAutoRecoveryState' "default"

pattern InstanceAutoRecoveryState_Disabled :: InstanceAutoRecoveryState
pattern InstanceAutoRecoveryState_Disabled = InstanceAutoRecoveryState' "disabled"

{-# COMPLETE
  InstanceAutoRecoveryState_Default,
  InstanceAutoRecoveryState_Disabled,
  InstanceAutoRecoveryState'
  #-}
