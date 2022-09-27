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
-- Module      : Amazonka.DrS.Types.ReplicationConfigurationTemplate
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.DrS.Types.ReplicationConfigurationTemplate where

import qualified Amazonka.Core as Core
import Amazonka.DrS.Types.PITPolicyRule
import Amazonka.DrS.Types.ReplicationConfigurationDataPlaneRouting
import Amazonka.DrS.Types.ReplicationConfigurationDefaultLargeStagingDiskType
import Amazonka.DrS.Types.ReplicationConfigurationEbsEncryption
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | /See:/ 'newReplicationConfigurationTemplate' smart constructor.
data ReplicationConfigurationTemplate = ReplicationConfigurationTemplate'
  { -- | A set of tags to be associated with the Replication Configuration
    -- Template resource.
    tags :: Prelude.Maybe (Core.Sensitive (Prelude.HashMap Prelude.Text Prelude.Text)),
    -- | Configure bandwidth throttling for the outbound data transfer rate of
    -- the Source Server in Mbps.
    bandwidthThrottling :: Prelude.Maybe Prelude.Natural,
    -- | The instance type to be used for the replication server.
    replicationServerInstanceType :: Prelude.Maybe Prelude.Text,
    -- | A set of tags to be associated with all resources created in the
    -- replication staging area: EC2 replication server, EBS volumes, EBS
    -- snapshots, etc.
    stagingAreaTags :: Prelude.Maybe (Core.Sensitive (Prelude.HashMap Prelude.Text Prelude.Text)),
    -- | Whether to associate the default Elastic Disaster Recovery Security
    -- group with the Replication Configuration Template.
    associateDefaultSecurityGroup :: Prelude.Maybe Prelude.Bool,
    -- | The Staging Disk EBS volume type to be used during replication.
    defaultLargeStagingDiskType :: Prelude.Maybe ReplicationConfigurationDefaultLargeStagingDiskType,
    -- | The Replication Configuration Template ARN.
    arn :: Prelude.Maybe Prelude.Text,
    -- | The subnet to be used by the replication staging area.
    stagingAreaSubnetId :: Prelude.Maybe Prelude.Text,
    -- | Whether to create a Public IP for the Recovery Instance by default.
    createPublicIP :: Prelude.Maybe Prelude.Bool,
    -- | The data plane routing mechanism that will be used for replication.
    dataPlaneRouting :: Prelude.Maybe ReplicationConfigurationDataPlaneRouting,
    -- | The type of EBS encryption to be used during replication.
    ebsEncryption :: Prelude.Maybe ReplicationConfigurationEbsEncryption,
    -- | The Point in time (PIT) policy to manage snapshots taken during
    -- replication.
    pitPolicy :: Prelude.Maybe (Prelude.NonEmpty PITPolicyRule),
    -- | Whether to use a dedicated Replication Server in the replication staging
    -- area.
    useDedicatedReplicationServer :: Prelude.Maybe Prelude.Bool,
    -- | The security group IDs that will be used by the replication server.
    replicationServersSecurityGroupsIDs :: Prelude.Maybe [Prelude.Text],
    -- | The ARN of the EBS encryption key to be used during replication.
    ebsEncryptionKeyArn :: Prelude.Maybe Prelude.Text,
    -- | The Replication Configuration Template ID.
    replicationConfigurationTemplateID :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ReplicationConfigurationTemplate' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'tags', 'replicationConfigurationTemplate_tags' - A set of tags to be associated with the Replication Configuration
-- Template resource.
--
-- 'bandwidthThrottling', 'replicationConfigurationTemplate_bandwidthThrottling' - Configure bandwidth throttling for the outbound data transfer rate of
-- the Source Server in Mbps.
--
-- 'replicationServerInstanceType', 'replicationConfigurationTemplate_replicationServerInstanceType' - The instance type to be used for the replication server.
--
-- 'stagingAreaTags', 'replicationConfigurationTemplate_stagingAreaTags' - A set of tags to be associated with all resources created in the
-- replication staging area: EC2 replication server, EBS volumes, EBS
-- snapshots, etc.
--
-- 'associateDefaultSecurityGroup', 'replicationConfigurationTemplate_associateDefaultSecurityGroup' - Whether to associate the default Elastic Disaster Recovery Security
-- group with the Replication Configuration Template.
--
-- 'defaultLargeStagingDiskType', 'replicationConfigurationTemplate_defaultLargeStagingDiskType' - The Staging Disk EBS volume type to be used during replication.
--
-- 'arn', 'replicationConfigurationTemplate_arn' - The Replication Configuration Template ARN.
--
-- 'stagingAreaSubnetId', 'replicationConfigurationTemplate_stagingAreaSubnetId' - The subnet to be used by the replication staging area.
--
-- 'createPublicIP', 'replicationConfigurationTemplate_createPublicIP' - Whether to create a Public IP for the Recovery Instance by default.
--
-- 'dataPlaneRouting', 'replicationConfigurationTemplate_dataPlaneRouting' - The data plane routing mechanism that will be used for replication.
--
-- 'ebsEncryption', 'replicationConfigurationTemplate_ebsEncryption' - The type of EBS encryption to be used during replication.
--
-- 'pitPolicy', 'replicationConfigurationTemplate_pitPolicy' - The Point in time (PIT) policy to manage snapshots taken during
-- replication.
--
-- 'useDedicatedReplicationServer', 'replicationConfigurationTemplate_useDedicatedReplicationServer' - Whether to use a dedicated Replication Server in the replication staging
-- area.
--
-- 'replicationServersSecurityGroupsIDs', 'replicationConfigurationTemplate_replicationServersSecurityGroupsIDs' - The security group IDs that will be used by the replication server.
--
-- 'ebsEncryptionKeyArn', 'replicationConfigurationTemplate_ebsEncryptionKeyArn' - The ARN of the EBS encryption key to be used during replication.
--
-- 'replicationConfigurationTemplateID', 'replicationConfigurationTemplate_replicationConfigurationTemplateID' - The Replication Configuration Template ID.
newReplicationConfigurationTemplate ::
  -- | 'replicationConfigurationTemplateID'
  Prelude.Text ->
  ReplicationConfigurationTemplate
newReplicationConfigurationTemplate
  pReplicationConfigurationTemplateID_ =
    ReplicationConfigurationTemplate'
      { tags =
          Prelude.Nothing,
        bandwidthThrottling = Prelude.Nothing,
        replicationServerInstanceType =
          Prelude.Nothing,
        stagingAreaTags = Prelude.Nothing,
        associateDefaultSecurityGroup =
          Prelude.Nothing,
        defaultLargeStagingDiskType =
          Prelude.Nothing,
        arn = Prelude.Nothing,
        stagingAreaSubnetId = Prelude.Nothing,
        createPublicIP = Prelude.Nothing,
        dataPlaneRouting = Prelude.Nothing,
        ebsEncryption = Prelude.Nothing,
        pitPolicy = Prelude.Nothing,
        useDedicatedReplicationServer =
          Prelude.Nothing,
        replicationServersSecurityGroupsIDs =
          Prelude.Nothing,
        ebsEncryptionKeyArn = Prelude.Nothing,
        replicationConfigurationTemplateID =
          pReplicationConfigurationTemplateID_
      }

-- | A set of tags to be associated with the Replication Configuration
-- Template resource.
replicationConfigurationTemplate_tags :: Lens.Lens' ReplicationConfigurationTemplate (Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text))
replicationConfigurationTemplate_tags = Lens.lens (\ReplicationConfigurationTemplate' {tags} -> tags) (\s@ReplicationConfigurationTemplate' {} a -> s {tags = a} :: ReplicationConfigurationTemplate) Prelude.. Lens.mapping (Core._Sensitive Prelude.. Lens.coerced)

-- | Configure bandwidth throttling for the outbound data transfer rate of
-- the Source Server in Mbps.
replicationConfigurationTemplate_bandwidthThrottling :: Lens.Lens' ReplicationConfigurationTemplate (Prelude.Maybe Prelude.Natural)
replicationConfigurationTemplate_bandwidthThrottling = Lens.lens (\ReplicationConfigurationTemplate' {bandwidthThrottling} -> bandwidthThrottling) (\s@ReplicationConfigurationTemplate' {} a -> s {bandwidthThrottling = a} :: ReplicationConfigurationTemplate)

-- | The instance type to be used for the replication server.
replicationConfigurationTemplate_replicationServerInstanceType :: Lens.Lens' ReplicationConfigurationTemplate (Prelude.Maybe Prelude.Text)
replicationConfigurationTemplate_replicationServerInstanceType = Lens.lens (\ReplicationConfigurationTemplate' {replicationServerInstanceType} -> replicationServerInstanceType) (\s@ReplicationConfigurationTemplate' {} a -> s {replicationServerInstanceType = a} :: ReplicationConfigurationTemplate)

-- | A set of tags to be associated with all resources created in the
-- replication staging area: EC2 replication server, EBS volumes, EBS
-- snapshots, etc.
replicationConfigurationTemplate_stagingAreaTags :: Lens.Lens' ReplicationConfigurationTemplate (Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text))
replicationConfigurationTemplate_stagingAreaTags = Lens.lens (\ReplicationConfigurationTemplate' {stagingAreaTags} -> stagingAreaTags) (\s@ReplicationConfigurationTemplate' {} a -> s {stagingAreaTags = a} :: ReplicationConfigurationTemplate) Prelude.. Lens.mapping (Core._Sensitive Prelude.. Lens.coerced)

-- | Whether to associate the default Elastic Disaster Recovery Security
-- group with the Replication Configuration Template.
replicationConfigurationTemplate_associateDefaultSecurityGroup :: Lens.Lens' ReplicationConfigurationTemplate (Prelude.Maybe Prelude.Bool)
replicationConfigurationTemplate_associateDefaultSecurityGroup = Lens.lens (\ReplicationConfigurationTemplate' {associateDefaultSecurityGroup} -> associateDefaultSecurityGroup) (\s@ReplicationConfigurationTemplate' {} a -> s {associateDefaultSecurityGroup = a} :: ReplicationConfigurationTemplate)

-- | The Staging Disk EBS volume type to be used during replication.
replicationConfigurationTemplate_defaultLargeStagingDiskType :: Lens.Lens' ReplicationConfigurationTemplate (Prelude.Maybe ReplicationConfigurationDefaultLargeStagingDiskType)
replicationConfigurationTemplate_defaultLargeStagingDiskType = Lens.lens (\ReplicationConfigurationTemplate' {defaultLargeStagingDiskType} -> defaultLargeStagingDiskType) (\s@ReplicationConfigurationTemplate' {} a -> s {defaultLargeStagingDiskType = a} :: ReplicationConfigurationTemplate)

-- | The Replication Configuration Template ARN.
replicationConfigurationTemplate_arn :: Lens.Lens' ReplicationConfigurationTemplate (Prelude.Maybe Prelude.Text)
replicationConfigurationTemplate_arn = Lens.lens (\ReplicationConfigurationTemplate' {arn} -> arn) (\s@ReplicationConfigurationTemplate' {} a -> s {arn = a} :: ReplicationConfigurationTemplate)

-- | The subnet to be used by the replication staging area.
replicationConfigurationTemplate_stagingAreaSubnetId :: Lens.Lens' ReplicationConfigurationTemplate (Prelude.Maybe Prelude.Text)
replicationConfigurationTemplate_stagingAreaSubnetId = Lens.lens (\ReplicationConfigurationTemplate' {stagingAreaSubnetId} -> stagingAreaSubnetId) (\s@ReplicationConfigurationTemplate' {} a -> s {stagingAreaSubnetId = a} :: ReplicationConfigurationTemplate)

-- | Whether to create a Public IP for the Recovery Instance by default.
replicationConfigurationTemplate_createPublicIP :: Lens.Lens' ReplicationConfigurationTemplate (Prelude.Maybe Prelude.Bool)
replicationConfigurationTemplate_createPublicIP = Lens.lens (\ReplicationConfigurationTemplate' {createPublicIP} -> createPublicIP) (\s@ReplicationConfigurationTemplate' {} a -> s {createPublicIP = a} :: ReplicationConfigurationTemplate)

-- | The data plane routing mechanism that will be used for replication.
replicationConfigurationTemplate_dataPlaneRouting :: Lens.Lens' ReplicationConfigurationTemplate (Prelude.Maybe ReplicationConfigurationDataPlaneRouting)
replicationConfigurationTemplate_dataPlaneRouting = Lens.lens (\ReplicationConfigurationTemplate' {dataPlaneRouting} -> dataPlaneRouting) (\s@ReplicationConfigurationTemplate' {} a -> s {dataPlaneRouting = a} :: ReplicationConfigurationTemplate)

-- | The type of EBS encryption to be used during replication.
replicationConfigurationTemplate_ebsEncryption :: Lens.Lens' ReplicationConfigurationTemplate (Prelude.Maybe ReplicationConfigurationEbsEncryption)
replicationConfigurationTemplate_ebsEncryption = Lens.lens (\ReplicationConfigurationTemplate' {ebsEncryption} -> ebsEncryption) (\s@ReplicationConfigurationTemplate' {} a -> s {ebsEncryption = a} :: ReplicationConfigurationTemplate)

-- | The Point in time (PIT) policy to manage snapshots taken during
-- replication.
replicationConfigurationTemplate_pitPolicy :: Lens.Lens' ReplicationConfigurationTemplate (Prelude.Maybe (Prelude.NonEmpty PITPolicyRule))
replicationConfigurationTemplate_pitPolicy = Lens.lens (\ReplicationConfigurationTemplate' {pitPolicy} -> pitPolicy) (\s@ReplicationConfigurationTemplate' {} a -> s {pitPolicy = a} :: ReplicationConfigurationTemplate) Prelude.. Lens.mapping Lens.coerced

-- | Whether to use a dedicated Replication Server in the replication staging
-- area.
replicationConfigurationTemplate_useDedicatedReplicationServer :: Lens.Lens' ReplicationConfigurationTemplate (Prelude.Maybe Prelude.Bool)
replicationConfigurationTemplate_useDedicatedReplicationServer = Lens.lens (\ReplicationConfigurationTemplate' {useDedicatedReplicationServer} -> useDedicatedReplicationServer) (\s@ReplicationConfigurationTemplate' {} a -> s {useDedicatedReplicationServer = a} :: ReplicationConfigurationTemplate)

-- | The security group IDs that will be used by the replication server.
replicationConfigurationTemplate_replicationServersSecurityGroupsIDs :: Lens.Lens' ReplicationConfigurationTemplate (Prelude.Maybe [Prelude.Text])
replicationConfigurationTemplate_replicationServersSecurityGroupsIDs = Lens.lens (\ReplicationConfigurationTemplate' {replicationServersSecurityGroupsIDs} -> replicationServersSecurityGroupsIDs) (\s@ReplicationConfigurationTemplate' {} a -> s {replicationServersSecurityGroupsIDs = a} :: ReplicationConfigurationTemplate) Prelude.. Lens.mapping Lens.coerced

-- | The ARN of the EBS encryption key to be used during replication.
replicationConfigurationTemplate_ebsEncryptionKeyArn :: Lens.Lens' ReplicationConfigurationTemplate (Prelude.Maybe Prelude.Text)
replicationConfigurationTemplate_ebsEncryptionKeyArn = Lens.lens (\ReplicationConfigurationTemplate' {ebsEncryptionKeyArn} -> ebsEncryptionKeyArn) (\s@ReplicationConfigurationTemplate' {} a -> s {ebsEncryptionKeyArn = a} :: ReplicationConfigurationTemplate)

-- | The Replication Configuration Template ID.
replicationConfigurationTemplate_replicationConfigurationTemplateID :: Lens.Lens' ReplicationConfigurationTemplate Prelude.Text
replicationConfigurationTemplate_replicationConfigurationTemplateID = Lens.lens (\ReplicationConfigurationTemplate' {replicationConfigurationTemplateID} -> replicationConfigurationTemplateID) (\s@ReplicationConfigurationTemplate' {} a -> s {replicationConfigurationTemplateID = a} :: ReplicationConfigurationTemplate)

instance
  Core.FromJSON
    ReplicationConfigurationTemplate
  where
  parseJSON =
    Core.withObject
      "ReplicationConfigurationTemplate"
      ( \x ->
          ReplicationConfigurationTemplate'
            Prelude.<$> (x Core..:? "tags" Core..!= Prelude.mempty)
            Prelude.<*> (x Core..:? "bandwidthThrottling")
            Prelude.<*> (x Core..:? "replicationServerInstanceType")
            Prelude.<*> ( x Core..:? "stagingAreaTags"
                            Core..!= Prelude.mempty
                        )
            Prelude.<*> (x Core..:? "associateDefaultSecurityGroup")
            Prelude.<*> (x Core..:? "defaultLargeStagingDiskType")
            Prelude.<*> (x Core..:? "arn")
            Prelude.<*> (x Core..:? "stagingAreaSubnetId")
            Prelude.<*> (x Core..:? "createPublicIP")
            Prelude.<*> (x Core..:? "dataPlaneRouting")
            Prelude.<*> (x Core..:? "ebsEncryption")
            Prelude.<*> (x Core..:? "pitPolicy")
            Prelude.<*> (x Core..:? "useDedicatedReplicationServer")
            Prelude.<*> ( x Core..:? "replicationServersSecurityGroupsIDs"
                            Core..!= Prelude.mempty
                        )
            Prelude.<*> (x Core..:? "ebsEncryptionKeyArn")
            Prelude.<*> (x Core..: "replicationConfigurationTemplateID")
      )

instance
  Prelude.Hashable
    ReplicationConfigurationTemplate
  where
  hashWithSalt
    _salt
    ReplicationConfigurationTemplate' {..} =
      _salt `Prelude.hashWithSalt` tags
        `Prelude.hashWithSalt` bandwidthThrottling
        `Prelude.hashWithSalt` replicationServerInstanceType
        `Prelude.hashWithSalt` stagingAreaTags
        `Prelude.hashWithSalt` associateDefaultSecurityGroup
        `Prelude.hashWithSalt` defaultLargeStagingDiskType
        `Prelude.hashWithSalt` arn
        `Prelude.hashWithSalt` stagingAreaSubnetId
        `Prelude.hashWithSalt` createPublicIP
        `Prelude.hashWithSalt` dataPlaneRouting
        `Prelude.hashWithSalt` ebsEncryption
        `Prelude.hashWithSalt` pitPolicy
        `Prelude.hashWithSalt` useDedicatedReplicationServer
        `Prelude.hashWithSalt` replicationServersSecurityGroupsIDs
        `Prelude.hashWithSalt` ebsEncryptionKeyArn
        `Prelude.hashWithSalt` replicationConfigurationTemplateID

instance
  Prelude.NFData
    ReplicationConfigurationTemplate
  where
  rnf ReplicationConfigurationTemplate' {..} =
    Prelude.rnf tags
      `Prelude.seq` Prelude.rnf bandwidthThrottling
      `Prelude.seq` Prelude.rnf replicationServerInstanceType
      `Prelude.seq` Prelude.rnf stagingAreaTags
      `Prelude.seq` Prelude.rnf associateDefaultSecurityGroup
      `Prelude.seq` Prelude.rnf defaultLargeStagingDiskType
      `Prelude.seq` Prelude.rnf arn
      `Prelude.seq` Prelude.rnf stagingAreaSubnetId
      `Prelude.seq` Prelude.rnf createPublicIP
      `Prelude.seq` Prelude.rnf dataPlaneRouting
      `Prelude.seq` Prelude.rnf ebsEncryption
      `Prelude.seq` Prelude.rnf pitPolicy
      `Prelude.seq` Prelude.rnf useDedicatedReplicationServer
      `Prelude.seq` Prelude.rnf
        replicationServersSecurityGroupsIDs
      `Prelude.seq` Prelude.rnf ebsEncryptionKeyArn
      `Prelude.seq` Prelude.rnf
        replicationConfigurationTemplateID
