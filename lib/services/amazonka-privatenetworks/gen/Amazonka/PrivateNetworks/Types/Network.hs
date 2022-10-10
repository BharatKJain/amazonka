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
-- Module      : Amazonka.PrivateNetworks.Types.Network
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.PrivateNetworks.Types.Network where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import Amazonka.PrivateNetworks.Types.NetworkStatus

-- | Information about a network.
--
-- /See:/ 'newNetwork' smart constructor.
data Network = Network'
  { -- | The status reason of the network.
    statusReason :: Prelude.Maybe Prelude.Text,
    -- | The description of the network.
    description :: Prelude.Maybe Prelude.Text,
    -- | The creation time of the network.
    createdAt :: Prelude.Maybe Core.POSIX,
    -- | The Amazon Resource Name (ARN) of the network.
    networkArn :: Prelude.Text,
    -- | The name of the network.
    networkName :: Prelude.Text,
    -- | The status of the network.
    status :: NetworkStatus
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'Network' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'statusReason', 'network_statusReason' - The status reason of the network.
--
-- 'description', 'network_description' - The description of the network.
--
-- 'createdAt', 'network_createdAt' - The creation time of the network.
--
-- 'networkArn', 'network_networkArn' - The Amazon Resource Name (ARN) of the network.
--
-- 'networkName', 'network_networkName' - The name of the network.
--
-- 'status', 'network_status' - The status of the network.
newNetwork ::
  -- | 'networkArn'
  Prelude.Text ->
  -- | 'networkName'
  Prelude.Text ->
  -- | 'status'
  NetworkStatus ->
  Network
newNetwork pNetworkArn_ pNetworkName_ pStatus_ =
  Network'
    { statusReason = Prelude.Nothing,
      description = Prelude.Nothing,
      createdAt = Prelude.Nothing,
      networkArn = pNetworkArn_,
      networkName = pNetworkName_,
      status = pStatus_
    }

-- | The status reason of the network.
network_statusReason :: Lens.Lens' Network (Prelude.Maybe Prelude.Text)
network_statusReason = Lens.lens (\Network' {statusReason} -> statusReason) (\s@Network' {} a -> s {statusReason = a} :: Network)

-- | The description of the network.
network_description :: Lens.Lens' Network (Prelude.Maybe Prelude.Text)
network_description = Lens.lens (\Network' {description} -> description) (\s@Network' {} a -> s {description = a} :: Network)

-- | The creation time of the network.
network_createdAt :: Lens.Lens' Network (Prelude.Maybe Prelude.UTCTime)
network_createdAt = Lens.lens (\Network' {createdAt} -> createdAt) (\s@Network' {} a -> s {createdAt = a} :: Network) Prelude.. Lens.mapping Core._Time

-- | The Amazon Resource Name (ARN) of the network.
network_networkArn :: Lens.Lens' Network Prelude.Text
network_networkArn = Lens.lens (\Network' {networkArn} -> networkArn) (\s@Network' {} a -> s {networkArn = a} :: Network)

-- | The name of the network.
network_networkName :: Lens.Lens' Network Prelude.Text
network_networkName = Lens.lens (\Network' {networkName} -> networkName) (\s@Network' {} a -> s {networkName = a} :: Network)

-- | The status of the network.
network_status :: Lens.Lens' Network NetworkStatus
network_status = Lens.lens (\Network' {status} -> status) (\s@Network' {} a -> s {status = a} :: Network)

instance Core.FromJSON Network where
  parseJSON =
    Core.withObject
      "Network"
      ( \x ->
          Network'
            Prelude.<$> (x Core..:? "statusReason")
            Prelude.<*> (x Core..:? "description")
            Prelude.<*> (x Core..:? "createdAt")
            Prelude.<*> (x Core..: "networkArn")
            Prelude.<*> (x Core..: "networkName")
            Prelude.<*> (x Core..: "status")
      )

instance Prelude.Hashable Network where
  hashWithSalt _salt Network' {..} =
    _salt `Prelude.hashWithSalt` statusReason
      `Prelude.hashWithSalt` description
      `Prelude.hashWithSalt` createdAt
      `Prelude.hashWithSalt` networkArn
      `Prelude.hashWithSalt` networkName
      `Prelude.hashWithSalt` status

instance Prelude.NFData Network where
  rnf Network' {..} =
    Prelude.rnf statusReason
      `Prelude.seq` Prelude.rnf description
      `Prelude.seq` Prelude.rnf createdAt
      `Prelude.seq` Prelude.rnf networkArn
      `Prelude.seq` Prelude.rnf networkName
      `Prelude.seq` Prelude.rnf status
