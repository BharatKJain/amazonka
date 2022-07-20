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
-- Module      : Amazonka.MemoryDb.Types.Snapshot
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.MemoryDb.Types.Snapshot where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import Amazonka.MemoryDb.Types.ClusterConfiguration
import qualified Amazonka.Prelude as Prelude

-- | Represents a copy of an entire cluster as of the time when the snapshot
-- was taken.
--
-- /See:/ 'newSnapshot' smart constructor.
data Snapshot = Snapshot'
  { -- | The configuration of the cluster from which the snapshot was taken
    clusterConfiguration :: Prelude.Maybe ClusterConfiguration,
    -- | The name of the snapshot
    name :: Prelude.Maybe Prelude.Text,
    -- | The ARN (Amazon Resource Name) of the snapshot.
    arn :: Prelude.Maybe Prelude.Text,
    -- | The status of the snapshot. Valid values: creating | available |
    -- restoring | copying | deleting.
    status :: Prelude.Maybe Prelude.Text,
    -- | Indicates whether the snapshot is from an automatic backup (automated)
    -- or was created manually (manual).
    source :: Prelude.Maybe Prelude.Text,
    -- | The ID of the KMS key used to encrypt the snapshot.
    kmsKeyId :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'Snapshot' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'clusterConfiguration', 'snapshot_clusterConfiguration' - The configuration of the cluster from which the snapshot was taken
--
-- 'name', 'snapshot_name' - The name of the snapshot
--
-- 'arn', 'snapshot_arn' - The ARN (Amazon Resource Name) of the snapshot.
--
-- 'status', 'snapshot_status' - The status of the snapshot. Valid values: creating | available |
-- restoring | copying | deleting.
--
-- 'source', 'snapshot_source' - Indicates whether the snapshot is from an automatic backup (automated)
-- or was created manually (manual).
--
-- 'kmsKeyId', 'snapshot_kmsKeyId' - The ID of the KMS key used to encrypt the snapshot.
newSnapshot ::
  Snapshot
newSnapshot =
  Snapshot'
    { clusterConfiguration = Prelude.Nothing,
      name = Prelude.Nothing,
      arn = Prelude.Nothing,
      status = Prelude.Nothing,
      source = Prelude.Nothing,
      kmsKeyId = Prelude.Nothing
    }

-- | The configuration of the cluster from which the snapshot was taken
snapshot_clusterConfiguration :: Lens.Lens' Snapshot (Prelude.Maybe ClusterConfiguration)
snapshot_clusterConfiguration = Lens.lens (\Snapshot' {clusterConfiguration} -> clusterConfiguration) (\s@Snapshot' {} a -> s {clusterConfiguration = a} :: Snapshot)

-- | The name of the snapshot
snapshot_name :: Lens.Lens' Snapshot (Prelude.Maybe Prelude.Text)
snapshot_name = Lens.lens (\Snapshot' {name} -> name) (\s@Snapshot' {} a -> s {name = a} :: Snapshot)

-- | The ARN (Amazon Resource Name) of the snapshot.
snapshot_arn :: Lens.Lens' Snapshot (Prelude.Maybe Prelude.Text)
snapshot_arn = Lens.lens (\Snapshot' {arn} -> arn) (\s@Snapshot' {} a -> s {arn = a} :: Snapshot)

-- | The status of the snapshot. Valid values: creating | available |
-- restoring | copying | deleting.
snapshot_status :: Lens.Lens' Snapshot (Prelude.Maybe Prelude.Text)
snapshot_status = Lens.lens (\Snapshot' {status} -> status) (\s@Snapshot' {} a -> s {status = a} :: Snapshot)

-- | Indicates whether the snapshot is from an automatic backup (automated)
-- or was created manually (manual).
snapshot_source :: Lens.Lens' Snapshot (Prelude.Maybe Prelude.Text)
snapshot_source = Lens.lens (\Snapshot' {source} -> source) (\s@Snapshot' {} a -> s {source = a} :: Snapshot)

-- | The ID of the KMS key used to encrypt the snapshot.
snapshot_kmsKeyId :: Lens.Lens' Snapshot (Prelude.Maybe Prelude.Text)
snapshot_kmsKeyId = Lens.lens (\Snapshot' {kmsKeyId} -> kmsKeyId) (\s@Snapshot' {} a -> s {kmsKeyId = a} :: Snapshot)

instance Core.FromJSON Snapshot where
  parseJSON =
    Core.withObject
      "Snapshot"
      ( \x ->
          Snapshot'
            Prelude.<$> (x Core..:? "ClusterConfiguration")
            Prelude.<*> (x Core..:? "Name")
            Prelude.<*> (x Core..:? "ARN")
            Prelude.<*> (x Core..:? "Status")
            Prelude.<*> (x Core..:? "Source")
            Prelude.<*> (x Core..:? "KmsKeyId")
      )

instance Prelude.Hashable Snapshot where
  hashWithSalt _salt Snapshot' {..} =
    _salt `Prelude.hashWithSalt` clusterConfiguration
      `Prelude.hashWithSalt` name
      `Prelude.hashWithSalt` arn
      `Prelude.hashWithSalt` status
      `Prelude.hashWithSalt` source
      `Prelude.hashWithSalt` kmsKeyId

instance Prelude.NFData Snapshot where
  rnf Snapshot' {..} =
    Prelude.rnf clusterConfiguration
      `Prelude.seq` Prelude.rnf name
      `Prelude.seq` Prelude.rnf arn
      `Prelude.seq` Prelude.rnf status
      `Prelude.seq` Prelude.rnf source
      `Prelude.seq` Prelude.rnf kmsKeyId
