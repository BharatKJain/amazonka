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
-- Module      : Amazonka.CodeBuild.Types.AuthType
-- Copyright   : (c) 2013-2023 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.CodeBuild.Types.AuthType
  ( AuthType
      ( ..,
        AuthType_BASIC_AUTH,
        AuthType_OAUTH,
        AuthType_PERSONAL_ACCESS_TOKEN
      ),
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude

newtype AuthType = AuthType'
  { fromAuthType ::
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

pattern AuthType_BASIC_AUTH :: AuthType
pattern AuthType_BASIC_AUTH = AuthType' "BASIC_AUTH"

pattern AuthType_OAUTH :: AuthType
pattern AuthType_OAUTH = AuthType' "OAUTH"

pattern AuthType_PERSONAL_ACCESS_TOKEN :: AuthType
pattern AuthType_PERSONAL_ACCESS_TOKEN = AuthType' "PERSONAL_ACCESS_TOKEN"

{-# COMPLETE
  AuthType_BASIC_AUTH,
  AuthType_OAUTH,
  AuthType_PERSONAL_ACCESS_TOKEN,
  AuthType'
  #-}
