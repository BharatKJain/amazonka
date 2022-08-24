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
-- Module      : Amazonka.ECS.Types.InstanceHealthCheckResult
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.ECS.Types.InstanceHealthCheckResult where

import qualified Amazonka.Core as Core
import Amazonka.ECS.Types.InstanceHealthCheckState
import Amazonka.ECS.Types.InstanceHealthCheckType
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | An object representing the result of a container instance health status
-- check.
--
-- /See:/ 'newInstanceHealthCheckResult' smart constructor.
data InstanceHealthCheckResult = InstanceHealthCheckResult'
  { -- | The type of container instance health status that was verified.
    type' :: Prelude.Maybe InstanceHealthCheckType,
    -- | The container instance health status.
    status :: Prelude.Maybe InstanceHealthCheckState,
    -- | The Unix timestamp for when the container instance health status last
    -- changed.
    lastStatusChange :: Prelude.Maybe Core.POSIX,
    -- | The Unix timestamp for when the container instance health status was
    -- last updated.
    lastUpdated :: Prelude.Maybe Core.POSIX
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'InstanceHealthCheckResult' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'type'', 'instanceHealthCheckResult_type' - The type of container instance health status that was verified.
--
-- 'status', 'instanceHealthCheckResult_status' - The container instance health status.
--
-- 'lastStatusChange', 'instanceHealthCheckResult_lastStatusChange' - The Unix timestamp for when the container instance health status last
-- changed.
--
-- 'lastUpdated', 'instanceHealthCheckResult_lastUpdated' - The Unix timestamp for when the container instance health status was
-- last updated.
newInstanceHealthCheckResult ::
  InstanceHealthCheckResult
newInstanceHealthCheckResult =
  InstanceHealthCheckResult'
    { type' = Prelude.Nothing,
      status = Prelude.Nothing,
      lastStatusChange = Prelude.Nothing,
      lastUpdated = Prelude.Nothing
    }

-- | The type of container instance health status that was verified.
instanceHealthCheckResult_type :: Lens.Lens' InstanceHealthCheckResult (Prelude.Maybe InstanceHealthCheckType)
instanceHealthCheckResult_type = Lens.lens (\InstanceHealthCheckResult' {type'} -> type') (\s@InstanceHealthCheckResult' {} a -> s {type' = a} :: InstanceHealthCheckResult)

-- | The container instance health status.
instanceHealthCheckResult_status :: Lens.Lens' InstanceHealthCheckResult (Prelude.Maybe InstanceHealthCheckState)
instanceHealthCheckResult_status = Lens.lens (\InstanceHealthCheckResult' {status} -> status) (\s@InstanceHealthCheckResult' {} a -> s {status = a} :: InstanceHealthCheckResult)

-- | The Unix timestamp for when the container instance health status last
-- changed.
instanceHealthCheckResult_lastStatusChange :: Lens.Lens' InstanceHealthCheckResult (Prelude.Maybe Prelude.UTCTime)
instanceHealthCheckResult_lastStatusChange = Lens.lens (\InstanceHealthCheckResult' {lastStatusChange} -> lastStatusChange) (\s@InstanceHealthCheckResult' {} a -> s {lastStatusChange = a} :: InstanceHealthCheckResult) Prelude.. Lens.mapping Core._Time

-- | The Unix timestamp for when the container instance health status was
-- last updated.
instanceHealthCheckResult_lastUpdated :: Lens.Lens' InstanceHealthCheckResult (Prelude.Maybe Prelude.UTCTime)
instanceHealthCheckResult_lastUpdated = Lens.lens (\InstanceHealthCheckResult' {lastUpdated} -> lastUpdated) (\s@InstanceHealthCheckResult' {} a -> s {lastUpdated = a} :: InstanceHealthCheckResult) Prelude.. Lens.mapping Core._Time

instance Core.FromJSON InstanceHealthCheckResult where
  parseJSON =
    Core.withObject
      "InstanceHealthCheckResult"
      ( \x ->
          InstanceHealthCheckResult'
            Prelude.<$> (x Core..:? "type")
            Prelude.<*> (x Core..:? "status")
            Prelude.<*> (x Core..:? "lastStatusChange")
            Prelude.<*> (x Core..:? "lastUpdated")
      )

instance Prelude.Hashable InstanceHealthCheckResult where
  hashWithSalt _salt InstanceHealthCheckResult' {..} =
    _salt `Prelude.hashWithSalt` type'
      `Prelude.hashWithSalt` status
      `Prelude.hashWithSalt` lastStatusChange
      `Prelude.hashWithSalt` lastUpdated

instance Prelude.NFData InstanceHealthCheckResult where
  rnf InstanceHealthCheckResult' {..} =
    Prelude.rnf type'
      `Prelude.seq` Prelude.rnf status
      `Prelude.seq` Prelude.rnf lastStatusChange
      `Prelude.seq` Prelude.rnf lastUpdated
