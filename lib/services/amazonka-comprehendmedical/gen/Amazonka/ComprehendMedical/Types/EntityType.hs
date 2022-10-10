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
-- Module      : Amazonka.ComprehendMedical.Types.EntityType
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.ComprehendMedical.Types.EntityType
  ( EntityType
      ( ..,
        EntityType_ANATOMY,
        EntityType_MEDICAL_CONDITION,
        EntityType_MEDICATION,
        EntityType_PROTECTED_HEALTH_INFORMATION,
        EntityType_TEST_TREATMENT_PROCEDURE,
        EntityType_TIME_EXPRESSION
      ),
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Prelude as Prelude

newtype EntityType = EntityType'
  { fromEntityType ::
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

pattern EntityType_ANATOMY :: EntityType
pattern EntityType_ANATOMY = EntityType' "ANATOMY"

pattern EntityType_MEDICAL_CONDITION :: EntityType
pattern EntityType_MEDICAL_CONDITION = EntityType' "MEDICAL_CONDITION"

pattern EntityType_MEDICATION :: EntityType
pattern EntityType_MEDICATION = EntityType' "MEDICATION"

pattern EntityType_PROTECTED_HEALTH_INFORMATION :: EntityType
pattern EntityType_PROTECTED_HEALTH_INFORMATION = EntityType' "PROTECTED_HEALTH_INFORMATION"

pattern EntityType_TEST_TREATMENT_PROCEDURE :: EntityType
pattern EntityType_TEST_TREATMENT_PROCEDURE = EntityType' "TEST_TREATMENT_PROCEDURE"

pattern EntityType_TIME_EXPRESSION :: EntityType
pattern EntityType_TIME_EXPRESSION = EntityType' "TIME_EXPRESSION"

{-# COMPLETE
  EntityType_ANATOMY,
  EntityType_MEDICAL_CONDITION,
  EntityType_MEDICATION,
  EntityType_PROTECTED_HEALTH_INFORMATION,
  EntityType_TEST_TREATMENT_PROCEDURE,
  EntityType_TIME_EXPRESSION,
  EntityType'
  #-}
