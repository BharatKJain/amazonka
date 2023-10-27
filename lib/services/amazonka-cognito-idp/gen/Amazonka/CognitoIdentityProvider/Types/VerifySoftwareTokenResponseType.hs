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
-- Module      : Amazonka.CognitoIdentityProvider.Types.VerifySoftwareTokenResponseType
-- Copyright   : (c) 2013-2023 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.CognitoIdentityProvider.Types.VerifySoftwareTokenResponseType
  ( VerifySoftwareTokenResponseType
      ( ..,
        VerifySoftwareTokenResponseType_ERROR,
        VerifySoftwareTokenResponseType_SUCCESS
      ),
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude

newtype VerifySoftwareTokenResponseType = VerifySoftwareTokenResponseType'
  { fromVerifySoftwareTokenResponseType ::
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

pattern VerifySoftwareTokenResponseType_ERROR :: VerifySoftwareTokenResponseType
pattern VerifySoftwareTokenResponseType_ERROR = VerifySoftwareTokenResponseType' "ERROR"

pattern VerifySoftwareTokenResponseType_SUCCESS :: VerifySoftwareTokenResponseType
pattern VerifySoftwareTokenResponseType_SUCCESS = VerifySoftwareTokenResponseType' "SUCCESS"

{-# COMPLETE
  VerifySoftwareTokenResponseType_ERROR,
  VerifySoftwareTokenResponseType_SUCCESS,
  VerifySoftwareTokenResponseType'
  #-}
