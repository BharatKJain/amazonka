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
-- Module      : Amazonka.MediaLive.Types.BurnInBackgroundColor
-- Copyright   : (c) 2013-2023 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.MediaLive.Types.BurnInBackgroundColor
  ( BurnInBackgroundColor
      ( ..,
        BurnInBackgroundColor_BLACK,
        BurnInBackgroundColor_NONE,
        BurnInBackgroundColor_WHITE
      ),
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude

-- | Burn In Background Color
newtype BurnInBackgroundColor = BurnInBackgroundColor'
  { fromBurnInBackgroundColor ::
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

pattern BurnInBackgroundColor_BLACK :: BurnInBackgroundColor
pattern BurnInBackgroundColor_BLACK = BurnInBackgroundColor' "BLACK"

pattern BurnInBackgroundColor_NONE :: BurnInBackgroundColor
pattern BurnInBackgroundColor_NONE = BurnInBackgroundColor' "NONE"

pattern BurnInBackgroundColor_WHITE :: BurnInBackgroundColor
pattern BurnInBackgroundColor_WHITE = BurnInBackgroundColor' "WHITE"

{-# COMPLETE
  BurnInBackgroundColor_BLACK,
  BurnInBackgroundColor_NONE,
  BurnInBackgroundColor_WHITE,
  BurnInBackgroundColor'
  #-}
