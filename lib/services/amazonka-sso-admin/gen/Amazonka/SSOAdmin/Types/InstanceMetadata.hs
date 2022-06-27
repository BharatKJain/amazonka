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
-- Module      : Amazonka.SSOAdmin.Types.InstanceMetadata
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.SSOAdmin.Types.InstanceMetadata where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | Provides information about the SSO instance.
--
-- /See:/ 'newInstanceMetadata' smart constructor.
data InstanceMetadata = InstanceMetadata'
  { -- | The ARN of the SSO instance under which the operation will be executed.
    -- For more information about ARNs, see
    -- </general/latest/gr/aws-arns-and-namespaces.html Amazon Resource Names (ARNs) and Amazon Web Services Service Namespaces>
    -- in the /Amazon Web Services General Reference/.
    instanceArn :: Prelude.Maybe Prelude.Text,
    -- | The identifier of the identity store that is connected to the SSO
    -- instance.
    identityStoreId :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'InstanceMetadata' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'instanceArn', 'instanceMetadata_instanceArn' - The ARN of the SSO instance under which the operation will be executed.
-- For more information about ARNs, see
-- </general/latest/gr/aws-arns-and-namespaces.html Amazon Resource Names (ARNs) and Amazon Web Services Service Namespaces>
-- in the /Amazon Web Services General Reference/.
--
-- 'identityStoreId', 'instanceMetadata_identityStoreId' - The identifier of the identity store that is connected to the SSO
-- instance.
newInstanceMetadata ::
  InstanceMetadata
newInstanceMetadata =
  InstanceMetadata'
    { instanceArn = Prelude.Nothing,
      identityStoreId = Prelude.Nothing
    }

-- | The ARN of the SSO instance under which the operation will be executed.
-- For more information about ARNs, see
-- </general/latest/gr/aws-arns-and-namespaces.html Amazon Resource Names (ARNs) and Amazon Web Services Service Namespaces>
-- in the /Amazon Web Services General Reference/.
instanceMetadata_instanceArn :: Lens.Lens' InstanceMetadata (Prelude.Maybe Prelude.Text)
instanceMetadata_instanceArn = Lens.lens (\InstanceMetadata' {instanceArn} -> instanceArn) (\s@InstanceMetadata' {} a -> s {instanceArn = a} :: InstanceMetadata)

-- | The identifier of the identity store that is connected to the SSO
-- instance.
instanceMetadata_identityStoreId :: Lens.Lens' InstanceMetadata (Prelude.Maybe Prelude.Text)
instanceMetadata_identityStoreId = Lens.lens (\InstanceMetadata' {identityStoreId} -> identityStoreId) (\s@InstanceMetadata' {} a -> s {identityStoreId = a} :: InstanceMetadata)

instance Core.FromJSON InstanceMetadata where
  parseJSON =
    Core.withObject
      "InstanceMetadata"
      ( \x ->
          InstanceMetadata'
            Prelude.<$> (x Core..:? "InstanceArn")
            Prelude.<*> (x Core..:? "IdentityStoreId")
      )

instance Prelude.Hashable InstanceMetadata where
  hashWithSalt _salt InstanceMetadata' {..} =
    _salt `Prelude.hashWithSalt` instanceArn
      `Prelude.hashWithSalt` identityStoreId

instance Prelude.NFData InstanceMetadata where
  rnf InstanceMetadata' {..} =
    Prelude.rnf instanceArn
      `Prelude.seq` Prelude.rnf identityStoreId
