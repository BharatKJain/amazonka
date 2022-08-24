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
-- Module      : Amazonka.SecurityHub.Types.AwsRdsDbSecurityGroupDetails
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.SecurityHub.Types.AwsRdsDbSecurityGroupDetails where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import Amazonka.SecurityHub.Types.AwsRdsDbSecurityGroupEc2SecurityGroup
import Amazonka.SecurityHub.Types.AwsRdsDbSecurityGroupIpRange

-- | Provides information about an Amazon RDS DB security group.
--
-- /See:/ 'newAwsRdsDbSecurityGroupDetails' smart constructor.
data AwsRdsDbSecurityGroupDetails = AwsRdsDbSecurityGroupDetails'
  { -- | Provides the Amazon Web Services ID of the owner of a specific DB
    -- security group.
    ownerId :: Prelude.Maybe Prelude.Text,
    -- | Provides the description of the DB security group.
    dbSecurityGroupDescription :: Prelude.Maybe Prelude.Text,
    -- | Specifies the name of the DB security group.
    dbSecurityGroupName :: Prelude.Maybe Prelude.Text,
    -- | Contains a list of EC2 security groups.
    ec2SecurityGroups :: Prelude.Maybe [AwsRdsDbSecurityGroupEc2SecurityGroup],
    -- | The ARN for the DB security group.
    dbSecurityGroupArn :: Prelude.Maybe Prelude.Text,
    -- | Contains a list of IP ranges.
    ipRanges :: Prelude.Maybe [AwsRdsDbSecurityGroupIpRange],
    -- | Provides VPC ID associated with the DB security group.
    vpcId :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'AwsRdsDbSecurityGroupDetails' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'ownerId', 'awsRdsDbSecurityGroupDetails_ownerId' - Provides the Amazon Web Services ID of the owner of a specific DB
-- security group.
--
-- 'dbSecurityGroupDescription', 'awsRdsDbSecurityGroupDetails_dbSecurityGroupDescription' - Provides the description of the DB security group.
--
-- 'dbSecurityGroupName', 'awsRdsDbSecurityGroupDetails_dbSecurityGroupName' - Specifies the name of the DB security group.
--
-- 'ec2SecurityGroups', 'awsRdsDbSecurityGroupDetails_ec2SecurityGroups' - Contains a list of EC2 security groups.
--
-- 'dbSecurityGroupArn', 'awsRdsDbSecurityGroupDetails_dbSecurityGroupArn' - The ARN for the DB security group.
--
-- 'ipRanges', 'awsRdsDbSecurityGroupDetails_ipRanges' - Contains a list of IP ranges.
--
-- 'vpcId', 'awsRdsDbSecurityGroupDetails_vpcId' - Provides VPC ID associated with the DB security group.
newAwsRdsDbSecurityGroupDetails ::
  AwsRdsDbSecurityGroupDetails
newAwsRdsDbSecurityGroupDetails =
  AwsRdsDbSecurityGroupDetails'
    { ownerId =
        Prelude.Nothing,
      dbSecurityGroupDescription = Prelude.Nothing,
      dbSecurityGroupName = Prelude.Nothing,
      ec2SecurityGroups = Prelude.Nothing,
      dbSecurityGroupArn = Prelude.Nothing,
      ipRanges = Prelude.Nothing,
      vpcId = Prelude.Nothing
    }

-- | Provides the Amazon Web Services ID of the owner of a specific DB
-- security group.
awsRdsDbSecurityGroupDetails_ownerId :: Lens.Lens' AwsRdsDbSecurityGroupDetails (Prelude.Maybe Prelude.Text)
awsRdsDbSecurityGroupDetails_ownerId = Lens.lens (\AwsRdsDbSecurityGroupDetails' {ownerId} -> ownerId) (\s@AwsRdsDbSecurityGroupDetails' {} a -> s {ownerId = a} :: AwsRdsDbSecurityGroupDetails)

-- | Provides the description of the DB security group.
awsRdsDbSecurityGroupDetails_dbSecurityGroupDescription :: Lens.Lens' AwsRdsDbSecurityGroupDetails (Prelude.Maybe Prelude.Text)
awsRdsDbSecurityGroupDetails_dbSecurityGroupDescription = Lens.lens (\AwsRdsDbSecurityGroupDetails' {dbSecurityGroupDescription} -> dbSecurityGroupDescription) (\s@AwsRdsDbSecurityGroupDetails' {} a -> s {dbSecurityGroupDescription = a} :: AwsRdsDbSecurityGroupDetails)

-- | Specifies the name of the DB security group.
awsRdsDbSecurityGroupDetails_dbSecurityGroupName :: Lens.Lens' AwsRdsDbSecurityGroupDetails (Prelude.Maybe Prelude.Text)
awsRdsDbSecurityGroupDetails_dbSecurityGroupName = Lens.lens (\AwsRdsDbSecurityGroupDetails' {dbSecurityGroupName} -> dbSecurityGroupName) (\s@AwsRdsDbSecurityGroupDetails' {} a -> s {dbSecurityGroupName = a} :: AwsRdsDbSecurityGroupDetails)

-- | Contains a list of EC2 security groups.
awsRdsDbSecurityGroupDetails_ec2SecurityGroups :: Lens.Lens' AwsRdsDbSecurityGroupDetails (Prelude.Maybe [AwsRdsDbSecurityGroupEc2SecurityGroup])
awsRdsDbSecurityGroupDetails_ec2SecurityGroups = Lens.lens (\AwsRdsDbSecurityGroupDetails' {ec2SecurityGroups} -> ec2SecurityGroups) (\s@AwsRdsDbSecurityGroupDetails' {} a -> s {ec2SecurityGroups = a} :: AwsRdsDbSecurityGroupDetails) Prelude.. Lens.mapping Lens.coerced

-- | The ARN for the DB security group.
awsRdsDbSecurityGroupDetails_dbSecurityGroupArn :: Lens.Lens' AwsRdsDbSecurityGroupDetails (Prelude.Maybe Prelude.Text)
awsRdsDbSecurityGroupDetails_dbSecurityGroupArn = Lens.lens (\AwsRdsDbSecurityGroupDetails' {dbSecurityGroupArn} -> dbSecurityGroupArn) (\s@AwsRdsDbSecurityGroupDetails' {} a -> s {dbSecurityGroupArn = a} :: AwsRdsDbSecurityGroupDetails)

-- | Contains a list of IP ranges.
awsRdsDbSecurityGroupDetails_ipRanges :: Lens.Lens' AwsRdsDbSecurityGroupDetails (Prelude.Maybe [AwsRdsDbSecurityGroupIpRange])
awsRdsDbSecurityGroupDetails_ipRanges = Lens.lens (\AwsRdsDbSecurityGroupDetails' {ipRanges} -> ipRanges) (\s@AwsRdsDbSecurityGroupDetails' {} a -> s {ipRanges = a} :: AwsRdsDbSecurityGroupDetails) Prelude.. Lens.mapping Lens.coerced

-- | Provides VPC ID associated with the DB security group.
awsRdsDbSecurityGroupDetails_vpcId :: Lens.Lens' AwsRdsDbSecurityGroupDetails (Prelude.Maybe Prelude.Text)
awsRdsDbSecurityGroupDetails_vpcId = Lens.lens (\AwsRdsDbSecurityGroupDetails' {vpcId} -> vpcId) (\s@AwsRdsDbSecurityGroupDetails' {} a -> s {vpcId = a} :: AwsRdsDbSecurityGroupDetails)

instance Core.FromJSON AwsRdsDbSecurityGroupDetails where
  parseJSON =
    Core.withObject
      "AwsRdsDbSecurityGroupDetails"
      ( \x ->
          AwsRdsDbSecurityGroupDetails'
            Prelude.<$> (x Core..:? "OwnerId")
            Prelude.<*> (x Core..:? "DbSecurityGroupDescription")
            Prelude.<*> (x Core..:? "DbSecurityGroupName")
            Prelude.<*> ( x Core..:? "Ec2SecurityGroups"
                            Core..!= Prelude.mempty
                        )
            Prelude.<*> (x Core..:? "DbSecurityGroupArn")
            Prelude.<*> (x Core..:? "IpRanges" Core..!= Prelude.mempty)
            Prelude.<*> (x Core..:? "VpcId")
      )

instance
  Prelude.Hashable
    AwsRdsDbSecurityGroupDetails
  where
  hashWithSalt _salt AwsRdsDbSecurityGroupDetails' {..} =
    _salt `Prelude.hashWithSalt` ownerId
      `Prelude.hashWithSalt` dbSecurityGroupDescription
      `Prelude.hashWithSalt` dbSecurityGroupName
      `Prelude.hashWithSalt` ec2SecurityGroups
      `Prelude.hashWithSalt` dbSecurityGroupArn
      `Prelude.hashWithSalt` ipRanges
      `Prelude.hashWithSalt` vpcId

instance Prelude.NFData AwsRdsDbSecurityGroupDetails where
  rnf AwsRdsDbSecurityGroupDetails' {..} =
    Prelude.rnf ownerId
      `Prelude.seq` Prelude.rnf dbSecurityGroupDescription
      `Prelude.seq` Prelude.rnf dbSecurityGroupName
      `Prelude.seq` Prelude.rnf ec2SecurityGroups
      `Prelude.seq` Prelude.rnf dbSecurityGroupArn
      `Prelude.seq` Prelude.rnf ipRanges
      `Prelude.seq` Prelude.rnf vpcId

instance Core.ToJSON AwsRdsDbSecurityGroupDetails where
  toJSON AwsRdsDbSecurityGroupDetails' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("OwnerId" Core..=) Prelude.<$> ownerId,
            ("DbSecurityGroupDescription" Core..=)
              Prelude.<$> dbSecurityGroupDescription,
            ("DbSecurityGroupName" Core..=)
              Prelude.<$> dbSecurityGroupName,
            ("Ec2SecurityGroups" Core..=)
              Prelude.<$> ec2SecurityGroups,
            ("DbSecurityGroupArn" Core..=)
              Prelude.<$> dbSecurityGroupArn,
            ("IpRanges" Core..=) Prelude.<$> ipRanges,
            ("VpcId" Core..=) Prelude.<$> vpcId
          ]
      )
