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
-- Module      : Amazonka.ECS.Types.ContainerStateChange
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.ECS.Types.ContainerStateChange where

import qualified Amazonka.Core as Core
import Amazonka.ECS.Types.NetworkBinding
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | An object that represents a change in state for a container.
--
-- /See:/ 'newContainerStateChange' smart constructor.
data ContainerStateChange = ContainerStateChange'
  { -- | The name of the container.
    containerName :: Prelude.Maybe Prelude.Text,
    -- | The status of the container.
    status :: Prelude.Maybe Prelude.Text,
    -- | The ID of the Docker container.
    runtimeId :: Prelude.Maybe Prelude.Text,
    -- | Any network bindings that are associated with the container.
    networkBindings :: Prelude.Maybe [NetworkBinding],
    -- | The reason for the state change.
    reason :: Prelude.Maybe Prelude.Text,
    -- | The exit code for the container, if the state change is a result of the
    -- container exiting.
    exitCode :: Prelude.Maybe Prelude.Int,
    -- | The container image SHA 256 digest.
    imageDigest :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ContainerStateChange' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'containerName', 'containerStateChange_containerName' - The name of the container.
--
-- 'status', 'containerStateChange_status' - The status of the container.
--
-- 'runtimeId', 'containerStateChange_runtimeId' - The ID of the Docker container.
--
-- 'networkBindings', 'containerStateChange_networkBindings' - Any network bindings that are associated with the container.
--
-- 'reason', 'containerStateChange_reason' - The reason for the state change.
--
-- 'exitCode', 'containerStateChange_exitCode' - The exit code for the container, if the state change is a result of the
-- container exiting.
--
-- 'imageDigest', 'containerStateChange_imageDigest' - The container image SHA 256 digest.
newContainerStateChange ::
  ContainerStateChange
newContainerStateChange =
  ContainerStateChange'
    { containerName =
        Prelude.Nothing,
      status = Prelude.Nothing,
      runtimeId = Prelude.Nothing,
      networkBindings = Prelude.Nothing,
      reason = Prelude.Nothing,
      exitCode = Prelude.Nothing,
      imageDigest = Prelude.Nothing
    }

-- | The name of the container.
containerStateChange_containerName :: Lens.Lens' ContainerStateChange (Prelude.Maybe Prelude.Text)
containerStateChange_containerName = Lens.lens (\ContainerStateChange' {containerName} -> containerName) (\s@ContainerStateChange' {} a -> s {containerName = a} :: ContainerStateChange)

-- | The status of the container.
containerStateChange_status :: Lens.Lens' ContainerStateChange (Prelude.Maybe Prelude.Text)
containerStateChange_status = Lens.lens (\ContainerStateChange' {status} -> status) (\s@ContainerStateChange' {} a -> s {status = a} :: ContainerStateChange)

-- | The ID of the Docker container.
containerStateChange_runtimeId :: Lens.Lens' ContainerStateChange (Prelude.Maybe Prelude.Text)
containerStateChange_runtimeId = Lens.lens (\ContainerStateChange' {runtimeId} -> runtimeId) (\s@ContainerStateChange' {} a -> s {runtimeId = a} :: ContainerStateChange)

-- | Any network bindings that are associated with the container.
containerStateChange_networkBindings :: Lens.Lens' ContainerStateChange (Prelude.Maybe [NetworkBinding])
containerStateChange_networkBindings = Lens.lens (\ContainerStateChange' {networkBindings} -> networkBindings) (\s@ContainerStateChange' {} a -> s {networkBindings = a} :: ContainerStateChange) Prelude.. Lens.mapping Lens.coerced

-- | The reason for the state change.
containerStateChange_reason :: Lens.Lens' ContainerStateChange (Prelude.Maybe Prelude.Text)
containerStateChange_reason = Lens.lens (\ContainerStateChange' {reason} -> reason) (\s@ContainerStateChange' {} a -> s {reason = a} :: ContainerStateChange)

-- | The exit code for the container, if the state change is a result of the
-- container exiting.
containerStateChange_exitCode :: Lens.Lens' ContainerStateChange (Prelude.Maybe Prelude.Int)
containerStateChange_exitCode = Lens.lens (\ContainerStateChange' {exitCode} -> exitCode) (\s@ContainerStateChange' {} a -> s {exitCode = a} :: ContainerStateChange)

-- | The container image SHA 256 digest.
containerStateChange_imageDigest :: Lens.Lens' ContainerStateChange (Prelude.Maybe Prelude.Text)
containerStateChange_imageDigest = Lens.lens (\ContainerStateChange' {imageDigest} -> imageDigest) (\s@ContainerStateChange' {} a -> s {imageDigest = a} :: ContainerStateChange)

instance Prelude.Hashable ContainerStateChange where
  hashWithSalt _salt ContainerStateChange' {..} =
    _salt `Prelude.hashWithSalt` containerName
      `Prelude.hashWithSalt` status
      `Prelude.hashWithSalt` runtimeId
      `Prelude.hashWithSalt` networkBindings
      `Prelude.hashWithSalt` reason
      `Prelude.hashWithSalt` exitCode
      `Prelude.hashWithSalt` imageDigest

instance Prelude.NFData ContainerStateChange where
  rnf ContainerStateChange' {..} =
    Prelude.rnf containerName
      `Prelude.seq` Prelude.rnf status
      `Prelude.seq` Prelude.rnf runtimeId
      `Prelude.seq` Prelude.rnf networkBindings
      `Prelude.seq` Prelude.rnf reason
      `Prelude.seq` Prelude.rnf exitCode
      `Prelude.seq` Prelude.rnf imageDigest

instance Core.ToJSON ContainerStateChange where
  toJSON ContainerStateChange' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("containerName" Core..=) Prelude.<$> containerName,
            ("status" Core..=) Prelude.<$> status,
            ("runtimeId" Core..=) Prelude.<$> runtimeId,
            ("networkBindings" Core..=)
              Prelude.<$> networkBindings,
            ("reason" Core..=) Prelude.<$> reason,
            ("exitCode" Core..=) Prelude.<$> exitCode,
            ("imageDigest" Core..=) Prelude.<$> imageDigest
          ]
      )
