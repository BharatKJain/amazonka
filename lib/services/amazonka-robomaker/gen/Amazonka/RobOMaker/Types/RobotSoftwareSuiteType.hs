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
-- Module      : Amazonka.RobOMaker.Types.RobotSoftwareSuiteType
-- Copyright   : (c) 2013-2023 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.RobOMaker.Types.RobotSoftwareSuiteType
  ( RobotSoftwareSuiteType
      ( ..,
        RobotSoftwareSuiteType_General,
        RobotSoftwareSuiteType_ROS,
        RobotSoftwareSuiteType_ROS2
      ),
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude

newtype RobotSoftwareSuiteType = RobotSoftwareSuiteType'
  { fromRobotSoftwareSuiteType ::
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

pattern RobotSoftwareSuiteType_General :: RobotSoftwareSuiteType
pattern RobotSoftwareSuiteType_General = RobotSoftwareSuiteType' "General"

pattern RobotSoftwareSuiteType_ROS :: RobotSoftwareSuiteType
pattern RobotSoftwareSuiteType_ROS = RobotSoftwareSuiteType' "ROS"

pattern RobotSoftwareSuiteType_ROS2 :: RobotSoftwareSuiteType
pattern RobotSoftwareSuiteType_ROS2 = RobotSoftwareSuiteType' "ROS2"

{-# COMPLETE
  RobotSoftwareSuiteType_General,
  RobotSoftwareSuiteType_ROS,
  RobotSoftwareSuiteType_ROS2,
  RobotSoftwareSuiteType'
  #-}
