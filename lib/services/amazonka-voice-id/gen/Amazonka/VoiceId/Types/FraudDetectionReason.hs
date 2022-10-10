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
-- Module      : Amazonka.VoiceId.Types.FraudDetectionReason
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.VoiceId.Types.FraudDetectionReason
  ( FraudDetectionReason
      ( ..,
        FraudDetectionReason_KNOWN_FRAUDSTER,
        FraudDetectionReason_VOICE_SPOOFING
      ),
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Prelude as Prelude

newtype FraudDetectionReason = FraudDetectionReason'
  { fromFraudDetectionReason ::
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

pattern FraudDetectionReason_KNOWN_FRAUDSTER :: FraudDetectionReason
pattern FraudDetectionReason_KNOWN_FRAUDSTER = FraudDetectionReason' "KNOWN_FRAUDSTER"

pattern FraudDetectionReason_VOICE_SPOOFING :: FraudDetectionReason
pattern FraudDetectionReason_VOICE_SPOOFING = FraudDetectionReason' "VOICE_SPOOFING"

{-# COMPLETE
  FraudDetectionReason_KNOWN_FRAUDSTER,
  FraudDetectionReason_VOICE_SPOOFING,
  FraudDetectionReason'
  #-}
