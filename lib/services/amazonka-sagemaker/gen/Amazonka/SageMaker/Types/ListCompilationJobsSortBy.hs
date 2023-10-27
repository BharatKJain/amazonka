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
-- Module      : Amazonka.SageMaker.Types.ListCompilationJobsSortBy
-- Copyright   : (c) 2013-2023 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.SageMaker.Types.ListCompilationJobsSortBy
  ( ListCompilationJobsSortBy
      ( ..,
        ListCompilationJobsSortBy_CreationTime,
        ListCompilationJobsSortBy_Name,
        ListCompilationJobsSortBy_Status
      ),
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude

newtype ListCompilationJobsSortBy = ListCompilationJobsSortBy'
  { fromListCompilationJobsSortBy ::
      Data.Text
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
      Data.FromText,
      Data.ToText,
      Data.ToByteString,
      Data.ToLog,
      Data.ToHeader,
      Data.ToQuery,
      Data.FromJSON,
      Data.FromJSONKey,
      Data.ToJSON,
      Data.ToJSONKey,
      Data.FromXML,
      Data.ToXML
    )

pattern ListCompilationJobsSortBy_CreationTime :: ListCompilationJobsSortBy
pattern ListCompilationJobsSortBy_CreationTime = ListCompilationJobsSortBy' "CreationTime"

pattern ListCompilationJobsSortBy_Name :: ListCompilationJobsSortBy
pattern ListCompilationJobsSortBy_Name = ListCompilationJobsSortBy' "Name"

pattern ListCompilationJobsSortBy_Status :: ListCompilationJobsSortBy
pattern ListCompilationJobsSortBy_Status = ListCompilationJobsSortBy' "Status"

{-# COMPLETE
  ListCompilationJobsSortBy_CreationTime,
  ListCompilationJobsSortBy_Name,
  ListCompilationJobsSortBy_Status,
  ListCompilationJobsSortBy'
  #-}
