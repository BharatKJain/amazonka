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
-- Module      : Amazonka.Route53Resolver.Types.AutodefinedReverseFlag
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.Route53Resolver.Types.AutodefinedReverseFlag
  ( AutodefinedReverseFlag
      ( ..,
        AutodefinedReverseFlag_DISABLE,
        AutodefinedReverseFlag_ENABLE
      ),
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Prelude as Prelude

newtype AutodefinedReverseFlag = AutodefinedReverseFlag'
  { fromAutodefinedReverseFlag ::
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

pattern AutodefinedReverseFlag_DISABLE :: AutodefinedReverseFlag
pattern AutodefinedReverseFlag_DISABLE = AutodefinedReverseFlag' "DISABLE"

pattern AutodefinedReverseFlag_ENABLE :: AutodefinedReverseFlag
pattern AutodefinedReverseFlag_ENABLE = AutodefinedReverseFlag' "ENABLE"

{-# COMPLETE
  AutodefinedReverseFlag_DISABLE,
  AutodefinedReverseFlag_ENABLE,
  AutodefinedReverseFlag'
  #-}
