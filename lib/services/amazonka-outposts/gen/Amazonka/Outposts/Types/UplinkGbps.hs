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
-- Module      : Amazonka.Outposts.Types.UplinkGbps
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.Outposts.Types.UplinkGbps
  ( UplinkGbps
      ( ..,
        UplinkGbps_UPLINK_100G,
        UplinkGbps_UPLINK_10G,
        UplinkGbps_UPLINK_1G,
        UplinkGbps_UPLINK_40G
      ),
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Prelude as Prelude

newtype UplinkGbps = UplinkGbps'
  { fromUplinkGbps ::
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

pattern UplinkGbps_UPLINK_100G :: UplinkGbps
pattern UplinkGbps_UPLINK_100G = UplinkGbps' "UPLINK_100G"

pattern UplinkGbps_UPLINK_10G :: UplinkGbps
pattern UplinkGbps_UPLINK_10G = UplinkGbps' "UPLINK_10G"

pattern UplinkGbps_UPLINK_1G :: UplinkGbps
pattern UplinkGbps_UPLINK_1G = UplinkGbps' "UPLINK_1G"

pattern UplinkGbps_UPLINK_40G :: UplinkGbps
pattern UplinkGbps_UPLINK_40G = UplinkGbps' "UPLINK_40G"

{-# COMPLETE
  UplinkGbps_UPLINK_100G,
  UplinkGbps_UPLINK_10G,
  UplinkGbps_UPLINK_1G,
  UplinkGbps_UPLINK_40G,
  UplinkGbps'
  #-}
