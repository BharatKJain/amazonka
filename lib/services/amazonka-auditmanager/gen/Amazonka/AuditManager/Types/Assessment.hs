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
-- Module      : Amazonka.AuditManager.Types.Assessment
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.AuditManager.Types.Assessment where

import Amazonka.AuditManager.Types.AWSAccount
import Amazonka.AuditManager.Types.AssessmentFramework
import Amazonka.AuditManager.Types.AssessmentMetadata
import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | An entity that defines the scope of audit evidence collected by Audit
-- Manager. An Audit Manager assessment is an implementation of an Audit
-- Manager framework.
--
-- /See:/ 'newAssessment' smart constructor.
data Assessment = Assessment'
  { -- | The tags that are associated with the assessment.
    tags :: Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text),
    -- | The metadata for the assessment.
    metadata :: Prelude.Maybe AssessmentMetadata,
    -- | The Amazon Web Services account that\'s associated with the assessment.
    awsAccount :: Prelude.Maybe AWSAccount,
    -- | The Amazon Resource Name (ARN) of the assessment.
    arn :: Prelude.Maybe Prelude.Text,
    -- | The framework that the assessment was created from.
    framework :: Prelude.Maybe AssessmentFramework
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'Assessment' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'tags', 'assessment_tags' - The tags that are associated with the assessment.
--
-- 'metadata', 'assessment_metadata' - The metadata for the assessment.
--
-- 'awsAccount', 'assessment_awsAccount' - The Amazon Web Services account that\'s associated with the assessment.
--
-- 'arn', 'assessment_arn' - The Amazon Resource Name (ARN) of the assessment.
--
-- 'framework', 'assessment_framework' - The framework that the assessment was created from.
newAssessment ::
  Assessment
newAssessment =
  Assessment'
    { tags = Prelude.Nothing,
      metadata = Prelude.Nothing,
      awsAccount = Prelude.Nothing,
      arn = Prelude.Nothing,
      framework = Prelude.Nothing
    }

-- | The tags that are associated with the assessment.
assessment_tags :: Lens.Lens' Assessment (Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text))
assessment_tags = Lens.lens (\Assessment' {tags} -> tags) (\s@Assessment' {} a -> s {tags = a} :: Assessment) Prelude.. Lens.mapping Lens.coerced

-- | The metadata for the assessment.
assessment_metadata :: Lens.Lens' Assessment (Prelude.Maybe AssessmentMetadata)
assessment_metadata = Lens.lens (\Assessment' {metadata} -> metadata) (\s@Assessment' {} a -> s {metadata = a} :: Assessment)

-- | The Amazon Web Services account that\'s associated with the assessment.
assessment_awsAccount :: Lens.Lens' Assessment (Prelude.Maybe AWSAccount)
assessment_awsAccount = Lens.lens (\Assessment' {awsAccount} -> awsAccount) (\s@Assessment' {} a -> s {awsAccount = a} :: Assessment)

-- | The Amazon Resource Name (ARN) of the assessment.
assessment_arn :: Lens.Lens' Assessment (Prelude.Maybe Prelude.Text)
assessment_arn = Lens.lens (\Assessment' {arn} -> arn) (\s@Assessment' {} a -> s {arn = a} :: Assessment)

-- | The framework that the assessment was created from.
assessment_framework :: Lens.Lens' Assessment (Prelude.Maybe AssessmentFramework)
assessment_framework = Lens.lens (\Assessment' {framework} -> framework) (\s@Assessment' {} a -> s {framework = a} :: Assessment)

instance Core.FromJSON Assessment where
  parseJSON =
    Core.withObject
      "Assessment"
      ( \x ->
          Assessment'
            Prelude.<$> (x Core..:? "tags" Core..!= Prelude.mempty)
            Prelude.<*> (x Core..:? "metadata")
            Prelude.<*> (x Core..:? "awsAccount")
            Prelude.<*> (x Core..:? "arn")
            Prelude.<*> (x Core..:? "framework")
      )

instance Prelude.Hashable Assessment where
  hashWithSalt _salt Assessment' {..} =
    _salt `Prelude.hashWithSalt` tags
      `Prelude.hashWithSalt` metadata
      `Prelude.hashWithSalt` awsAccount
      `Prelude.hashWithSalt` arn
      `Prelude.hashWithSalt` framework

instance Prelude.NFData Assessment where
  rnf Assessment' {..} =
    Prelude.rnf tags
      `Prelude.seq` Prelude.rnf metadata
      `Prelude.seq` Prelude.rnf awsAccount
      `Prelude.seq` Prelude.rnf arn
      `Prelude.seq` Prelude.rnf framework
