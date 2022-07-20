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
-- Module      : Amazonka.MGN.Types.SourceProperties
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.MGN.Types.SourceProperties where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import Amazonka.MGN.Types.CPU
import Amazonka.MGN.Types.Disk
import Amazonka.MGN.Types.IdentificationHints
import Amazonka.MGN.Types.NetworkInterface
import Amazonka.MGN.Types.OS
import qualified Amazonka.Prelude as Prelude

-- | Source server properties.
--
-- /See:/ 'newSourceProperties' smart constructor.
data SourceProperties = SourceProperties'
  { -- | Source server OS.
    os :: Prelude.Maybe OS,
    -- | Source Server CPUs.
    cpus :: Prelude.Maybe [CPU],
    -- | Source server RAM in bytes.
    ramBytes :: Prelude.Maybe Prelude.Natural,
    -- | Source Server disks.
    disks :: Prelude.Maybe [Disk],
    -- | Source server identification hints.
    identificationHints :: Prelude.Maybe IdentificationHints,
    -- | Source server recommended instance type.
    recommendedInstanceType :: Prelude.Maybe Prelude.Text,
    -- | Source server last update date and time.
    lastUpdatedDateTime :: Prelude.Maybe Prelude.Text,
    -- | Source server network interfaces.
    networkInterfaces :: Prelude.Maybe [NetworkInterface]
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'SourceProperties' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'os', 'sourceProperties_os' - Source server OS.
--
-- 'cpus', 'sourceProperties_cpus' - Source Server CPUs.
--
-- 'ramBytes', 'sourceProperties_ramBytes' - Source server RAM in bytes.
--
-- 'disks', 'sourceProperties_disks' - Source Server disks.
--
-- 'identificationHints', 'sourceProperties_identificationHints' - Source server identification hints.
--
-- 'recommendedInstanceType', 'sourceProperties_recommendedInstanceType' - Source server recommended instance type.
--
-- 'lastUpdatedDateTime', 'sourceProperties_lastUpdatedDateTime' - Source server last update date and time.
--
-- 'networkInterfaces', 'sourceProperties_networkInterfaces' - Source server network interfaces.
newSourceProperties ::
  SourceProperties
newSourceProperties =
  SourceProperties'
    { os = Prelude.Nothing,
      cpus = Prelude.Nothing,
      ramBytes = Prelude.Nothing,
      disks = Prelude.Nothing,
      identificationHints = Prelude.Nothing,
      recommendedInstanceType = Prelude.Nothing,
      lastUpdatedDateTime = Prelude.Nothing,
      networkInterfaces = Prelude.Nothing
    }

-- | Source server OS.
sourceProperties_os :: Lens.Lens' SourceProperties (Prelude.Maybe OS)
sourceProperties_os = Lens.lens (\SourceProperties' {os} -> os) (\s@SourceProperties' {} a -> s {os = a} :: SourceProperties)

-- | Source Server CPUs.
sourceProperties_cpus :: Lens.Lens' SourceProperties (Prelude.Maybe [CPU])
sourceProperties_cpus = Lens.lens (\SourceProperties' {cpus} -> cpus) (\s@SourceProperties' {} a -> s {cpus = a} :: SourceProperties) Prelude.. Lens.mapping Lens.coerced

-- | Source server RAM in bytes.
sourceProperties_ramBytes :: Lens.Lens' SourceProperties (Prelude.Maybe Prelude.Natural)
sourceProperties_ramBytes = Lens.lens (\SourceProperties' {ramBytes} -> ramBytes) (\s@SourceProperties' {} a -> s {ramBytes = a} :: SourceProperties)

-- | Source Server disks.
sourceProperties_disks :: Lens.Lens' SourceProperties (Prelude.Maybe [Disk])
sourceProperties_disks = Lens.lens (\SourceProperties' {disks} -> disks) (\s@SourceProperties' {} a -> s {disks = a} :: SourceProperties) Prelude.. Lens.mapping Lens.coerced

-- | Source server identification hints.
sourceProperties_identificationHints :: Lens.Lens' SourceProperties (Prelude.Maybe IdentificationHints)
sourceProperties_identificationHints = Lens.lens (\SourceProperties' {identificationHints} -> identificationHints) (\s@SourceProperties' {} a -> s {identificationHints = a} :: SourceProperties)

-- | Source server recommended instance type.
sourceProperties_recommendedInstanceType :: Lens.Lens' SourceProperties (Prelude.Maybe Prelude.Text)
sourceProperties_recommendedInstanceType = Lens.lens (\SourceProperties' {recommendedInstanceType} -> recommendedInstanceType) (\s@SourceProperties' {} a -> s {recommendedInstanceType = a} :: SourceProperties)

-- | Source server last update date and time.
sourceProperties_lastUpdatedDateTime :: Lens.Lens' SourceProperties (Prelude.Maybe Prelude.Text)
sourceProperties_lastUpdatedDateTime = Lens.lens (\SourceProperties' {lastUpdatedDateTime} -> lastUpdatedDateTime) (\s@SourceProperties' {} a -> s {lastUpdatedDateTime = a} :: SourceProperties)

-- | Source server network interfaces.
sourceProperties_networkInterfaces :: Lens.Lens' SourceProperties (Prelude.Maybe [NetworkInterface])
sourceProperties_networkInterfaces = Lens.lens (\SourceProperties' {networkInterfaces} -> networkInterfaces) (\s@SourceProperties' {} a -> s {networkInterfaces = a} :: SourceProperties) Prelude.. Lens.mapping Lens.coerced

instance Core.FromJSON SourceProperties where
  parseJSON =
    Core.withObject
      "SourceProperties"
      ( \x ->
          SourceProperties'
            Prelude.<$> (x Core..:? "os")
            Prelude.<*> (x Core..:? "cpus" Core..!= Prelude.mempty)
            Prelude.<*> (x Core..:? "ramBytes")
            Prelude.<*> (x Core..:? "disks" Core..!= Prelude.mempty)
            Prelude.<*> (x Core..:? "identificationHints")
            Prelude.<*> (x Core..:? "recommendedInstanceType")
            Prelude.<*> (x Core..:? "lastUpdatedDateTime")
            Prelude.<*> ( x Core..:? "networkInterfaces"
                            Core..!= Prelude.mempty
                        )
      )

instance Prelude.Hashable SourceProperties where
  hashWithSalt _salt SourceProperties' {..} =
    _salt `Prelude.hashWithSalt` os
      `Prelude.hashWithSalt` cpus
      `Prelude.hashWithSalt` ramBytes
      `Prelude.hashWithSalt` disks
      `Prelude.hashWithSalt` identificationHints
      `Prelude.hashWithSalt` recommendedInstanceType
      `Prelude.hashWithSalt` lastUpdatedDateTime
      `Prelude.hashWithSalt` networkInterfaces

instance Prelude.NFData SourceProperties where
  rnf SourceProperties' {..} =
    Prelude.rnf os
      `Prelude.seq` Prelude.rnf cpus
      `Prelude.seq` Prelude.rnf ramBytes
      `Prelude.seq` Prelude.rnf disks
      `Prelude.seq` Prelude.rnf identificationHints
      `Prelude.seq` Prelude.rnf recommendedInstanceType
      `Prelude.seq` Prelude.rnf lastUpdatedDateTime
      `Prelude.seq` Prelude.rnf networkInterfaces
