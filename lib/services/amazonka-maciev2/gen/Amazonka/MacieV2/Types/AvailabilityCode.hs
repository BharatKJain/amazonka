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
-- Module      : Amazonka.MacieV2.Types.AvailabilityCode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.MacieV2.Types.AvailabilityCode
  ( AvailabilityCode
      ( ..,
        AvailabilityCode_AVAILABLE,
        AvailabilityCode_UNAVAILABLE
      ),
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Prelude as Prelude

-- | Specifies whether occurrences of sensitive data can be retrieved for a
-- finding. Possible values are:
newtype AvailabilityCode = AvailabilityCode'
  { fromAvailabilityCode ::
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

pattern AvailabilityCode_AVAILABLE :: AvailabilityCode
pattern AvailabilityCode_AVAILABLE = AvailabilityCode' "AVAILABLE"

pattern AvailabilityCode_UNAVAILABLE :: AvailabilityCode
pattern AvailabilityCode_UNAVAILABLE = AvailabilityCode' "UNAVAILABLE"

{-# COMPLETE
  AvailabilityCode_AVAILABLE,
  AvailabilityCode_UNAVAILABLE,
  AvailabilityCode'
  #-}
