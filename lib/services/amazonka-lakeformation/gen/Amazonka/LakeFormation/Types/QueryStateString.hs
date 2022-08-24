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
-- Module      : Amazonka.LakeFormation.Types.QueryStateString
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.LakeFormation.Types.QueryStateString
  ( QueryStateString
      ( ..,
        QueryStateString_ERROR,
        QueryStateString_EXPIRED,
        QueryStateString_FINISHED,
        QueryStateString_PENDING,
        QueryStateString_WORKUNITS_AVAILABLE
      ),
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Prelude as Prelude

newtype QueryStateString = QueryStateString'
  { fromQueryStateString ::
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

pattern QueryStateString_ERROR :: QueryStateString
pattern QueryStateString_ERROR = QueryStateString' "ERROR"

pattern QueryStateString_EXPIRED :: QueryStateString
pattern QueryStateString_EXPIRED = QueryStateString' "EXPIRED"

pattern QueryStateString_FINISHED :: QueryStateString
pattern QueryStateString_FINISHED = QueryStateString' "FINISHED"

pattern QueryStateString_PENDING :: QueryStateString
pattern QueryStateString_PENDING = QueryStateString' "PENDING"

pattern QueryStateString_WORKUNITS_AVAILABLE :: QueryStateString
pattern QueryStateString_WORKUNITS_AVAILABLE = QueryStateString' "WORKUNITS_AVAILABLE"

{-# COMPLETE
  QueryStateString_ERROR,
  QueryStateString_EXPIRED,
  QueryStateString_FINISHED,
  QueryStateString_PENDING,
  QueryStateString_WORKUNITS_AVAILABLE,
  QueryStateString'
  #-}
