{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.IAM.Types.PolicyOwnerEntityType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IAM.Types.PolicyOwnerEntityType
  ( PolicyOwnerEntityType
      ( ..,
        PolicyOwnerEntityType_GROUP,
        PolicyOwnerEntityType_ROLE,
        PolicyOwnerEntityType_USER
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype PolicyOwnerEntityType = PolicyOwnerEntityType'
  { fromPolicyOwnerEntityType ::
      Prelude.Text
  }
  deriving
    ( Prelude.Show,
      Prelude.Read,
      Prelude.Eq,
      Prelude.Ord,
      Prelude.Data,
      Prelude.Typeable,
      Prelude.Generic,
      Prelude.Hashable,
      Prelude.NFData,
      Prelude.FromText,
      Prelude.ToText,
      Prelude.ToByteString,
      Prelude.ToLog,
      Prelude.ToHeader,
      Prelude.ToQuery,
      Prelude.FromJSON,
      Prelude.FromJSONKey,
      Prelude.ToJSON,
      Prelude.ToJSONKey,
      Prelude.FromXML,
      Prelude.ToXML
    )

pattern PolicyOwnerEntityType_GROUP :: PolicyOwnerEntityType
pattern PolicyOwnerEntityType_GROUP = PolicyOwnerEntityType' "GROUP"

pattern PolicyOwnerEntityType_ROLE :: PolicyOwnerEntityType
pattern PolicyOwnerEntityType_ROLE = PolicyOwnerEntityType' "ROLE"

pattern PolicyOwnerEntityType_USER :: PolicyOwnerEntityType
pattern PolicyOwnerEntityType_USER = PolicyOwnerEntityType' "USER"

{-# COMPLETE
  PolicyOwnerEntityType_GROUP,
  PolicyOwnerEntityType_ROLE,
  PolicyOwnerEntityType_USER,
  PolicyOwnerEntityType'
  #-}