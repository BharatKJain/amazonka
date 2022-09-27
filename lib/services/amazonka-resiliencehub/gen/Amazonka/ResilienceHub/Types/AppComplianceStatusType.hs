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
-- Module      : Amazonka.ResilienceHub.Types.AppComplianceStatusType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.ResilienceHub.Types.AppComplianceStatusType
  ( AppComplianceStatusType
      ( ..,
        AppComplianceStatusType_ChangesDetected,
        AppComplianceStatusType_NotAssessed,
        AppComplianceStatusType_PolicyBreached,
        AppComplianceStatusType_PolicyMet
      ),
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Prelude as Prelude

newtype AppComplianceStatusType = AppComplianceStatusType'
  { fromAppComplianceStatusType ::
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

pattern AppComplianceStatusType_ChangesDetected :: AppComplianceStatusType
pattern AppComplianceStatusType_ChangesDetected = AppComplianceStatusType' "ChangesDetected"

pattern AppComplianceStatusType_NotAssessed :: AppComplianceStatusType
pattern AppComplianceStatusType_NotAssessed = AppComplianceStatusType' "NotAssessed"

pattern AppComplianceStatusType_PolicyBreached :: AppComplianceStatusType
pattern AppComplianceStatusType_PolicyBreached = AppComplianceStatusType' "PolicyBreached"

pattern AppComplianceStatusType_PolicyMet :: AppComplianceStatusType
pattern AppComplianceStatusType_PolicyMet = AppComplianceStatusType' "PolicyMet"

{-# COMPLETE
  AppComplianceStatusType_ChangesDetected,
  AppComplianceStatusType_NotAssessed,
  AppComplianceStatusType_PolicyBreached,
  AppComplianceStatusType_PolicyMet,
  AppComplianceStatusType'
  #-}
