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
-- Module      : Amazonka.ECS.Types.Task
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.ECS.Types.Task where

import qualified Amazonka.Core as Core
import Amazonka.ECS.Types.Attachment
import Amazonka.ECS.Types.Attribute
import Amazonka.ECS.Types.Connectivity
import Amazonka.ECS.Types.Container
import Amazonka.ECS.Types.EphemeralStorage
import Amazonka.ECS.Types.HealthStatus
import Amazonka.ECS.Types.InferenceAccelerator
import Amazonka.ECS.Types.LaunchType
import Amazonka.ECS.Types.Tag
import Amazonka.ECS.Types.TaskOverride
import Amazonka.ECS.Types.TaskStopCode
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | Details on a task in a cluster.
--
-- /See:/ 'newTask' smart constructor.
data Task = Task'
  { -- | The metadata that you apply to the task to help you categorize and
    -- organize the task. Each tag consists of a key and an optional value. You
    -- define both the key and value.
    --
    -- The following basic restrictions apply to tags:
    --
    -- -   Maximum number of tags per resource - 50
    --
    -- -   For each resource, each tag key must be unique, and each tag key can
    --     have only one value.
    --
    -- -   Maximum key length - 128 Unicode characters in UTF-8
    --
    -- -   Maximum value length - 256 Unicode characters in UTF-8
    --
    -- -   If your tagging schema is used across multiple services and
    --     resources, remember that other services may have restrictions on
    --     allowed characters. Generally allowed characters are: letters,
    --     numbers, and spaces representable in UTF-8, and the following
    --     characters: + - = . _ : \/ \@.
    --
    -- -   Tag keys and values are case-sensitive.
    --
    -- -   Do not use @aws:@, @AWS:@, or any upper or lowercase combination of
    --     such as a prefix for either keys or values as it is reserved for
    --     Amazon Web Services use. You cannot edit or delete tag keys or
    --     values with this prefix. Tags with this prefix do not count against
    --     your tags per resource limit.
    tags :: Prelude.Maybe [Tag],
    -- | The ARN of the cluster that hosts the task.
    clusterArn :: Prelude.Maybe Prelude.Text,
    -- | The capacity provider that\'s associated with the task.
    capacityProviderName :: Prelude.Maybe Prelude.Text,
    -- | The ephemeral storage settings for the task.
    ephemeralStorage :: Prelude.Maybe EphemeralStorage,
    -- | The Unix timestamp for the time when the task execution stopped.
    executionStoppedAt :: Prelude.Maybe Core.POSIX,
    -- | The Unix timestamp for the time when the container image pull completed.
    pullStoppedAt :: Prelude.Maybe Core.POSIX,
    -- | The operating system that your tasks are running on. A platform family
    -- is specified only for tasks that use the Fargate launch type.
    --
    -- All tasks that run as part of this service must use the same
    -- @platformFamily@ value as the service (for example, @LINUX.@).
    platformFamily :: Prelude.Maybe Prelude.Text,
    -- | The amount of memory (in MiB) that the task uses as expressed in a task
    -- definition. It can be expressed as an integer using MiB (for example,
    -- @1024@). If it\'s expressed as a string using GB (for example, @1GB@ or
    -- @1 GB@), it\'s converted to an integer indicating the MiB when the task
    -- definition is registered.
    --
    -- If you use the EC2 launch type, this field is optional.
    --
    -- If you use the Fargate launch type, this field is required. You must use
    -- one of the following values. The value that you choose determines the
    -- range of supported values for the @cpu@ parameter.
    --
    -- -   512 (0.5 GB), 1024 (1 GB), 2048 (2 GB) - Available @cpu@ values: 256
    --     (.25 vCPU)
    --
    -- -   1024 (1 GB), 2048 (2 GB), 3072 (3 GB), 4096 (4 GB) - Available @cpu@
    --     values: 512 (.5 vCPU)
    --
    -- -   2048 (2 GB), 3072 (3 GB), 4096 (4 GB), 5120 (5 GB), 6144 (6 GB),
    --     7168 (7 GB), 8192 (8 GB) - Available @cpu@ values: 1024 (1 vCPU)
    --
    -- -   Between 4096 (4 GB) and 16384 (16 GB) in increments of 1024 (1 GB) -
    --     Available @cpu@ values: 2048 (2 vCPU)
    --
    -- -   Between 8192 (8 GB) and 30720 (30 GB) in increments of 1024 (1 GB) -
    --     Available @cpu@ values: 4096 (4 vCPU)
    --
    -- -   Between 16 GB and 60 GB in 4 GB increments - Available @cpu@ values:
    --     8192 (8 vCPU)
    --
    --     This option requires Linux platform @1.4.0@ or later.
    --
    -- -   Between 32GB and 120 GB in 8 GB increments - Available @cpu@ values:
    --     16384 (16 vCPU)
    --
    --     This option requires Linux platform @1.4.0@ or later.
    memory :: Prelude.Maybe Prelude.Text,
    -- | The number of CPU units used by the task as expressed in a task
    -- definition. It can be expressed as an integer using CPU units (for
    -- example, @1024@). It can also be expressed as a string using vCPUs (for
    -- example, @1 vCPU@ or @1 vcpu@). String values are converted to an
    -- integer that indicates the CPU units when the task definition is
    -- registered.
    --
    -- If you use the EC2 launch type, this field is optional. Supported values
    -- are between @128@ CPU units (@0.125@ vCPUs) and @10240@ CPU units (@10@
    -- vCPUs).
    --
    -- If you use the Fargate launch type, this field is required. You must use
    -- one of the following values. These values determine the range of
    -- supported values for the @memory@ parameter:
    --
    -- The CPU units cannot be less than 1 vCPU when you use Windows containers
    -- on Fargate.
    --
    -- -   256 (.25 vCPU) - Available @memory@ values: 512 (0.5 GB), 1024 (1
    --     GB), 2048 (2 GB)
    --
    -- -   512 (.5 vCPU) - Available @memory@ values: 1024 (1 GB), 2048 (2 GB),
    --     3072 (3 GB), 4096 (4 GB)
    --
    -- -   1024 (1 vCPU) - Available @memory@ values: 2048 (2 GB), 3072 (3 GB),
    --     4096 (4 GB), 5120 (5 GB), 6144 (6 GB), 7168 (7 GB), 8192 (8 GB)
    --
    -- -   2048 (2 vCPU) - Available @memory@ values: 4096 (4 GB) and 16384 (16
    --     GB) in increments of 1024 (1 GB)
    --
    -- -   4096 (4 vCPU) - Available @memory@ values: 8192 (8 GB) and 30720 (30
    --     GB) in increments of 1024 (1 GB)
    --
    -- -   8192 (8 vCPU) - Available @memory@ values: 16 GB and 60 GB in 4 GB
    --     increments
    --
    --     This option requires Linux platform @1.4.0@ or later.
    --
    -- -   16384 (16vCPU) - Available @memory@ values: 32GB and 120 GB in 8 GB
    --     increments
    --
    --     This option requires Linux platform @1.4.0@ or later.
    cpu :: Prelude.Maybe Prelude.Text,
    -- | The Amazon Resource Name (ARN) of the task.
    taskArn :: Prelude.Maybe Prelude.Text,
    -- | The Unix timestamp for the time when the task last went into @CONNECTED@
    -- status.
    connectivityAt :: Prelude.Maybe Core.POSIX,
    -- | The containers that\'s associated with the task.
    containers :: Prelude.Maybe [Container],
    -- | The health status for the task. It\'s determined by the health of the
    -- essential containers in the task. If all essential containers in the
    -- task are reporting as @HEALTHY@, the task status also reports as
    -- @HEALTHY@. If any essential containers in the task are reporting as
    -- @UNHEALTHY@ or @UNKNOWN@, the task status also reports as @UNHEALTHY@ or
    -- @UNKNOWN@.
    --
    -- The Amazon ECS container agent doesn\'t monitor or report on Docker
    -- health checks that are embedded in a container image and not specified
    -- in the container definition. For example, this includes those specified
    -- in a parent image or from the image\'s Dockerfile. Health check
    -- parameters that are specified in a container definition override any
    -- Docker health checks that are found in the container image.
    healthStatus :: Prelude.Maybe HealthStatus,
    -- | The Elastic Inference accelerator that\'s associated with the task.
    inferenceAccelerators :: Prelude.Maybe [InferenceAccelerator],
    -- | The last known status for the task. For more information, see
    -- <https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task-lifecycle.html Task Lifecycle>.
    lastStatus :: Prelude.Maybe Prelude.Text,
    -- | The ARN of the task definition that creates the task.
    taskDefinitionArn :: Prelude.Maybe Prelude.Text,
    -- | The Unix timestamp for the time when the container image pull began.
    pullStartedAt :: Prelude.Maybe Core.POSIX,
    -- | The desired status of the task. For more information, see
    -- <https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task-lifecycle.html Task Lifecycle>.
    desiredStatus :: Prelude.Maybe Prelude.Text,
    -- | The Availability Zone for the task.
    availabilityZone :: Prelude.Maybe Prelude.Text,
    -- | The tag specified when a task is started. If an Amazon ECS service
    -- started the task, the @startedBy@ parameter contains the deployment ID
    -- of that service.
    startedBy :: Prelude.Maybe Prelude.Text,
    -- | Determines whether execute command functionality is enabled for this
    -- task. If @true@, execute command functionality is enabled on all the
    -- containers in the task.
    enableExecuteCommand :: Prelude.Maybe Prelude.Bool,
    -- | The stop code indicating why a task was stopped. The @stoppedReason@
    -- might contain additional details.
    --
    -- The following are valid values:
    --
    -- -   @TaskFailedToStart@
    --
    -- -   @EssentialContainerExited@
    --
    -- -   @UserInitiated@
    --
    -- -   @TerminationNotice@
    --
    -- -   @ServiceSchedulerInitiated@
    --
    -- -   @SpotInterruption@
    stopCode :: Prelude.Maybe TaskStopCode,
    -- | The Unix timestamp for the time when the task started. More
    -- specifically, it\'s for the time when the task transitioned from the
    -- @PENDING@ state to the @RUNNING@ state.
    startedAt :: Prelude.Maybe Core.POSIX,
    -- | The Elastic Network Adapter that\'s associated with the task if the task
    -- uses the @awsvpc@ network mode.
    attachments :: Prelude.Maybe [Attachment],
    -- | The Unix timestamp for the time when the task stops. More specifically,
    -- it\'s for the time when the task transitions from the @RUNNING@ state to
    -- @STOPPED@.
    stoppingAt :: Prelude.Maybe Core.POSIX,
    -- | The ARN of the container instances that host the task.
    containerInstanceArn :: Prelude.Maybe Prelude.Text,
    -- | The infrastructure where your task runs on. For more information, see
    -- <https://docs.aws.amazon.com/AmazonECS/latest/developerguide/launch_types.html Amazon ECS launch types>
    -- in the /Amazon Elastic Container Service Developer Guide/.
    launchType :: Prelude.Maybe LaunchType,
    -- | The platform version where your task runs on. A platform version is only
    -- specified for tasks that use the Fargate launch type. If you didn\'t
    -- specify one, the @LATEST@ platform version is used. For more
    -- information, see
    -- <https://docs.aws.amazon.com/AmazonECS/latest/developerguide/platform_versions.html Fargate Platform Versions>
    -- in the /Amazon Elastic Container Service Developer Guide/.
    platformVersion :: Prelude.Maybe Prelude.Text,
    -- | The attributes of the task
    attributes :: Prelude.Maybe [Attribute],
    -- | The reason that the task was stopped.
    stoppedReason :: Prelude.Maybe Prelude.Text,
    -- | The Unix timestamp for the time when the task was stopped. More
    -- specifically, it\'s for the time when the task transitioned from the
    -- @RUNNING@ state to the @STOPPED@ state.
    stoppedAt :: Prelude.Maybe Core.POSIX,
    -- | The name of the task group that\'s associated with the task.
    group' :: Prelude.Maybe Prelude.Text,
    -- | The connectivity status of a task.
    connectivity :: Prelude.Maybe Connectivity,
    -- | The Unix timestamp for the time when the task was created. More
    -- specifically, it\'s for the time when the task entered the @PENDING@
    -- state.
    createdAt :: Prelude.Maybe Core.POSIX,
    -- | The version counter for the task. Every time a task experiences a change
    -- that starts a CloudWatch event, the version counter is incremented. If
    -- you replicate your Amazon ECS task state with CloudWatch Events, you can
    -- compare the version of a task reported by the Amazon ECS API actions
    -- with the version reported in CloudWatch Events for the task (inside the
    -- @detail@ object) to verify that the version in your event stream is
    -- current.
    version :: Prelude.Maybe Prelude.Integer,
    -- | One or more container overrides.
    overrides :: Prelude.Maybe TaskOverride
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'Task' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'tags', 'task_tags' - The metadata that you apply to the task to help you categorize and
-- organize the task. Each tag consists of a key and an optional value. You
-- define both the key and value.
--
-- The following basic restrictions apply to tags:
--
-- -   Maximum number of tags per resource - 50
--
-- -   For each resource, each tag key must be unique, and each tag key can
--     have only one value.
--
-- -   Maximum key length - 128 Unicode characters in UTF-8
--
-- -   Maximum value length - 256 Unicode characters in UTF-8
--
-- -   If your tagging schema is used across multiple services and
--     resources, remember that other services may have restrictions on
--     allowed characters. Generally allowed characters are: letters,
--     numbers, and spaces representable in UTF-8, and the following
--     characters: + - = . _ : \/ \@.
--
-- -   Tag keys and values are case-sensitive.
--
-- -   Do not use @aws:@, @AWS:@, or any upper or lowercase combination of
--     such as a prefix for either keys or values as it is reserved for
--     Amazon Web Services use. You cannot edit or delete tag keys or
--     values with this prefix. Tags with this prefix do not count against
--     your tags per resource limit.
--
-- 'clusterArn', 'task_clusterArn' - The ARN of the cluster that hosts the task.
--
-- 'capacityProviderName', 'task_capacityProviderName' - The capacity provider that\'s associated with the task.
--
-- 'ephemeralStorage', 'task_ephemeralStorage' - The ephemeral storage settings for the task.
--
-- 'executionStoppedAt', 'task_executionStoppedAt' - The Unix timestamp for the time when the task execution stopped.
--
-- 'pullStoppedAt', 'task_pullStoppedAt' - The Unix timestamp for the time when the container image pull completed.
--
-- 'platformFamily', 'task_platformFamily' - The operating system that your tasks are running on. A platform family
-- is specified only for tasks that use the Fargate launch type.
--
-- All tasks that run as part of this service must use the same
-- @platformFamily@ value as the service (for example, @LINUX.@).
--
-- 'memory', 'task_memory' - The amount of memory (in MiB) that the task uses as expressed in a task
-- definition. It can be expressed as an integer using MiB (for example,
-- @1024@). If it\'s expressed as a string using GB (for example, @1GB@ or
-- @1 GB@), it\'s converted to an integer indicating the MiB when the task
-- definition is registered.
--
-- If you use the EC2 launch type, this field is optional.
--
-- If you use the Fargate launch type, this field is required. You must use
-- one of the following values. The value that you choose determines the
-- range of supported values for the @cpu@ parameter.
--
-- -   512 (0.5 GB), 1024 (1 GB), 2048 (2 GB) - Available @cpu@ values: 256
--     (.25 vCPU)
--
-- -   1024 (1 GB), 2048 (2 GB), 3072 (3 GB), 4096 (4 GB) - Available @cpu@
--     values: 512 (.5 vCPU)
--
-- -   2048 (2 GB), 3072 (3 GB), 4096 (4 GB), 5120 (5 GB), 6144 (6 GB),
--     7168 (7 GB), 8192 (8 GB) - Available @cpu@ values: 1024 (1 vCPU)
--
-- -   Between 4096 (4 GB) and 16384 (16 GB) in increments of 1024 (1 GB) -
--     Available @cpu@ values: 2048 (2 vCPU)
--
-- -   Between 8192 (8 GB) and 30720 (30 GB) in increments of 1024 (1 GB) -
--     Available @cpu@ values: 4096 (4 vCPU)
--
-- -   Between 16 GB and 60 GB in 4 GB increments - Available @cpu@ values:
--     8192 (8 vCPU)
--
--     This option requires Linux platform @1.4.0@ or later.
--
-- -   Between 32GB and 120 GB in 8 GB increments - Available @cpu@ values:
--     16384 (16 vCPU)
--
--     This option requires Linux platform @1.4.0@ or later.
--
-- 'cpu', 'task_cpu' - The number of CPU units used by the task as expressed in a task
-- definition. It can be expressed as an integer using CPU units (for
-- example, @1024@). It can also be expressed as a string using vCPUs (for
-- example, @1 vCPU@ or @1 vcpu@). String values are converted to an
-- integer that indicates the CPU units when the task definition is
-- registered.
--
-- If you use the EC2 launch type, this field is optional. Supported values
-- are between @128@ CPU units (@0.125@ vCPUs) and @10240@ CPU units (@10@
-- vCPUs).
--
-- If you use the Fargate launch type, this field is required. You must use
-- one of the following values. These values determine the range of
-- supported values for the @memory@ parameter:
--
-- The CPU units cannot be less than 1 vCPU when you use Windows containers
-- on Fargate.
--
-- -   256 (.25 vCPU) - Available @memory@ values: 512 (0.5 GB), 1024 (1
--     GB), 2048 (2 GB)
--
-- -   512 (.5 vCPU) - Available @memory@ values: 1024 (1 GB), 2048 (2 GB),
--     3072 (3 GB), 4096 (4 GB)
--
-- -   1024 (1 vCPU) - Available @memory@ values: 2048 (2 GB), 3072 (3 GB),
--     4096 (4 GB), 5120 (5 GB), 6144 (6 GB), 7168 (7 GB), 8192 (8 GB)
--
-- -   2048 (2 vCPU) - Available @memory@ values: 4096 (4 GB) and 16384 (16
--     GB) in increments of 1024 (1 GB)
--
-- -   4096 (4 vCPU) - Available @memory@ values: 8192 (8 GB) and 30720 (30
--     GB) in increments of 1024 (1 GB)
--
-- -   8192 (8 vCPU) - Available @memory@ values: 16 GB and 60 GB in 4 GB
--     increments
--
--     This option requires Linux platform @1.4.0@ or later.
--
-- -   16384 (16vCPU) - Available @memory@ values: 32GB and 120 GB in 8 GB
--     increments
--
--     This option requires Linux platform @1.4.0@ or later.
--
-- 'taskArn', 'task_taskArn' - The Amazon Resource Name (ARN) of the task.
--
-- 'connectivityAt', 'task_connectivityAt' - The Unix timestamp for the time when the task last went into @CONNECTED@
-- status.
--
-- 'containers', 'task_containers' - The containers that\'s associated with the task.
--
-- 'healthStatus', 'task_healthStatus' - The health status for the task. It\'s determined by the health of the
-- essential containers in the task. If all essential containers in the
-- task are reporting as @HEALTHY@, the task status also reports as
-- @HEALTHY@. If any essential containers in the task are reporting as
-- @UNHEALTHY@ or @UNKNOWN@, the task status also reports as @UNHEALTHY@ or
-- @UNKNOWN@.
--
-- The Amazon ECS container agent doesn\'t monitor or report on Docker
-- health checks that are embedded in a container image and not specified
-- in the container definition. For example, this includes those specified
-- in a parent image or from the image\'s Dockerfile. Health check
-- parameters that are specified in a container definition override any
-- Docker health checks that are found in the container image.
--
-- 'inferenceAccelerators', 'task_inferenceAccelerators' - The Elastic Inference accelerator that\'s associated with the task.
--
-- 'lastStatus', 'task_lastStatus' - The last known status for the task. For more information, see
-- <https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task-lifecycle.html Task Lifecycle>.
--
-- 'taskDefinitionArn', 'task_taskDefinitionArn' - The ARN of the task definition that creates the task.
--
-- 'pullStartedAt', 'task_pullStartedAt' - The Unix timestamp for the time when the container image pull began.
--
-- 'desiredStatus', 'task_desiredStatus' - The desired status of the task. For more information, see
-- <https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task-lifecycle.html Task Lifecycle>.
--
-- 'availabilityZone', 'task_availabilityZone' - The Availability Zone for the task.
--
-- 'startedBy', 'task_startedBy' - The tag specified when a task is started. If an Amazon ECS service
-- started the task, the @startedBy@ parameter contains the deployment ID
-- of that service.
--
-- 'enableExecuteCommand', 'task_enableExecuteCommand' - Determines whether execute command functionality is enabled for this
-- task. If @true@, execute command functionality is enabled on all the
-- containers in the task.
--
-- 'stopCode', 'task_stopCode' - The stop code indicating why a task was stopped. The @stoppedReason@
-- might contain additional details.
--
-- The following are valid values:
--
-- -   @TaskFailedToStart@
--
-- -   @EssentialContainerExited@
--
-- -   @UserInitiated@
--
-- -   @TerminationNotice@
--
-- -   @ServiceSchedulerInitiated@
--
-- -   @SpotInterruption@
--
-- 'startedAt', 'task_startedAt' - The Unix timestamp for the time when the task started. More
-- specifically, it\'s for the time when the task transitioned from the
-- @PENDING@ state to the @RUNNING@ state.
--
-- 'attachments', 'task_attachments' - The Elastic Network Adapter that\'s associated with the task if the task
-- uses the @awsvpc@ network mode.
--
-- 'stoppingAt', 'task_stoppingAt' - The Unix timestamp for the time when the task stops. More specifically,
-- it\'s for the time when the task transitions from the @RUNNING@ state to
-- @STOPPED@.
--
-- 'containerInstanceArn', 'task_containerInstanceArn' - The ARN of the container instances that host the task.
--
-- 'launchType', 'task_launchType' - The infrastructure where your task runs on. For more information, see
-- <https://docs.aws.amazon.com/AmazonECS/latest/developerguide/launch_types.html Amazon ECS launch types>
-- in the /Amazon Elastic Container Service Developer Guide/.
--
-- 'platformVersion', 'task_platformVersion' - The platform version where your task runs on. A platform version is only
-- specified for tasks that use the Fargate launch type. If you didn\'t
-- specify one, the @LATEST@ platform version is used. For more
-- information, see
-- <https://docs.aws.amazon.com/AmazonECS/latest/developerguide/platform_versions.html Fargate Platform Versions>
-- in the /Amazon Elastic Container Service Developer Guide/.
--
-- 'attributes', 'task_attributes' - The attributes of the task
--
-- 'stoppedReason', 'task_stoppedReason' - The reason that the task was stopped.
--
-- 'stoppedAt', 'task_stoppedAt' - The Unix timestamp for the time when the task was stopped. More
-- specifically, it\'s for the time when the task transitioned from the
-- @RUNNING@ state to the @STOPPED@ state.
--
-- 'group'', 'task_group' - The name of the task group that\'s associated with the task.
--
-- 'connectivity', 'task_connectivity' - The connectivity status of a task.
--
-- 'createdAt', 'task_createdAt' - The Unix timestamp for the time when the task was created. More
-- specifically, it\'s for the time when the task entered the @PENDING@
-- state.
--
-- 'version', 'task_version' - The version counter for the task. Every time a task experiences a change
-- that starts a CloudWatch event, the version counter is incremented. If
-- you replicate your Amazon ECS task state with CloudWatch Events, you can
-- compare the version of a task reported by the Amazon ECS API actions
-- with the version reported in CloudWatch Events for the task (inside the
-- @detail@ object) to verify that the version in your event stream is
-- current.
--
-- 'overrides', 'task_overrides' - One or more container overrides.
newTask ::
  Task
newTask =
  Task'
    { tags = Prelude.Nothing,
      clusterArn = Prelude.Nothing,
      capacityProviderName = Prelude.Nothing,
      ephemeralStorage = Prelude.Nothing,
      executionStoppedAt = Prelude.Nothing,
      pullStoppedAt = Prelude.Nothing,
      platformFamily = Prelude.Nothing,
      memory = Prelude.Nothing,
      cpu = Prelude.Nothing,
      taskArn = Prelude.Nothing,
      connectivityAt = Prelude.Nothing,
      containers = Prelude.Nothing,
      healthStatus = Prelude.Nothing,
      inferenceAccelerators = Prelude.Nothing,
      lastStatus = Prelude.Nothing,
      taskDefinitionArn = Prelude.Nothing,
      pullStartedAt = Prelude.Nothing,
      desiredStatus = Prelude.Nothing,
      availabilityZone = Prelude.Nothing,
      startedBy = Prelude.Nothing,
      enableExecuteCommand = Prelude.Nothing,
      stopCode = Prelude.Nothing,
      startedAt = Prelude.Nothing,
      attachments = Prelude.Nothing,
      stoppingAt = Prelude.Nothing,
      containerInstanceArn = Prelude.Nothing,
      launchType = Prelude.Nothing,
      platformVersion = Prelude.Nothing,
      attributes = Prelude.Nothing,
      stoppedReason = Prelude.Nothing,
      stoppedAt = Prelude.Nothing,
      group' = Prelude.Nothing,
      connectivity = Prelude.Nothing,
      createdAt = Prelude.Nothing,
      version = Prelude.Nothing,
      overrides = Prelude.Nothing
    }

-- | The metadata that you apply to the task to help you categorize and
-- organize the task. Each tag consists of a key and an optional value. You
-- define both the key and value.
--
-- The following basic restrictions apply to tags:
--
-- -   Maximum number of tags per resource - 50
--
-- -   For each resource, each tag key must be unique, and each tag key can
--     have only one value.
--
-- -   Maximum key length - 128 Unicode characters in UTF-8
--
-- -   Maximum value length - 256 Unicode characters in UTF-8
--
-- -   If your tagging schema is used across multiple services and
--     resources, remember that other services may have restrictions on
--     allowed characters. Generally allowed characters are: letters,
--     numbers, and spaces representable in UTF-8, and the following
--     characters: + - = . _ : \/ \@.
--
-- -   Tag keys and values are case-sensitive.
--
-- -   Do not use @aws:@, @AWS:@, or any upper or lowercase combination of
--     such as a prefix for either keys or values as it is reserved for
--     Amazon Web Services use. You cannot edit or delete tag keys or
--     values with this prefix. Tags with this prefix do not count against
--     your tags per resource limit.
task_tags :: Lens.Lens' Task (Prelude.Maybe [Tag])
task_tags = Lens.lens (\Task' {tags} -> tags) (\s@Task' {} a -> s {tags = a} :: Task) Prelude.. Lens.mapping Lens.coerced

-- | The ARN of the cluster that hosts the task.
task_clusterArn :: Lens.Lens' Task (Prelude.Maybe Prelude.Text)
task_clusterArn = Lens.lens (\Task' {clusterArn} -> clusterArn) (\s@Task' {} a -> s {clusterArn = a} :: Task)

-- | The capacity provider that\'s associated with the task.
task_capacityProviderName :: Lens.Lens' Task (Prelude.Maybe Prelude.Text)
task_capacityProviderName = Lens.lens (\Task' {capacityProviderName} -> capacityProviderName) (\s@Task' {} a -> s {capacityProviderName = a} :: Task)

-- | The ephemeral storage settings for the task.
task_ephemeralStorage :: Lens.Lens' Task (Prelude.Maybe EphemeralStorage)
task_ephemeralStorage = Lens.lens (\Task' {ephemeralStorage} -> ephemeralStorage) (\s@Task' {} a -> s {ephemeralStorage = a} :: Task)

-- | The Unix timestamp for the time when the task execution stopped.
task_executionStoppedAt :: Lens.Lens' Task (Prelude.Maybe Prelude.UTCTime)
task_executionStoppedAt = Lens.lens (\Task' {executionStoppedAt} -> executionStoppedAt) (\s@Task' {} a -> s {executionStoppedAt = a} :: Task) Prelude.. Lens.mapping Core._Time

-- | The Unix timestamp for the time when the container image pull completed.
task_pullStoppedAt :: Lens.Lens' Task (Prelude.Maybe Prelude.UTCTime)
task_pullStoppedAt = Lens.lens (\Task' {pullStoppedAt} -> pullStoppedAt) (\s@Task' {} a -> s {pullStoppedAt = a} :: Task) Prelude.. Lens.mapping Core._Time

-- | The operating system that your tasks are running on. A platform family
-- is specified only for tasks that use the Fargate launch type.
--
-- All tasks that run as part of this service must use the same
-- @platformFamily@ value as the service (for example, @LINUX.@).
task_platformFamily :: Lens.Lens' Task (Prelude.Maybe Prelude.Text)
task_platformFamily = Lens.lens (\Task' {platformFamily} -> platformFamily) (\s@Task' {} a -> s {platformFamily = a} :: Task)

-- | The amount of memory (in MiB) that the task uses as expressed in a task
-- definition. It can be expressed as an integer using MiB (for example,
-- @1024@). If it\'s expressed as a string using GB (for example, @1GB@ or
-- @1 GB@), it\'s converted to an integer indicating the MiB when the task
-- definition is registered.
--
-- If you use the EC2 launch type, this field is optional.
--
-- If you use the Fargate launch type, this field is required. You must use
-- one of the following values. The value that you choose determines the
-- range of supported values for the @cpu@ parameter.
--
-- -   512 (0.5 GB), 1024 (1 GB), 2048 (2 GB) - Available @cpu@ values: 256
--     (.25 vCPU)
--
-- -   1024 (1 GB), 2048 (2 GB), 3072 (3 GB), 4096 (4 GB) - Available @cpu@
--     values: 512 (.5 vCPU)
--
-- -   2048 (2 GB), 3072 (3 GB), 4096 (4 GB), 5120 (5 GB), 6144 (6 GB),
--     7168 (7 GB), 8192 (8 GB) - Available @cpu@ values: 1024 (1 vCPU)
--
-- -   Between 4096 (4 GB) and 16384 (16 GB) in increments of 1024 (1 GB) -
--     Available @cpu@ values: 2048 (2 vCPU)
--
-- -   Between 8192 (8 GB) and 30720 (30 GB) in increments of 1024 (1 GB) -
--     Available @cpu@ values: 4096 (4 vCPU)
--
-- -   Between 16 GB and 60 GB in 4 GB increments - Available @cpu@ values:
--     8192 (8 vCPU)
--
--     This option requires Linux platform @1.4.0@ or later.
--
-- -   Between 32GB and 120 GB in 8 GB increments - Available @cpu@ values:
--     16384 (16 vCPU)
--
--     This option requires Linux platform @1.4.0@ or later.
task_memory :: Lens.Lens' Task (Prelude.Maybe Prelude.Text)
task_memory = Lens.lens (\Task' {memory} -> memory) (\s@Task' {} a -> s {memory = a} :: Task)

-- | The number of CPU units used by the task as expressed in a task
-- definition. It can be expressed as an integer using CPU units (for
-- example, @1024@). It can also be expressed as a string using vCPUs (for
-- example, @1 vCPU@ or @1 vcpu@). String values are converted to an
-- integer that indicates the CPU units when the task definition is
-- registered.
--
-- If you use the EC2 launch type, this field is optional. Supported values
-- are between @128@ CPU units (@0.125@ vCPUs) and @10240@ CPU units (@10@
-- vCPUs).
--
-- If you use the Fargate launch type, this field is required. You must use
-- one of the following values. These values determine the range of
-- supported values for the @memory@ parameter:
--
-- The CPU units cannot be less than 1 vCPU when you use Windows containers
-- on Fargate.
--
-- -   256 (.25 vCPU) - Available @memory@ values: 512 (0.5 GB), 1024 (1
--     GB), 2048 (2 GB)
--
-- -   512 (.5 vCPU) - Available @memory@ values: 1024 (1 GB), 2048 (2 GB),
--     3072 (3 GB), 4096 (4 GB)
--
-- -   1024 (1 vCPU) - Available @memory@ values: 2048 (2 GB), 3072 (3 GB),
--     4096 (4 GB), 5120 (5 GB), 6144 (6 GB), 7168 (7 GB), 8192 (8 GB)
--
-- -   2048 (2 vCPU) - Available @memory@ values: 4096 (4 GB) and 16384 (16
--     GB) in increments of 1024 (1 GB)
--
-- -   4096 (4 vCPU) - Available @memory@ values: 8192 (8 GB) and 30720 (30
--     GB) in increments of 1024 (1 GB)
--
-- -   8192 (8 vCPU) - Available @memory@ values: 16 GB and 60 GB in 4 GB
--     increments
--
--     This option requires Linux platform @1.4.0@ or later.
--
-- -   16384 (16vCPU) - Available @memory@ values: 32GB and 120 GB in 8 GB
--     increments
--
--     This option requires Linux platform @1.4.0@ or later.
task_cpu :: Lens.Lens' Task (Prelude.Maybe Prelude.Text)
task_cpu = Lens.lens (\Task' {cpu} -> cpu) (\s@Task' {} a -> s {cpu = a} :: Task)

-- | The Amazon Resource Name (ARN) of the task.
task_taskArn :: Lens.Lens' Task (Prelude.Maybe Prelude.Text)
task_taskArn = Lens.lens (\Task' {taskArn} -> taskArn) (\s@Task' {} a -> s {taskArn = a} :: Task)

-- | The Unix timestamp for the time when the task last went into @CONNECTED@
-- status.
task_connectivityAt :: Lens.Lens' Task (Prelude.Maybe Prelude.UTCTime)
task_connectivityAt = Lens.lens (\Task' {connectivityAt} -> connectivityAt) (\s@Task' {} a -> s {connectivityAt = a} :: Task) Prelude.. Lens.mapping Core._Time

-- | The containers that\'s associated with the task.
task_containers :: Lens.Lens' Task (Prelude.Maybe [Container])
task_containers = Lens.lens (\Task' {containers} -> containers) (\s@Task' {} a -> s {containers = a} :: Task) Prelude.. Lens.mapping Lens.coerced

-- | The health status for the task. It\'s determined by the health of the
-- essential containers in the task. If all essential containers in the
-- task are reporting as @HEALTHY@, the task status also reports as
-- @HEALTHY@. If any essential containers in the task are reporting as
-- @UNHEALTHY@ or @UNKNOWN@, the task status also reports as @UNHEALTHY@ or
-- @UNKNOWN@.
--
-- The Amazon ECS container agent doesn\'t monitor or report on Docker
-- health checks that are embedded in a container image and not specified
-- in the container definition. For example, this includes those specified
-- in a parent image or from the image\'s Dockerfile. Health check
-- parameters that are specified in a container definition override any
-- Docker health checks that are found in the container image.
task_healthStatus :: Lens.Lens' Task (Prelude.Maybe HealthStatus)
task_healthStatus = Lens.lens (\Task' {healthStatus} -> healthStatus) (\s@Task' {} a -> s {healthStatus = a} :: Task)

-- | The Elastic Inference accelerator that\'s associated with the task.
task_inferenceAccelerators :: Lens.Lens' Task (Prelude.Maybe [InferenceAccelerator])
task_inferenceAccelerators = Lens.lens (\Task' {inferenceAccelerators} -> inferenceAccelerators) (\s@Task' {} a -> s {inferenceAccelerators = a} :: Task) Prelude.. Lens.mapping Lens.coerced

-- | The last known status for the task. For more information, see
-- <https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task-lifecycle.html Task Lifecycle>.
task_lastStatus :: Lens.Lens' Task (Prelude.Maybe Prelude.Text)
task_lastStatus = Lens.lens (\Task' {lastStatus} -> lastStatus) (\s@Task' {} a -> s {lastStatus = a} :: Task)

-- | The ARN of the task definition that creates the task.
task_taskDefinitionArn :: Lens.Lens' Task (Prelude.Maybe Prelude.Text)
task_taskDefinitionArn = Lens.lens (\Task' {taskDefinitionArn} -> taskDefinitionArn) (\s@Task' {} a -> s {taskDefinitionArn = a} :: Task)

-- | The Unix timestamp for the time when the container image pull began.
task_pullStartedAt :: Lens.Lens' Task (Prelude.Maybe Prelude.UTCTime)
task_pullStartedAt = Lens.lens (\Task' {pullStartedAt} -> pullStartedAt) (\s@Task' {} a -> s {pullStartedAt = a} :: Task) Prelude.. Lens.mapping Core._Time

-- | The desired status of the task. For more information, see
-- <https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task-lifecycle.html Task Lifecycle>.
task_desiredStatus :: Lens.Lens' Task (Prelude.Maybe Prelude.Text)
task_desiredStatus = Lens.lens (\Task' {desiredStatus} -> desiredStatus) (\s@Task' {} a -> s {desiredStatus = a} :: Task)

-- | The Availability Zone for the task.
task_availabilityZone :: Lens.Lens' Task (Prelude.Maybe Prelude.Text)
task_availabilityZone = Lens.lens (\Task' {availabilityZone} -> availabilityZone) (\s@Task' {} a -> s {availabilityZone = a} :: Task)

-- | The tag specified when a task is started. If an Amazon ECS service
-- started the task, the @startedBy@ parameter contains the deployment ID
-- of that service.
task_startedBy :: Lens.Lens' Task (Prelude.Maybe Prelude.Text)
task_startedBy = Lens.lens (\Task' {startedBy} -> startedBy) (\s@Task' {} a -> s {startedBy = a} :: Task)

-- | Determines whether execute command functionality is enabled for this
-- task. If @true@, execute command functionality is enabled on all the
-- containers in the task.
task_enableExecuteCommand :: Lens.Lens' Task (Prelude.Maybe Prelude.Bool)
task_enableExecuteCommand = Lens.lens (\Task' {enableExecuteCommand} -> enableExecuteCommand) (\s@Task' {} a -> s {enableExecuteCommand = a} :: Task)

-- | The stop code indicating why a task was stopped. The @stoppedReason@
-- might contain additional details.
--
-- The following are valid values:
--
-- -   @TaskFailedToStart@
--
-- -   @EssentialContainerExited@
--
-- -   @UserInitiated@
--
-- -   @TerminationNotice@
--
-- -   @ServiceSchedulerInitiated@
--
-- -   @SpotInterruption@
task_stopCode :: Lens.Lens' Task (Prelude.Maybe TaskStopCode)
task_stopCode = Lens.lens (\Task' {stopCode} -> stopCode) (\s@Task' {} a -> s {stopCode = a} :: Task)

-- | The Unix timestamp for the time when the task started. More
-- specifically, it\'s for the time when the task transitioned from the
-- @PENDING@ state to the @RUNNING@ state.
task_startedAt :: Lens.Lens' Task (Prelude.Maybe Prelude.UTCTime)
task_startedAt = Lens.lens (\Task' {startedAt} -> startedAt) (\s@Task' {} a -> s {startedAt = a} :: Task) Prelude.. Lens.mapping Core._Time

-- | The Elastic Network Adapter that\'s associated with the task if the task
-- uses the @awsvpc@ network mode.
task_attachments :: Lens.Lens' Task (Prelude.Maybe [Attachment])
task_attachments = Lens.lens (\Task' {attachments} -> attachments) (\s@Task' {} a -> s {attachments = a} :: Task) Prelude.. Lens.mapping Lens.coerced

-- | The Unix timestamp for the time when the task stops. More specifically,
-- it\'s for the time when the task transitions from the @RUNNING@ state to
-- @STOPPED@.
task_stoppingAt :: Lens.Lens' Task (Prelude.Maybe Prelude.UTCTime)
task_stoppingAt = Lens.lens (\Task' {stoppingAt} -> stoppingAt) (\s@Task' {} a -> s {stoppingAt = a} :: Task) Prelude.. Lens.mapping Core._Time

-- | The ARN of the container instances that host the task.
task_containerInstanceArn :: Lens.Lens' Task (Prelude.Maybe Prelude.Text)
task_containerInstanceArn = Lens.lens (\Task' {containerInstanceArn} -> containerInstanceArn) (\s@Task' {} a -> s {containerInstanceArn = a} :: Task)

-- | The infrastructure where your task runs on. For more information, see
-- <https://docs.aws.amazon.com/AmazonECS/latest/developerguide/launch_types.html Amazon ECS launch types>
-- in the /Amazon Elastic Container Service Developer Guide/.
task_launchType :: Lens.Lens' Task (Prelude.Maybe LaunchType)
task_launchType = Lens.lens (\Task' {launchType} -> launchType) (\s@Task' {} a -> s {launchType = a} :: Task)

-- | The platform version where your task runs on. A platform version is only
-- specified for tasks that use the Fargate launch type. If you didn\'t
-- specify one, the @LATEST@ platform version is used. For more
-- information, see
-- <https://docs.aws.amazon.com/AmazonECS/latest/developerguide/platform_versions.html Fargate Platform Versions>
-- in the /Amazon Elastic Container Service Developer Guide/.
task_platformVersion :: Lens.Lens' Task (Prelude.Maybe Prelude.Text)
task_platformVersion = Lens.lens (\Task' {platformVersion} -> platformVersion) (\s@Task' {} a -> s {platformVersion = a} :: Task)

-- | The attributes of the task
task_attributes :: Lens.Lens' Task (Prelude.Maybe [Attribute])
task_attributes = Lens.lens (\Task' {attributes} -> attributes) (\s@Task' {} a -> s {attributes = a} :: Task) Prelude.. Lens.mapping Lens.coerced

-- | The reason that the task was stopped.
task_stoppedReason :: Lens.Lens' Task (Prelude.Maybe Prelude.Text)
task_stoppedReason = Lens.lens (\Task' {stoppedReason} -> stoppedReason) (\s@Task' {} a -> s {stoppedReason = a} :: Task)

-- | The Unix timestamp for the time when the task was stopped. More
-- specifically, it\'s for the time when the task transitioned from the
-- @RUNNING@ state to the @STOPPED@ state.
task_stoppedAt :: Lens.Lens' Task (Prelude.Maybe Prelude.UTCTime)
task_stoppedAt = Lens.lens (\Task' {stoppedAt} -> stoppedAt) (\s@Task' {} a -> s {stoppedAt = a} :: Task) Prelude.. Lens.mapping Core._Time

-- | The name of the task group that\'s associated with the task.
task_group :: Lens.Lens' Task (Prelude.Maybe Prelude.Text)
task_group = Lens.lens (\Task' {group'} -> group') (\s@Task' {} a -> s {group' = a} :: Task)

-- | The connectivity status of a task.
task_connectivity :: Lens.Lens' Task (Prelude.Maybe Connectivity)
task_connectivity = Lens.lens (\Task' {connectivity} -> connectivity) (\s@Task' {} a -> s {connectivity = a} :: Task)

-- | The Unix timestamp for the time when the task was created. More
-- specifically, it\'s for the time when the task entered the @PENDING@
-- state.
task_createdAt :: Lens.Lens' Task (Prelude.Maybe Prelude.UTCTime)
task_createdAt = Lens.lens (\Task' {createdAt} -> createdAt) (\s@Task' {} a -> s {createdAt = a} :: Task) Prelude.. Lens.mapping Core._Time

-- | The version counter for the task. Every time a task experiences a change
-- that starts a CloudWatch event, the version counter is incremented. If
-- you replicate your Amazon ECS task state with CloudWatch Events, you can
-- compare the version of a task reported by the Amazon ECS API actions
-- with the version reported in CloudWatch Events for the task (inside the
-- @detail@ object) to verify that the version in your event stream is
-- current.
task_version :: Lens.Lens' Task (Prelude.Maybe Prelude.Integer)
task_version = Lens.lens (\Task' {version} -> version) (\s@Task' {} a -> s {version = a} :: Task)

-- | One or more container overrides.
task_overrides :: Lens.Lens' Task (Prelude.Maybe TaskOverride)
task_overrides = Lens.lens (\Task' {overrides} -> overrides) (\s@Task' {} a -> s {overrides = a} :: Task)

instance Core.FromJSON Task where
  parseJSON =
    Core.withObject
      "Task"
      ( \x ->
          Task'
            Prelude.<$> (x Core..:? "tags" Core..!= Prelude.mempty)
            Prelude.<*> (x Core..:? "clusterArn")
            Prelude.<*> (x Core..:? "capacityProviderName")
            Prelude.<*> (x Core..:? "ephemeralStorage")
            Prelude.<*> (x Core..:? "executionStoppedAt")
            Prelude.<*> (x Core..:? "pullStoppedAt")
            Prelude.<*> (x Core..:? "platformFamily")
            Prelude.<*> (x Core..:? "memory")
            Prelude.<*> (x Core..:? "cpu")
            Prelude.<*> (x Core..:? "taskArn")
            Prelude.<*> (x Core..:? "connectivityAt")
            Prelude.<*> (x Core..:? "containers" Core..!= Prelude.mempty)
            Prelude.<*> (x Core..:? "healthStatus")
            Prelude.<*> ( x Core..:? "inferenceAccelerators"
                            Core..!= Prelude.mempty
                        )
            Prelude.<*> (x Core..:? "lastStatus")
            Prelude.<*> (x Core..:? "taskDefinitionArn")
            Prelude.<*> (x Core..:? "pullStartedAt")
            Prelude.<*> (x Core..:? "desiredStatus")
            Prelude.<*> (x Core..:? "availabilityZone")
            Prelude.<*> (x Core..:? "startedBy")
            Prelude.<*> (x Core..:? "enableExecuteCommand")
            Prelude.<*> (x Core..:? "stopCode")
            Prelude.<*> (x Core..:? "startedAt")
            Prelude.<*> (x Core..:? "attachments" Core..!= Prelude.mempty)
            Prelude.<*> (x Core..:? "stoppingAt")
            Prelude.<*> (x Core..:? "containerInstanceArn")
            Prelude.<*> (x Core..:? "launchType")
            Prelude.<*> (x Core..:? "platformVersion")
            Prelude.<*> (x Core..:? "attributes" Core..!= Prelude.mempty)
            Prelude.<*> (x Core..:? "stoppedReason")
            Prelude.<*> (x Core..:? "stoppedAt")
            Prelude.<*> (x Core..:? "group")
            Prelude.<*> (x Core..:? "connectivity")
            Prelude.<*> (x Core..:? "createdAt")
            Prelude.<*> (x Core..:? "version")
            Prelude.<*> (x Core..:? "overrides")
      )

instance Prelude.Hashable Task where
  hashWithSalt _salt Task' {..} =
    _salt `Prelude.hashWithSalt` tags
      `Prelude.hashWithSalt` clusterArn
      `Prelude.hashWithSalt` capacityProviderName
      `Prelude.hashWithSalt` ephemeralStorage
      `Prelude.hashWithSalt` executionStoppedAt
      `Prelude.hashWithSalt` pullStoppedAt
      `Prelude.hashWithSalt` platformFamily
      `Prelude.hashWithSalt` memory
      `Prelude.hashWithSalt` cpu
      `Prelude.hashWithSalt` taskArn
      `Prelude.hashWithSalt` connectivityAt
      `Prelude.hashWithSalt` containers
      `Prelude.hashWithSalt` healthStatus
      `Prelude.hashWithSalt` inferenceAccelerators
      `Prelude.hashWithSalt` lastStatus
      `Prelude.hashWithSalt` taskDefinitionArn
      `Prelude.hashWithSalt` pullStartedAt
      `Prelude.hashWithSalt` desiredStatus
      `Prelude.hashWithSalt` availabilityZone
      `Prelude.hashWithSalt` startedBy
      `Prelude.hashWithSalt` enableExecuteCommand
      `Prelude.hashWithSalt` stopCode
      `Prelude.hashWithSalt` startedAt
      `Prelude.hashWithSalt` attachments
      `Prelude.hashWithSalt` stoppingAt
      `Prelude.hashWithSalt` containerInstanceArn
      `Prelude.hashWithSalt` launchType
      `Prelude.hashWithSalt` platformVersion
      `Prelude.hashWithSalt` attributes
      `Prelude.hashWithSalt` stoppedReason
      `Prelude.hashWithSalt` stoppedAt
      `Prelude.hashWithSalt` group'
      `Prelude.hashWithSalt` connectivity
      `Prelude.hashWithSalt` createdAt
      `Prelude.hashWithSalt` version
      `Prelude.hashWithSalt` overrides

instance Prelude.NFData Task where
  rnf Task' {..} =
    Prelude.rnf tags
      `Prelude.seq` Prelude.rnf clusterArn
      `Prelude.seq` Prelude.rnf capacityProviderName
      `Prelude.seq` Prelude.rnf ephemeralStorage
      `Prelude.seq` Prelude.rnf executionStoppedAt
      `Prelude.seq` Prelude.rnf pullStoppedAt
      `Prelude.seq` Prelude.rnf platformFamily
      `Prelude.seq` Prelude.rnf memory
      `Prelude.seq` Prelude.rnf cpu
      `Prelude.seq` Prelude.rnf taskArn
      `Prelude.seq` Prelude.rnf connectivityAt
      `Prelude.seq` Prelude.rnf containers
      `Prelude.seq` Prelude.rnf healthStatus
      `Prelude.seq` Prelude.rnf inferenceAccelerators
      `Prelude.seq` Prelude.rnf lastStatus
      `Prelude.seq` Prelude.rnf taskDefinitionArn
      `Prelude.seq` Prelude.rnf pullStartedAt
      `Prelude.seq` Prelude.rnf desiredStatus
      `Prelude.seq` Prelude.rnf availabilityZone
      `Prelude.seq` Prelude.rnf startedBy
      `Prelude.seq` Prelude.rnf
        enableExecuteCommand
      `Prelude.seq` Prelude.rnf stopCode
      `Prelude.seq` Prelude.rnf startedAt
      `Prelude.seq` Prelude.rnf
        attachments
      `Prelude.seq` Prelude.rnf
        stoppingAt
      `Prelude.seq` Prelude.rnf
        containerInstanceArn
      `Prelude.seq` Prelude.rnf
        launchType
      `Prelude.seq` Prelude.rnf
        platformVersion
      `Prelude.seq` Prelude.rnf
        attributes
      `Prelude.seq` Prelude.rnf
        stoppedReason
      `Prelude.seq` Prelude.rnf
        stoppedAt
      `Prelude.seq` Prelude.rnf
        group'
      `Prelude.seq` Prelude.rnf
        connectivity
      `Prelude.seq` Prelude.rnf
        createdAt
      `Prelude.seq` Prelude.rnf
        version
      `Prelude.seq` Prelude.rnf
        overrides
