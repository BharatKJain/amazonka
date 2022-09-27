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
-- Module      : Amazonka.Inspector2.Types.CoverageResourceType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.Inspector2.Types.CoverageResourceType
  ( CoverageResourceType
      ( ..,
        CoverageResourceType_AWS_EC2_INSTANCE,
        CoverageResourceType_AWS_ECR_CONTAINER_IMAGE,
        CoverageResourceType_AWS_ECR_REPOSITORY
      ),
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Prelude as Prelude

newtype CoverageResourceType = CoverageResourceType'
  { fromCoverageResourceType ::
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

pattern CoverageResourceType_AWS_EC2_INSTANCE :: CoverageResourceType
pattern CoverageResourceType_AWS_EC2_INSTANCE = CoverageResourceType' "AWS_EC2_INSTANCE"

pattern CoverageResourceType_AWS_ECR_CONTAINER_IMAGE :: CoverageResourceType
pattern CoverageResourceType_AWS_ECR_CONTAINER_IMAGE = CoverageResourceType' "AWS_ECR_CONTAINER_IMAGE"

pattern CoverageResourceType_AWS_ECR_REPOSITORY :: CoverageResourceType
pattern CoverageResourceType_AWS_ECR_REPOSITORY = CoverageResourceType' "AWS_ECR_REPOSITORY"

{-# COMPLETE
  CoverageResourceType_AWS_EC2_INSTANCE,
  CoverageResourceType_AWS_ECR_CONTAINER_IMAGE,
  CoverageResourceType_AWS_ECR_REPOSITORY,
  CoverageResourceType'
  #-}
