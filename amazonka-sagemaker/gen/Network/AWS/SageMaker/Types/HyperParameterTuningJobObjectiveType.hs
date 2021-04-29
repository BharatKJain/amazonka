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
-- Module      : Network.AWS.SageMaker.Types.HyperParameterTuningJobObjectiveType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.HyperParameterTuningJobObjectiveType
  ( HyperParameterTuningJobObjectiveType
      ( ..,
        HyperParameterTuningJobObjectiveType_Maximize,
        HyperParameterTuningJobObjectiveType_Minimize
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype HyperParameterTuningJobObjectiveType = HyperParameterTuningJobObjectiveType'
  { fromHyperParameterTuningJobObjectiveType ::
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

pattern HyperParameterTuningJobObjectiveType_Maximize :: HyperParameterTuningJobObjectiveType
pattern HyperParameterTuningJobObjectiveType_Maximize = HyperParameterTuningJobObjectiveType' "Maximize"

pattern HyperParameterTuningJobObjectiveType_Minimize :: HyperParameterTuningJobObjectiveType
pattern HyperParameterTuningJobObjectiveType_Minimize = HyperParameterTuningJobObjectiveType' "Minimize"

{-# COMPLETE
  HyperParameterTuningJobObjectiveType_Maximize,
  HyperParameterTuningJobObjectiveType_Minimize,
  HyperParameterTuningJobObjectiveType'
  #-}
