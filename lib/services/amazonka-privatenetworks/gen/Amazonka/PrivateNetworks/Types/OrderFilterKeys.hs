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
-- Module      : Amazonka.PrivateNetworks.Types.OrderFilterKeys
-- Copyright   : (c) 2013-2023 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.PrivateNetworks.Types.OrderFilterKeys
  ( OrderFilterKeys
      ( ..,
        OrderFilterKeys_NETWORK_SITE,
        OrderFilterKeys_STATUS
      ),
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude

newtype OrderFilterKeys = OrderFilterKeys'
  { fromOrderFilterKeys ::
      Data.Text
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
      Data.FromText,
      Data.ToText,
      Data.ToByteString,
      Data.ToLog,
      Data.ToHeader,
      Data.ToQuery,
      Data.FromJSON,
      Data.FromJSONKey,
      Data.ToJSON,
      Data.ToJSONKey,
      Data.FromXML,
      Data.ToXML
    )

pattern OrderFilterKeys_NETWORK_SITE :: OrderFilterKeys
pattern OrderFilterKeys_NETWORK_SITE = OrderFilterKeys' "NETWORK_SITE"

pattern OrderFilterKeys_STATUS :: OrderFilterKeys
pattern OrderFilterKeys_STATUS = OrderFilterKeys' "STATUS"

{-# COMPLETE
  OrderFilterKeys_NETWORK_SITE,
  OrderFilterKeys_STATUS,
  OrderFilterKeys'
  #-}
