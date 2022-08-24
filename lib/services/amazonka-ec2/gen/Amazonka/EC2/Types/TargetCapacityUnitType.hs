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
-- Module      : Amazonka.EC2.Types.TargetCapacityUnitType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.EC2.Types.TargetCapacityUnitType
  ( TargetCapacityUnitType
      ( ..,
        TargetCapacityUnitType_Memory_mib,
        TargetCapacityUnitType_Units,
        TargetCapacityUnitType_Vcpu
      ),
  )
where

import qualified Amazonka.Core as Core
import Amazonka.EC2.Internal
import qualified Amazonka.Prelude as Prelude

newtype TargetCapacityUnitType = TargetCapacityUnitType'
  { fromTargetCapacityUnitType ::
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

pattern TargetCapacityUnitType_Memory_mib :: TargetCapacityUnitType
pattern TargetCapacityUnitType_Memory_mib = TargetCapacityUnitType' "memory-mib"

pattern TargetCapacityUnitType_Units :: TargetCapacityUnitType
pattern TargetCapacityUnitType_Units = TargetCapacityUnitType' "units"

pattern TargetCapacityUnitType_Vcpu :: TargetCapacityUnitType
pattern TargetCapacityUnitType_Vcpu = TargetCapacityUnitType' "vcpu"

{-# COMPLETE
  TargetCapacityUnitType_Memory_mib,
  TargetCapacityUnitType_Units,
  TargetCapacityUnitType_Vcpu,
  TargetCapacityUnitType'
  #-}
