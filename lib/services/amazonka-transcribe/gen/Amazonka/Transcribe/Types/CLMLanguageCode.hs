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
-- Module      : Amazonka.Transcribe.Types.CLMLanguageCode
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.Transcribe.Types.CLMLanguageCode
  ( CLMLanguageCode
      ( ..,
        CLMLanguageCode_En_AU,
        CLMLanguageCode_En_GB,
        CLMLanguageCode_En_US,
        CLMLanguageCode_Es_US,
        CLMLanguageCode_Hi_IN
      ),
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Prelude as Prelude

newtype CLMLanguageCode = CLMLanguageCode'
  { fromCLMLanguageCode ::
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

pattern CLMLanguageCode_En_AU :: CLMLanguageCode
pattern CLMLanguageCode_En_AU = CLMLanguageCode' "en-AU"

pattern CLMLanguageCode_En_GB :: CLMLanguageCode
pattern CLMLanguageCode_En_GB = CLMLanguageCode' "en-GB"

pattern CLMLanguageCode_En_US :: CLMLanguageCode
pattern CLMLanguageCode_En_US = CLMLanguageCode' "en-US"

pattern CLMLanguageCode_Es_US :: CLMLanguageCode
pattern CLMLanguageCode_Es_US = CLMLanguageCode' "es-US"

pattern CLMLanguageCode_Hi_IN :: CLMLanguageCode
pattern CLMLanguageCode_Hi_IN = CLMLanguageCode' "hi-IN"

{-# COMPLETE
  CLMLanguageCode_En_AU,
  CLMLanguageCode_En_GB,
  CLMLanguageCode_En_US,
  CLMLanguageCode_Es_US,
  CLMLanguageCode_Hi_IN,
  CLMLanguageCode'
  #-}
