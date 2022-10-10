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
-- Module      : Amazonka.AppRunner.Types.Runtime
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.AppRunner.Types.Runtime
  ( Runtime
      ( ..,
        Runtime_CORRETTO_11,
        Runtime_CORRETTO_8,
        Runtime_NODEJS_12,
        Runtime_NODEJS_14,
        Runtime_NODEJS_16,
        Runtime_PYTHON_3
      ),
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Prelude as Prelude

newtype Runtime = Runtime' {fromRuntime :: Core.Text}
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

pattern Runtime_CORRETTO_11 :: Runtime
pattern Runtime_CORRETTO_11 = Runtime' "CORRETTO_11"

pattern Runtime_CORRETTO_8 :: Runtime
pattern Runtime_CORRETTO_8 = Runtime' "CORRETTO_8"

pattern Runtime_NODEJS_12 :: Runtime
pattern Runtime_NODEJS_12 = Runtime' "NODEJS_12"

pattern Runtime_NODEJS_14 :: Runtime
pattern Runtime_NODEJS_14 = Runtime' "NODEJS_14"

pattern Runtime_NODEJS_16 :: Runtime
pattern Runtime_NODEJS_16 = Runtime' "NODEJS_16"

pattern Runtime_PYTHON_3 :: Runtime
pattern Runtime_PYTHON_3 = Runtime' "PYTHON_3"

{-# COMPLETE
  Runtime_CORRETTO_11,
  Runtime_CORRETTO_8,
  Runtime_NODEJS_12,
  Runtime_NODEJS_14,
  Runtime_NODEJS_16,
  Runtime_PYTHON_3,
  Runtime'
  #-}
