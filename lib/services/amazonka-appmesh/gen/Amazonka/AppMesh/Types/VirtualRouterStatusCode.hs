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
-- Module      : Amazonka.AppMesh.Types.VirtualRouterStatusCode
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.AppMesh.Types.VirtualRouterStatusCode
  ( VirtualRouterStatusCode
      ( ..,
        VirtualRouterStatusCode_ACTIVE,
        VirtualRouterStatusCode_DELETED,
        VirtualRouterStatusCode_INACTIVE
      ),
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Prelude as Prelude

newtype VirtualRouterStatusCode = VirtualRouterStatusCode'
  { fromVirtualRouterStatusCode ::
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

pattern VirtualRouterStatusCode_ACTIVE :: VirtualRouterStatusCode
pattern VirtualRouterStatusCode_ACTIVE = VirtualRouterStatusCode' "ACTIVE"

pattern VirtualRouterStatusCode_DELETED :: VirtualRouterStatusCode
pattern VirtualRouterStatusCode_DELETED = VirtualRouterStatusCode' "DELETED"

pattern VirtualRouterStatusCode_INACTIVE :: VirtualRouterStatusCode
pattern VirtualRouterStatusCode_INACTIVE = VirtualRouterStatusCode' "INACTIVE"

{-# COMPLETE
  VirtualRouterStatusCode_ACTIVE,
  VirtualRouterStatusCode_DELETED,
  VirtualRouterStatusCode_INACTIVE,
  VirtualRouterStatusCode'
  #-}
