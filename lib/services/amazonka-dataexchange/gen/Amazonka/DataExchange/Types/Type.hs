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
-- Module      : Amazonka.DataExchange.Types.Type
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.DataExchange.Types.Type
  ( Type
      ( ..,
        Type_EXPORT_ASSETS_TO_S3,
        Type_EXPORT_ASSET_TO_SIGNED_URL,
        Type_EXPORT_REVISIONS_TO_S3,
        Type_IMPORT_ASSETS_FROM_REDSHIFT_DATA_SHARES,
        Type_IMPORT_ASSETS_FROM_S3,
        Type_IMPORT_ASSET_FROM_API_GATEWAY_API,
        Type_IMPORT_ASSET_FROM_SIGNED_URL
      ),
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Prelude as Prelude

newtype Type = Type' {fromType :: Core.Text}
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

pattern Type_EXPORT_ASSETS_TO_S3 :: Type
pattern Type_EXPORT_ASSETS_TO_S3 = Type' "EXPORT_ASSETS_TO_S3"

pattern Type_EXPORT_ASSET_TO_SIGNED_URL :: Type
pattern Type_EXPORT_ASSET_TO_SIGNED_URL = Type' "EXPORT_ASSET_TO_SIGNED_URL"

pattern Type_EXPORT_REVISIONS_TO_S3 :: Type
pattern Type_EXPORT_REVISIONS_TO_S3 = Type' "EXPORT_REVISIONS_TO_S3"

pattern Type_IMPORT_ASSETS_FROM_REDSHIFT_DATA_SHARES :: Type
pattern Type_IMPORT_ASSETS_FROM_REDSHIFT_DATA_SHARES = Type' "IMPORT_ASSETS_FROM_REDSHIFT_DATA_SHARES"

pattern Type_IMPORT_ASSETS_FROM_S3 :: Type
pattern Type_IMPORT_ASSETS_FROM_S3 = Type' "IMPORT_ASSETS_FROM_S3"

pattern Type_IMPORT_ASSET_FROM_API_GATEWAY_API :: Type
pattern Type_IMPORT_ASSET_FROM_API_GATEWAY_API = Type' "IMPORT_ASSET_FROM_API_GATEWAY_API"

pattern Type_IMPORT_ASSET_FROM_SIGNED_URL :: Type
pattern Type_IMPORT_ASSET_FROM_SIGNED_URL = Type' "IMPORT_ASSET_FROM_SIGNED_URL"

{-# COMPLETE
  Type_EXPORT_ASSETS_TO_S3,
  Type_EXPORT_ASSET_TO_SIGNED_URL,
  Type_EXPORT_REVISIONS_TO_S3,
  Type_IMPORT_ASSETS_FROM_REDSHIFT_DATA_SHARES,
  Type_IMPORT_ASSETS_FROM_S3,
  Type_IMPORT_ASSET_FROM_API_GATEWAY_API,
  Type_IMPORT_ASSET_FROM_SIGNED_URL,
  Type'
  #-}
