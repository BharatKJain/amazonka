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
-- Module      : Amazonka.ElasticBeanstalk.Types.EnvironmentInfoDescription
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.ElasticBeanstalk.Types.EnvironmentInfoDescription where

import qualified Amazonka.Core as Core
import Amazonka.ElasticBeanstalk.Types.EnvironmentInfoType
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | The information retrieved from the Amazon EC2 instances.
--
-- /See:/ 'newEnvironmentInfoDescription' smart constructor.
data EnvironmentInfoDescription = EnvironmentInfoDescription'
  { -- | The retrieved information. Currently contains a presigned Amazon S3 URL.
    -- The files are deleted after 15 minutes.
    --
    -- Anyone in possession of this URL can access the files before they are
    -- deleted. Make the URL available only to trusted parties.
    message :: Prelude.Maybe Prelude.Text,
    -- | The Amazon EC2 Instance ID for this information.
    ec2InstanceId :: Prelude.Maybe Prelude.Text,
    -- | The time stamp when this information was retrieved.
    sampleTimestamp :: Prelude.Maybe Core.ISO8601,
    -- | The type of information retrieved.
    infoType :: Prelude.Maybe EnvironmentInfoType
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'EnvironmentInfoDescription' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'message', 'environmentInfoDescription_message' - The retrieved information. Currently contains a presigned Amazon S3 URL.
-- The files are deleted after 15 minutes.
--
-- Anyone in possession of this URL can access the files before they are
-- deleted. Make the URL available only to trusted parties.
--
-- 'ec2InstanceId', 'environmentInfoDescription_ec2InstanceId' - The Amazon EC2 Instance ID for this information.
--
-- 'sampleTimestamp', 'environmentInfoDescription_sampleTimestamp' - The time stamp when this information was retrieved.
--
-- 'infoType', 'environmentInfoDescription_infoType' - The type of information retrieved.
newEnvironmentInfoDescription ::
  EnvironmentInfoDescription
newEnvironmentInfoDescription =
  EnvironmentInfoDescription'
    { message =
        Prelude.Nothing,
      ec2InstanceId = Prelude.Nothing,
      sampleTimestamp = Prelude.Nothing,
      infoType = Prelude.Nothing
    }

-- | The retrieved information. Currently contains a presigned Amazon S3 URL.
-- The files are deleted after 15 minutes.
--
-- Anyone in possession of this URL can access the files before they are
-- deleted. Make the URL available only to trusted parties.
environmentInfoDescription_message :: Lens.Lens' EnvironmentInfoDescription (Prelude.Maybe Prelude.Text)
environmentInfoDescription_message = Lens.lens (\EnvironmentInfoDescription' {message} -> message) (\s@EnvironmentInfoDescription' {} a -> s {message = a} :: EnvironmentInfoDescription)

-- | The Amazon EC2 Instance ID for this information.
environmentInfoDescription_ec2InstanceId :: Lens.Lens' EnvironmentInfoDescription (Prelude.Maybe Prelude.Text)
environmentInfoDescription_ec2InstanceId = Lens.lens (\EnvironmentInfoDescription' {ec2InstanceId} -> ec2InstanceId) (\s@EnvironmentInfoDescription' {} a -> s {ec2InstanceId = a} :: EnvironmentInfoDescription)

-- | The time stamp when this information was retrieved.
environmentInfoDescription_sampleTimestamp :: Lens.Lens' EnvironmentInfoDescription (Prelude.Maybe Prelude.UTCTime)
environmentInfoDescription_sampleTimestamp = Lens.lens (\EnvironmentInfoDescription' {sampleTimestamp} -> sampleTimestamp) (\s@EnvironmentInfoDescription' {} a -> s {sampleTimestamp = a} :: EnvironmentInfoDescription) Prelude.. Lens.mapping Core._Time

-- | The type of information retrieved.
environmentInfoDescription_infoType :: Lens.Lens' EnvironmentInfoDescription (Prelude.Maybe EnvironmentInfoType)
environmentInfoDescription_infoType = Lens.lens (\EnvironmentInfoDescription' {infoType} -> infoType) (\s@EnvironmentInfoDescription' {} a -> s {infoType = a} :: EnvironmentInfoDescription)

instance Core.FromXML EnvironmentInfoDescription where
  parseXML x =
    EnvironmentInfoDescription'
      Prelude.<$> (x Core..@? "Message")
      Prelude.<*> (x Core..@? "Ec2InstanceId")
      Prelude.<*> (x Core..@? "SampleTimestamp")
      Prelude.<*> (x Core..@? "InfoType")

instance Prelude.Hashable EnvironmentInfoDescription where
  hashWithSalt _salt EnvironmentInfoDescription' {..} =
    _salt `Prelude.hashWithSalt` message
      `Prelude.hashWithSalt` ec2InstanceId
      `Prelude.hashWithSalt` sampleTimestamp
      `Prelude.hashWithSalt` infoType

instance Prelude.NFData EnvironmentInfoDescription where
  rnf EnvironmentInfoDescription' {..} =
    Prelude.rnf message
      `Prelude.seq` Prelude.rnf ec2InstanceId
      `Prelude.seq` Prelude.rnf sampleTimestamp
      `Prelude.seq` Prelude.rnf infoType
