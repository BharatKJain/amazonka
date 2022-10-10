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
-- Module      : Amazonka.Proton.Types.ProvisionedResource
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.Proton.Types.ProvisionedResource where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import Amazonka.Proton.Types.ProvisionedResourceEngine

-- | Detail data for a provisioned resource.
--
-- /See:/ 'newProvisionedResource' smart constructor.
data ProvisionedResource = ProvisionedResource'
  { -- | The resource provisioning engine. At this time, @CLOUDFORMATION@ can be
    -- used for Amazon Web Services-managed provisioning, and @TERRAFORM@ can
    -- be used for self-managed provisioning.
    --
    -- For more information, see
    -- <https://docs.aws.amazon.com/proton/latest/userguide/ag-works-prov-methods.html#ag-works-prov-methods-self Self-managed provisioning>
    -- in the /Proton User Guide/.
    provisioningEngine :: Prelude.Maybe ProvisionedResourceEngine,
    -- | The provisioned resource name.
    name :: Prelude.Maybe Prelude.Text,
    -- | The provisioned resource identifier.
    identifier :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ProvisionedResource' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'provisioningEngine', 'provisionedResource_provisioningEngine' - The resource provisioning engine. At this time, @CLOUDFORMATION@ can be
-- used for Amazon Web Services-managed provisioning, and @TERRAFORM@ can
-- be used for self-managed provisioning.
--
-- For more information, see
-- <https://docs.aws.amazon.com/proton/latest/userguide/ag-works-prov-methods.html#ag-works-prov-methods-self Self-managed provisioning>
-- in the /Proton User Guide/.
--
-- 'name', 'provisionedResource_name' - The provisioned resource name.
--
-- 'identifier', 'provisionedResource_identifier' - The provisioned resource identifier.
newProvisionedResource ::
  ProvisionedResource
newProvisionedResource =
  ProvisionedResource'
    { provisioningEngine =
        Prelude.Nothing,
      name = Prelude.Nothing,
      identifier = Prelude.Nothing
    }

-- | The resource provisioning engine. At this time, @CLOUDFORMATION@ can be
-- used for Amazon Web Services-managed provisioning, and @TERRAFORM@ can
-- be used for self-managed provisioning.
--
-- For more information, see
-- <https://docs.aws.amazon.com/proton/latest/userguide/ag-works-prov-methods.html#ag-works-prov-methods-self Self-managed provisioning>
-- in the /Proton User Guide/.
provisionedResource_provisioningEngine :: Lens.Lens' ProvisionedResource (Prelude.Maybe ProvisionedResourceEngine)
provisionedResource_provisioningEngine = Lens.lens (\ProvisionedResource' {provisioningEngine} -> provisioningEngine) (\s@ProvisionedResource' {} a -> s {provisioningEngine = a} :: ProvisionedResource)

-- | The provisioned resource name.
provisionedResource_name :: Lens.Lens' ProvisionedResource (Prelude.Maybe Prelude.Text)
provisionedResource_name = Lens.lens (\ProvisionedResource' {name} -> name) (\s@ProvisionedResource' {} a -> s {name = a} :: ProvisionedResource)

-- | The provisioned resource identifier.
provisionedResource_identifier :: Lens.Lens' ProvisionedResource (Prelude.Maybe Prelude.Text)
provisionedResource_identifier = Lens.lens (\ProvisionedResource' {identifier} -> identifier) (\s@ProvisionedResource' {} a -> s {identifier = a} :: ProvisionedResource)

instance Core.FromJSON ProvisionedResource where
  parseJSON =
    Core.withObject
      "ProvisionedResource"
      ( \x ->
          ProvisionedResource'
            Prelude.<$> (x Core..:? "provisioningEngine")
            Prelude.<*> (x Core..:? "name")
            Prelude.<*> (x Core..:? "identifier")
      )

instance Prelude.Hashable ProvisionedResource where
  hashWithSalt _salt ProvisionedResource' {..} =
    _salt `Prelude.hashWithSalt` provisioningEngine
      `Prelude.hashWithSalt` name
      `Prelude.hashWithSalt` identifier

instance Prelude.NFData ProvisionedResource where
  rnf ProvisionedResource' {..} =
    Prelude.rnf provisioningEngine
      `Prelude.seq` Prelude.rnf name
      `Prelude.seq` Prelude.rnf identifier
