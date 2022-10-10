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
-- Module      : Amazonka.ResilienceHub.Types.LogicalResourceId
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.ResilienceHub.Types.LogicalResourceId where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | Defines a logical resource identifier.
--
-- /See:/ 'newLogicalResourceId' smart constructor.
data LogicalResourceId = LogicalResourceId'
  { -- | The name of the Terraform S3 state file this resource belongs to.
    terraformSourceName :: Prelude.Maybe Prelude.Text,
    -- | The name of the CloudFormation stack this resource belongs to.
    logicalStackName :: Prelude.Maybe Prelude.Text,
    -- | The name of the resource group that this resource belongs to.
    resourceGroupName :: Prelude.Maybe Prelude.Text,
    -- | The identifier of the resource.
    identifier :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'LogicalResourceId' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'terraformSourceName', 'logicalResourceId_terraformSourceName' - The name of the Terraform S3 state file this resource belongs to.
--
-- 'logicalStackName', 'logicalResourceId_logicalStackName' - The name of the CloudFormation stack this resource belongs to.
--
-- 'resourceGroupName', 'logicalResourceId_resourceGroupName' - The name of the resource group that this resource belongs to.
--
-- 'identifier', 'logicalResourceId_identifier' - The identifier of the resource.
newLogicalResourceId ::
  -- | 'identifier'
  Prelude.Text ->
  LogicalResourceId
newLogicalResourceId pIdentifier_ =
  LogicalResourceId'
    { terraformSourceName =
        Prelude.Nothing,
      logicalStackName = Prelude.Nothing,
      resourceGroupName = Prelude.Nothing,
      identifier = pIdentifier_
    }

-- | The name of the Terraform S3 state file this resource belongs to.
logicalResourceId_terraformSourceName :: Lens.Lens' LogicalResourceId (Prelude.Maybe Prelude.Text)
logicalResourceId_terraformSourceName = Lens.lens (\LogicalResourceId' {terraformSourceName} -> terraformSourceName) (\s@LogicalResourceId' {} a -> s {terraformSourceName = a} :: LogicalResourceId)

-- | The name of the CloudFormation stack this resource belongs to.
logicalResourceId_logicalStackName :: Lens.Lens' LogicalResourceId (Prelude.Maybe Prelude.Text)
logicalResourceId_logicalStackName = Lens.lens (\LogicalResourceId' {logicalStackName} -> logicalStackName) (\s@LogicalResourceId' {} a -> s {logicalStackName = a} :: LogicalResourceId)

-- | The name of the resource group that this resource belongs to.
logicalResourceId_resourceGroupName :: Lens.Lens' LogicalResourceId (Prelude.Maybe Prelude.Text)
logicalResourceId_resourceGroupName = Lens.lens (\LogicalResourceId' {resourceGroupName} -> resourceGroupName) (\s@LogicalResourceId' {} a -> s {resourceGroupName = a} :: LogicalResourceId)

-- | The identifier of the resource.
logicalResourceId_identifier :: Lens.Lens' LogicalResourceId Prelude.Text
logicalResourceId_identifier = Lens.lens (\LogicalResourceId' {identifier} -> identifier) (\s@LogicalResourceId' {} a -> s {identifier = a} :: LogicalResourceId)

instance Core.FromJSON LogicalResourceId where
  parseJSON =
    Core.withObject
      "LogicalResourceId"
      ( \x ->
          LogicalResourceId'
            Prelude.<$> (x Core..:? "terraformSourceName")
            Prelude.<*> (x Core..:? "logicalStackName")
            Prelude.<*> (x Core..:? "resourceGroupName")
            Prelude.<*> (x Core..: "identifier")
      )

instance Prelude.Hashable LogicalResourceId where
  hashWithSalt _salt LogicalResourceId' {..} =
    _salt `Prelude.hashWithSalt` terraformSourceName
      `Prelude.hashWithSalt` logicalStackName
      `Prelude.hashWithSalt` resourceGroupName
      `Prelude.hashWithSalt` identifier

instance Prelude.NFData LogicalResourceId where
  rnf LogicalResourceId' {..} =
    Prelude.rnf terraformSourceName
      `Prelude.seq` Prelude.rnf logicalStackName
      `Prelude.seq` Prelude.rnf resourceGroupName
      `Prelude.seq` Prelude.rnf identifier
