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
-- Module      : Amazonka.DataSync.Types.Uid
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.DataSync.Types.Uid
  ( Uid
      ( ..,
        Uid_BOTH,
        Uid_INT_VALUE,
        Uid_NAME,
        Uid_NONE
      ),
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Prelude as Prelude

newtype Uid = Uid' {fromUid :: Core.Text}
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

pattern Uid_BOTH :: Uid
pattern Uid_BOTH = Uid' "BOTH"

pattern Uid_INT_VALUE :: Uid
pattern Uid_INT_VALUE = Uid' "INT_VALUE"

pattern Uid_NAME :: Uid
pattern Uid_NAME = Uid' "NAME"

pattern Uid_NONE :: Uid
pattern Uid_NONE = Uid' "NONE"

{-# COMPLETE
  Uid_BOTH,
  Uid_INT_VALUE,
  Uid_NAME,
  Uid_NONE,
  Uid'
  #-}
