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
-- Module      : Amazonka.Route53AutoNaming.Types.HttpInstanceSummary
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.Route53AutoNaming.Types.HttpInstanceSummary where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import Amazonka.Route53AutoNaming.Types.HealthStatus

-- | In a response to a
-- <https://docs.aws.amazon.com/cloud-map/latest/api/API_DiscoverInstances.html DiscoverInstances>
-- request, @HttpInstanceSummary@ contains information about one instance
-- that matches the values that you specified in the request.
--
-- /See:/ 'newHttpInstanceSummary' smart constructor.
data HttpInstanceSummary = HttpInstanceSummary'
  { -- | @@ @@ @@
    --
    -- The @HttpName@ name of the namespace. It\'s found in the
    -- @HttpProperties@ member of the @Properties@ member of the namespace.
    namespaceName :: Prelude.Maybe Prelude.Text,
    -- | If you configured health checking in the service, the current health
    -- status of the service instance.
    healthStatus :: Prelude.Maybe HealthStatus,
    -- | The ID of an instance that matches the values that you specified in the
    -- request.
    instanceId :: Prelude.Maybe Prelude.Text,
    -- | If you included any attributes when you registered the instance, the
    -- values of those attributes.
    attributes :: Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text),
    -- | The name of the service that you specified when you registered the
    -- instance.
    serviceName :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'HttpInstanceSummary' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'namespaceName', 'httpInstanceSummary_namespaceName' - @@ @@ @@
--
-- The @HttpName@ name of the namespace. It\'s found in the
-- @HttpProperties@ member of the @Properties@ member of the namespace.
--
-- 'healthStatus', 'httpInstanceSummary_healthStatus' - If you configured health checking in the service, the current health
-- status of the service instance.
--
-- 'instanceId', 'httpInstanceSummary_instanceId' - The ID of an instance that matches the values that you specified in the
-- request.
--
-- 'attributes', 'httpInstanceSummary_attributes' - If you included any attributes when you registered the instance, the
-- values of those attributes.
--
-- 'serviceName', 'httpInstanceSummary_serviceName' - The name of the service that you specified when you registered the
-- instance.
newHttpInstanceSummary ::
  HttpInstanceSummary
newHttpInstanceSummary =
  HttpInstanceSummary'
    { namespaceName =
        Prelude.Nothing,
      healthStatus = Prelude.Nothing,
      instanceId = Prelude.Nothing,
      attributes = Prelude.Nothing,
      serviceName = Prelude.Nothing
    }

-- | @@ @@ @@
--
-- The @HttpName@ name of the namespace. It\'s found in the
-- @HttpProperties@ member of the @Properties@ member of the namespace.
httpInstanceSummary_namespaceName :: Lens.Lens' HttpInstanceSummary (Prelude.Maybe Prelude.Text)
httpInstanceSummary_namespaceName = Lens.lens (\HttpInstanceSummary' {namespaceName} -> namespaceName) (\s@HttpInstanceSummary' {} a -> s {namespaceName = a} :: HttpInstanceSummary)

-- | If you configured health checking in the service, the current health
-- status of the service instance.
httpInstanceSummary_healthStatus :: Lens.Lens' HttpInstanceSummary (Prelude.Maybe HealthStatus)
httpInstanceSummary_healthStatus = Lens.lens (\HttpInstanceSummary' {healthStatus} -> healthStatus) (\s@HttpInstanceSummary' {} a -> s {healthStatus = a} :: HttpInstanceSummary)

-- | The ID of an instance that matches the values that you specified in the
-- request.
httpInstanceSummary_instanceId :: Lens.Lens' HttpInstanceSummary (Prelude.Maybe Prelude.Text)
httpInstanceSummary_instanceId = Lens.lens (\HttpInstanceSummary' {instanceId} -> instanceId) (\s@HttpInstanceSummary' {} a -> s {instanceId = a} :: HttpInstanceSummary)

-- | If you included any attributes when you registered the instance, the
-- values of those attributes.
httpInstanceSummary_attributes :: Lens.Lens' HttpInstanceSummary (Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text))
httpInstanceSummary_attributes = Lens.lens (\HttpInstanceSummary' {attributes} -> attributes) (\s@HttpInstanceSummary' {} a -> s {attributes = a} :: HttpInstanceSummary) Prelude.. Lens.mapping Lens.coerced

-- | The name of the service that you specified when you registered the
-- instance.
httpInstanceSummary_serviceName :: Lens.Lens' HttpInstanceSummary (Prelude.Maybe Prelude.Text)
httpInstanceSummary_serviceName = Lens.lens (\HttpInstanceSummary' {serviceName} -> serviceName) (\s@HttpInstanceSummary' {} a -> s {serviceName = a} :: HttpInstanceSummary)

instance Core.FromJSON HttpInstanceSummary where
  parseJSON =
    Core.withObject
      "HttpInstanceSummary"
      ( \x ->
          HttpInstanceSummary'
            Prelude.<$> (x Core..:? "NamespaceName")
            Prelude.<*> (x Core..:? "HealthStatus")
            Prelude.<*> (x Core..:? "InstanceId")
            Prelude.<*> (x Core..:? "Attributes" Core..!= Prelude.mempty)
            Prelude.<*> (x Core..:? "ServiceName")
      )

instance Prelude.Hashable HttpInstanceSummary where
  hashWithSalt _salt HttpInstanceSummary' {..} =
    _salt `Prelude.hashWithSalt` namespaceName
      `Prelude.hashWithSalt` healthStatus
      `Prelude.hashWithSalt` instanceId
      `Prelude.hashWithSalt` attributes
      `Prelude.hashWithSalt` serviceName

instance Prelude.NFData HttpInstanceSummary where
  rnf HttpInstanceSummary' {..} =
    Prelude.rnf namespaceName
      `Prelude.seq` Prelude.rnf healthStatus
      `Prelude.seq` Prelude.rnf instanceId
      `Prelude.seq` Prelude.rnf attributes
      `Prelude.seq` Prelude.rnf serviceName
