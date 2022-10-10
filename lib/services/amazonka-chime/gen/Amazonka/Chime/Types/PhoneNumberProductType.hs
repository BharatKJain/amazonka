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
-- Module      : Amazonka.Chime.Types.PhoneNumberProductType
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.Chime.Types.PhoneNumberProductType
  ( PhoneNumberProductType
      ( ..,
        PhoneNumberProductType_BusinessCalling,
        PhoneNumberProductType_SipMediaApplicationDialIn,
        PhoneNumberProductType_VoiceConnector
      ),
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Prelude as Prelude

newtype PhoneNumberProductType = PhoneNumberProductType'
  { fromPhoneNumberProductType ::
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

pattern PhoneNumberProductType_BusinessCalling :: PhoneNumberProductType
pattern PhoneNumberProductType_BusinessCalling = PhoneNumberProductType' "BusinessCalling"

pattern PhoneNumberProductType_SipMediaApplicationDialIn :: PhoneNumberProductType
pattern PhoneNumberProductType_SipMediaApplicationDialIn = PhoneNumberProductType' "SipMediaApplicationDialIn"

pattern PhoneNumberProductType_VoiceConnector :: PhoneNumberProductType
pattern PhoneNumberProductType_VoiceConnector = PhoneNumberProductType' "VoiceConnector"

{-# COMPLETE
  PhoneNumberProductType_BusinessCalling,
  PhoneNumberProductType_SipMediaApplicationDialIn,
  PhoneNumberProductType_VoiceConnector,
  PhoneNumberProductType'
  #-}
