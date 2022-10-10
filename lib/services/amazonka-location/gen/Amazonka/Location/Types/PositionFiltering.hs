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
-- Module      : Amazonka.Location.Types.PositionFiltering
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.Location.Types.PositionFiltering
  ( PositionFiltering
      ( ..,
        PositionFiltering_AccuracyBased,
        PositionFiltering_DistanceBased,
        PositionFiltering_TimeBased
      ),
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Prelude as Prelude

newtype PositionFiltering = PositionFiltering'
  { fromPositionFiltering ::
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

pattern PositionFiltering_AccuracyBased :: PositionFiltering
pattern PositionFiltering_AccuracyBased = PositionFiltering' "AccuracyBased"

pattern PositionFiltering_DistanceBased :: PositionFiltering
pattern PositionFiltering_DistanceBased = PositionFiltering' "DistanceBased"

pattern PositionFiltering_TimeBased :: PositionFiltering
pattern PositionFiltering_TimeBased = PositionFiltering' "TimeBased"

{-# COMPLETE
  PositionFiltering_AccuracyBased,
  PositionFiltering_DistanceBased,
  PositionFiltering_TimeBased,
  PositionFiltering'
  #-}
