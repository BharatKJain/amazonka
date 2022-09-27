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
-- Module      : Amazonka.PrivateNetworks.Types.NetworkResourceDefinitionType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.PrivateNetworks.Types.NetworkResourceDefinitionType
  ( NetworkResourceDefinitionType
      ( ..,
        NetworkResourceDefinitionType_DEVICE_IDENTIFIER,
        NetworkResourceDefinitionType_RADIO_UNIT
      ),
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Prelude as Prelude

newtype NetworkResourceDefinitionType = NetworkResourceDefinitionType'
  { fromNetworkResourceDefinitionType ::
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

pattern NetworkResourceDefinitionType_DEVICE_IDENTIFIER :: NetworkResourceDefinitionType
pattern NetworkResourceDefinitionType_DEVICE_IDENTIFIER = NetworkResourceDefinitionType' "DEVICE_IDENTIFIER"

pattern NetworkResourceDefinitionType_RADIO_UNIT :: NetworkResourceDefinitionType
pattern NetworkResourceDefinitionType_RADIO_UNIT = NetworkResourceDefinitionType' "RADIO_UNIT"

{-# COMPLETE
  NetworkResourceDefinitionType_DEVICE_IDENTIFIER,
  NetworkResourceDefinitionType_RADIO_UNIT,
  NetworkResourceDefinitionType'
  #-}
