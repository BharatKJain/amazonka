{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.AlexaBusiness.Types.CommsProtocol
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AlexaBusiness.Types.CommsProtocol
  ( CommsProtocol
      ( ..,
        CommsProtocol_H323,
        CommsProtocol_SIP,
        CommsProtocol_SIPS
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype CommsProtocol = CommsProtocol'
  { fromCommsProtocol ::
      Prelude.Text
  }
  deriving
    ( Prelude.Show,
      Prelude.Read,
      Prelude.Eq,
      Prelude.Ord,
      Prelude.Data,
      Prelude.Typeable,
      Prelude.Generic,
      Prelude.Hashable,
      Prelude.NFData,
      Prelude.FromText,
      Prelude.ToText,
      Prelude.ToByteString,
      Prelude.ToLog,
      Prelude.ToHeader,
      Prelude.ToQuery,
      Prelude.FromJSON,
      Prelude.FromJSONKey,
      Prelude.ToJSON,
      Prelude.ToJSONKey,
      Prelude.FromXML,
      Prelude.ToXML
    )

pattern CommsProtocol_H323 :: CommsProtocol
pattern CommsProtocol_H323 = CommsProtocol' "H323"

pattern CommsProtocol_SIP :: CommsProtocol
pattern CommsProtocol_SIP = CommsProtocol' "SIP"

pattern CommsProtocol_SIPS :: CommsProtocol
pattern CommsProtocol_SIPS = CommsProtocol' "SIPS"

{-# COMPLETE
  CommsProtocol_H323,
  CommsProtocol_SIP,
  CommsProtocol_SIPS,
  CommsProtocol'
  #-}