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
-- Module      : Amazonka.CodeStarNotifications.Types.ListTargetsFilterName
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.CodeStarNotifications.Types.ListTargetsFilterName
  ( ListTargetsFilterName
      ( ..,
        ListTargetsFilterName_TARGET_ADDRESS,
        ListTargetsFilterName_TARGET_STATUS,
        ListTargetsFilterName_TARGET_TYPE
      ),
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Prelude as Prelude

newtype ListTargetsFilterName = ListTargetsFilterName'
  { fromListTargetsFilterName ::
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

pattern ListTargetsFilterName_TARGET_ADDRESS :: ListTargetsFilterName
pattern ListTargetsFilterName_TARGET_ADDRESS = ListTargetsFilterName' "TARGET_ADDRESS"

pattern ListTargetsFilterName_TARGET_STATUS :: ListTargetsFilterName
pattern ListTargetsFilterName_TARGET_STATUS = ListTargetsFilterName' "TARGET_STATUS"

pattern ListTargetsFilterName_TARGET_TYPE :: ListTargetsFilterName
pattern ListTargetsFilterName_TARGET_TYPE = ListTargetsFilterName' "TARGET_TYPE"

{-# COMPLETE
  ListTargetsFilterName_TARGET_ADDRESS,
  ListTargetsFilterName_TARGET_STATUS,
  ListTargetsFilterName_TARGET_TYPE,
  ListTargetsFilterName'
  #-}
