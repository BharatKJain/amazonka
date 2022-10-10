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
-- Module      : Amazonka.EC2.Types.SummaryStatus
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.EC2.Types.SummaryStatus
  ( SummaryStatus
      ( ..,
        SummaryStatus_Impaired,
        SummaryStatus_Initializing,
        SummaryStatus_Insufficient_data,
        SummaryStatus_Not_applicable,
        SummaryStatus_Ok
      ),
  )
where

import qualified Amazonka.Core as Core
import Amazonka.EC2.Internal
import qualified Amazonka.Prelude as Prelude

newtype SummaryStatus = SummaryStatus'
  { fromSummaryStatus ::
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

pattern SummaryStatus_Impaired :: SummaryStatus
pattern SummaryStatus_Impaired = SummaryStatus' "impaired"

pattern SummaryStatus_Initializing :: SummaryStatus
pattern SummaryStatus_Initializing = SummaryStatus' "initializing"

pattern SummaryStatus_Insufficient_data :: SummaryStatus
pattern SummaryStatus_Insufficient_data = SummaryStatus' "insufficient-data"

pattern SummaryStatus_Not_applicable :: SummaryStatus
pattern SummaryStatus_Not_applicable = SummaryStatus' "not-applicable"

pattern SummaryStatus_Ok :: SummaryStatus
pattern SummaryStatus_Ok = SummaryStatus' "ok"

{-# COMPLETE
  SummaryStatus_Impaired,
  SummaryStatus_Initializing,
  SummaryStatus_Insufficient_data,
  SummaryStatus_Not_applicable,
  SummaryStatus_Ok,
  SummaryStatus'
  #-}
