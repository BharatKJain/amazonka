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
-- Module      : Network.AWS.WorkDocs.Types.RoleType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.WorkDocs.Types.RoleType
  ( RoleType
      ( ..,
        RoleType_CONTRIBUTOR,
        RoleType_COOWNER,
        RoleType_OWNER,
        RoleType_VIEWER
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype RoleType = RoleType'
  { fromRoleType ::
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

pattern RoleType_CONTRIBUTOR :: RoleType
pattern RoleType_CONTRIBUTOR = RoleType' "CONTRIBUTOR"

pattern RoleType_COOWNER :: RoleType
pattern RoleType_COOWNER = RoleType' "COOWNER"

pattern RoleType_OWNER :: RoleType
pattern RoleType_OWNER = RoleType' "OWNER"

pattern RoleType_VIEWER :: RoleType
pattern RoleType_VIEWER = RoleType' "VIEWER"

{-# COMPLETE
  RoleType_CONTRIBUTOR,
  RoleType_COOWNER,
  RoleType_OWNER,
  RoleType_VIEWER,
  RoleType'
  #-}