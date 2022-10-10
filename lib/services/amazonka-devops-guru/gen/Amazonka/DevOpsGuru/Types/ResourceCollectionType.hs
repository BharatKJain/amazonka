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
-- Module      : Amazonka.DevOpsGuru.Types.ResourceCollectionType
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.DevOpsGuru.Types.ResourceCollectionType
  ( ResourceCollectionType
      ( ..,
        ResourceCollectionType_AWS_CLOUD_FORMATION,
        ResourceCollectionType_AWS_SERVICE,
        ResourceCollectionType_AWS_TAGS
      ),
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Prelude as Prelude

newtype ResourceCollectionType = ResourceCollectionType'
  { fromResourceCollectionType ::
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

pattern ResourceCollectionType_AWS_CLOUD_FORMATION :: ResourceCollectionType
pattern ResourceCollectionType_AWS_CLOUD_FORMATION = ResourceCollectionType' "AWS_CLOUD_FORMATION"

pattern ResourceCollectionType_AWS_SERVICE :: ResourceCollectionType
pattern ResourceCollectionType_AWS_SERVICE = ResourceCollectionType' "AWS_SERVICE"

pattern ResourceCollectionType_AWS_TAGS :: ResourceCollectionType
pattern ResourceCollectionType_AWS_TAGS = ResourceCollectionType' "AWS_TAGS"

{-# COMPLETE
  ResourceCollectionType_AWS_CLOUD_FORMATION,
  ResourceCollectionType_AWS_SERVICE,
  ResourceCollectionType_AWS_TAGS,
  ResourceCollectionType'
  #-}
