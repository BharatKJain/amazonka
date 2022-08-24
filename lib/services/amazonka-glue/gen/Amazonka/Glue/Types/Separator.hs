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
-- Module      : Amazonka.Glue.Types.Separator
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.Glue.Types.Separator
  ( Separator
      ( ..,
        Separator_Comma,
        Separator_Ctrla,
        Separator_Pipe,
        Separator_Semicolon,
        Separator_Tab
      ),
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Prelude as Prelude

newtype Separator = Separator'
  { fromSeparator ::
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

pattern Separator_Comma :: Separator
pattern Separator_Comma = Separator' "comma"

pattern Separator_Ctrla :: Separator
pattern Separator_Ctrla = Separator' "ctrla"

pattern Separator_Pipe :: Separator
pattern Separator_Pipe = Separator' "pipe"

pattern Separator_Semicolon :: Separator
pattern Separator_Semicolon = Separator' "semicolon"

pattern Separator_Tab :: Separator
pattern Separator_Tab = Separator' "tab"

{-# COMPLETE
  Separator_Comma,
  Separator_Ctrla,
  Separator_Pipe,
  Separator_Semicolon,
  Separator_Tab,
  Separator'
  #-}
