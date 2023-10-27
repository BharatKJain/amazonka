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
-- Module      : Amazonka.ElasticSearch.Types.UpgradeStatus
-- Copyright   : (c) 2013-2023 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.ElasticSearch.Types.UpgradeStatus
  ( UpgradeStatus
      ( ..,
        UpgradeStatus_FAILED,
        UpgradeStatus_IN_PROGRESS,
        UpgradeStatus_SUCCEEDED,
        UpgradeStatus_SUCCEEDED_WITH_ISSUES
      ),
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude

newtype UpgradeStatus = UpgradeStatus'
  { fromUpgradeStatus ::
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

pattern UpgradeStatus_FAILED :: UpgradeStatus
pattern UpgradeStatus_FAILED = UpgradeStatus' "FAILED"

pattern UpgradeStatus_IN_PROGRESS :: UpgradeStatus
pattern UpgradeStatus_IN_PROGRESS = UpgradeStatus' "IN_PROGRESS"

pattern UpgradeStatus_SUCCEEDED :: UpgradeStatus
pattern UpgradeStatus_SUCCEEDED = UpgradeStatus' "SUCCEEDED"

pattern UpgradeStatus_SUCCEEDED_WITH_ISSUES :: UpgradeStatus
pattern UpgradeStatus_SUCCEEDED_WITH_ISSUES = UpgradeStatus' "SUCCEEDED_WITH_ISSUES"

{-# COMPLETE
  UpgradeStatus_FAILED,
  UpgradeStatus_IN_PROGRESS,
  UpgradeStatus_SUCCEEDED,
  UpgradeStatus_SUCCEEDED_WITH_ISSUES,
  UpgradeStatus'
  #-}
