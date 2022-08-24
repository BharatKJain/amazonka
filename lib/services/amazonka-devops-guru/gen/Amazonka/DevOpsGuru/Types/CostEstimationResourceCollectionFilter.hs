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
-- Module      : Amazonka.DevOpsGuru.Types.CostEstimationResourceCollectionFilter
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.DevOpsGuru.Types.CostEstimationResourceCollectionFilter where

import qualified Amazonka.Core as Core
import Amazonka.DevOpsGuru.Types.CloudFormationCostEstimationResourceCollectionFilter
import Amazonka.DevOpsGuru.Types.TagCostEstimationResourceCollectionFilter
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | Information about a filter used to specify which Amazon Web Services
-- resources are analyzed to create a monthly DevOps Guru cost estimate.
-- For more information, see
-- <https://docs.aws.amazon.com/devops-guru/latest/userguide/cost-estimate.html Estimate your Amazon DevOps Guru costs>
-- and
-- <http://aws.amazon.com/devops-guru/pricing/ Amazon DevOps Guru pricing>.
--
-- /See:/ 'newCostEstimationResourceCollectionFilter' smart constructor.
data CostEstimationResourceCollectionFilter = CostEstimationResourceCollectionFilter'
  { -- | The Amazon Web Services tags used to filter the resource collection that
    -- is used for a cost estimate.
    --
    -- Tags help you identify and organize your Amazon Web Services resources.
    -- Many Amazon Web Services services support tagging, so you can assign the
    -- same tag to resources from different services to indicate that the
    -- resources are related. For example, you can assign the same tag to an
    -- Amazon DynamoDB table resource that you assign to an Lambda function.
    -- For more information about using tags, see the
    -- <https://d1.awsstatic.com/whitepapers/aws-tagging-best-practices.pdf Tagging best practices>
    -- whitepaper.
    --
    -- Each Amazon Web Services tag has two parts.
    --
    -- -   A tag /key/ (for example, @CostCenter@, @Environment@, @Project@, or
    --     @Secret@). Tag /keys/ are case-sensitive.
    --
    -- -   An optional field known as a tag /value/ (for example,
    --     @111122223333@, @Production@, or a team name). Omitting the tag
    --     /value/ is the same as using an empty string. Like tag /keys/, tag
    --     /values/ are case-sensitive.
    --
    -- Together these are known as /key/-/value/ pairs.
    --
    -- The string used for a /key/ in a tag that you use to define your
    -- resource coverage must begin with the prefix @Devops-guru-@. The tag
    -- /key/ might be @Devops-guru-deployment-application@ or
    -- @Devops-guru-rds-application@. While /keys/ are case-sensitive, the case
    -- of /key/ characters don\'t matter to DevOps Guru. For example, DevOps
    -- Guru works with a /key/ named @devops-guru-rds@ and a /key/ named
    -- @DevOps-Guru-RDS@. Possible /key/\//value/ pairs in your application
    -- might be @Devops-Guru-production-application\/RDS@ or
    -- @Devops-Guru-production-application\/containers@.
    tags :: Prelude.Maybe [TagCostEstimationResourceCollectionFilter],
    -- | An object that specifies the CloudFormation stack that defines the
    -- Amazon Web Services resources used to create a monthly estimate for
    -- DevOps Guru.
    cloudFormation :: Prelude.Maybe CloudFormationCostEstimationResourceCollectionFilter
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CostEstimationResourceCollectionFilter' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'tags', 'costEstimationResourceCollectionFilter_tags' - The Amazon Web Services tags used to filter the resource collection that
-- is used for a cost estimate.
--
-- Tags help you identify and organize your Amazon Web Services resources.
-- Many Amazon Web Services services support tagging, so you can assign the
-- same tag to resources from different services to indicate that the
-- resources are related. For example, you can assign the same tag to an
-- Amazon DynamoDB table resource that you assign to an Lambda function.
-- For more information about using tags, see the
-- <https://d1.awsstatic.com/whitepapers/aws-tagging-best-practices.pdf Tagging best practices>
-- whitepaper.
--
-- Each Amazon Web Services tag has two parts.
--
-- -   A tag /key/ (for example, @CostCenter@, @Environment@, @Project@, or
--     @Secret@). Tag /keys/ are case-sensitive.
--
-- -   An optional field known as a tag /value/ (for example,
--     @111122223333@, @Production@, or a team name). Omitting the tag
--     /value/ is the same as using an empty string. Like tag /keys/, tag
--     /values/ are case-sensitive.
--
-- Together these are known as /key/-/value/ pairs.
--
-- The string used for a /key/ in a tag that you use to define your
-- resource coverage must begin with the prefix @Devops-guru-@. The tag
-- /key/ might be @Devops-guru-deployment-application@ or
-- @Devops-guru-rds-application@. While /keys/ are case-sensitive, the case
-- of /key/ characters don\'t matter to DevOps Guru. For example, DevOps
-- Guru works with a /key/ named @devops-guru-rds@ and a /key/ named
-- @DevOps-Guru-RDS@. Possible /key/\//value/ pairs in your application
-- might be @Devops-Guru-production-application\/RDS@ or
-- @Devops-Guru-production-application\/containers@.
--
-- 'cloudFormation', 'costEstimationResourceCollectionFilter_cloudFormation' - An object that specifies the CloudFormation stack that defines the
-- Amazon Web Services resources used to create a monthly estimate for
-- DevOps Guru.
newCostEstimationResourceCollectionFilter ::
  CostEstimationResourceCollectionFilter
newCostEstimationResourceCollectionFilter =
  CostEstimationResourceCollectionFilter'
    { tags =
        Prelude.Nothing,
      cloudFormation = Prelude.Nothing
    }

-- | The Amazon Web Services tags used to filter the resource collection that
-- is used for a cost estimate.
--
-- Tags help you identify and organize your Amazon Web Services resources.
-- Many Amazon Web Services services support tagging, so you can assign the
-- same tag to resources from different services to indicate that the
-- resources are related. For example, you can assign the same tag to an
-- Amazon DynamoDB table resource that you assign to an Lambda function.
-- For more information about using tags, see the
-- <https://d1.awsstatic.com/whitepapers/aws-tagging-best-practices.pdf Tagging best practices>
-- whitepaper.
--
-- Each Amazon Web Services tag has two parts.
--
-- -   A tag /key/ (for example, @CostCenter@, @Environment@, @Project@, or
--     @Secret@). Tag /keys/ are case-sensitive.
--
-- -   An optional field known as a tag /value/ (for example,
--     @111122223333@, @Production@, or a team name). Omitting the tag
--     /value/ is the same as using an empty string. Like tag /keys/, tag
--     /values/ are case-sensitive.
--
-- Together these are known as /key/-/value/ pairs.
--
-- The string used for a /key/ in a tag that you use to define your
-- resource coverage must begin with the prefix @Devops-guru-@. The tag
-- /key/ might be @Devops-guru-deployment-application@ or
-- @Devops-guru-rds-application@. While /keys/ are case-sensitive, the case
-- of /key/ characters don\'t matter to DevOps Guru. For example, DevOps
-- Guru works with a /key/ named @devops-guru-rds@ and a /key/ named
-- @DevOps-Guru-RDS@. Possible /key/\//value/ pairs in your application
-- might be @Devops-Guru-production-application\/RDS@ or
-- @Devops-Guru-production-application\/containers@.
costEstimationResourceCollectionFilter_tags :: Lens.Lens' CostEstimationResourceCollectionFilter (Prelude.Maybe [TagCostEstimationResourceCollectionFilter])
costEstimationResourceCollectionFilter_tags = Lens.lens (\CostEstimationResourceCollectionFilter' {tags} -> tags) (\s@CostEstimationResourceCollectionFilter' {} a -> s {tags = a} :: CostEstimationResourceCollectionFilter) Prelude.. Lens.mapping Lens.coerced

-- | An object that specifies the CloudFormation stack that defines the
-- Amazon Web Services resources used to create a monthly estimate for
-- DevOps Guru.
costEstimationResourceCollectionFilter_cloudFormation :: Lens.Lens' CostEstimationResourceCollectionFilter (Prelude.Maybe CloudFormationCostEstimationResourceCollectionFilter)
costEstimationResourceCollectionFilter_cloudFormation = Lens.lens (\CostEstimationResourceCollectionFilter' {cloudFormation} -> cloudFormation) (\s@CostEstimationResourceCollectionFilter' {} a -> s {cloudFormation = a} :: CostEstimationResourceCollectionFilter)

instance
  Core.FromJSON
    CostEstimationResourceCollectionFilter
  where
  parseJSON =
    Core.withObject
      "CostEstimationResourceCollectionFilter"
      ( \x ->
          CostEstimationResourceCollectionFilter'
            Prelude.<$> (x Core..:? "Tags" Core..!= Prelude.mempty)
            Prelude.<*> (x Core..:? "CloudFormation")
      )

instance
  Prelude.Hashable
    CostEstimationResourceCollectionFilter
  where
  hashWithSalt
    _salt
    CostEstimationResourceCollectionFilter' {..} =
      _salt `Prelude.hashWithSalt` tags
        `Prelude.hashWithSalt` cloudFormation

instance
  Prelude.NFData
    CostEstimationResourceCollectionFilter
  where
  rnf CostEstimationResourceCollectionFilter' {..} =
    Prelude.rnf tags
      `Prelude.seq` Prelude.rnf cloudFormation

instance
  Core.ToJSON
    CostEstimationResourceCollectionFilter
  where
  toJSON CostEstimationResourceCollectionFilter' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("Tags" Core..=) Prelude.<$> tags,
            ("CloudFormation" Core..=)
              Prelude.<$> cloudFormation
          ]
      )
