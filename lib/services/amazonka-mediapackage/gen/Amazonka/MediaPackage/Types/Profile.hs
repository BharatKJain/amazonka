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
-- Module      : Amazonka.MediaPackage.Types.Profile
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.MediaPackage.Types.Profile
  ( Profile
      ( ..,
        Profile_DVB_DASH_2014,
        Profile_HBBTV_1_5,
        Profile_HYBRIDCAST,
        Profile_NONE
      ),
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Prelude as Prelude

newtype Profile = Profile' {fromProfile :: Core.Text}
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

pattern Profile_DVB_DASH_2014 :: Profile
pattern Profile_DVB_DASH_2014 = Profile' "DVB_DASH_2014"

pattern Profile_HBBTV_1_5 :: Profile
pattern Profile_HBBTV_1_5 = Profile' "HBBTV_1_5"

pattern Profile_HYBRIDCAST :: Profile
pattern Profile_HYBRIDCAST = Profile' "HYBRIDCAST"

pattern Profile_NONE :: Profile
pattern Profile_NONE = Profile' "NONE"

{-# COMPLETE
  Profile_DVB_DASH_2014,
  Profile_HBBTV_1_5,
  Profile_HYBRIDCAST,
  Profile_NONE,
  Profile'
  #-}
