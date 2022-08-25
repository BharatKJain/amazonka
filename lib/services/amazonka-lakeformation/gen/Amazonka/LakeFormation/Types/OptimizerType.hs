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
-- Module      : Amazonka.LakeFormation.Types.OptimizerType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.LakeFormation.Types.OptimizerType
  ( OptimizerType
      ( ..,
        OptimizerType_ALL,
        OptimizerType_COMPACTION,
        OptimizerType_GARBAGE_COLLECTION
      ),
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Prelude as Prelude

newtype OptimizerType = OptimizerType'
  { fromOptimizerType ::
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

pattern OptimizerType_ALL :: OptimizerType
pattern OptimizerType_ALL = OptimizerType' "ALL"

pattern OptimizerType_COMPACTION :: OptimizerType
pattern OptimizerType_COMPACTION = OptimizerType' "COMPACTION"

pattern OptimizerType_GARBAGE_COLLECTION :: OptimizerType
pattern OptimizerType_GARBAGE_COLLECTION = OptimizerType' "GARBAGE_COLLECTION"

{-# COMPLETE
  OptimizerType_ALL,
  OptimizerType_COMPACTION,
  OptimizerType_GARBAGE_COLLECTION,
  OptimizerType'
  #-}
