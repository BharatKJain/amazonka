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
-- Module      : Amazonka.Transfer.Types.EncryptionAlg
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.Transfer.Types.EncryptionAlg
  ( EncryptionAlg
      ( ..,
        EncryptionAlg_AES128_CBC,
        EncryptionAlg_AES192_CBC,
        EncryptionAlg_AES256_CBC
      ),
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Prelude as Prelude

newtype EncryptionAlg = EncryptionAlg'
  { fromEncryptionAlg ::
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

pattern EncryptionAlg_AES128_CBC :: EncryptionAlg
pattern EncryptionAlg_AES128_CBC = EncryptionAlg' "AES128_CBC"

pattern EncryptionAlg_AES192_CBC :: EncryptionAlg
pattern EncryptionAlg_AES192_CBC = EncryptionAlg' "AES192_CBC"

pattern EncryptionAlg_AES256_CBC :: EncryptionAlg
pattern EncryptionAlg_AES256_CBC = EncryptionAlg' "AES256_CBC"

{-# COMPLETE
  EncryptionAlg_AES128_CBC,
  EncryptionAlg_AES192_CBC,
  EncryptionAlg_AES256_CBC,
  EncryptionAlg'
  #-}
