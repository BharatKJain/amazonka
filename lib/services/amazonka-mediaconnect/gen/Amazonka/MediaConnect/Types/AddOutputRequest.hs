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
-- Module      : Amazonka.MediaConnect.Types.AddOutputRequest
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.MediaConnect.Types.AddOutputRequest where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import Amazonka.MediaConnect.Types.Encryption
import Amazonka.MediaConnect.Types.MediaStreamOutputConfigurationRequest
import Amazonka.MediaConnect.Types.Protocol
import Amazonka.MediaConnect.Types.VpcInterfaceAttachment
import qualified Amazonka.Prelude as Prelude

-- | The output that you want to add to this flow.
--
-- /See:/ 'newAddOutputRequest' smart constructor.
data AddOutputRequest = AddOutputRequest'
  { -- | The IP address from which video will be sent to output destinations.
    destination :: Prelude.Maybe Prelude.Text,
    -- | The port to use when content is distributed to this output.
    port :: Prelude.Maybe Prelude.Int,
    -- | The maximum latency in milliseconds. This parameter applies only to
    -- RIST-based, Zixi-based, and Fujitsu-based streams.
    maxLatency :: Prelude.Maybe Prelude.Int,
    -- | The name of the output. This value must be unique within the current
    -- flow.
    name :: Prelude.Maybe Prelude.Text,
    -- | The media streams that are associated with the output, and the
    -- parameters for those associations.
    mediaStreamOutputConfigurations :: Prelude.Maybe [MediaStreamOutputConfigurationRequest],
    -- | The smoothing latency in milliseconds for RIST, RTP, and RTP-FEC
    -- streams.
    smoothingLatency :: Prelude.Maybe Prelude.Int,
    -- | The range of IP addresses that should be allowed to initiate output
    -- requests to this flow. These IP addresses should be in the form of a
    -- Classless Inter-Domain Routing (CIDR) block; for example, 10.0.0.0\/16.
    cidrAllowList :: Prelude.Maybe [Prelude.Text],
    -- | The stream ID that you want to use for this transport. This parameter
    -- applies only to Zixi-based streams.
    streamId :: Prelude.Maybe Prelude.Text,
    -- | The remote ID for the Zixi-pull output stream.
    remoteId :: Prelude.Maybe Prelude.Text,
    -- | The name of the VPC interface attachment to use for this output.
    vpcInterfaceAttachment :: Prelude.Maybe VpcInterfaceAttachment,
    -- | A description of the output. This description appears only on the AWS
    -- Elemental MediaConnect console and will not be seen by the end user.
    description :: Prelude.Maybe Prelude.Text,
    -- | The port that the flow uses to send outbound requests to initiate
    -- connection with the sender.
    senderControlPort :: Prelude.Maybe Prelude.Int,
    -- | The type of key used for the encryption. If no keyType is provided, the
    -- service will use the default setting (static-key).
    encryption :: Prelude.Maybe Encryption,
    -- | The minimum latency in milliseconds for SRT-based streams. In streams
    -- that use the SRT protocol, this value that you set on your MediaConnect
    -- source or output represents the minimal potential latency of that
    -- connection. The latency of the stream is set to the highest number
    -- between the sender’s minimum latency and the receiver’s minimum latency.
    minLatency :: Prelude.Maybe Prelude.Int,
    -- | The protocol to use for the output.
    protocol :: Protocol
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'AddOutputRequest' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'destination', 'addOutputRequest_destination' - The IP address from which video will be sent to output destinations.
--
-- 'port', 'addOutputRequest_port' - The port to use when content is distributed to this output.
--
-- 'maxLatency', 'addOutputRequest_maxLatency' - The maximum latency in milliseconds. This parameter applies only to
-- RIST-based, Zixi-based, and Fujitsu-based streams.
--
-- 'name', 'addOutputRequest_name' - The name of the output. This value must be unique within the current
-- flow.
--
-- 'mediaStreamOutputConfigurations', 'addOutputRequest_mediaStreamOutputConfigurations' - The media streams that are associated with the output, and the
-- parameters for those associations.
--
-- 'smoothingLatency', 'addOutputRequest_smoothingLatency' - The smoothing latency in milliseconds for RIST, RTP, and RTP-FEC
-- streams.
--
-- 'cidrAllowList', 'addOutputRequest_cidrAllowList' - The range of IP addresses that should be allowed to initiate output
-- requests to this flow. These IP addresses should be in the form of a
-- Classless Inter-Domain Routing (CIDR) block; for example, 10.0.0.0\/16.
--
-- 'streamId', 'addOutputRequest_streamId' - The stream ID that you want to use for this transport. This parameter
-- applies only to Zixi-based streams.
--
-- 'remoteId', 'addOutputRequest_remoteId' - The remote ID for the Zixi-pull output stream.
--
-- 'vpcInterfaceAttachment', 'addOutputRequest_vpcInterfaceAttachment' - The name of the VPC interface attachment to use for this output.
--
-- 'description', 'addOutputRequest_description' - A description of the output. This description appears only on the AWS
-- Elemental MediaConnect console and will not be seen by the end user.
--
-- 'senderControlPort', 'addOutputRequest_senderControlPort' - The port that the flow uses to send outbound requests to initiate
-- connection with the sender.
--
-- 'encryption', 'addOutputRequest_encryption' - The type of key used for the encryption. If no keyType is provided, the
-- service will use the default setting (static-key).
--
-- 'minLatency', 'addOutputRequest_minLatency' - The minimum latency in milliseconds for SRT-based streams. In streams
-- that use the SRT protocol, this value that you set on your MediaConnect
-- source or output represents the minimal potential latency of that
-- connection. The latency of the stream is set to the highest number
-- between the sender’s minimum latency and the receiver’s minimum latency.
--
-- 'protocol', 'addOutputRequest_protocol' - The protocol to use for the output.
newAddOutputRequest ::
  -- | 'protocol'
  Protocol ->
  AddOutputRequest
newAddOutputRequest pProtocol_ =
  AddOutputRequest'
    { destination = Prelude.Nothing,
      port = Prelude.Nothing,
      maxLatency = Prelude.Nothing,
      name = Prelude.Nothing,
      mediaStreamOutputConfigurations = Prelude.Nothing,
      smoothingLatency = Prelude.Nothing,
      cidrAllowList = Prelude.Nothing,
      streamId = Prelude.Nothing,
      remoteId = Prelude.Nothing,
      vpcInterfaceAttachment = Prelude.Nothing,
      description = Prelude.Nothing,
      senderControlPort = Prelude.Nothing,
      encryption = Prelude.Nothing,
      minLatency = Prelude.Nothing,
      protocol = pProtocol_
    }

-- | The IP address from which video will be sent to output destinations.
addOutputRequest_destination :: Lens.Lens' AddOutputRequest (Prelude.Maybe Prelude.Text)
addOutputRequest_destination = Lens.lens (\AddOutputRequest' {destination} -> destination) (\s@AddOutputRequest' {} a -> s {destination = a} :: AddOutputRequest)

-- | The port to use when content is distributed to this output.
addOutputRequest_port :: Lens.Lens' AddOutputRequest (Prelude.Maybe Prelude.Int)
addOutputRequest_port = Lens.lens (\AddOutputRequest' {port} -> port) (\s@AddOutputRequest' {} a -> s {port = a} :: AddOutputRequest)

-- | The maximum latency in milliseconds. This parameter applies only to
-- RIST-based, Zixi-based, and Fujitsu-based streams.
addOutputRequest_maxLatency :: Lens.Lens' AddOutputRequest (Prelude.Maybe Prelude.Int)
addOutputRequest_maxLatency = Lens.lens (\AddOutputRequest' {maxLatency} -> maxLatency) (\s@AddOutputRequest' {} a -> s {maxLatency = a} :: AddOutputRequest)

-- | The name of the output. This value must be unique within the current
-- flow.
addOutputRequest_name :: Lens.Lens' AddOutputRequest (Prelude.Maybe Prelude.Text)
addOutputRequest_name = Lens.lens (\AddOutputRequest' {name} -> name) (\s@AddOutputRequest' {} a -> s {name = a} :: AddOutputRequest)

-- | The media streams that are associated with the output, and the
-- parameters for those associations.
addOutputRequest_mediaStreamOutputConfigurations :: Lens.Lens' AddOutputRequest (Prelude.Maybe [MediaStreamOutputConfigurationRequest])
addOutputRequest_mediaStreamOutputConfigurations = Lens.lens (\AddOutputRequest' {mediaStreamOutputConfigurations} -> mediaStreamOutputConfigurations) (\s@AddOutputRequest' {} a -> s {mediaStreamOutputConfigurations = a} :: AddOutputRequest) Prelude.. Lens.mapping Lens.coerced

-- | The smoothing latency in milliseconds for RIST, RTP, and RTP-FEC
-- streams.
addOutputRequest_smoothingLatency :: Lens.Lens' AddOutputRequest (Prelude.Maybe Prelude.Int)
addOutputRequest_smoothingLatency = Lens.lens (\AddOutputRequest' {smoothingLatency} -> smoothingLatency) (\s@AddOutputRequest' {} a -> s {smoothingLatency = a} :: AddOutputRequest)

-- | The range of IP addresses that should be allowed to initiate output
-- requests to this flow. These IP addresses should be in the form of a
-- Classless Inter-Domain Routing (CIDR) block; for example, 10.0.0.0\/16.
addOutputRequest_cidrAllowList :: Lens.Lens' AddOutputRequest (Prelude.Maybe [Prelude.Text])
addOutputRequest_cidrAllowList = Lens.lens (\AddOutputRequest' {cidrAllowList} -> cidrAllowList) (\s@AddOutputRequest' {} a -> s {cidrAllowList = a} :: AddOutputRequest) Prelude.. Lens.mapping Lens.coerced

-- | The stream ID that you want to use for this transport. This parameter
-- applies only to Zixi-based streams.
addOutputRequest_streamId :: Lens.Lens' AddOutputRequest (Prelude.Maybe Prelude.Text)
addOutputRequest_streamId = Lens.lens (\AddOutputRequest' {streamId} -> streamId) (\s@AddOutputRequest' {} a -> s {streamId = a} :: AddOutputRequest)

-- | The remote ID for the Zixi-pull output stream.
addOutputRequest_remoteId :: Lens.Lens' AddOutputRequest (Prelude.Maybe Prelude.Text)
addOutputRequest_remoteId = Lens.lens (\AddOutputRequest' {remoteId} -> remoteId) (\s@AddOutputRequest' {} a -> s {remoteId = a} :: AddOutputRequest)

-- | The name of the VPC interface attachment to use for this output.
addOutputRequest_vpcInterfaceAttachment :: Lens.Lens' AddOutputRequest (Prelude.Maybe VpcInterfaceAttachment)
addOutputRequest_vpcInterfaceAttachment = Lens.lens (\AddOutputRequest' {vpcInterfaceAttachment} -> vpcInterfaceAttachment) (\s@AddOutputRequest' {} a -> s {vpcInterfaceAttachment = a} :: AddOutputRequest)

-- | A description of the output. This description appears only on the AWS
-- Elemental MediaConnect console and will not be seen by the end user.
addOutputRequest_description :: Lens.Lens' AddOutputRequest (Prelude.Maybe Prelude.Text)
addOutputRequest_description = Lens.lens (\AddOutputRequest' {description} -> description) (\s@AddOutputRequest' {} a -> s {description = a} :: AddOutputRequest)

-- | The port that the flow uses to send outbound requests to initiate
-- connection with the sender.
addOutputRequest_senderControlPort :: Lens.Lens' AddOutputRequest (Prelude.Maybe Prelude.Int)
addOutputRequest_senderControlPort = Lens.lens (\AddOutputRequest' {senderControlPort} -> senderControlPort) (\s@AddOutputRequest' {} a -> s {senderControlPort = a} :: AddOutputRequest)

-- | The type of key used for the encryption. If no keyType is provided, the
-- service will use the default setting (static-key).
addOutputRequest_encryption :: Lens.Lens' AddOutputRequest (Prelude.Maybe Encryption)
addOutputRequest_encryption = Lens.lens (\AddOutputRequest' {encryption} -> encryption) (\s@AddOutputRequest' {} a -> s {encryption = a} :: AddOutputRequest)

-- | The minimum latency in milliseconds for SRT-based streams. In streams
-- that use the SRT protocol, this value that you set on your MediaConnect
-- source or output represents the minimal potential latency of that
-- connection. The latency of the stream is set to the highest number
-- between the sender’s minimum latency and the receiver’s minimum latency.
addOutputRequest_minLatency :: Lens.Lens' AddOutputRequest (Prelude.Maybe Prelude.Int)
addOutputRequest_minLatency = Lens.lens (\AddOutputRequest' {minLatency} -> minLatency) (\s@AddOutputRequest' {} a -> s {minLatency = a} :: AddOutputRequest)

-- | The protocol to use for the output.
addOutputRequest_protocol :: Lens.Lens' AddOutputRequest Protocol
addOutputRequest_protocol = Lens.lens (\AddOutputRequest' {protocol} -> protocol) (\s@AddOutputRequest' {} a -> s {protocol = a} :: AddOutputRequest)

instance Prelude.Hashable AddOutputRequest where
  hashWithSalt _salt AddOutputRequest' {..} =
    _salt `Prelude.hashWithSalt` destination
      `Prelude.hashWithSalt` port
      `Prelude.hashWithSalt` maxLatency
      `Prelude.hashWithSalt` name
      `Prelude.hashWithSalt` mediaStreamOutputConfigurations
      `Prelude.hashWithSalt` smoothingLatency
      `Prelude.hashWithSalt` cidrAllowList
      `Prelude.hashWithSalt` streamId
      `Prelude.hashWithSalt` remoteId
      `Prelude.hashWithSalt` vpcInterfaceAttachment
      `Prelude.hashWithSalt` description
      `Prelude.hashWithSalt` senderControlPort
      `Prelude.hashWithSalt` encryption
      `Prelude.hashWithSalt` minLatency
      `Prelude.hashWithSalt` protocol

instance Prelude.NFData AddOutputRequest where
  rnf AddOutputRequest' {..} =
    Prelude.rnf destination
      `Prelude.seq` Prelude.rnf port
      `Prelude.seq` Prelude.rnf maxLatency
      `Prelude.seq` Prelude.rnf name
      `Prelude.seq` Prelude.rnf mediaStreamOutputConfigurations
      `Prelude.seq` Prelude.rnf smoothingLatency
      `Prelude.seq` Prelude.rnf cidrAllowList
      `Prelude.seq` Prelude.rnf streamId
      `Prelude.seq` Prelude.rnf remoteId
      `Prelude.seq` Prelude.rnf vpcInterfaceAttachment
      `Prelude.seq` Prelude.rnf description
      `Prelude.seq` Prelude.rnf senderControlPort
      `Prelude.seq` Prelude.rnf encryption
      `Prelude.seq` Prelude.rnf minLatency
      `Prelude.seq` Prelude.rnf protocol

instance Core.ToJSON AddOutputRequest where
  toJSON AddOutputRequest' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("destination" Core..=) Prelude.<$> destination,
            ("port" Core..=) Prelude.<$> port,
            ("maxLatency" Core..=) Prelude.<$> maxLatency,
            ("name" Core..=) Prelude.<$> name,
            ("mediaStreamOutputConfigurations" Core..=)
              Prelude.<$> mediaStreamOutputConfigurations,
            ("smoothingLatency" Core..=)
              Prelude.<$> smoothingLatency,
            ("cidrAllowList" Core..=) Prelude.<$> cidrAllowList,
            ("streamId" Core..=) Prelude.<$> streamId,
            ("remoteId" Core..=) Prelude.<$> remoteId,
            ("vpcInterfaceAttachment" Core..=)
              Prelude.<$> vpcInterfaceAttachment,
            ("description" Core..=) Prelude.<$> description,
            ("senderControlPort" Core..=)
              Prelude.<$> senderControlPort,
            ("encryption" Core..=) Prelude.<$> encryption,
            ("minLatency" Core..=) Prelude.<$> minLatency,
            Prelude.Just ("protocol" Core..= protocol)
          ]
      )
