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
-- Module      : Amazonka.Inspector2.Types.Ec2InstanceAggregationResponse
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.Inspector2.Types.Ec2InstanceAggregationResponse where

import qualified Amazonka.Core as Core
import Amazonka.Inspector2.Types.SeverityCounts
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | A response that contains the results of a finding aggregation by Amazon
-- EC2 instance.
--
-- /See:/ 'newEc2InstanceAggregationResponse' smart constructor.
data Ec2InstanceAggregationResponse = Ec2InstanceAggregationResponse'
  { -- | An object that contains the count of matched findings per severity.
    severityCounts :: Prelude.Maybe SeverityCounts,
    -- | The operating system of the Amazon EC2 instance.
    operatingSystem :: Prelude.Maybe Prelude.Text,
    -- | The tags attached to the instance.
    instanceTags :: Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text),
    -- | The number of network findings for the Amazon EC2 instance.
    networkFindings :: Prelude.Maybe Prelude.Integer,
    -- | The Amazon Web Services account the Amazon EC2 instance belongs to.
    accountId :: Prelude.Maybe Prelude.Text,
    -- | The Amazon Machine Image (AMI) of the Amazon EC2 instance.
    ami :: Prelude.Maybe Prelude.Text,
    -- | The Amazon EC2 instance ID.
    instanceId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'Ec2InstanceAggregationResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'severityCounts', 'ec2InstanceAggregationResponse_severityCounts' - An object that contains the count of matched findings per severity.
--
-- 'operatingSystem', 'ec2InstanceAggregationResponse_operatingSystem' - The operating system of the Amazon EC2 instance.
--
-- 'instanceTags', 'ec2InstanceAggregationResponse_instanceTags' - The tags attached to the instance.
--
-- 'networkFindings', 'ec2InstanceAggregationResponse_networkFindings' - The number of network findings for the Amazon EC2 instance.
--
-- 'accountId', 'ec2InstanceAggregationResponse_accountId' - The Amazon Web Services account the Amazon EC2 instance belongs to.
--
-- 'ami', 'ec2InstanceAggregationResponse_ami' - The Amazon Machine Image (AMI) of the Amazon EC2 instance.
--
-- 'instanceId', 'ec2InstanceAggregationResponse_instanceId' - The Amazon EC2 instance ID.
newEc2InstanceAggregationResponse ::
  -- | 'instanceId'
  Prelude.Text ->
  Ec2InstanceAggregationResponse
newEc2InstanceAggregationResponse pInstanceId_ =
  Ec2InstanceAggregationResponse'
    { severityCounts =
        Prelude.Nothing,
      operatingSystem = Prelude.Nothing,
      instanceTags = Prelude.Nothing,
      networkFindings = Prelude.Nothing,
      accountId = Prelude.Nothing,
      ami = Prelude.Nothing,
      instanceId = pInstanceId_
    }

-- | An object that contains the count of matched findings per severity.
ec2InstanceAggregationResponse_severityCounts :: Lens.Lens' Ec2InstanceAggregationResponse (Prelude.Maybe SeverityCounts)
ec2InstanceAggregationResponse_severityCounts = Lens.lens (\Ec2InstanceAggregationResponse' {severityCounts} -> severityCounts) (\s@Ec2InstanceAggregationResponse' {} a -> s {severityCounts = a} :: Ec2InstanceAggregationResponse)

-- | The operating system of the Amazon EC2 instance.
ec2InstanceAggregationResponse_operatingSystem :: Lens.Lens' Ec2InstanceAggregationResponse (Prelude.Maybe Prelude.Text)
ec2InstanceAggregationResponse_operatingSystem = Lens.lens (\Ec2InstanceAggregationResponse' {operatingSystem} -> operatingSystem) (\s@Ec2InstanceAggregationResponse' {} a -> s {operatingSystem = a} :: Ec2InstanceAggregationResponse)

-- | The tags attached to the instance.
ec2InstanceAggregationResponse_instanceTags :: Lens.Lens' Ec2InstanceAggregationResponse (Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text))
ec2InstanceAggregationResponse_instanceTags = Lens.lens (\Ec2InstanceAggregationResponse' {instanceTags} -> instanceTags) (\s@Ec2InstanceAggregationResponse' {} a -> s {instanceTags = a} :: Ec2InstanceAggregationResponse) Prelude.. Lens.mapping Lens.coerced

-- | The number of network findings for the Amazon EC2 instance.
ec2InstanceAggregationResponse_networkFindings :: Lens.Lens' Ec2InstanceAggregationResponse (Prelude.Maybe Prelude.Integer)
ec2InstanceAggregationResponse_networkFindings = Lens.lens (\Ec2InstanceAggregationResponse' {networkFindings} -> networkFindings) (\s@Ec2InstanceAggregationResponse' {} a -> s {networkFindings = a} :: Ec2InstanceAggregationResponse)

-- | The Amazon Web Services account the Amazon EC2 instance belongs to.
ec2InstanceAggregationResponse_accountId :: Lens.Lens' Ec2InstanceAggregationResponse (Prelude.Maybe Prelude.Text)
ec2InstanceAggregationResponse_accountId = Lens.lens (\Ec2InstanceAggregationResponse' {accountId} -> accountId) (\s@Ec2InstanceAggregationResponse' {} a -> s {accountId = a} :: Ec2InstanceAggregationResponse)

-- | The Amazon Machine Image (AMI) of the Amazon EC2 instance.
ec2InstanceAggregationResponse_ami :: Lens.Lens' Ec2InstanceAggregationResponse (Prelude.Maybe Prelude.Text)
ec2InstanceAggregationResponse_ami = Lens.lens (\Ec2InstanceAggregationResponse' {ami} -> ami) (\s@Ec2InstanceAggregationResponse' {} a -> s {ami = a} :: Ec2InstanceAggregationResponse)

-- | The Amazon EC2 instance ID.
ec2InstanceAggregationResponse_instanceId :: Lens.Lens' Ec2InstanceAggregationResponse Prelude.Text
ec2InstanceAggregationResponse_instanceId = Lens.lens (\Ec2InstanceAggregationResponse' {instanceId} -> instanceId) (\s@Ec2InstanceAggregationResponse' {} a -> s {instanceId = a} :: Ec2InstanceAggregationResponse)

instance Core.FromJSON Ec2InstanceAggregationResponse where
  parseJSON =
    Core.withObject
      "Ec2InstanceAggregationResponse"
      ( \x ->
          Ec2InstanceAggregationResponse'
            Prelude.<$> (x Core..:? "severityCounts")
            Prelude.<*> (x Core..:? "operatingSystem")
            Prelude.<*> (x Core..:? "instanceTags" Core..!= Prelude.mempty)
            Prelude.<*> (x Core..:? "networkFindings")
            Prelude.<*> (x Core..:? "accountId")
            Prelude.<*> (x Core..:? "ami")
            Prelude.<*> (x Core..: "instanceId")
      )

instance
  Prelude.Hashable
    Ec2InstanceAggregationResponse
  where
  hashWithSalt
    _salt
    Ec2InstanceAggregationResponse' {..} =
      _salt `Prelude.hashWithSalt` severityCounts
        `Prelude.hashWithSalt` operatingSystem
        `Prelude.hashWithSalt` instanceTags
        `Prelude.hashWithSalt` networkFindings
        `Prelude.hashWithSalt` accountId
        `Prelude.hashWithSalt` ami
        `Prelude.hashWithSalt` instanceId

instance
  Prelude.NFData
    Ec2InstanceAggregationResponse
  where
  rnf Ec2InstanceAggregationResponse' {..} =
    Prelude.rnf severityCounts
      `Prelude.seq` Prelude.rnf operatingSystem
      `Prelude.seq` Prelude.rnf instanceTags
      `Prelude.seq` Prelude.rnf networkFindings
      `Prelude.seq` Prelude.rnf accountId
      `Prelude.seq` Prelude.rnf ami
      `Prelude.seq` Prelude.rnf instanceId
