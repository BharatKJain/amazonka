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
-- Module      : Amazonka.MacieV2.Types.UsageType
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.MacieV2.Types.UsageType
  ( UsageType
      ( ..,
        UsageType_DATA_INVENTORY_EVALUATION,
        UsageType_SENSITIVE_DATA_DISCOVERY
      ),
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Prelude as Prelude

-- | The name of an Amazon Macie usage metric for an account. Possible values
-- are:
newtype UsageType = UsageType'
  { fromUsageType ::
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

pattern UsageType_DATA_INVENTORY_EVALUATION :: UsageType
pattern UsageType_DATA_INVENTORY_EVALUATION = UsageType' "DATA_INVENTORY_EVALUATION"

pattern UsageType_SENSITIVE_DATA_DISCOVERY :: UsageType
pattern UsageType_SENSITIVE_DATA_DISCOVERY = UsageType' "SENSITIVE_DATA_DISCOVERY"

{-# COMPLETE
  UsageType_DATA_INVENTORY_EVALUATION,
  UsageType_SENSITIVE_DATA_DISCOVERY,
  UsageType'
  #-}
