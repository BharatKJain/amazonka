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
-- Module      : Amazonka.CloudWatch.Types.HistoryItemType
-- Copyright   : (c) 2013-2023 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.CloudWatch.Types.HistoryItemType
  ( HistoryItemType
      ( ..,
        HistoryItemType_Action,
        HistoryItemType_ConfigurationUpdate,
        HistoryItemType_StateUpdate
      ),
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude

newtype HistoryItemType = HistoryItemType'
  { fromHistoryItemType ::
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

pattern HistoryItemType_Action :: HistoryItemType
pattern HistoryItemType_Action = HistoryItemType' "Action"

pattern HistoryItemType_ConfigurationUpdate :: HistoryItemType
pattern HistoryItemType_ConfigurationUpdate = HistoryItemType' "ConfigurationUpdate"

pattern HistoryItemType_StateUpdate :: HistoryItemType
pattern HistoryItemType_StateUpdate = HistoryItemType' "StateUpdate"

{-# COMPLETE
  HistoryItemType_Action,
  HistoryItemType_ConfigurationUpdate,
  HistoryItemType_StateUpdate,
  HistoryItemType'
  #-}
