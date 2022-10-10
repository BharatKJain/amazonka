{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE NamedFieldPuns #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Amazonka.EMRServerless.Types.Application
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.EMRServerless.Types.Application where

import qualified Amazonka.Core as Core
import Amazonka.EMRServerless.Types.ApplicationState
import Amazonka.EMRServerless.Types.AutoStartConfig
import Amazonka.EMRServerless.Types.AutoStopConfig
import Amazonka.EMRServerless.Types.InitialCapacityConfig
import Amazonka.EMRServerless.Types.MaximumAllowedResources
import Amazonka.EMRServerless.Types.NetworkConfiguration
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | Information about an application. EMR Serverless uses applications to
-- run jobs.
--
-- /See:/ 'newApplication' smart constructor.
data Application = Application'
  { -- | The tags assigned to the application.
    tags :: Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text),
    -- | The name of the application.
    name :: Prelude.Maybe Prelude.Text,
    -- | The configuration for an application to automatically stop after a
    -- certain amount of time being idle.
    autoStopConfiguration :: Prelude.Maybe AutoStopConfig,
    -- | The state details of the application.
    stateDetails :: Prelude.Maybe Prelude.Text,
    -- | The initial capacity of the application.
    initialCapacity :: Prelude.Maybe (Prelude.HashMap Prelude.Text InitialCapacityConfig),
    -- | The network configuration for customer VPC connectivity for the
    -- application.
    networkConfiguration :: Prelude.Maybe NetworkConfiguration,
    -- | The configuration for an application to automatically start on job
    -- submission.
    autoStartConfiguration :: Prelude.Maybe AutoStartConfig,
    -- | The maximum capacity of the application. This is cumulative across all
    -- workers at any given point in time during the lifespan of the
    -- application is created. No new resources will be created once any one of
    -- the defined limits is hit.
    maximumCapacity :: Prelude.Maybe MaximumAllowedResources,
    -- | The ID of the application.
    applicationId :: Prelude.Text,
    -- | The ARN of the application.
    arn :: Prelude.Text,
    -- | The EMR release version associated with the application.
    releaseLabel :: Prelude.Text,
    -- | The type of application, such as Spark or Hive.
    type' :: Prelude.Text,
    -- | The state of the application.
    state :: ApplicationState,
    -- | The date and time when the application run was created.
    createdAt :: Core.POSIX,
    -- | The date and time when the application run was last updated.
    updatedAt :: Core.POSIX
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'Application' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'tags', 'application_tags' - The tags assigned to the application.
--
-- 'name', 'application_name' - The name of the application.
--
-- 'autoStopConfiguration', 'application_autoStopConfiguration' - The configuration for an application to automatically stop after a
-- certain amount of time being idle.
--
-- 'stateDetails', 'application_stateDetails' - The state details of the application.
--
-- 'initialCapacity', 'application_initialCapacity' - The initial capacity of the application.
--
-- 'networkConfiguration', 'application_networkConfiguration' - The network configuration for customer VPC connectivity for the
-- application.
--
-- 'autoStartConfiguration', 'application_autoStartConfiguration' - The configuration for an application to automatically start on job
-- submission.
--
-- 'maximumCapacity', 'application_maximumCapacity' - The maximum capacity of the application. This is cumulative across all
-- workers at any given point in time during the lifespan of the
-- application is created. No new resources will be created once any one of
-- the defined limits is hit.
--
-- 'applicationId', 'application_applicationId' - The ID of the application.
--
-- 'arn', 'application_arn' - The ARN of the application.
--
-- 'releaseLabel', 'application_releaseLabel' - The EMR release version associated with the application.
--
-- 'type'', 'application_type' - The type of application, such as Spark or Hive.
--
-- 'state', 'application_state' - The state of the application.
--
-- 'createdAt', 'application_createdAt' - The date and time when the application run was created.
--
-- 'updatedAt', 'application_updatedAt' - The date and time when the application run was last updated.
newApplication ::
  -- | 'applicationId'
  Prelude.Text ->
  -- | 'arn'
  Prelude.Text ->
  -- | 'releaseLabel'
  Prelude.Text ->
  -- | 'type''
  Prelude.Text ->
  -- | 'state'
  ApplicationState ->
  -- | 'createdAt'
  Prelude.UTCTime ->
  -- | 'updatedAt'
  Prelude.UTCTime ->
  Application
newApplication
  pApplicationId_
  pArn_
  pReleaseLabel_
  pType_
  pState_
  pCreatedAt_
  pUpdatedAt_ =
    Application'
      { tags = Prelude.Nothing,
        name = Prelude.Nothing,
        autoStopConfiguration = Prelude.Nothing,
        stateDetails = Prelude.Nothing,
        initialCapacity = Prelude.Nothing,
        networkConfiguration = Prelude.Nothing,
        autoStartConfiguration = Prelude.Nothing,
        maximumCapacity = Prelude.Nothing,
        applicationId = pApplicationId_,
        arn = pArn_,
        releaseLabel = pReleaseLabel_,
        type' = pType_,
        state = pState_,
        createdAt = Core._Time Lens.# pCreatedAt_,
        updatedAt = Core._Time Lens.# pUpdatedAt_
      }

-- | The tags assigned to the application.
application_tags :: Lens.Lens' Application (Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text))
application_tags = Lens.lens (\Application' {tags} -> tags) (\s@Application' {} a -> s {tags = a} :: Application) Prelude.. Lens.mapping Lens.coerced

-- | The name of the application.
application_name :: Lens.Lens' Application (Prelude.Maybe Prelude.Text)
application_name = Lens.lens (\Application' {name} -> name) (\s@Application' {} a -> s {name = a} :: Application)

-- | The configuration for an application to automatically stop after a
-- certain amount of time being idle.
application_autoStopConfiguration :: Lens.Lens' Application (Prelude.Maybe AutoStopConfig)
application_autoStopConfiguration = Lens.lens (\Application' {autoStopConfiguration} -> autoStopConfiguration) (\s@Application' {} a -> s {autoStopConfiguration = a} :: Application)

-- | The state details of the application.
application_stateDetails :: Lens.Lens' Application (Prelude.Maybe Prelude.Text)
application_stateDetails = Lens.lens (\Application' {stateDetails} -> stateDetails) (\s@Application' {} a -> s {stateDetails = a} :: Application)

-- | The initial capacity of the application.
application_initialCapacity :: Lens.Lens' Application (Prelude.Maybe (Prelude.HashMap Prelude.Text InitialCapacityConfig))
application_initialCapacity = Lens.lens (\Application' {initialCapacity} -> initialCapacity) (\s@Application' {} a -> s {initialCapacity = a} :: Application) Prelude.. Lens.mapping Lens.coerced

-- | The network configuration for customer VPC connectivity for the
-- application.
application_networkConfiguration :: Lens.Lens' Application (Prelude.Maybe NetworkConfiguration)
application_networkConfiguration = Lens.lens (\Application' {networkConfiguration} -> networkConfiguration) (\s@Application' {} a -> s {networkConfiguration = a} :: Application)

-- | The configuration for an application to automatically start on job
-- submission.
application_autoStartConfiguration :: Lens.Lens' Application (Prelude.Maybe AutoStartConfig)
application_autoStartConfiguration = Lens.lens (\Application' {autoStartConfiguration} -> autoStartConfiguration) (\s@Application' {} a -> s {autoStartConfiguration = a} :: Application)

-- | The maximum capacity of the application. This is cumulative across all
-- workers at any given point in time during the lifespan of the
-- application is created. No new resources will be created once any one of
-- the defined limits is hit.
application_maximumCapacity :: Lens.Lens' Application (Prelude.Maybe MaximumAllowedResources)
application_maximumCapacity = Lens.lens (\Application' {maximumCapacity} -> maximumCapacity) (\s@Application' {} a -> s {maximumCapacity = a} :: Application)

-- | The ID of the application.
application_applicationId :: Lens.Lens' Application Prelude.Text
application_applicationId = Lens.lens (\Application' {applicationId} -> applicationId) (\s@Application' {} a -> s {applicationId = a} :: Application)

-- | The ARN of the application.
application_arn :: Lens.Lens' Application Prelude.Text
application_arn = Lens.lens (\Application' {arn} -> arn) (\s@Application' {} a -> s {arn = a} :: Application)

-- | The EMR release version associated with the application.
application_releaseLabel :: Lens.Lens' Application Prelude.Text
application_releaseLabel = Lens.lens (\Application' {releaseLabel} -> releaseLabel) (\s@Application' {} a -> s {releaseLabel = a} :: Application)

-- | The type of application, such as Spark or Hive.
application_type :: Lens.Lens' Application Prelude.Text
application_type = Lens.lens (\Application' {type'} -> type') (\s@Application' {} a -> s {type' = a} :: Application)

-- | The state of the application.
application_state :: Lens.Lens' Application ApplicationState
application_state = Lens.lens (\Application' {state} -> state) (\s@Application' {} a -> s {state = a} :: Application)

-- | The date and time when the application run was created.
application_createdAt :: Lens.Lens' Application Prelude.UTCTime
application_createdAt = Lens.lens (\Application' {createdAt} -> createdAt) (\s@Application' {} a -> s {createdAt = a} :: Application) Prelude.. Core._Time

-- | The date and time when the application run was last updated.
application_updatedAt :: Lens.Lens' Application Prelude.UTCTime
application_updatedAt = Lens.lens (\Application' {updatedAt} -> updatedAt) (\s@Application' {} a -> s {updatedAt = a} :: Application) Prelude.. Core._Time

instance Core.FromJSON Application where
  parseJSON =
    Core.withObject
      "Application"
      ( \x ->
          Application'
            Prelude.<$> (x Core..:? "tags" Core..!= Prelude.mempty)
            Prelude.<*> (x Core..:? "name")
            Prelude.<*> (x Core..:? "autoStopConfiguration")
            Prelude.<*> (x Core..:? "stateDetails")
            Prelude.<*> ( x Core..:? "initialCapacity"
                            Core..!= Prelude.mempty
                        )
            Prelude.<*> (x Core..:? "networkConfiguration")
            Prelude.<*> (x Core..:? "autoStartConfiguration")
            Prelude.<*> (x Core..:? "maximumCapacity")
            Prelude.<*> (x Core..: "applicationId")
            Prelude.<*> (x Core..: "arn")
            Prelude.<*> (x Core..: "releaseLabel")
            Prelude.<*> (x Core..: "type")
            Prelude.<*> (x Core..: "state")
            Prelude.<*> (x Core..: "createdAt")
            Prelude.<*> (x Core..: "updatedAt")
      )

instance Prelude.Hashable Application where
  hashWithSalt _salt Application' {..} =
    _salt `Prelude.hashWithSalt` tags
      `Prelude.hashWithSalt` name
      `Prelude.hashWithSalt` autoStopConfiguration
      `Prelude.hashWithSalt` stateDetails
      `Prelude.hashWithSalt` initialCapacity
      `Prelude.hashWithSalt` networkConfiguration
      `Prelude.hashWithSalt` autoStartConfiguration
      `Prelude.hashWithSalt` maximumCapacity
      `Prelude.hashWithSalt` applicationId
      `Prelude.hashWithSalt` arn
      `Prelude.hashWithSalt` releaseLabel
      `Prelude.hashWithSalt` type'
      `Prelude.hashWithSalt` state
      `Prelude.hashWithSalt` createdAt
      `Prelude.hashWithSalt` updatedAt

instance Prelude.NFData Application where
  rnf Application' {..} =
    Prelude.rnf tags
      `Prelude.seq` Prelude.rnf name
      `Prelude.seq` Prelude.rnf autoStopConfiguration
      `Prelude.seq` Prelude.rnf stateDetails
      `Prelude.seq` Prelude.rnf initialCapacity
      `Prelude.seq` Prelude.rnf networkConfiguration
      `Prelude.seq` Prelude.rnf autoStartConfiguration
      `Prelude.seq` Prelude.rnf maximumCapacity
      `Prelude.seq` Prelude.rnf applicationId
      `Prelude.seq` Prelude.rnf arn
      `Prelude.seq` Prelude.rnf releaseLabel
      `Prelude.seq` Prelude.rnf type'
      `Prelude.seq` Prelude.rnf state
      `Prelude.seq` Prelude.rnf createdAt
      `Prelude.seq` Prelude.rnf updatedAt
