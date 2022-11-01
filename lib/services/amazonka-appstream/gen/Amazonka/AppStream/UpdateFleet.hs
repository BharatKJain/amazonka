{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE NamedFieldPuns #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Amazonka.AppStream.UpdateFleet
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the specified fleet.
--
-- If the fleet is in the @STOPPED@ state, you can update any attribute
-- except the fleet name.
--
-- If the fleet is in the @RUNNING@ state, you can update the following
-- based on the fleet type:
--
-- -   Always-On and On-Demand fleet types
--
--     You can update the @DisplayName@, @ComputeCapacity@, @ImageARN@,
--     @ImageName@, @IdleDisconnectTimeoutInSeconds@, and
--     @DisconnectTimeoutInSeconds@ attributes.
--
-- -   Elastic fleet type
--
--     You can update the @DisplayName@, @IdleDisconnectTimeoutInSeconds@,
--     @DisconnectTimeoutInSeconds@, @MaxConcurrentSessions@,
--     @SessionScriptS3Location@ and @UsbDeviceFilterStrings@ attributes.
--
-- If the fleet is in the @STARTING@ or @STOPPED@ state, you can\'t update
-- it.
module Amazonka.AppStream.UpdateFleet
  ( -- * Creating a Request
    UpdateFleet (..),
    newUpdateFleet,

    -- * Request Lenses
    updateFleet_name,
    updateFleet_sessionScriptS3Location,
    updateFleet_maxConcurrentSessions,
    updateFleet_attributesToDelete,
    updateFleet_vpcConfig,
    updateFleet_deleteVpcConfig,
    updateFleet_displayName,
    updateFleet_imageArn,
    updateFleet_platform,
    updateFleet_description,
    updateFleet_disconnectTimeoutInSeconds,
    updateFleet_idleDisconnectTimeoutInSeconds,
    updateFleet_instanceType,
    updateFleet_iamRoleArn,
    updateFleet_usbDeviceFilterStrings,
    updateFleet_domainJoinInfo,
    updateFleet_streamView,
    updateFleet_enableDefaultInternetAccess,
    updateFleet_computeCapacity,
    updateFleet_imageName,
    updateFleet_maxUserDurationInSeconds,

    -- * Destructuring the Response
    UpdateFleetResponse (..),
    newUpdateFleetResponse,

    -- * Response Lenses
    updateFleetResponse_fleet,
    updateFleetResponse_httpStatus,
  )
where

import Amazonka.AppStream.Types
import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newUpdateFleet' smart constructor.
data UpdateFleet = UpdateFleet'
  { -- | A unique name for the fleet.
    name :: Prelude.Maybe Prelude.Text,
    -- | The S3 location of the session scripts configuration zip file. This only
    -- applies to Elastic fleets.
    sessionScriptS3Location :: Prelude.Maybe S3Location,
    -- | The maximum number of concurrent sessions for a fleet.
    maxConcurrentSessions :: Prelude.Maybe Prelude.Int,
    -- | The fleet attributes to delete.
    attributesToDelete :: Prelude.Maybe [FleetAttribute],
    -- | The VPC configuration for the fleet. This is required for Elastic
    -- fleets, but not required for other fleet types. Elastic fleets require
    -- that you specify at least two subnets in different availability zones.
    vpcConfig :: Prelude.Maybe VpcConfig,
    -- | Deletes the VPC association for the specified fleet.
    deleteVpcConfig :: Prelude.Maybe Prelude.Bool,
    -- | The fleet name to display.
    displayName :: Prelude.Maybe Prelude.Text,
    -- | The ARN of the public, private, or shared image to use.
    imageArn :: Prelude.Maybe Prelude.Text,
    -- | The platform of the fleet. WINDOWS_SERVER_2019 and AMAZON_LINUX2 are
    -- supported for Elastic fleets.
    platform :: Prelude.Maybe PlatformType,
    -- | The description to display.
    description :: Prelude.Maybe Prelude.Text,
    -- | The amount of time that a streaming session remains active after users
    -- disconnect. If users try to reconnect to the streaming session after a
    -- disconnection or network interruption within this time interval, they
    -- are connected to their previous session. Otherwise, they are connected
    -- to a new session with a new streaming instance.
    --
    -- Specify a value between 60 and 360000.
    disconnectTimeoutInSeconds :: Prelude.Maybe Prelude.Int,
    -- | The amount of time that users can be idle (inactive) before they are
    -- disconnected from their streaming session and the
    -- @DisconnectTimeoutInSeconds@ time interval begins. Users are notified
    -- before they are disconnected due to inactivity. If users try to
    -- reconnect to the streaming session before the time interval specified in
    -- @DisconnectTimeoutInSeconds@ elapses, they are connected to their
    -- previous session. Users are considered idle when they stop providing
    -- keyboard or mouse input during their streaming session. File uploads and
    -- downloads, audio in, audio out, and pixels changing do not qualify as
    -- user activity. If users continue to be idle after the time interval in
    -- @IdleDisconnectTimeoutInSeconds@ elapses, they are disconnected.
    --
    -- To prevent users from being disconnected due to inactivity, specify a
    -- value of 0. Otherwise, specify a value between 60 and 3600. The default
    -- value is 0.
    --
    -- If you enable this feature, we recommend that you specify a value that
    -- corresponds exactly to a whole number of minutes (for example, 60, 120,
    -- and 180). If you don\'t do this, the value is rounded to the nearest
    -- minute. For example, if you specify a value of 70, users are
    -- disconnected after 1 minute of inactivity. If you specify a value that
    -- is at the midpoint between two different minutes, the value is rounded
    -- up. For example, if you specify a value of 90, users are disconnected
    -- after 2 minutes of inactivity.
    idleDisconnectTimeoutInSeconds :: Prelude.Maybe Prelude.Int,
    -- | The instance type to use when launching fleet instances. The following
    -- instance types are available:
    --
    -- -   stream.standard.small
    --
    -- -   stream.standard.medium
    --
    -- -   stream.standard.large
    --
    -- -   stream.compute.large
    --
    -- -   stream.compute.xlarge
    --
    -- -   stream.compute.2xlarge
    --
    -- -   stream.compute.4xlarge
    --
    -- -   stream.compute.8xlarge
    --
    -- -   stream.memory.large
    --
    -- -   stream.memory.xlarge
    --
    -- -   stream.memory.2xlarge
    --
    -- -   stream.memory.4xlarge
    --
    -- -   stream.memory.8xlarge
    --
    -- -   stream.memory.z1d.large
    --
    -- -   stream.memory.z1d.xlarge
    --
    -- -   stream.memory.z1d.2xlarge
    --
    -- -   stream.memory.z1d.3xlarge
    --
    -- -   stream.memory.z1d.6xlarge
    --
    -- -   stream.memory.z1d.12xlarge
    --
    -- -   stream.graphics-design.large
    --
    -- -   stream.graphics-design.xlarge
    --
    -- -   stream.graphics-design.2xlarge
    --
    -- -   stream.graphics-design.4xlarge
    --
    -- -   stream.graphics-desktop.2xlarge
    --
    -- -   stream.graphics.g4dn.xlarge
    --
    -- -   stream.graphics.g4dn.2xlarge
    --
    -- -   stream.graphics.g4dn.4xlarge
    --
    -- -   stream.graphics.g4dn.8xlarge
    --
    -- -   stream.graphics.g4dn.12xlarge
    --
    -- -   stream.graphics.g4dn.16xlarge
    --
    -- -   stream.graphics-pro.4xlarge
    --
    -- -   stream.graphics-pro.8xlarge
    --
    -- -   stream.graphics-pro.16xlarge
    --
    -- The following instance types are available for Elastic fleets:
    --
    -- -   stream.standard.small
    --
    -- -   stream.standard.medium
    instanceType :: Prelude.Maybe Prelude.Text,
    -- | The Amazon Resource Name (ARN) of the IAM role to apply to the fleet. To
    -- assume a role, a fleet instance calls the AWS Security Token Service
    -- (STS) @AssumeRole@ API operation and passes the ARN of the role to use.
    -- The operation creates a new session with temporary credentials.
    -- AppStream 2.0 retrieves the temporary credentials and creates the
    -- __appstream_machine_role__ credential profile on the instance.
    --
    -- For more information, see
    -- <https://docs.aws.amazon.com/appstream2/latest/developerguide/using-iam-roles-to-grant-permissions-to-applications-scripts-streaming-instances.html Using an IAM Role to Grant Permissions to Applications and Scripts Running on AppStream 2.0 Streaming Instances>
    -- in the /Amazon AppStream 2.0 Administration Guide/.
    iamRoleArn :: Prelude.Maybe Prelude.Text,
    -- | The USB device filter strings that specify which USB devices a user can
    -- redirect to the fleet streaming session, when using the Windows native
    -- client. This is allowed but not required for Elastic fleets.
    usbDeviceFilterStrings :: Prelude.Maybe [Prelude.Text],
    -- | The name of the directory and organizational unit (OU) to use to join
    -- the fleet to a Microsoft Active Directory domain.
    domainJoinInfo :: Prelude.Maybe DomainJoinInfo,
    -- | The AppStream 2.0 view that is displayed to your users when they stream
    -- from the fleet. When @APP@ is specified, only the windows of
    -- applications opened by users display. When @DESKTOP@ is specified, the
    -- standard desktop that is provided by the operating system displays.
    --
    -- The default value is @APP@.
    streamView :: Prelude.Maybe StreamView,
    -- | Enables or disables default internet access for the fleet.
    enableDefaultInternetAccess :: Prelude.Maybe Prelude.Bool,
    -- | The desired capacity for the fleet. This is not allowed for Elastic
    -- fleets.
    computeCapacity :: Prelude.Maybe ComputeCapacity,
    -- | The name of the image used to create the fleet.
    imageName :: Prelude.Maybe Prelude.Text,
    -- | The maximum amount of time that a streaming session can remain active,
    -- in seconds. If users are still connected to a streaming instance five
    -- minutes before this limit is reached, they are prompted to save any open
    -- documents before being disconnected. After this time elapses, the
    -- instance is terminated and replaced by a new instance.
    --
    -- Specify a value between 600 and 360000.
    maxUserDurationInSeconds :: Prelude.Maybe Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateFleet' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'name', 'updateFleet_name' - A unique name for the fleet.
--
-- 'sessionScriptS3Location', 'updateFleet_sessionScriptS3Location' - The S3 location of the session scripts configuration zip file. This only
-- applies to Elastic fleets.
--
-- 'maxConcurrentSessions', 'updateFleet_maxConcurrentSessions' - The maximum number of concurrent sessions for a fleet.
--
-- 'attributesToDelete', 'updateFleet_attributesToDelete' - The fleet attributes to delete.
--
-- 'vpcConfig', 'updateFleet_vpcConfig' - The VPC configuration for the fleet. This is required for Elastic
-- fleets, but not required for other fleet types. Elastic fleets require
-- that you specify at least two subnets in different availability zones.
--
-- 'deleteVpcConfig', 'updateFleet_deleteVpcConfig' - Deletes the VPC association for the specified fleet.
--
-- 'displayName', 'updateFleet_displayName' - The fleet name to display.
--
-- 'imageArn', 'updateFleet_imageArn' - The ARN of the public, private, or shared image to use.
--
-- 'platform', 'updateFleet_platform' - The platform of the fleet. WINDOWS_SERVER_2019 and AMAZON_LINUX2 are
-- supported for Elastic fleets.
--
-- 'description', 'updateFleet_description' - The description to display.
--
-- 'disconnectTimeoutInSeconds', 'updateFleet_disconnectTimeoutInSeconds' - The amount of time that a streaming session remains active after users
-- disconnect. If users try to reconnect to the streaming session after a
-- disconnection or network interruption within this time interval, they
-- are connected to their previous session. Otherwise, they are connected
-- to a new session with a new streaming instance.
--
-- Specify a value between 60 and 360000.
--
-- 'idleDisconnectTimeoutInSeconds', 'updateFleet_idleDisconnectTimeoutInSeconds' - The amount of time that users can be idle (inactive) before they are
-- disconnected from their streaming session and the
-- @DisconnectTimeoutInSeconds@ time interval begins. Users are notified
-- before they are disconnected due to inactivity. If users try to
-- reconnect to the streaming session before the time interval specified in
-- @DisconnectTimeoutInSeconds@ elapses, they are connected to their
-- previous session. Users are considered idle when they stop providing
-- keyboard or mouse input during their streaming session. File uploads and
-- downloads, audio in, audio out, and pixels changing do not qualify as
-- user activity. If users continue to be idle after the time interval in
-- @IdleDisconnectTimeoutInSeconds@ elapses, they are disconnected.
--
-- To prevent users from being disconnected due to inactivity, specify a
-- value of 0. Otherwise, specify a value between 60 and 3600. The default
-- value is 0.
--
-- If you enable this feature, we recommend that you specify a value that
-- corresponds exactly to a whole number of minutes (for example, 60, 120,
-- and 180). If you don\'t do this, the value is rounded to the nearest
-- minute. For example, if you specify a value of 70, users are
-- disconnected after 1 minute of inactivity. If you specify a value that
-- is at the midpoint between two different minutes, the value is rounded
-- up. For example, if you specify a value of 90, users are disconnected
-- after 2 minutes of inactivity.
--
-- 'instanceType', 'updateFleet_instanceType' - The instance type to use when launching fleet instances. The following
-- instance types are available:
--
-- -   stream.standard.small
--
-- -   stream.standard.medium
--
-- -   stream.standard.large
--
-- -   stream.compute.large
--
-- -   stream.compute.xlarge
--
-- -   stream.compute.2xlarge
--
-- -   stream.compute.4xlarge
--
-- -   stream.compute.8xlarge
--
-- -   stream.memory.large
--
-- -   stream.memory.xlarge
--
-- -   stream.memory.2xlarge
--
-- -   stream.memory.4xlarge
--
-- -   stream.memory.8xlarge
--
-- -   stream.memory.z1d.large
--
-- -   stream.memory.z1d.xlarge
--
-- -   stream.memory.z1d.2xlarge
--
-- -   stream.memory.z1d.3xlarge
--
-- -   stream.memory.z1d.6xlarge
--
-- -   stream.memory.z1d.12xlarge
--
-- -   stream.graphics-design.large
--
-- -   stream.graphics-design.xlarge
--
-- -   stream.graphics-design.2xlarge
--
-- -   stream.graphics-design.4xlarge
--
-- -   stream.graphics-desktop.2xlarge
--
-- -   stream.graphics.g4dn.xlarge
--
-- -   stream.graphics.g4dn.2xlarge
--
-- -   stream.graphics.g4dn.4xlarge
--
-- -   stream.graphics.g4dn.8xlarge
--
-- -   stream.graphics.g4dn.12xlarge
--
-- -   stream.graphics.g4dn.16xlarge
--
-- -   stream.graphics-pro.4xlarge
--
-- -   stream.graphics-pro.8xlarge
--
-- -   stream.graphics-pro.16xlarge
--
-- The following instance types are available for Elastic fleets:
--
-- -   stream.standard.small
--
-- -   stream.standard.medium
--
-- 'iamRoleArn', 'updateFleet_iamRoleArn' - The Amazon Resource Name (ARN) of the IAM role to apply to the fleet. To
-- assume a role, a fleet instance calls the AWS Security Token Service
-- (STS) @AssumeRole@ API operation and passes the ARN of the role to use.
-- The operation creates a new session with temporary credentials.
-- AppStream 2.0 retrieves the temporary credentials and creates the
-- __appstream_machine_role__ credential profile on the instance.
--
-- For more information, see
-- <https://docs.aws.amazon.com/appstream2/latest/developerguide/using-iam-roles-to-grant-permissions-to-applications-scripts-streaming-instances.html Using an IAM Role to Grant Permissions to Applications and Scripts Running on AppStream 2.0 Streaming Instances>
-- in the /Amazon AppStream 2.0 Administration Guide/.
--
-- 'usbDeviceFilterStrings', 'updateFleet_usbDeviceFilterStrings' - The USB device filter strings that specify which USB devices a user can
-- redirect to the fleet streaming session, when using the Windows native
-- client. This is allowed but not required for Elastic fleets.
--
-- 'domainJoinInfo', 'updateFleet_domainJoinInfo' - The name of the directory and organizational unit (OU) to use to join
-- the fleet to a Microsoft Active Directory domain.
--
-- 'streamView', 'updateFleet_streamView' - The AppStream 2.0 view that is displayed to your users when they stream
-- from the fleet. When @APP@ is specified, only the windows of
-- applications opened by users display. When @DESKTOP@ is specified, the
-- standard desktop that is provided by the operating system displays.
--
-- The default value is @APP@.
--
-- 'enableDefaultInternetAccess', 'updateFleet_enableDefaultInternetAccess' - Enables or disables default internet access for the fleet.
--
-- 'computeCapacity', 'updateFleet_computeCapacity' - The desired capacity for the fleet. This is not allowed for Elastic
-- fleets.
--
-- 'imageName', 'updateFleet_imageName' - The name of the image used to create the fleet.
--
-- 'maxUserDurationInSeconds', 'updateFleet_maxUserDurationInSeconds' - The maximum amount of time that a streaming session can remain active,
-- in seconds. If users are still connected to a streaming instance five
-- minutes before this limit is reached, they are prompted to save any open
-- documents before being disconnected. After this time elapses, the
-- instance is terminated and replaced by a new instance.
--
-- Specify a value between 600 and 360000.
newUpdateFleet ::
  UpdateFleet
newUpdateFleet =
  UpdateFleet'
    { name = Prelude.Nothing,
      sessionScriptS3Location = Prelude.Nothing,
      maxConcurrentSessions = Prelude.Nothing,
      attributesToDelete = Prelude.Nothing,
      vpcConfig = Prelude.Nothing,
      deleteVpcConfig = Prelude.Nothing,
      displayName = Prelude.Nothing,
      imageArn = Prelude.Nothing,
      platform = Prelude.Nothing,
      description = Prelude.Nothing,
      disconnectTimeoutInSeconds = Prelude.Nothing,
      idleDisconnectTimeoutInSeconds = Prelude.Nothing,
      instanceType = Prelude.Nothing,
      iamRoleArn = Prelude.Nothing,
      usbDeviceFilterStrings = Prelude.Nothing,
      domainJoinInfo = Prelude.Nothing,
      streamView = Prelude.Nothing,
      enableDefaultInternetAccess = Prelude.Nothing,
      computeCapacity = Prelude.Nothing,
      imageName = Prelude.Nothing,
      maxUserDurationInSeconds = Prelude.Nothing
    }

-- | A unique name for the fleet.
updateFleet_name :: Lens.Lens' UpdateFleet (Prelude.Maybe Prelude.Text)
updateFleet_name = Lens.lens (\UpdateFleet' {name} -> name) (\s@UpdateFleet' {} a -> s {name = a} :: UpdateFleet)

-- | The S3 location of the session scripts configuration zip file. This only
-- applies to Elastic fleets.
updateFleet_sessionScriptS3Location :: Lens.Lens' UpdateFleet (Prelude.Maybe S3Location)
updateFleet_sessionScriptS3Location = Lens.lens (\UpdateFleet' {sessionScriptS3Location} -> sessionScriptS3Location) (\s@UpdateFleet' {} a -> s {sessionScriptS3Location = a} :: UpdateFleet)

-- | The maximum number of concurrent sessions for a fleet.
updateFleet_maxConcurrentSessions :: Lens.Lens' UpdateFleet (Prelude.Maybe Prelude.Int)
updateFleet_maxConcurrentSessions = Lens.lens (\UpdateFleet' {maxConcurrentSessions} -> maxConcurrentSessions) (\s@UpdateFleet' {} a -> s {maxConcurrentSessions = a} :: UpdateFleet)

-- | The fleet attributes to delete.
updateFleet_attributesToDelete :: Lens.Lens' UpdateFleet (Prelude.Maybe [FleetAttribute])
updateFleet_attributesToDelete = Lens.lens (\UpdateFleet' {attributesToDelete} -> attributesToDelete) (\s@UpdateFleet' {} a -> s {attributesToDelete = a} :: UpdateFleet) Prelude.. Lens.mapping Lens.coerced

-- | The VPC configuration for the fleet. This is required for Elastic
-- fleets, but not required for other fleet types. Elastic fleets require
-- that you specify at least two subnets in different availability zones.
updateFleet_vpcConfig :: Lens.Lens' UpdateFleet (Prelude.Maybe VpcConfig)
updateFleet_vpcConfig = Lens.lens (\UpdateFleet' {vpcConfig} -> vpcConfig) (\s@UpdateFleet' {} a -> s {vpcConfig = a} :: UpdateFleet)

-- | Deletes the VPC association for the specified fleet.
updateFleet_deleteVpcConfig :: Lens.Lens' UpdateFleet (Prelude.Maybe Prelude.Bool)
updateFleet_deleteVpcConfig = Lens.lens (\UpdateFleet' {deleteVpcConfig} -> deleteVpcConfig) (\s@UpdateFleet' {} a -> s {deleteVpcConfig = a} :: UpdateFleet)

-- | The fleet name to display.
updateFleet_displayName :: Lens.Lens' UpdateFleet (Prelude.Maybe Prelude.Text)
updateFleet_displayName = Lens.lens (\UpdateFleet' {displayName} -> displayName) (\s@UpdateFleet' {} a -> s {displayName = a} :: UpdateFleet)

-- | The ARN of the public, private, or shared image to use.
updateFleet_imageArn :: Lens.Lens' UpdateFleet (Prelude.Maybe Prelude.Text)
updateFleet_imageArn = Lens.lens (\UpdateFleet' {imageArn} -> imageArn) (\s@UpdateFleet' {} a -> s {imageArn = a} :: UpdateFleet)

-- | The platform of the fleet. WINDOWS_SERVER_2019 and AMAZON_LINUX2 are
-- supported for Elastic fleets.
updateFleet_platform :: Lens.Lens' UpdateFleet (Prelude.Maybe PlatformType)
updateFleet_platform = Lens.lens (\UpdateFleet' {platform} -> platform) (\s@UpdateFleet' {} a -> s {platform = a} :: UpdateFleet)

-- | The description to display.
updateFleet_description :: Lens.Lens' UpdateFleet (Prelude.Maybe Prelude.Text)
updateFleet_description = Lens.lens (\UpdateFleet' {description} -> description) (\s@UpdateFleet' {} a -> s {description = a} :: UpdateFleet)

-- | The amount of time that a streaming session remains active after users
-- disconnect. If users try to reconnect to the streaming session after a
-- disconnection or network interruption within this time interval, they
-- are connected to their previous session. Otherwise, they are connected
-- to a new session with a new streaming instance.
--
-- Specify a value between 60 and 360000.
updateFleet_disconnectTimeoutInSeconds :: Lens.Lens' UpdateFleet (Prelude.Maybe Prelude.Int)
updateFleet_disconnectTimeoutInSeconds = Lens.lens (\UpdateFleet' {disconnectTimeoutInSeconds} -> disconnectTimeoutInSeconds) (\s@UpdateFleet' {} a -> s {disconnectTimeoutInSeconds = a} :: UpdateFleet)

-- | The amount of time that users can be idle (inactive) before they are
-- disconnected from their streaming session and the
-- @DisconnectTimeoutInSeconds@ time interval begins. Users are notified
-- before they are disconnected due to inactivity. If users try to
-- reconnect to the streaming session before the time interval specified in
-- @DisconnectTimeoutInSeconds@ elapses, they are connected to their
-- previous session. Users are considered idle when they stop providing
-- keyboard or mouse input during their streaming session. File uploads and
-- downloads, audio in, audio out, and pixels changing do not qualify as
-- user activity. If users continue to be idle after the time interval in
-- @IdleDisconnectTimeoutInSeconds@ elapses, they are disconnected.
--
-- To prevent users from being disconnected due to inactivity, specify a
-- value of 0. Otherwise, specify a value between 60 and 3600. The default
-- value is 0.
--
-- If you enable this feature, we recommend that you specify a value that
-- corresponds exactly to a whole number of minutes (for example, 60, 120,
-- and 180). If you don\'t do this, the value is rounded to the nearest
-- minute. For example, if you specify a value of 70, users are
-- disconnected after 1 minute of inactivity. If you specify a value that
-- is at the midpoint between two different minutes, the value is rounded
-- up. For example, if you specify a value of 90, users are disconnected
-- after 2 minutes of inactivity.
updateFleet_idleDisconnectTimeoutInSeconds :: Lens.Lens' UpdateFleet (Prelude.Maybe Prelude.Int)
updateFleet_idleDisconnectTimeoutInSeconds = Lens.lens (\UpdateFleet' {idleDisconnectTimeoutInSeconds} -> idleDisconnectTimeoutInSeconds) (\s@UpdateFleet' {} a -> s {idleDisconnectTimeoutInSeconds = a} :: UpdateFleet)

-- | The instance type to use when launching fleet instances. The following
-- instance types are available:
--
-- -   stream.standard.small
--
-- -   stream.standard.medium
--
-- -   stream.standard.large
--
-- -   stream.compute.large
--
-- -   stream.compute.xlarge
--
-- -   stream.compute.2xlarge
--
-- -   stream.compute.4xlarge
--
-- -   stream.compute.8xlarge
--
-- -   stream.memory.large
--
-- -   stream.memory.xlarge
--
-- -   stream.memory.2xlarge
--
-- -   stream.memory.4xlarge
--
-- -   stream.memory.8xlarge
--
-- -   stream.memory.z1d.large
--
-- -   stream.memory.z1d.xlarge
--
-- -   stream.memory.z1d.2xlarge
--
-- -   stream.memory.z1d.3xlarge
--
-- -   stream.memory.z1d.6xlarge
--
-- -   stream.memory.z1d.12xlarge
--
-- -   stream.graphics-design.large
--
-- -   stream.graphics-design.xlarge
--
-- -   stream.graphics-design.2xlarge
--
-- -   stream.graphics-design.4xlarge
--
-- -   stream.graphics-desktop.2xlarge
--
-- -   stream.graphics.g4dn.xlarge
--
-- -   stream.graphics.g4dn.2xlarge
--
-- -   stream.graphics.g4dn.4xlarge
--
-- -   stream.graphics.g4dn.8xlarge
--
-- -   stream.graphics.g4dn.12xlarge
--
-- -   stream.graphics.g4dn.16xlarge
--
-- -   stream.graphics-pro.4xlarge
--
-- -   stream.graphics-pro.8xlarge
--
-- -   stream.graphics-pro.16xlarge
--
-- The following instance types are available for Elastic fleets:
--
-- -   stream.standard.small
--
-- -   stream.standard.medium
updateFleet_instanceType :: Lens.Lens' UpdateFleet (Prelude.Maybe Prelude.Text)
updateFleet_instanceType = Lens.lens (\UpdateFleet' {instanceType} -> instanceType) (\s@UpdateFleet' {} a -> s {instanceType = a} :: UpdateFleet)

-- | The Amazon Resource Name (ARN) of the IAM role to apply to the fleet. To
-- assume a role, a fleet instance calls the AWS Security Token Service
-- (STS) @AssumeRole@ API operation and passes the ARN of the role to use.
-- The operation creates a new session with temporary credentials.
-- AppStream 2.0 retrieves the temporary credentials and creates the
-- __appstream_machine_role__ credential profile on the instance.
--
-- For more information, see
-- <https://docs.aws.amazon.com/appstream2/latest/developerguide/using-iam-roles-to-grant-permissions-to-applications-scripts-streaming-instances.html Using an IAM Role to Grant Permissions to Applications and Scripts Running on AppStream 2.0 Streaming Instances>
-- in the /Amazon AppStream 2.0 Administration Guide/.
updateFleet_iamRoleArn :: Lens.Lens' UpdateFleet (Prelude.Maybe Prelude.Text)
updateFleet_iamRoleArn = Lens.lens (\UpdateFleet' {iamRoleArn} -> iamRoleArn) (\s@UpdateFleet' {} a -> s {iamRoleArn = a} :: UpdateFleet)

-- | The USB device filter strings that specify which USB devices a user can
-- redirect to the fleet streaming session, when using the Windows native
-- client. This is allowed but not required for Elastic fleets.
updateFleet_usbDeviceFilterStrings :: Lens.Lens' UpdateFleet (Prelude.Maybe [Prelude.Text])
updateFleet_usbDeviceFilterStrings = Lens.lens (\UpdateFleet' {usbDeviceFilterStrings} -> usbDeviceFilterStrings) (\s@UpdateFleet' {} a -> s {usbDeviceFilterStrings = a} :: UpdateFleet) Prelude.. Lens.mapping Lens.coerced

-- | The name of the directory and organizational unit (OU) to use to join
-- the fleet to a Microsoft Active Directory domain.
updateFleet_domainJoinInfo :: Lens.Lens' UpdateFleet (Prelude.Maybe DomainJoinInfo)
updateFleet_domainJoinInfo = Lens.lens (\UpdateFleet' {domainJoinInfo} -> domainJoinInfo) (\s@UpdateFleet' {} a -> s {domainJoinInfo = a} :: UpdateFleet)

-- | The AppStream 2.0 view that is displayed to your users when they stream
-- from the fleet. When @APP@ is specified, only the windows of
-- applications opened by users display. When @DESKTOP@ is specified, the
-- standard desktop that is provided by the operating system displays.
--
-- The default value is @APP@.
updateFleet_streamView :: Lens.Lens' UpdateFleet (Prelude.Maybe StreamView)
updateFleet_streamView = Lens.lens (\UpdateFleet' {streamView} -> streamView) (\s@UpdateFleet' {} a -> s {streamView = a} :: UpdateFleet)

-- | Enables or disables default internet access for the fleet.
updateFleet_enableDefaultInternetAccess :: Lens.Lens' UpdateFleet (Prelude.Maybe Prelude.Bool)
updateFleet_enableDefaultInternetAccess = Lens.lens (\UpdateFleet' {enableDefaultInternetAccess} -> enableDefaultInternetAccess) (\s@UpdateFleet' {} a -> s {enableDefaultInternetAccess = a} :: UpdateFleet)

-- | The desired capacity for the fleet. This is not allowed for Elastic
-- fleets.
updateFleet_computeCapacity :: Lens.Lens' UpdateFleet (Prelude.Maybe ComputeCapacity)
updateFleet_computeCapacity = Lens.lens (\UpdateFleet' {computeCapacity} -> computeCapacity) (\s@UpdateFleet' {} a -> s {computeCapacity = a} :: UpdateFleet)

-- | The name of the image used to create the fleet.
updateFleet_imageName :: Lens.Lens' UpdateFleet (Prelude.Maybe Prelude.Text)
updateFleet_imageName = Lens.lens (\UpdateFleet' {imageName} -> imageName) (\s@UpdateFleet' {} a -> s {imageName = a} :: UpdateFleet)

-- | The maximum amount of time that a streaming session can remain active,
-- in seconds. If users are still connected to a streaming instance five
-- minutes before this limit is reached, they are prompted to save any open
-- documents before being disconnected. After this time elapses, the
-- instance is terminated and replaced by a new instance.
--
-- Specify a value between 600 and 360000.
updateFleet_maxUserDurationInSeconds :: Lens.Lens' UpdateFleet (Prelude.Maybe Prelude.Int)
updateFleet_maxUserDurationInSeconds = Lens.lens (\UpdateFleet' {maxUserDurationInSeconds} -> maxUserDurationInSeconds) (\s@UpdateFleet' {} a -> s {maxUserDurationInSeconds = a} :: UpdateFleet)

instance Core.AWSRequest UpdateFleet where
  type AWSResponse UpdateFleet = UpdateFleetResponse
  service _ = defaultService
  request srv = Request.postJSON srv
  response =
    Response.receiveJSON
      ( \s h x ->
          UpdateFleetResponse'
            Prelude.<$> (x Core..?> "Fleet")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable UpdateFleet where
  hashWithSalt _salt UpdateFleet' {..} =
    _salt `Prelude.hashWithSalt` name
      `Prelude.hashWithSalt` sessionScriptS3Location
      `Prelude.hashWithSalt` maxConcurrentSessions
      `Prelude.hashWithSalt` attributesToDelete
      `Prelude.hashWithSalt` vpcConfig
      `Prelude.hashWithSalt` deleteVpcConfig
      `Prelude.hashWithSalt` displayName
      `Prelude.hashWithSalt` imageArn
      `Prelude.hashWithSalt` platform
      `Prelude.hashWithSalt` description
      `Prelude.hashWithSalt` disconnectTimeoutInSeconds
      `Prelude.hashWithSalt` idleDisconnectTimeoutInSeconds
      `Prelude.hashWithSalt` instanceType
      `Prelude.hashWithSalt` iamRoleArn
      `Prelude.hashWithSalt` usbDeviceFilterStrings
      `Prelude.hashWithSalt` domainJoinInfo
      `Prelude.hashWithSalt` streamView
      `Prelude.hashWithSalt` enableDefaultInternetAccess
      `Prelude.hashWithSalt` computeCapacity
      `Prelude.hashWithSalt` imageName
      `Prelude.hashWithSalt` maxUserDurationInSeconds

instance Prelude.NFData UpdateFleet where
  rnf UpdateFleet' {..} =
    Prelude.rnf name
      `Prelude.seq` Prelude.rnf sessionScriptS3Location
      `Prelude.seq` Prelude.rnf maxConcurrentSessions
      `Prelude.seq` Prelude.rnf attributesToDelete
      `Prelude.seq` Prelude.rnf vpcConfig
      `Prelude.seq` Prelude.rnf deleteVpcConfig
      `Prelude.seq` Prelude.rnf displayName
      `Prelude.seq` Prelude.rnf imageArn
      `Prelude.seq` Prelude.rnf platform
      `Prelude.seq` Prelude.rnf description
      `Prelude.seq` Prelude.rnf disconnectTimeoutInSeconds
      `Prelude.seq` Prelude.rnf idleDisconnectTimeoutInSeconds
      `Prelude.seq` Prelude.rnf instanceType
      `Prelude.seq` Prelude.rnf iamRoleArn
      `Prelude.seq` Prelude.rnf usbDeviceFilterStrings
      `Prelude.seq` Prelude.rnf domainJoinInfo
      `Prelude.seq` Prelude.rnf streamView
      `Prelude.seq` Prelude.rnf
        enableDefaultInternetAccess
      `Prelude.seq` Prelude.rnf computeCapacity
      `Prelude.seq` Prelude.rnf imageName
      `Prelude.seq` Prelude.rnf
        maxUserDurationInSeconds

instance Core.ToHeaders UpdateFleet where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "PhotonAdminProxyService.UpdateFleet" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON UpdateFleet where
  toJSON UpdateFleet' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("Name" Core..=) Prelude.<$> name,
            ("SessionScriptS3Location" Core..=)
              Prelude.<$> sessionScriptS3Location,
            ("MaxConcurrentSessions" Core..=)
              Prelude.<$> maxConcurrentSessions,
            ("AttributesToDelete" Core..=)
              Prelude.<$> attributesToDelete,
            ("VpcConfig" Core..=) Prelude.<$> vpcConfig,
            ("DeleteVpcConfig" Core..=)
              Prelude.<$> deleteVpcConfig,
            ("DisplayName" Core..=) Prelude.<$> displayName,
            ("ImageArn" Core..=) Prelude.<$> imageArn,
            ("Platform" Core..=) Prelude.<$> platform,
            ("Description" Core..=) Prelude.<$> description,
            ("DisconnectTimeoutInSeconds" Core..=)
              Prelude.<$> disconnectTimeoutInSeconds,
            ("IdleDisconnectTimeoutInSeconds" Core..=)
              Prelude.<$> idleDisconnectTimeoutInSeconds,
            ("InstanceType" Core..=) Prelude.<$> instanceType,
            ("IamRoleArn" Core..=) Prelude.<$> iamRoleArn,
            ("UsbDeviceFilterStrings" Core..=)
              Prelude.<$> usbDeviceFilterStrings,
            ("DomainJoinInfo" Core..=)
              Prelude.<$> domainJoinInfo,
            ("StreamView" Core..=) Prelude.<$> streamView,
            ("EnableDefaultInternetAccess" Core..=)
              Prelude.<$> enableDefaultInternetAccess,
            ("ComputeCapacity" Core..=)
              Prelude.<$> computeCapacity,
            ("ImageName" Core..=) Prelude.<$> imageName,
            ("MaxUserDurationInSeconds" Core..=)
              Prelude.<$> maxUserDurationInSeconds
          ]
      )

instance Core.ToPath UpdateFleet where
  toPath = Prelude.const "/"

instance Core.ToQuery UpdateFleet where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newUpdateFleetResponse' smart constructor.
data UpdateFleetResponse = UpdateFleetResponse'
  { -- | Information about the fleet.
    fleet :: Prelude.Maybe Fleet,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateFleetResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'fleet', 'updateFleetResponse_fleet' - Information about the fleet.
--
-- 'httpStatus', 'updateFleetResponse_httpStatus' - The response's http status code.
newUpdateFleetResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  UpdateFleetResponse
newUpdateFleetResponse pHttpStatus_ =
  UpdateFleetResponse'
    { fleet = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | Information about the fleet.
updateFleetResponse_fleet :: Lens.Lens' UpdateFleetResponse (Prelude.Maybe Fleet)
updateFleetResponse_fleet = Lens.lens (\UpdateFleetResponse' {fleet} -> fleet) (\s@UpdateFleetResponse' {} a -> s {fleet = a} :: UpdateFleetResponse)

-- | The response's http status code.
updateFleetResponse_httpStatus :: Lens.Lens' UpdateFleetResponse Prelude.Int
updateFleetResponse_httpStatus = Lens.lens (\UpdateFleetResponse' {httpStatus} -> httpStatus) (\s@UpdateFleetResponse' {} a -> s {httpStatus = a} :: UpdateFleetResponse)

instance Prelude.NFData UpdateFleetResponse where
  rnf UpdateFleetResponse' {..} =
    Prelude.rnf fleet
      `Prelude.seq` Prelude.rnf httpStatus
