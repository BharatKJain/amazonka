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
-- Module      : Amazonka.AppFlow.Types.ConnectorDetail
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.AppFlow.Types.ConnectorDetail where

import Amazonka.AppFlow.Types.ConnectorProvisioningType
import Amazonka.AppFlow.Types.ConnectorType
import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | Information about the registered connector.
--
-- /See:/ 'newConnectorDetail' smart constructor.
data ConnectorDetail = ConnectorDetail'
  { -- | The provisioning type that the connector uses.
    connectorProvisioningType :: Prelude.Maybe ConnectorProvisioningType,
    -- | A description about the registered connector.
    connectorDescription :: Prelude.Maybe Prelude.Text,
    -- | The user who registered the connector.
    registeredBy :: Prelude.Maybe Prelude.Text,
    -- | The connector version.
    connectorVersion :: Prelude.Maybe Prelude.Text,
    -- | The connector type.
    connectorType :: Prelude.Maybe ConnectorType,
    -- | The name of the connector.
    connectorName :: Prelude.Maybe Prelude.Text,
    -- | The application type of the connector.
    applicationType :: Prelude.Maybe Prelude.Text,
    -- | The connection mode that the connector supports.
    connectorModes :: Prelude.Maybe [Prelude.Text],
    -- | A label used for the connector.
    connectorLabel :: Prelude.Maybe Prelude.Text,
    -- | The owner of the connector.
    connectorOwner :: Prelude.Maybe Prelude.Text,
    -- | The time at which the connector was registered.
    registeredAt :: Prelude.Maybe Core.POSIX
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ConnectorDetail' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'connectorProvisioningType', 'connectorDetail_connectorProvisioningType' - The provisioning type that the connector uses.
--
-- 'connectorDescription', 'connectorDetail_connectorDescription' - A description about the registered connector.
--
-- 'registeredBy', 'connectorDetail_registeredBy' - The user who registered the connector.
--
-- 'connectorVersion', 'connectorDetail_connectorVersion' - The connector version.
--
-- 'connectorType', 'connectorDetail_connectorType' - The connector type.
--
-- 'connectorName', 'connectorDetail_connectorName' - The name of the connector.
--
-- 'applicationType', 'connectorDetail_applicationType' - The application type of the connector.
--
-- 'connectorModes', 'connectorDetail_connectorModes' - The connection mode that the connector supports.
--
-- 'connectorLabel', 'connectorDetail_connectorLabel' - A label used for the connector.
--
-- 'connectorOwner', 'connectorDetail_connectorOwner' - The owner of the connector.
--
-- 'registeredAt', 'connectorDetail_registeredAt' - The time at which the connector was registered.
newConnectorDetail ::
  ConnectorDetail
newConnectorDetail =
  ConnectorDetail'
    { connectorProvisioningType =
        Prelude.Nothing,
      connectorDescription = Prelude.Nothing,
      registeredBy = Prelude.Nothing,
      connectorVersion = Prelude.Nothing,
      connectorType = Prelude.Nothing,
      connectorName = Prelude.Nothing,
      applicationType = Prelude.Nothing,
      connectorModes = Prelude.Nothing,
      connectorLabel = Prelude.Nothing,
      connectorOwner = Prelude.Nothing,
      registeredAt = Prelude.Nothing
    }

-- | The provisioning type that the connector uses.
connectorDetail_connectorProvisioningType :: Lens.Lens' ConnectorDetail (Prelude.Maybe ConnectorProvisioningType)
connectorDetail_connectorProvisioningType = Lens.lens (\ConnectorDetail' {connectorProvisioningType} -> connectorProvisioningType) (\s@ConnectorDetail' {} a -> s {connectorProvisioningType = a} :: ConnectorDetail)

-- | A description about the registered connector.
connectorDetail_connectorDescription :: Lens.Lens' ConnectorDetail (Prelude.Maybe Prelude.Text)
connectorDetail_connectorDescription = Lens.lens (\ConnectorDetail' {connectorDescription} -> connectorDescription) (\s@ConnectorDetail' {} a -> s {connectorDescription = a} :: ConnectorDetail)

-- | The user who registered the connector.
connectorDetail_registeredBy :: Lens.Lens' ConnectorDetail (Prelude.Maybe Prelude.Text)
connectorDetail_registeredBy = Lens.lens (\ConnectorDetail' {registeredBy} -> registeredBy) (\s@ConnectorDetail' {} a -> s {registeredBy = a} :: ConnectorDetail)

-- | The connector version.
connectorDetail_connectorVersion :: Lens.Lens' ConnectorDetail (Prelude.Maybe Prelude.Text)
connectorDetail_connectorVersion = Lens.lens (\ConnectorDetail' {connectorVersion} -> connectorVersion) (\s@ConnectorDetail' {} a -> s {connectorVersion = a} :: ConnectorDetail)

-- | The connector type.
connectorDetail_connectorType :: Lens.Lens' ConnectorDetail (Prelude.Maybe ConnectorType)
connectorDetail_connectorType = Lens.lens (\ConnectorDetail' {connectorType} -> connectorType) (\s@ConnectorDetail' {} a -> s {connectorType = a} :: ConnectorDetail)

-- | The name of the connector.
connectorDetail_connectorName :: Lens.Lens' ConnectorDetail (Prelude.Maybe Prelude.Text)
connectorDetail_connectorName = Lens.lens (\ConnectorDetail' {connectorName} -> connectorName) (\s@ConnectorDetail' {} a -> s {connectorName = a} :: ConnectorDetail)

-- | The application type of the connector.
connectorDetail_applicationType :: Lens.Lens' ConnectorDetail (Prelude.Maybe Prelude.Text)
connectorDetail_applicationType = Lens.lens (\ConnectorDetail' {applicationType} -> applicationType) (\s@ConnectorDetail' {} a -> s {applicationType = a} :: ConnectorDetail)

-- | The connection mode that the connector supports.
connectorDetail_connectorModes :: Lens.Lens' ConnectorDetail (Prelude.Maybe [Prelude.Text])
connectorDetail_connectorModes = Lens.lens (\ConnectorDetail' {connectorModes} -> connectorModes) (\s@ConnectorDetail' {} a -> s {connectorModes = a} :: ConnectorDetail) Prelude.. Lens.mapping Lens.coerced

-- | A label used for the connector.
connectorDetail_connectorLabel :: Lens.Lens' ConnectorDetail (Prelude.Maybe Prelude.Text)
connectorDetail_connectorLabel = Lens.lens (\ConnectorDetail' {connectorLabel} -> connectorLabel) (\s@ConnectorDetail' {} a -> s {connectorLabel = a} :: ConnectorDetail)

-- | The owner of the connector.
connectorDetail_connectorOwner :: Lens.Lens' ConnectorDetail (Prelude.Maybe Prelude.Text)
connectorDetail_connectorOwner = Lens.lens (\ConnectorDetail' {connectorOwner} -> connectorOwner) (\s@ConnectorDetail' {} a -> s {connectorOwner = a} :: ConnectorDetail)

-- | The time at which the connector was registered.
connectorDetail_registeredAt :: Lens.Lens' ConnectorDetail (Prelude.Maybe Prelude.UTCTime)
connectorDetail_registeredAt = Lens.lens (\ConnectorDetail' {registeredAt} -> registeredAt) (\s@ConnectorDetail' {} a -> s {registeredAt = a} :: ConnectorDetail) Prelude.. Lens.mapping Core._Time

instance Core.FromJSON ConnectorDetail where
  parseJSON =
    Core.withObject
      "ConnectorDetail"
      ( \x ->
          ConnectorDetail'
            Prelude.<$> (x Core..:? "connectorProvisioningType")
            Prelude.<*> (x Core..:? "connectorDescription")
            Prelude.<*> (x Core..:? "registeredBy")
            Prelude.<*> (x Core..:? "connectorVersion")
            Prelude.<*> (x Core..:? "connectorType")
            Prelude.<*> (x Core..:? "connectorName")
            Prelude.<*> (x Core..:? "applicationType")
            Prelude.<*> (x Core..:? "connectorModes" Core..!= Prelude.mempty)
            Prelude.<*> (x Core..:? "connectorLabel")
            Prelude.<*> (x Core..:? "connectorOwner")
            Prelude.<*> (x Core..:? "registeredAt")
      )

instance Prelude.Hashable ConnectorDetail where
  hashWithSalt _salt ConnectorDetail' {..} =
    _salt
      `Prelude.hashWithSalt` connectorProvisioningType
      `Prelude.hashWithSalt` connectorDescription
      `Prelude.hashWithSalt` registeredBy
      `Prelude.hashWithSalt` connectorVersion
      `Prelude.hashWithSalt` connectorType
      `Prelude.hashWithSalt` connectorName
      `Prelude.hashWithSalt` applicationType
      `Prelude.hashWithSalt` connectorModes
      `Prelude.hashWithSalt` connectorLabel
      `Prelude.hashWithSalt` connectorOwner
      `Prelude.hashWithSalt` registeredAt

instance Prelude.NFData ConnectorDetail where
  rnf ConnectorDetail' {..} =
    Prelude.rnf connectorProvisioningType
      `Prelude.seq` Prelude.rnf connectorDescription
      `Prelude.seq` Prelude.rnf registeredBy
      `Prelude.seq` Prelude.rnf connectorVersion
      `Prelude.seq` Prelude.rnf connectorType
      `Prelude.seq` Prelude.rnf connectorName
      `Prelude.seq` Prelude.rnf applicationType
      `Prelude.seq` Prelude.rnf connectorModes
      `Prelude.seq` Prelude.rnf connectorLabel
      `Prelude.seq` Prelude.rnf connectorOwner
      `Prelude.seq` Prelude.rnf registeredAt
