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
-- Module      : Amazonka.GuardDuty.Types.EcsClusterDetails
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.GuardDuty.Types.EcsClusterDetails where

import qualified Amazonka.Core as Core
import Amazonka.GuardDuty.Types.EcsTaskDetails
import Amazonka.GuardDuty.Types.Tag
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | Contains information about the details of the ECS Cluster.
--
-- /See:/ 'newEcsClusterDetails' smart constructor.
data EcsClusterDetails = EcsClusterDetails'
  { -- | The tags of the ECS Cluster.
    tags :: Prelude.Maybe [Tag],
    -- | The name of the ECS Cluster.
    name :: Prelude.Maybe Prelude.Text,
    -- | Contains information about the details of the ECS Task.
    taskDetails :: Prelude.Maybe EcsTaskDetails,
    -- | The Amazon Resource Name (ARN) that identifies the cluster.
    arn :: Prelude.Maybe Prelude.Text,
    -- | The number of container instances registered into the cluster.
    registeredContainerInstancesCount :: Prelude.Maybe Prelude.Int,
    -- | The status of the ECS cluster.
    status :: Prelude.Maybe Prelude.Text,
    -- | The number of tasks in the cluster that are in the RUNNING state.
    runningTasksCount :: Prelude.Maybe Prelude.Int,
    -- | The number of services that are running on the cluster in an ACTIVE
    -- state.
    activeServicesCount :: Prelude.Maybe Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'EcsClusterDetails' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'tags', 'ecsClusterDetails_tags' - The tags of the ECS Cluster.
--
-- 'name', 'ecsClusterDetails_name' - The name of the ECS Cluster.
--
-- 'taskDetails', 'ecsClusterDetails_taskDetails' - Contains information about the details of the ECS Task.
--
-- 'arn', 'ecsClusterDetails_arn' - The Amazon Resource Name (ARN) that identifies the cluster.
--
-- 'registeredContainerInstancesCount', 'ecsClusterDetails_registeredContainerInstancesCount' - The number of container instances registered into the cluster.
--
-- 'status', 'ecsClusterDetails_status' - The status of the ECS cluster.
--
-- 'runningTasksCount', 'ecsClusterDetails_runningTasksCount' - The number of tasks in the cluster that are in the RUNNING state.
--
-- 'activeServicesCount', 'ecsClusterDetails_activeServicesCount' - The number of services that are running on the cluster in an ACTIVE
-- state.
newEcsClusterDetails ::
  EcsClusterDetails
newEcsClusterDetails =
  EcsClusterDetails'
    { tags = Prelude.Nothing,
      name = Prelude.Nothing,
      taskDetails = Prelude.Nothing,
      arn = Prelude.Nothing,
      registeredContainerInstancesCount = Prelude.Nothing,
      status = Prelude.Nothing,
      runningTasksCount = Prelude.Nothing,
      activeServicesCount = Prelude.Nothing
    }

-- | The tags of the ECS Cluster.
ecsClusterDetails_tags :: Lens.Lens' EcsClusterDetails (Prelude.Maybe [Tag])
ecsClusterDetails_tags = Lens.lens (\EcsClusterDetails' {tags} -> tags) (\s@EcsClusterDetails' {} a -> s {tags = a} :: EcsClusterDetails) Prelude.. Lens.mapping Lens.coerced

-- | The name of the ECS Cluster.
ecsClusterDetails_name :: Lens.Lens' EcsClusterDetails (Prelude.Maybe Prelude.Text)
ecsClusterDetails_name = Lens.lens (\EcsClusterDetails' {name} -> name) (\s@EcsClusterDetails' {} a -> s {name = a} :: EcsClusterDetails)

-- | Contains information about the details of the ECS Task.
ecsClusterDetails_taskDetails :: Lens.Lens' EcsClusterDetails (Prelude.Maybe EcsTaskDetails)
ecsClusterDetails_taskDetails = Lens.lens (\EcsClusterDetails' {taskDetails} -> taskDetails) (\s@EcsClusterDetails' {} a -> s {taskDetails = a} :: EcsClusterDetails)

-- | The Amazon Resource Name (ARN) that identifies the cluster.
ecsClusterDetails_arn :: Lens.Lens' EcsClusterDetails (Prelude.Maybe Prelude.Text)
ecsClusterDetails_arn = Lens.lens (\EcsClusterDetails' {arn} -> arn) (\s@EcsClusterDetails' {} a -> s {arn = a} :: EcsClusterDetails)

-- | The number of container instances registered into the cluster.
ecsClusterDetails_registeredContainerInstancesCount :: Lens.Lens' EcsClusterDetails (Prelude.Maybe Prelude.Int)
ecsClusterDetails_registeredContainerInstancesCount = Lens.lens (\EcsClusterDetails' {registeredContainerInstancesCount} -> registeredContainerInstancesCount) (\s@EcsClusterDetails' {} a -> s {registeredContainerInstancesCount = a} :: EcsClusterDetails)

-- | The status of the ECS cluster.
ecsClusterDetails_status :: Lens.Lens' EcsClusterDetails (Prelude.Maybe Prelude.Text)
ecsClusterDetails_status = Lens.lens (\EcsClusterDetails' {status} -> status) (\s@EcsClusterDetails' {} a -> s {status = a} :: EcsClusterDetails)

-- | The number of tasks in the cluster that are in the RUNNING state.
ecsClusterDetails_runningTasksCount :: Lens.Lens' EcsClusterDetails (Prelude.Maybe Prelude.Int)
ecsClusterDetails_runningTasksCount = Lens.lens (\EcsClusterDetails' {runningTasksCount} -> runningTasksCount) (\s@EcsClusterDetails' {} a -> s {runningTasksCount = a} :: EcsClusterDetails)

-- | The number of services that are running on the cluster in an ACTIVE
-- state.
ecsClusterDetails_activeServicesCount :: Lens.Lens' EcsClusterDetails (Prelude.Maybe Prelude.Int)
ecsClusterDetails_activeServicesCount = Lens.lens (\EcsClusterDetails' {activeServicesCount} -> activeServicesCount) (\s@EcsClusterDetails' {} a -> s {activeServicesCount = a} :: EcsClusterDetails)

instance Core.FromJSON EcsClusterDetails where
  parseJSON =
    Core.withObject
      "EcsClusterDetails"
      ( \x ->
          EcsClusterDetails'
            Prelude.<$> (x Core..:? "tags" Core..!= Prelude.mempty)
            Prelude.<*> (x Core..:? "name")
            Prelude.<*> (x Core..:? "taskDetails")
            Prelude.<*> (x Core..:? "arn")
            Prelude.<*> (x Core..:? "registeredContainerInstancesCount")
            Prelude.<*> (x Core..:? "status")
            Prelude.<*> (x Core..:? "runningTasksCount")
            Prelude.<*> (x Core..:? "activeServicesCount")
      )

instance Prelude.Hashable EcsClusterDetails where
  hashWithSalt _salt EcsClusterDetails' {..} =
    _salt `Prelude.hashWithSalt` tags
      `Prelude.hashWithSalt` name
      `Prelude.hashWithSalt` taskDetails
      `Prelude.hashWithSalt` arn
      `Prelude.hashWithSalt` registeredContainerInstancesCount
      `Prelude.hashWithSalt` status
      `Prelude.hashWithSalt` runningTasksCount
      `Prelude.hashWithSalt` activeServicesCount

instance Prelude.NFData EcsClusterDetails where
  rnf EcsClusterDetails' {..} =
    Prelude.rnf tags
      `Prelude.seq` Prelude.rnf name
      `Prelude.seq` Prelude.rnf taskDetails
      `Prelude.seq` Prelude.rnf arn
      `Prelude.seq` Prelude.rnf registeredContainerInstancesCount
      `Prelude.seq` Prelude.rnf status
      `Prelude.seq` Prelude.rnf runningTasksCount
      `Prelude.seq` Prelude.rnf activeServicesCount
