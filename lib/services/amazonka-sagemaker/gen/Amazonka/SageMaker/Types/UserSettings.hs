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
-- Module      : Amazonka.SageMaker.Types.UserSettings
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.SageMaker.Types.UserSettings where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import Amazonka.SageMaker.Types.JupyterServerAppSettings
import Amazonka.SageMaker.Types.KernelGatewayAppSettings
import Amazonka.SageMaker.Types.RSessionAppSettings
import Amazonka.SageMaker.Types.RStudioServerProAppSettings
import Amazonka.SageMaker.Types.SharingSettings
import Amazonka.SageMaker.Types.TensorBoardAppSettings

-- | A collection of settings that apply to users of Amazon SageMaker Studio.
-- These settings are specified when the @CreateUserProfile@ API is called,
-- and as @DefaultUserSettings@ when the @CreateDomain@ API is called.
--
-- @SecurityGroups@ is aggregated when specified in both calls. For all
-- other settings in @UserSettings@, the values specified in
-- @CreateUserProfile@ take precedence over those specified in
-- @CreateDomain@.
--
-- /See:/ 'newUserSettings' smart constructor.
data UserSettings = UserSettings'
  { -- | The execution role for the user.
    executionRole :: Prelude.Maybe Prelude.Text,
    -- | A collection of settings that configure the @RSessionGateway@ app.
    rSessionAppSettings :: Prelude.Maybe RSessionAppSettings,
    -- | The TensorBoard app settings.
    tensorBoardAppSettings :: Prelude.Maybe TensorBoardAppSettings,
    -- | The kernel gateway app settings.
    kernelGatewayAppSettings :: Prelude.Maybe KernelGatewayAppSettings,
    -- | The security groups for the Amazon Virtual Private Cloud (VPC) that
    -- Studio uses for communication.
    --
    -- Optional when the @CreateDomain.AppNetworkAccessType@ parameter is set
    -- to @PublicInternetOnly@.
    --
    -- Required when the @CreateDomain.AppNetworkAccessType@ parameter is set
    -- to @VpcOnly@.
    --
    -- Amazon SageMaker adds a security group to allow NFS traffic from
    -- SageMaker Studio. Therefore, the number of security groups that you can
    -- specify is one less than the maximum number shown.
    securityGroups :: Prelude.Maybe [Prelude.Text],
    -- | The Jupyter server\'s app settings.
    jupyterServerAppSettings :: Prelude.Maybe JupyterServerAppSettings,
    -- | A collection of settings that configure user interaction with the
    -- @RStudioServerPro@ app.
    rStudioServerProAppSettings :: Prelude.Maybe RStudioServerProAppSettings,
    -- | Specifies options for sharing SageMaker Studio notebooks.
    sharingSettings :: Prelude.Maybe SharingSettings
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UserSettings' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'executionRole', 'userSettings_executionRole' - The execution role for the user.
--
-- 'rSessionAppSettings', 'userSettings_rSessionAppSettings' - A collection of settings that configure the @RSessionGateway@ app.
--
-- 'tensorBoardAppSettings', 'userSettings_tensorBoardAppSettings' - The TensorBoard app settings.
--
-- 'kernelGatewayAppSettings', 'userSettings_kernelGatewayAppSettings' - The kernel gateway app settings.
--
-- 'securityGroups', 'userSettings_securityGroups' - The security groups for the Amazon Virtual Private Cloud (VPC) that
-- Studio uses for communication.
--
-- Optional when the @CreateDomain.AppNetworkAccessType@ parameter is set
-- to @PublicInternetOnly@.
--
-- Required when the @CreateDomain.AppNetworkAccessType@ parameter is set
-- to @VpcOnly@.
--
-- Amazon SageMaker adds a security group to allow NFS traffic from
-- SageMaker Studio. Therefore, the number of security groups that you can
-- specify is one less than the maximum number shown.
--
-- 'jupyterServerAppSettings', 'userSettings_jupyterServerAppSettings' - The Jupyter server\'s app settings.
--
-- 'rStudioServerProAppSettings', 'userSettings_rStudioServerProAppSettings' - A collection of settings that configure user interaction with the
-- @RStudioServerPro@ app.
--
-- 'sharingSettings', 'userSettings_sharingSettings' - Specifies options for sharing SageMaker Studio notebooks.
newUserSettings ::
  UserSettings
newUserSettings =
  UserSettings'
    { executionRole = Prelude.Nothing,
      rSessionAppSettings = Prelude.Nothing,
      tensorBoardAppSettings = Prelude.Nothing,
      kernelGatewayAppSettings = Prelude.Nothing,
      securityGroups = Prelude.Nothing,
      jupyterServerAppSettings = Prelude.Nothing,
      rStudioServerProAppSettings = Prelude.Nothing,
      sharingSettings = Prelude.Nothing
    }

-- | The execution role for the user.
userSettings_executionRole :: Lens.Lens' UserSettings (Prelude.Maybe Prelude.Text)
userSettings_executionRole = Lens.lens (\UserSettings' {executionRole} -> executionRole) (\s@UserSettings' {} a -> s {executionRole = a} :: UserSettings)

-- | A collection of settings that configure the @RSessionGateway@ app.
userSettings_rSessionAppSettings :: Lens.Lens' UserSettings (Prelude.Maybe RSessionAppSettings)
userSettings_rSessionAppSettings = Lens.lens (\UserSettings' {rSessionAppSettings} -> rSessionAppSettings) (\s@UserSettings' {} a -> s {rSessionAppSettings = a} :: UserSettings)

-- | The TensorBoard app settings.
userSettings_tensorBoardAppSettings :: Lens.Lens' UserSettings (Prelude.Maybe TensorBoardAppSettings)
userSettings_tensorBoardAppSettings = Lens.lens (\UserSettings' {tensorBoardAppSettings} -> tensorBoardAppSettings) (\s@UserSettings' {} a -> s {tensorBoardAppSettings = a} :: UserSettings)

-- | The kernel gateway app settings.
userSettings_kernelGatewayAppSettings :: Lens.Lens' UserSettings (Prelude.Maybe KernelGatewayAppSettings)
userSettings_kernelGatewayAppSettings = Lens.lens (\UserSettings' {kernelGatewayAppSettings} -> kernelGatewayAppSettings) (\s@UserSettings' {} a -> s {kernelGatewayAppSettings = a} :: UserSettings)

-- | The security groups for the Amazon Virtual Private Cloud (VPC) that
-- Studio uses for communication.
--
-- Optional when the @CreateDomain.AppNetworkAccessType@ parameter is set
-- to @PublicInternetOnly@.
--
-- Required when the @CreateDomain.AppNetworkAccessType@ parameter is set
-- to @VpcOnly@.
--
-- Amazon SageMaker adds a security group to allow NFS traffic from
-- SageMaker Studio. Therefore, the number of security groups that you can
-- specify is one less than the maximum number shown.
userSettings_securityGroups :: Lens.Lens' UserSettings (Prelude.Maybe [Prelude.Text])
userSettings_securityGroups = Lens.lens (\UserSettings' {securityGroups} -> securityGroups) (\s@UserSettings' {} a -> s {securityGroups = a} :: UserSettings) Prelude.. Lens.mapping Lens.coerced

-- | The Jupyter server\'s app settings.
userSettings_jupyterServerAppSettings :: Lens.Lens' UserSettings (Prelude.Maybe JupyterServerAppSettings)
userSettings_jupyterServerAppSettings = Lens.lens (\UserSettings' {jupyterServerAppSettings} -> jupyterServerAppSettings) (\s@UserSettings' {} a -> s {jupyterServerAppSettings = a} :: UserSettings)

-- | A collection of settings that configure user interaction with the
-- @RStudioServerPro@ app.
userSettings_rStudioServerProAppSettings :: Lens.Lens' UserSettings (Prelude.Maybe RStudioServerProAppSettings)
userSettings_rStudioServerProAppSettings = Lens.lens (\UserSettings' {rStudioServerProAppSettings} -> rStudioServerProAppSettings) (\s@UserSettings' {} a -> s {rStudioServerProAppSettings = a} :: UserSettings)

-- | Specifies options for sharing SageMaker Studio notebooks.
userSettings_sharingSettings :: Lens.Lens' UserSettings (Prelude.Maybe SharingSettings)
userSettings_sharingSettings = Lens.lens (\UserSettings' {sharingSettings} -> sharingSettings) (\s@UserSettings' {} a -> s {sharingSettings = a} :: UserSettings)

instance Core.FromJSON UserSettings where
  parseJSON =
    Core.withObject
      "UserSettings"
      ( \x ->
          UserSettings'
            Prelude.<$> (x Core..:? "ExecutionRole")
            Prelude.<*> (x Core..:? "RSessionAppSettings")
            Prelude.<*> (x Core..:? "TensorBoardAppSettings")
            Prelude.<*> (x Core..:? "KernelGatewayAppSettings")
            Prelude.<*> (x Core..:? "SecurityGroups" Core..!= Prelude.mempty)
            Prelude.<*> (x Core..:? "JupyterServerAppSettings")
            Prelude.<*> (x Core..:? "RStudioServerProAppSettings")
            Prelude.<*> (x Core..:? "SharingSettings")
      )

instance Prelude.Hashable UserSettings where
  hashWithSalt _salt UserSettings' {..} =
    _salt `Prelude.hashWithSalt` executionRole
      `Prelude.hashWithSalt` rSessionAppSettings
      `Prelude.hashWithSalt` tensorBoardAppSettings
      `Prelude.hashWithSalt` kernelGatewayAppSettings
      `Prelude.hashWithSalt` securityGroups
      `Prelude.hashWithSalt` jupyterServerAppSettings
      `Prelude.hashWithSalt` rStudioServerProAppSettings
      `Prelude.hashWithSalt` sharingSettings

instance Prelude.NFData UserSettings where
  rnf UserSettings' {..} =
    Prelude.rnf executionRole
      `Prelude.seq` Prelude.rnf rSessionAppSettings
      `Prelude.seq` Prelude.rnf tensorBoardAppSettings
      `Prelude.seq` Prelude.rnf kernelGatewayAppSettings
      `Prelude.seq` Prelude.rnf securityGroups
      `Prelude.seq` Prelude.rnf jupyterServerAppSettings
      `Prelude.seq` Prelude.rnf rStudioServerProAppSettings
      `Prelude.seq` Prelude.rnf sharingSettings

instance Core.ToJSON UserSettings where
  toJSON UserSettings' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("ExecutionRole" Core..=) Prelude.<$> executionRole,
            ("RSessionAppSettings" Core..=)
              Prelude.<$> rSessionAppSettings,
            ("TensorBoardAppSettings" Core..=)
              Prelude.<$> tensorBoardAppSettings,
            ("KernelGatewayAppSettings" Core..=)
              Prelude.<$> kernelGatewayAppSettings,
            ("SecurityGroups" Core..=)
              Prelude.<$> securityGroups,
            ("JupyterServerAppSettings" Core..=)
              Prelude.<$> jupyterServerAppSettings,
            ("RStudioServerProAppSettings" Core..=)
              Prelude.<$> rStudioServerProAppSettings,
            ("SharingSettings" Core..=)
              Prelude.<$> sharingSettings
          ]
      )
