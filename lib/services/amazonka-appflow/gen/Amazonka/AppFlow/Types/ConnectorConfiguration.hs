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
-- Module      : Amazonka.AppFlow.Types.ConnectorConfiguration
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.AppFlow.Types.ConnectorConfiguration where

import Amazonka.AppFlow.Types.AuthenticationConfig
import Amazonka.AppFlow.Types.ConnectorMetadata
import Amazonka.AppFlow.Types.ConnectorProvisioningConfig
import Amazonka.AppFlow.Types.ConnectorProvisioningType
import Amazonka.AppFlow.Types.ConnectorRuntimeSetting
import Amazonka.AppFlow.Types.ConnectorType
import Amazonka.AppFlow.Types.Operators
import Amazonka.AppFlow.Types.ScheduleFrequencyType
import Amazonka.AppFlow.Types.TriggerType
import Amazonka.AppFlow.Types.WriteOperationType
import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | The configuration settings related to a given connector.
--
-- /See:/ 'newConnectorConfiguration' smart constructor.
data ConnectorConfiguration = ConnectorConfiguration'
  { -- | The provisioning type used to register the connector.
    connectorProvisioningType :: Prelude.Maybe ConnectorProvisioningType,
    -- | Specifies whether the connector can be used as a source.
    canUseAsSource :: Prelude.Maybe Prelude.Bool,
    -- | A description about the connector.
    connectorDescription :: Prelude.Maybe Prelude.Text,
    -- | Information about who registered the connector.
    registeredBy :: Prelude.Maybe Prelude.Text,
    -- | A list of write operations supported by the connector.
    supportedWriteOperations :: Prelude.Maybe [WriteOperationType],
    -- | Logo URL of the connector.
    logoURL :: Prelude.Maybe Prelude.Text,
    -- | Specifies if PrivateLink is enabled for that connector.
    isPrivateLinkEnabled :: Prelude.Maybe Prelude.Bool,
    -- | The connector version.
    connectorVersion :: Prelude.Maybe Prelude.Text,
    -- | The Amazon Resource Name (ARN) for the registered connector.
    connectorArn :: Prelude.Maybe Prelude.Text,
    -- | The required connector runtime settings.
    connectorRuntimeSettings :: Prelude.Maybe [ConnectorRuntimeSetting],
    -- | The connector type.
    connectorType :: Prelude.Maybe ConnectorType,
    -- | Specifies whether the connector can be used as a destination.
    canUseAsDestination :: Prelude.Maybe Prelude.Bool,
    -- | The configuration required for registering the connector.
    connectorProvisioningConfig :: Prelude.Maybe ConnectorProvisioningConfig,
    -- | A list of operators supported by the connector.
    supportedOperators :: Prelude.Maybe [Operators],
    -- | The connector name.
    connectorName :: Prelude.Maybe Prelude.Text,
    -- | The connection modes that the connector supports.
    connectorModes :: Prelude.Maybe [Prelude.Text],
    -- | Specifies the supported trigger types for the flow.
    supportedTriggerTypes :: Prelude.Maybe [TriggerType],
    -- | The authentication config required for the connector.
    authenticationConfig :: Prelude.Maybe AuthenticationConfig,
    -- | Specifies if a PrivateLink endpoint URL is required.
    isPrivateLinkEndpointUrlRequired :: Prelude.Maybe Prelude.Bool,
    -- | The label used for registering the connector.
    connectorLabel :: Prelude.Maybe Prelude.Text,
    -- | A list of API versions that are supported by the connector.
    supportedApiVersions :: Prelude.Maybe [Prelude.Text],
    -- | Lists the connectors that are available for use as destinations.
    supportedDestinationConnectors :: Prelude.Maybe [ConnectorType],
    -- | The owner who developed the connector.
    connectorOwner :: Prelude.Maybe Prelude.Text,
    -- | Specifies connector-specific metadata such as @oAuthScopes@,
    -- @supportedRegions@, @privateLinkServiceUrl@, and so on.
    connectorMetadata :: Prelude.Maybe ConnectorMetadata,
    -- | The date on which the connector was registered.
    registeredAt :: Prelude.Maybe Core.POSIX,
    -- | Specifies the supported flow frequency for that connector.
    supportedSchedulingFrequencies :: Prelude.Maybe [ScheduleFrequencyType]
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ConnectorConfiguration' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'connectorProvisioningType', 'connectorConfiguration_connectorProvisioningType' - The provisioning type used to register the connector.
--
-- 'canUseAsSource', 'connectorConfiguration_canUseAsSource' - Specifies whether the connector can be used as a source.
--
-- 'connectorDescription', 'connectorConfiguration_connectorDescription' - A description about the connector.
--
-- 'registeredBy', 'connectorConfiguration_registeredBy' - Information about who registered the connector.
--
-- 'supportedWriteOperations', 'connectorConfiguration_supportedWriteOperations' - A list of write operations supported by the connector.
--
-- 'logoURL', 'connectorConfiguration_logoURL' - Logo URL of the connector.
--
-- 'isPrivateLinkEnabled', 'connectorConfiguration_isPrivateLinkEnabled' - Specifies if PrivateLink is enabled for that connector.
--
-- 'connectorVersion', 'connectorConfiguration_connectorVersion' - The connector version.
--
-- 'connectorArn', 'connectorConfiguration_connectorArn' - The Amazon Resource Name (ARN) for the registered connector.
--
-- 'connectorRuntimeSettings', 'connectorConfiguration_connectorRuntimeSettings' - The required connector runtime settings.
--
-- 'connectorType', 'connectorConfiguration_connectorType' - The connector type.
--
-- 'canUseAsDestination', 'connectorConfiguration_canUseAsDestination' - Specifies whether the connector can be used as a destination.
--
-- 'connectorProvisioningConfig', 'connectorConfiguration_connectorProvisioningConfig' - The configuration required for registering the connector.
--
-- 'supportedOperators', 'connectorConfiguration_supportedOperators' - A list of operators supported by the connector.
--
-- 'connectorName', 'connectorConfiguration_connectorName' - The connector name.
--
-- 'connectorModes', 'connectorConfiguration_connectorModes' - The connection modes that the connector supports.
--
-- 'supportedTriggerTypes', 'connectorConfiguration_supportedTriggerTypes' - Specifies the supported trigger types for the flow.
--
-- 'authenticationConfig', 'connectorConfiguration_authenticationConfig' - The authentication config required for the connector.
--
-- 'isPrivateLinkEndpointUrlRequired', 'connectorConfiguration_isPrivateLinkEndpointUrlRequired' - Specifies if a PrivateLink endpoint URL is required.
--
-- 'connectorLabel', 'connectorConfiguration_connectorLabel' - The label used for registering the connector.
--
-- 'supportedApiVersions', 'connectorConfiguration_supportedApiVersions' - A list of API versions that are supported by the connector.
--
-- 'supportedDestinationConnectors', 'connectorConfiguration_supportedDestinationConnectors' - Lists the connectors that are available for use as destinations.
--
-- 'connectorOwner', 'connectorConfiguration_connectorOwner' - The owner who developed the connector.
--
-- 'connectorMetadata', 'connectorConfiguration_connectorMetadata' - Specifies connector-specific metadata such as @oAuthScopes@,
-- @supportedRegions@, @privateLinkServiceUrl@, and so on.
--
-- 'registeredAt', 'connectorConfiguration_registeredAt' - The date on which the connector was registered.
--
-- 'supportedSchedulingFrequencies', 'connectorConfiguration_supportedSchedulingFrequencies' - Specifies the supported flow frequency for that connector.
newConnectorConfiguration ::
  ConnectorConfiguration
newConnectorConfiguration =
  ConnectorConfiguration'
    { connectorProvisioningType =
        Prelude.Nothing,
      canUseAsSource = Prelude.Nothing,
      connectorDescription = Prelude.Nothing,
      registeredBy = Prelude.Nothing,
      supportedWriteOperations = Prelude.Nothing,
      logoURL = Prelude.Nothing,
      isPrivateLinkEnabled = Prelude.Nothing,
      connectorVersion = Prelude.Nothing,
      connectorArn = Prelude.Nothing,
      connectorRuntimeSettings = Prelude.Nothing,
      connectorType = Prelude.Nothing,
      canUseAsDestination = Prelude.Nothing,
      connectorProvisioningConfig = Prelude.Nothing,
      supportedOperators = Prelude.Nothing,
      connectorName = Prelude.Nothing,
      connectorModes = Prelude.Nothing,
      supportedTriggerTypes = Prelude.Nothing,
      authenticationConfig = Prelude.Nothing,
      isPrivateLinkEndpointUrlRequired = Prelude.Nothing,
      connectorLabel = Prelude.Nothing,
      supportedApiVersions = Prelude.Nothing,
      supportedDestinationConnectors = Prelude.Nothing,
      connectorOwner = Prelude.Nothing,
      connectorMetadata = Prelude.Nothing,
      registeredAt = Prelude.Nothing,
      supportedSchedulingFrequencies = Prelude.Nothing
    }

-- | The provisioning type used to register the connector.
connectorConfiguration_connectorProvisioningType :: Lens.Lens' ConnectorConfiguration (Prelude.Maybe ConnectorProvisioningType)
connectorConfiguration_connectorProvisioningType = Lens.lens (\ConnectorConfiguration' {connectorProvisioningType} -> connectorProvisioningType) (\s@ConnectorConfiguration' {} a -> s {connectorProvisioningType = a} :: ConnectorConfiguration)

-- | Specifies whether the connector can be used as a source.
connectorConfiguration_canUseAsSource :: Lens.Lens' ConnectorConfiguration (Prelude.Maybe Prelude.Bool)
connectorConfiguration_canUseAsSource = Lens.lens (\ConnectorConfiguration' {canUseAsSource} -> canUseAsSource) (\s@ConnectorConfiguration' {} a -> s {canUseAsSource = a} :: ConnectorConfiguration)

-- | A description about the connector.
connectorConfiguration_connectorDescription :: Lens.Lens' ConnectorConfiguration (Prelude.Maybe Prelude.Text)
connectorConfiguration_connectorDescription = Lens.lens (\ConnectorConfiguration' {connectorDescription} -> connectorDescription) (\s@ConnectorConfiguration' {} a -> s {connectorDescription = a} :: ConnectorConfiguration)

-- | Information about who registered the connector.
connectorConfiguration_registeredBy :: Lens.Lens' ConnectorConfiguration (Prelude.Maybe Prelude.Text)
connectorConfiguration_registeredBy = Lens.lens (\ConnectorConfiguration' {registeredBy} -> registeredBy) (\s@ConnectorConfiguration' {} a -> s {registeredBy = a} :: ConnectorConfiguration)

-- | A list of write operations supported by the connector.
connectorConfiguration_supportedWriteOperations :: Lens.Lens' ConnectorConfiguration (Prelude.Maybe [WriteOperationType])
connectorConfiguration_supportedWriteOperations = Lens.lens (\ConnectorConfiguration' {supportedWriteOperations} -> supportedWriteOperations) (\s@ConnectorConfiguration' {} a -> s {supportedWriteOperations = a} :: ConnectorConfiguration) Prelude.. Lens.mapping Lens.coerced

-- | Logo URL of the connector.
connectorConfiguration_logoURL :: Lens.Lens' ConnectorConfiguration (Prelude.Maybe Prelude.Text)
connectorConfiguration_logoURL = Lens.lens (\ConnectorConfiguration' {logoURL} -> logoURL) (\s@ConnectorConfiguration' {} a -> s {logoURL = a} :: ConnectorConfiguration)

-- | Specifies if PrivateLink is enabled for that connector.
connectorConfiguration_isPrivateLinkEnabled :: Lens.Lens' ConnectorConfiguration (Prelude.Maybe Prelude.Bool)
connectorConfiguration_isPrivateLinkEnabled = Lens.lens (\ConnectorConfiguration' {isPrivateLinkEnabled} -> isPrivateLinkEnabled) (\s@ConnectorConfiguration' {} a -> s {isPrivateLinkEnabled = a} :: ConnectorConfiguration)

-- | The connector version.
connectorConfiguration_connectorVersion :: Lens.Lens' ConnectorConfiguration (Prelude.Maybe Prelude.Text)
connectorConfiguration_connectorVersion = Lens.lens (\ConnectorConfiguration' {connectorVersion} -> connectorVersion) (\s@ConnectorConfiguration' {} a -> s {connectorVersion = a} :: ConnectorConfiguration)

-- | The Amazon Resource Name (ARN) for the registered connector.
connectorConfiguration_connectorArn :: Lens.Lens' ConnectorConfiguration (Prelude.Maybe Prelude.Text)
connectorConfiguration_connectorArn = Lens.lens (\ConnectorConfiguration' {connectorArn} -> connectorArn) (\s@ConnectorConfiguration' {} a -> s {connectorArn = a} :: ConnectorConfiguration)

-- | The required connector runtime settings.
connectorConfiguration_connectorRuntimeSettings :: Lens.Lens' ConnectorConfiguration (Prelude.Maybe [ConnectorRuntimeSetting])
connectorConfiguration_connectorRuntimeSettings = Lens.lens (\ConnectorConfiguration' {connectorRuntimeSettings} -> connectorRuntimeSettings) (\s@ConnectorConfiguration' {} a -> s {connectorRuntimeSettings = a} :: ConnectorConfiguration) Prelude.. Lens.mapping Lens.coerced

-- | The connector type.
connectorConfiguration_connectorType :: Lens.Lens' ConnectorConfiguration (Prelude.Maybe ConnectorType)
connectorConfiguration_connectorType = Lens.lens (\ConnectorConfiguration' {connectorType} -> connectorType) (\s@ConnectorConfiguration' {} a -> s {connectorType = a} :: ConnectorConfiguration)

-- | Specifies whether the connector can be used as a destination.
connectorConfiguration_canUseAsDestination :: Lens.Lens' ConnectorConfiguration (Prelude.Maybe Prelude.Bool)
connectorConfiguration_canUseAsDestination = Lens.lens (\ConnectorConfiguration' {canUseAsDestination} -> canUseAsDestination) (\s@ConnectorConfiguration' {} a -> s {canUseAsDestination = a} :: ConnectorConfiguration)

-- | The configuration required for registering the connector.
connectorConfiguration_connectorProvisioningConfig :: Lens.Lens' ConnectorConfiguration (Prelude.Maybe ConnectorProvisioningConfig)
connectorConfiguration_connectorProvisioningConfig = Lens.lens (\ConnectorConfiguration' {connectorProvisioningConfig} -> connectorProvisioningConfig) (\s@ConnectorConfiguration' {} a -> s {connectorProvisioningConfig = a} :: ConnectorConfiguration)

-- | A list of operators supported by the connector.
connectorConfiguration_supportedOperators :: Lens.Lens' ConnectorConfiguration (Prelude.Maybe [Operators])
connectorConfiguration_supportedOperators = Lens.lens (\ConnectorConfiguration' {supportedOperators} -> supportedOperators) (\s@ConnectorConfiguration' {} a -> s {supportedOperators = a} :: ConnectorConfiguration) Prelude.. Lens.mapping Lens.coerced

-- | The connector name.
connectorConfiguration_connectorName :: Lens.Lens' ConnectorConfiguration (Prelude.Maybe Prelude.Text)
connectorConfiguration_connectorName = Lens.lens (\ConnectorConfiguration' {connectorName} -> connectorName) (\s@ConnectorConfiguration' {} a -> s {connectorName = a} :: ConnectorConfiguration)

-- | The connection modes that the connector supports.
connectorConfiguration_connectorModes :: Lens.Lens' ConnectorConfiguration (Prelude.Maybe [Prelude.Text])
connectorConfiguration_connectorModes = Lens.lens (\ConnectorConfiguration' {connectorModes} -> connectorModes) (\s@ConnectorConfiguration' {} a -> s {connectorModes = a} :: ConnectorConfiguration) Prelude.. Lens.mapping Lens.coerced

-- | Specifies the supported trigger types for the flow.
connectorConfiguration_supportedTriggerTypes :: Lens.Lens' ConnectorConfiguration (Prelude.Maybe [TriggerType])
connectorConfiguration_supportedTriggerTypes = Lens.lens (\ConnectorConfiguration' {supportedTriggerTypes} -> supportedTriggerTypes) (\s@ConnectorConfiguration' {} a -> s {supportedTriggerTypes = a} :: ConnectorConfiguration) Prelude.. Lens.mapping Lens.coerced

-- | The authentication config required for the connector.
connectorConfiguration_authenticationConfig :: Lens.Lens' ConnectorConfiguration (Prelude.Maybe AuthenticationConfig)
connectorConfiguration_authenticationConfig = Lens.lens (\ConnectorConfiguration' {authenticationConfig} -> authenticationConfig) (\s@ConnectorConfiguration' {} a -> s {authenticationConfig = a} :: ConnectorConfiguration)

-- | Specifies if a PrivateLink endpoint URL is required.
connectorConfiguration_isPrivateLinkEndpointUrlRequired :: Lens.Lens' ConnectorConfiguration (Prelude.Maybe Prelude.Bool)
connectorConfiguration_isPrivateLinkEndpointUrlRequired = Lens.lens (\ConnectorConfiguration' {isPrivateLinkEndpointUrlRequired} -> isPrivateLinkEndpointUrlRequired) (\s@ConnectorConfiguration' {} a -> s {isPrivateLinkEndpointUrlRequired = a} :: ConnectorConfiguration)

-- | The label used for registering the connector.
connectorConfiguration_connectorLabel :: Lens.Lens' ConnectorConfiguration (Prelude.Maybe Prelude.Text)
connectorConfiguration_connectorLabel = Lens.lens (\ConnectorConfiguration' {connectorLabel} -> connectorLabel) (\s@ConnectorConfiguration' {} a -> s {connectorLabel = a} :: ConnectorConfiguration)

-- | A list of API versions that are supported by the connector.
connectorConfiguration_supportedApiVersions :: Lens.Lens' ConnectorConfiguration (Prelude.Maybe [Prelude.Text])
connectorConfiguration_supportedApiVersions = Lens.lens (\ConnectorConfiguration' {supportedApiVersions} -> supportedApiVersions) (\s@ConnectorConfiguration' {} a -> s {supportedApiVersions = a} :: ConnectorConfiguration) Prelude.. Lens.mapping Lens.coerced

-- | Lists the connectors that are available for use as destinations.
connectorConfiguration_supportedDestinationConnectors :: Lens.Lens' ConnectorConfiguration (Prelude.Maybe [ConnectorType])
connectorConfiguration_supportedDestinationConnectors = Lens.lens (\ConnectorConfiguration' {supportedDestinationConnectors} -> supportedDestinationConnectors) (\s@ConnectorConfiguration' {} a -> s {supportedDestinationConnectors = a} :: ConnectorConfiguration) Prelude.. Lens.mapping Lens.coerced

-- | The owner who developed the connector.
connectorConfiguration_connectorOwner :: Lens.Lens' ConnectorConfiguration (Prelude.Maybe Prelude.Text)
connectorConfiguration_connectorOwner = Lens.lens (\ConnectorConfiguration' {connectorOwner} -> connectorOwner) (\s@ConnectorConfiguration' {} a -> s {connectorOwner = a} :: ConnectorConfiguration)

-- | Specifies connector-specific metadata such as @oAuthScopes@,
-- @supportedRegions@, @privateLinkServiceUrl@, and so on.
connectorConfiguration_connectorMetadata :: Lens.Lens' ConnectorConfiguration (Prelude.Maybe ConnectorMetadata)
connectorConfiguration_connectorMetadata = Lens.lens (\ConnectorConfiguration' {connectorMetadata} -> connectorMetadata) (\s@ConnectorConfiguration' {} a -> s {connectorMetadata = a} :: ConnectorConfiguration)

-- | The date on which the connector was registered.
connectorConfiguration_registeredAt :: Lens.Lens' ConnectorConfiguration (Prelude.Maybe Prelude.UTCTime)
connectorConfiguration_registeredAt = Lens.lens (\ConnectorConfiguration' {registeredAt} -> registeredAt) (\s@ConnectorConfiguration' {} a -> s {registeredAt = a} :: ConnectorConfiguration) Prelude.. Lens.mapping Core._Time

-- | Specifies the supported flow frequency for that connector.
connectorConfiguration_supportedSchedulingFrequencies :: Lens.Lens' ConnectorConfiguration (Prelude.Maybe [ScheduleFrequencyType])
connectorConfiguration_supportedSchedulingFrequencies = Lens.lens (\ConnectorConfiguration' {supportedSchedulingFrequencies} -> supportedSchedulingFrequencies) (\s@ConnectorConfiguration' {} a -> s {supportedSchedulingFrequencies = a} :: ConnectorConfiguration) Prelude.. Lens.mapping Lens.coerced

instance Core.FromJSON ConnectorConfiguration where
  parseJSON =
    Core.withObject
      "ConnectorConfiguration"
      ( \x ->
          ConnectorConfiguration'
            Prelude.<$> (x Core..:? "connectorProvisioningType")
            Prelude.<*> (x Core..:? "canUseAsSource")
            Prelude.<*> (x Core..:? "connectorDescription")
            Prelude.<*> (x Core..:? "registeredBy")
            Prelude.<*> ( x Core..:? "supportedWriteOperations"
                            Core..!= Prelude.mempty
                        )
            Prelude.<*> (x Core..:? "logoURL")
            Prelude.<*> (x Core..:? "isPrivateLinkEnabled")
            Prelude.<*> (x Core..:? "connectorVersion")
            Prelude.<*> (x Core..:? "connectorArn")
            Prelude.<*> ( x Core..:? "connectorRuntimeSettings"
                            Core..!= Prelude.mempty
                        )
            Prelude.<*> (x Core..:? "connectorType")
            Prelude.<*> (x Core..:? "canUseAsDestination")
            Prelude.<*> (x Core..:? "connectorProvisioningConfig")
            Prelude.<*> ( x Core..:? "supportedOperators"
                            Core..!= Prelude.mempty
                        )
            Prelude.<*> (x Core..:? "connectorName")
            Prelude.<*> (x Core..:? "connectorModes" Core..!= Prelude.mempty)
            Prelude.<*> ( x Core..:? "supportedTriggerTypes"
                            Core..!= Prelude.mempty
                        )
            Prelude.<*> (x Core..:? "authenticationConfig")
            Prelude.<*> (x Core..:? "isPrivateLinkEndpointUrlRequired")
            Prelude.<*> (x Core..:? "connectorLabel")
            Prelude.<*> ( x Core..:? "supportedApiVersions"
                            Core..!= Prelude.mempty
                        )
            Prelude.<*> ( x Core..:? "supportedDestinationConnectors"
                            Core..!= Prelude.mempty
                        )
            Prelude.<*> (x Core..:? "connectorOwner")
            Prelude.<*> (x Core..:? "connectorMetadata")
            Prelude.<*> (x Core..:? "registeredAt")
            Prelude.<*> ( x Core..:? "supportedSchedulingFrequencies"
                            Core..!= Prelude.mempty
                        )
      )

instance Prelude.Hashable ConnectorConfiguration where
  hashWithSalt _salt ConnectorConfiguration' {..} =
    _salt
      `Prelude.hashWithSalt` connectorProvisioningType
      `Prelude.hashWithSalt` canUseAsSource
      `Prelude.hashWithSalt` connectorDescription
      `Prelude.hashWithSalt` registeredBy
      `Prelude.hashWithSalt` supportedWriteOperations
      `Prelude.hashWithSalt` logoURL
      `Prelude.hashWithSalt` isPrivateLinkEnabled
      `Prelude.hashWithSalt` connectorVersion
      `Prelude.hashWithSalt` connectorArn
      `Prelude.hashWithSalt` connectorRuntimeSettings
      `Prelude.hashWithSalt` connectorType
      `Prelude.hashWithSalt` canUseAsDestination
      `Prelude.hashWithSalt` connectorProvisioningConfig
      `Prelude.hashWithSalt` supportedOperators
      `Prelude.hashWithSalt` connectorName
      `Prelude.hashWithSalt` connectorModes
      `Prelude.hashWithSalt` supportedTriggerTypes
      `Prelude.hashWithSalt` authenticationConfig
      `Prelude.hashWithSalt` isPrivateLinkEndpointUrlRequired
      `Prelude.hashWithSalt` connectorLabel
      `Prelude.hashWithSalt` supportedApiVersions
      `Prelude.hashWithSalt` supportedDestinationConnectors
      `Prelude.hashWithSalt` connectorOwner
      `Prelude.hashWithSalt` connectorMetadata
      `Prelude.hashWithSalt` registeredAt
      `Prelude.hashWithSalt` supportedSchedulingFrequencies

instance Prelude.NFData ConnectorConfiguration where
  rnf ConnectorConfiguration' {..} =
    Prelude.rnf connectorProvisioningType
      `Prelude.seq` Prelude.rnf canUseAsSource
      `Prelude.seq` Prelude.rnf connectorDescription
      `Prelude.seq` Prelude.rnf registeredBy
      `Prelude.seq` Prelude.rnf supportedWriteOperations
      `Prelude.seq` Prelude.rnf logoURL
      `Prelude.seq` Prelude.rnf isPrivateLinkEnabled
      `Prelude.seq` Prelude.rnf connectorVersion
      `Prelude.seq` Prelude.rnf connectorArn
      `Prelude.seq` Prelude.rnf connectorRuntimeSettings
      `Prelude.seq` Prelude.rnf connectorType
      `Prelude.seq` Prelude.rnf canUseAsDestination
      `Prelude.seq` Prelude.rnf connectorProvisioningConfig
      `Prelude.seq` Prelude.rnf supportedOperators
      `Prelude.seq` Prelude.rnf connectorName
      `Prelude.seq` Prelude.rnf connectorModes
      `Prelude.seq` Prelude.rnf supportedTriggerTypes
      `Prelude.seq` Prelude.rnf authenticationConfig
      `Prelude.seq` Prelude.rnf
        isPrivateLinkEndpointUrlRequired
      `Prelude.seq` Prelude.rnf connectorLabel
      `Prelude.seq` Prelude.rnf
        supportedApiVersions
      `Prelude.seq` Prelude.rnf
        supportedDestinationConnectors
      `Prelude.seq` Prelude.rnf
        connectorOwner
      `Prelude.seq` Prelude.rnf
        connectorMetadata
      `Prelude.seq` Prelude.rnf
        registeredAt
      `Prelude.seq` Prelude.rnf
        supportedSchedulingFrequencies
