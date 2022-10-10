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
-- Module      : Amazonka.GroundStation.Types.BandwidthUnits
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.GroundStation.Types.BandwidthUnits
  ( BandwidthUnits
      ( ..,
        BandwidthUnits_GHz,
        BandwidthUnits_KHz,
        BandwidthUnits_MHz
      ),
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Prelude as Prelude

newtype BandwidthUnits = BandwidthUnits'
  { fromBandwidthUnits ::
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

pattern BandwidthUnits_GHz :: BandwidthUnits
pattern BandwidthUnits_GHz = BandwidthUnits' "GHz"

pattern BandwidthUnits_KHz :: BandwidthUnits
pattern BandwidthUnits_KHz = BandwidthUnits' "kHz"

pattern BandwidthUnits_MHz :: BandwidthUnits
pattern BandwidthUnits_MHz = BandwidthUnits' "MHz"

{-# COMPLETE
  BandwidthUnits_GHz,
  BandwidthUnits_KHz,
  BandwidthUnits_MHz,
  BandwidthUnits'
  #-}
