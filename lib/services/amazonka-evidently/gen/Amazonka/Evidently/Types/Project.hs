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
-- Module      : Amazonka.Evidently.Types.Project
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.Evidently.Types.Project where

import qualified Amazonka.Core as Core
import Amazonka.Evidently.Types.ProjectDataDelivery
import Amazonka.Evidently.Types.ProjectStatus
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | This structure defines a project, which is the logical object in
-- Evidently that can contain features, launches, and experiments. Use
-- projects to group similar features together.
--
-- /See:/ 'newProject' smart constructor.
data Project = Project'
  { -- | The list of tag keys and values associated with this project.
    tags :: Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text),
    -- | A structure that contains information about where Evidently is to store
    -- evaluation events for longer term storage.
    dataDelivery :: Prelude.Maybe ProjectDataDelivery,
    -- | The user-entered description of the project.
    description :: Prelude.Maybe Prelude.Text,
    -- | The number of ongoing launches currently in the project.
    activeLaunchCount :: Prelude.Maybe Prelude.Integer,
    -- | The number of features currently in the project.
    featureCount :: Prelude.Maybe Prelude.Integer,
    -- | The number of launches currently in the project. This includes all
    -- launches that have been created and not deleted, whether they are
    -- ongoing or not.
    launchCount :: Prelude.Maybe Prelude.Integer,
    -- | The number of experiments currently in the project. This includes all
    -- experiments that have been created and not deleted, whether they are
    -- ongoing or not.
    experimentCount :: Prelude.Maybe Prelude.Integer,
    -- | The number of ongoing experiments currently in the project.
    activeExperimentCount :: Prelude.Maybe Prelude.Integer,
    -- | The name or ARN of the project.
    arn :: Prelude.Text,
    -- | The date and time that the project is created.
    createdTime :: Core.POSIX,
    -- | The date and time that the project was most recently updated.
    lastUpdatedTime :: Core.POSIX,
    -- | The name of the project.
    name :: Prelude.Text,
    -- | The current state of the project.
    status :: ProjectStatus
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'Project' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'tags', 'project_tags' - The list of tag keys and values associated with this project.
--
-- 'dataDelivery', 'project_dataDelivery' - A structure that contains information about where Evidently is to store
-- evaluation events for longer term storage.
--
-- 'description', 'project_description' - The user-entered description of the project.
--
-- 'activeLaunchCount', 'project_activeLaunchCount' - The number of ongoing launches currently in the project.
--
-- 'featureCount', 'project_featureCount' - The number of features currently in the project.
--
-- 'launchCount', 'project_launchCount' - The number of launches currently in the project. This includes all
-- launches that have been created and not deleted, whether they are
-- ongoing or not.
--
-- 'experimentCount', 'project_experimentCount' - The number of experiments currently in the project. This includes all
-- experiments that have been created and not deleted, whether they are
-- ongoing or not.
--
-- 'activeExperimentCount', 'project_activeExperimentCount' - The number of ongoing experiments currently in the project.
--
-- 'arn', 'project_arn' - The name or ARN of the project.
--
-- 'createdTime', 'project_createdTime' - The date and time that the project is created.
--
-- 'lastUpdatedTime', 'project_lastUpdatedTime' - The date and time that the project was most recently updated.
--
-- 'name', 'project_name' - The name of the project.
--
-- 'status', 'project_status' - The current state of the project.
newProject ::
  -- | 'arn'
  Prelude.Text ->
  -- | 'createdTime'
  Prelude.UTCTime ->
  -- | 'lastUpdatedTime'
  Prelude.UTCTime ->
  -- | 'name'
  Prelude.Text ->
  -- | 'status'
  ProjectStatus ->
  Project
newProject
  pArn_
  pCreatedTime_
  pLastUpdatedTime_
  pName_
  pStatus_ =
    Project'
      { tags = Prelude.Nothing,
        dataDelivery = Prelude.Nothing,
        description = Prelude.Nothing,
        activeLaunchCount = Prelude.Nothing,
        featureCount = Prelude.Nothing,
        launchCount = Prelude.Nothing,
        experimentCount = Prelude.Nothing,
        activeExperimentCount = Prelude.Nothing,
        arn = pArn_,
        createdTime = Core._Time Lens.# pCreatedTime_,
        lastUpdatedTime =
          Core._Time Lens.# pLastUpdatedTime_,
        name = pName_,
        status = pStatus_
      }

-- | The list of tag keys and values associated with this project.
project_tags :: Lens.Lens' Project (Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text))
project_tags = Lens.lens (\Project' {tags} -> tags) (\s@Project' {} a -> s {tags = a} :: Project) Prelude.. Lens.mapping Lens.coerced

-- | A structure that contains information about where Evidently is to store
-- evaluation events for longer term storage.
project_dataDelivery :: Lens.Lens' Project (Prelude.Maybe ProjectDataDelivery)
project_dataDelivery = Lens.lens (\Project' {dataDelivery} -> dataDelivery) (\s@Project' {} a -> s {dataDelivery = a} :: Project)

-- | The user-entered description of the project.
project_description :: Lens.Lens' Project (Prelude.Maybe Prelude.Text)
project_description = Lens.lens (\Project' {description} -> description) (\s@Project' {} a -> s {description = a} :: Project)

-- | The number of ongoing launches currently in the project.
project_activeLaunchCount :: Lens.Lens' Project (Prelude.Maybe Prelude.Integer)
project_activeLaunchCount = Lens.lens (\Project' {activeLaunchCount} -> activeLaunchCount) (\s@Project' {} a -> s {activeLaunchCount = a} :: Project)

-- | The number of features currently in the project.
project_featureCount :: Lens.Lens' Project (Prelude.Maybe Prelude.Integer)
project_featureCount = Lens.lens (\Project' {featureCount} -> featureCount) (\s@Project' {} a -> s {featureCount = a} :: Project)

-- | The number of launches currently in the project. This includes all
-- launches that have been created and not deleted, whether they are
-- ongoing or not.
project_launchCount :: Lens.Lens' Project (Prelude.Maybe Prelude.Integer)
project_launchCount = Lens.lens (\Project' {launchCount} -> launchCount) (\s@Project' {} a -> s {launchCount = a} :: Project)

-- | The number of experiments currently in the project. This includes all
-- experiments that have been created and not deleted, whether they are
-- ongoing or not.
project_experimentCount :: Lens.Lens' Project (Prelude.Maybe Prelude.Integer)
project_experimentCount = Lens.lens (\Project' {experimentCount} -> experimentCount) (\s@Project' {} a -> s {experimentCount = a} :: Project)

-- | The number of ongoing experiments currently in the project.
project_activeExperimentCount :: Lens.Lens' Project (Prelude.Maybe Prelude.Integer)
project_activeExperimentCount = Lens.lens (\Project' {activeExperimentCount} -> activeExperimentCount) (\s@Project' {} a -> s {activeExperimentCount = a} :: Project)

-- | The name or ARN of the project.
project_arn :: Lens.Lens' Project Prelude.Text
project_arn = Lens.lens (\Project' {arn} -> arn) (\s@Project' {} a -> s {arn = a} :: Project)

-- | The date and time that the project is created.
project_createdTime :: Lens.Lens' Project Prelude.UTCTime
project_createdTime = Lens.lens (\Project' {createdTime} -> createdTime) (\s@Project' {} a -> s {createdTime = a} :: Project) Prelude.. Core._Time

-- | The date and time that the project was most recently updated.
project_lastUpdatedTime :: Lens.Lens' Project Prelude.UTCTime
project_lastUpdatedTime = Lens.lens (\Project' {lastUpdatedTime} -> lastUpdatedTime) (\s@Project' {} a -> s {lastUpdatedTime = a} :: Project) Prelude.. Core._Time

-- | The name of the project.
project_name :: Lens.Lens' Project Prelude.Text
project_name = Lens.lens (\Project' {name} -> name) (\s@Project' {} a -> s {name = a} :: Project)

-- | The current state of the project.
project_status :: Lens.Lens' Project ProjectStatus
project_status = Lens.lens (\Project' {status} -> status) (\s@Project' {} a -> s {status = a} :: Project)

instance Core.FromJSON Project where
  parseJSON =
    Core.withObject
      "Project"
      ( \x ->
          Project'
            Prelude.<$> (x Core..:? "tags" Core..!= Prelude.mempty)
            Prelude.<*> (x Core..:? "dataDelivery")
            Prelude.<*> (x Core..:? "description")
            Prelude.<*> (x Core..:? "activeLaunchCount")
            Prelude.<*> (x Core..:? "featureCount")
            Prelude.<*> (x Core..:? "launchCount")
            Prelude.<*> (x Core..:? "experimentCount")
            Prelude.<*> (x Core..:? "activeExperimentCount")
            Prelude.<*> (x Core..: "arn")
            Prelude.<*> (x Core..: "createdTime")
            Prelude.<*> (x Core..: "lastUpdatedTime")
            Prelude.<*> (x Core..: "name")
            Prelude.<*> (x Core..: "status")
      )

instance Prelude.Hashable Project where
  hashWithSalt _salt Project' {..} =
    _salt `Prelude.hashWithSalt` tags
      `Prelude.hashWithSalt` dataDelivery
      `Prelude.hashWithSalt` description
      `Prelude.hashWithSalt` activeLaunchCount
      `Prelude.hashWithSalt` featureCount
      `Prelude.hashWithSalt` launchCount
      `Prelude.hashWithSalt` experimentCount
      `Prelude.hashWithSalt` activeExperimentCount
      `Prelude.hashWithSalt` arn
      `Prelude.hashWithSalt` createdTime
      `Prelude.hashWithSalt` lastUpdatedTime
      `Prelude.hashWithSalt` name
      `Prelude.hashWithSalt` status

instance Prelude.NFData Project where
  rnf Project' {..} =
    Prelude.rnf tags
      `Prelude.seq` Prelude.rnf dataDelivery
      `Prelude.seq` Prelude.rnf description
      `Prelude.seq` Prelude.rnf activeLaunchCount
      `Prelude.seq` Prelude.rnf featureCount
      `Prelude.seq` Prelude.rnf launchCount
      `Prelude.seq` Prelude.rnf experimentCount
      `Prelude.seq` Prelude.rnf activeExperimentCount
      `Prelude.seq` Prelude.rnf arn
      `Prelude.seq` Prelude.rnf createdTime
      `Prelude.seq` Prelude.rnf lastUpdatedTime
      `Prelude.seq` Prelude.rnf name
      `Prelude.seq` Prelude.rnf status
