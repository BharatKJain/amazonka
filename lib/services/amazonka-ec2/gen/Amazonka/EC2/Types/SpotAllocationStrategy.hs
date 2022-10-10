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
-- Module      : Amazonka.EC2.Types.SpotAllocationStrategy
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.EC2.Types.SpotAllocationStrategy
  ( SpotAllocationStrategy
      ( ..,
        SpotAllocationStrategy_Capacity_optimized,
        SpotAllocationStrategy_Capacity_optimized_prioritized,
        SpotAllocationStrategy_Diversified,
        SpotAllocationStrategy_Lowest_price
      ),
  )
where

import qualified Amazonka.Core as Core
import Amazonka.EC2.Internal
import qualified Amazonka.Prelude as Prelude

newtype SpotAllocationStrategy = SpotAllocationStrategy'
  { fromSpotAllocationStrategy ::
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

pattern SpotAllocationStrategy_Capacity_optimized :: SpotAllocationStrategy
pattern SpotAllocationStrategy_Capacity_optimized = SpotAllocationStrategy' "capacity-optimized"

pattern SpotAllocationStrategy_Capacity_optimized_prioritized :: SpotAllocationStrategy
pattern SpotAllocationStrategy_Capacity_optimized_prioritized = SpotAllocationStrategy' "capacity-optimized-prioritized"

pattern SpotAllocationStrategy_Diversified :: SpotAllocationStrategy
pattern SpotAllocationStrategy_Diversified = SpotAllocationStrategy' "diversified"

pattern SpotAllocationStrategy_Lowest_price :: SpotAllocationStrategy
pattern SpotAllocationStrategy_Lowest_price = SpotAllocationStrategy' "lowest-price"

{-# COMPLETE
  SpotAllocationStrategy_Capacity_optimized,
  SpotAllocationStrategy_Capacity_optimized_prioritized,
  SpotAllocationStrategy_Diversified,
  SpotAllocationStrategy_Lowest_price,
  SpotAllocationStrategy'
  #-}
