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
-- Module      : Amazonka.IoTWireless.Types.SupportedRfRegion
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.IoTWireless.Types.SupportedRfRegion
  ( SupportedRfRegion
      ( ..,
        SupportedRfRegion_AS923_1,
        SupportedRfRegion_AU915,
        SupportedRfRegion_EU868,
        SupportedRfRegion_US915
      ),
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Prelude as Prelude

-- | Supported RfRegions
newtype SupportedRfRegion = SupportedRfRegion'
  { fromSupportedRfRegion ::
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

pattern SupportedRfRegion_AS923_1 :: SupportedRfRegion
pattern SupportedRfRegion_AS923_1 = SupportedRfRegion' "AS923-1"

pattern SupportedRfRegion_AU915 :: SupportedRfRegion
pattern SupportedRfRegion_AU915 = SupportedRfRegion' "AU915"

pattern SupportedRfRegion_EU868 :: SupportedRfRegion
pattern SupportedRfRegion_EU868 = SupportedRfRegion' "EU868"

pattern SupportedRfRegion_US915 :: SupportedRfRegion
pattern SupportedRfRegion_US915 = SupportedRfRegion' "US915"

{-# COMPLETE
  SupportedRfRegion_AS923_1,
  SupportedRfRegion_AU915,
  SupportedRfRegion_EU868,
  SupportedRfRegion_US915,
  SupportedRfRegion'
  #-}
