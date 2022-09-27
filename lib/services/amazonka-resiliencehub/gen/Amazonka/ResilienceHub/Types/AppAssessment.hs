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
-- Module      : Amazonka.ResilienceHub.Types.AppAssessment
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.ResilienceHub.Types.AppAssessment where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import Amazonka.ResilienceHub.Types.AssessmentInvoker
import Amazonka.ResilienceHub.Types.AssessmentStatus
import Amazonka.ResilienceHub.Types.ComplianceStatus
import Amazonka.ResilienceHub.Types.Cost
import Amazonka.ResilienceHub.Types.DisruptionCompliance
import Amazonka.ResilienceHub.Types.DisruptionType
import Amazonka.ResilienceHub.Types.ResiliencyPolicy
import Amazonka.ResilienceHub.Types.ResiliencyScore
import Amazonka.ResilienceHub.Types.ResourceErrorsDetails

-- | Defines an application assessment.
--
-- /See:/ 'newAppAssessment' smart constructor.
data AppAssessment = AppAssessment'
  { -- | The tags assigned to the resource. A tag is a label that you assign to
    -- an Amazon Web Services resource. Each tag consists of a key\/value pair.
    tags :: Prelude.Maybe (Core.Sensitive (Prelude.HashMap Prelude.Text Prelude.Text)),
    -- | The resiliency policy.
    policy :: Prelude.Maybe ResiliencyPolicy,
    -- | Error or warning message from the assessment execution
    message :: Prelude.Maybe Prelude.Text,
    -- | The name of the assessment.
    assessmentName :: Prelude.Maybe Prelude.Text,
    -- | The current resiliency score for the application.
    resiliencyScore :: Prelude.Maybe ResiliencyScore,
    -- | The current status of the compliance for the resiliency policy.
    complianceStatus :: Prelude.Maybe ComplianceStatus,
    -- | The end time for the action.
    endTime :: Prelude.Maybe Core.POSIX,
    -- | The version of the application.
    appVersion :: Prelude.Maybe Prelude.Text,
    -- | The Amazon Resource Name (ARN) of the application. The format for this
    -- ARN is: arn:@partition@:resiliencehub:@region@:@account@:app\/@app-id@.
    -- For more information about ARNs, see
    -- <https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html Amazon Resource Names (ARNs)>
    -- in the /AWS General Reference/.
    appArn :: Prelude.Maybe Prelude.Text,
    -- | The cost for the application.
    cost :: Prelude.Maybe Cost,
    -- | The starting time for the action.
    startTime :: Prelude.Maybe Core.POSIX,
    -- | The application compliance against the resiliency policy.
    compliance :: Prelude.Maybe (Prelude.HashMap DisruptionType DisruptionCompliance),
    -- | A resource error object containing a list of errors retrieving an
    -- application\'s resources.
    resourceErrorsDetails :: Prelude.Maybe ResourceErrorsDetails,
    -- | The Amazon Resource Name (ARN) of the assessment. The format for this
    -- ARN is:
    -- arn:@partition@:resiliencehub:@region@:@account@:app-assessment\/@app-id@.
    -- For more information about ARNs, see
    -- <https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html Amazon Resource Names (ARNs)>
    -- in the /AWS General Reference/.
    assessmentArn :: Prelude.Text,
    -- | The current status of the assessment for the resiliency policy.
    assessmentStatus :: AssessmentStatus,
    -- | The entity that invoked the assessment.
    invoker :: AssessmentInvoker
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'AppAssessment' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'tags', 'appAssessment_tags' - The tags assigned to the resource. A tag is a label that you assign to
-- an Amazon Web Services resource. Each tag consists of a key\/value pair.
--
-- 'policy', 'appAssessment_policy' - The resiliency policy.
--
-- 'message', 'appAssessment_message' - Error or warning message from the assessment execution
--
-- 'assessmentName', 'appAssessment_assessmentName' - The name of the assessment.
--
-- 'resiliencyScore', 'appAssessment_resiliencyScore' - The current resiliency score for the application.
--
-- 'complianceStatus', 'appAssessment_complianceStatus' - The current status of the compliance for the resiliency policy.
--
-- 'endTime', 'appAssessment_endTime' - The end time for the action.
--
-- 'appVersion', 'appAssessment_appVersion' - The version of the application.
--
-- 'appArn', 'appAssessment_appArn' - The Amazon Resource Name (ARN) of the application. The format for this
-- ARN is: arn:@partition@:resiliencehub:@region@:@account@:app\/@app-id@.
-- For more information about ARNs, see
-- <https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html Amazon Resource Names (ARNs)>
-- in the /AWS General Reference/.
--
-- 'cost', 'appAssessment_cost' - The cost for the application.
--
-- 'startTime', 'appAssessment_startTime' - The starting time for the action.
--
-- 'compliance', 'appAssessment_compliance' - The application compliance against the resiliency policy.
--
-- 'resourceErrorsDetails', 'appAssessment_resourceErrorsDetails' - A resource error object containing a list of errors retrieving an
-- application\'s resources.
--
-- 'assessmentArn', 'appAssessment_assessmentArn' - The Amazon Resource Name (ARN) of the assessment. The format for this
-- ARN is:
-- arn:@partition@:resiliencehub:@region@:@account@:app-assessment\/@app-id@.
-- For more information about ARNs, see
-- <https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html Amazon Resource Names (ARNs)>
-- in the /AWS General Reference/.
--
-- 'assessmentStatus', 'appAssessment_assessmentStatus' - The current status of the assessment for the resiliency policy.
--
-- 'invoker', 'appAssessment_invoker' - The entity that invoked the assessment.
newAppAssessment ::
  -- | 'assessmentArn'
  Prelude.Text ->
  -- | 'assessmentStatus'
  AssessmentStatus ->
  -- | 'invoker'
  AssessmentInvoker ->
  AppAssessment
newAppAssessment
  pAssessmentArn_
  pAssessmentStatus_
  pInvoker_ =
    AppAssessment'
      { tags = Prelude.Nothing,
        policy = Prelude.Nothing,
        message = Prelude.Nothing,
        assessmentName = Prelude.Nothing,
        resiliencyScore = Prelude.Nothing,
        complianceStatus = Prelude.Nothing,
        endTime = Prelude.Nothing,
        appVersion = Prelude.Nothing,
        appArn = Prelude.Nothing,
        cost = Prelude.Nothing,
        startTime = Prelude.Nothing,
        compliance = Prelude.Nothing,
        resourceErrorsDetails = Prelude.Nothing,
        assessmentArn = pAssessmentArn_,
        assessmentStatus = pAssessmentStatus_,
        invoker = pInvoker_
      }

-- | The tags assigned to the resource. A tag is a label that you assign to
-- an Amazon Web Services resource. Each tag consists of a key\/value pair.
appAssessment_tags :: Lens.Lens' AppAssessment (Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text))
appAssessment_tags = Lens.lens (\AppAssessment' {tags} -> tags) (\s@AppAssessment' {} a -> s {tags = a} :: AppAssessment) Prelude.. Lens.mapping (Core._Sensitive Prelude.. Lens.coerced)

-- | The resiliency policy.
appAssessment_policy :: Lens.Lens' AppAssessment (Prelude.Maybe ResiliencyPolicy)
appAssessment_policy = Lens.lens (\AppAssessment' {policy} -> policy) (\s@AppAssessment' {} a -> s {policy = a} :: AppAssessment)

-- | Error or warning message from the assessment execution
appAssessment_message :: Lens.Lens' AppAssessment (Prelude.Maybe Prelude.Text)
appAssessment_message = Lens.lens (\AppAssessment' {message} -> message) (\s@AppAssessment' {} a -> s {message = a} :: AppAssessment)

-- | The name of the assessment.
appAssessment_assessmentName :: Lens.Lens' AppAssessment (Prelude.Maybe Prelude.Text)
appAssessment_assessmentName = Lens.lens (\AppAssessment' {assessmentName} -> assessmentName) (\s@AppAssessment' {} a -> s {assessmentName = a} :: AppAssessment)

-- | The current resiliency score for the application.
appAssessment_resiliencyScore :: Lens.Lens' AppAssessment (Prelude.Maybe ResiliencyScore)
appAssessment_resiliencyScore = Lens.lens (\AppAssessment' {resiliencyScore} -> resiliencyScore) (\s@AppAssessment' {} a -> s {resiliencyScore = a} :: AppAssessment)

-- | The current status of the compliance for the resiliency policy.
appAssessment_complianceStatus :: Lens.Lens' AppAssessment (Prelude.Maybe ComplianceStatus)
appAssessment_complianceStatus = Lens.lens (\AppAssessment' {complianceStatus} -> complianceStatus) (\s@AppAssessment' {} a -> s {complianceStatus = a} :: AppAssessment)

-- | The end time for the action.
appAssessment_endTime :: Lens.Lens' AppAssessment (Prelude.Maybe Prelude.UTCTime)
appAssessment_endTime = Lens.lens (\AppAssessment' {endTime} -> endTime) (\s@AppAssessment' {} a -> s {endTime = a} :: AppAssessment) Prelude.. Lens.mapping Core._Time

-- | The version of the application.
appAssessment_appVersion :: Lens.Lens' AppAssessment (Prelude.Maybe Prelude.Text)
appAssessment_appVersion = Lens.lens (\AppAssessment' {appVersion} -> appVersion) (\s@AppAssessment' {} a -> s {appVersion = a} :: AppAssessment)

-- | The Amazon Resource Name (ARN) of the application. The format for this
-- ARN is: arn:@partition@:resiliencehub:@region@:@account@:app\/@app-id@.
-- For more information about ARNs, see
-- <https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html Amazon Resource Names (ARNs)>
-- in the /AWS General Reference/.
appAssessment_appArn :: Lens.Lens' AppAssessment (Prelude.Maybe Prelude.Text)
appAssessment_appArn = Lens.lens (\AppAssessment' {appArn} -> appArn) (\s@AppAssessment' {} a -> s {appArn = a} :: AppAssessment)

-- | The cost for the application.
appAssessment_cost :: Lens.Lens' AppAssessment (Prelude.Maybe Cost)
appAssessment_cost = Lens.lens (\AppAssessment' {cost} -> cost) (\s@AppAssessment' {} a -> s {cost = a} :: AppAssessment)

-- | The starting time for the action.
appAssessment_startTime :: Lens.Lens' AppAssessment (Prelude.Maybe Prelude.UTCTime)
appAssessment_startTime = Lens.lens (\AppAssessment' {startTime} -> startTime) (\s@AppAssessment' {} a -> s {startTime = a} :: AppAssessment) Prelude.. Lens.mapping Core._Time

-- | The application compliance against the resiliency policy.
appAssessment_compliance :: Lens.Lens' AppAssessment (Prelude.Maybe (Prelude.HashMap DisruptionType DisruptionCompliance))
appAssessment_compliance = Lens.lens (\AppAssessment' {compliance} -> compliance) (\s@AppAssessment' {} a -> s {compliance = a} :: AppAssessment) Prelude.. Lens.mapping Lens.coerced

-- | A resource error object containing a list of errors retrieving an
-- application\'s resources.
appAssessment_resourceErrorsDetails :: Lens.Lens' AppAssessment (Prelude.Maybe ResourceErrorsDetails)
appAssessment_resourceErrorsDetails = Lens.lens (\AppAssessment' {resourceErrorsDetails} -> resourceErrorsDetails) (\s@AppAssessment' {} a -> s {resourceErrorsDetails = a} :: AppAssessment)

-- | The Amazon Resource Name (ARN) of the assessment. The format for this
-- ARN is:
-- arn:@partition@:resiliencehub:@region@:@account@:app-assessment\/@app-id@.
-- For more information about ARNs, see
-- <https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html Amazon Resource Names (ARNs)>
-- in the /AWS General Reference/.
appAssessment_assessmentArn :: Lens.Lens' AppAssessment Prelude.Text
appAssessment_assessmentArn = Lens.lens (\AppAssessment' {assessmentArn} -> assessmentArn) (\s@AppAssessment' {} a -> s {assessmentArn = a} :: AppAssessment)

-- | The current status of the assessment for the resiliency policy.
appAssessment_assessmentStatus :: Lens.Lens' AppAssessment AssessmentStatus
appAssessment_assessmentStatus = Lens.lens (\AppAssessment' {assessmentStatus} -> assessmentStatus) (\s@AppAssessment' {} a -> s {assessmentStatus = a} :: AppAssessment)

-- | The entity that invoked the assessment.
appAssessment_invoker :: Lens.Lens' AppAssessment AssessmentInvoker
appAssessment_invoker = Lens.lens (\AppAssessment' {invoker} -> invoker) (\s@AppAssessment' {} a -> s {invoker = a} :: AppAssessment)

instance Core.FromJSON AppAssessment where
  parseJSON =
    Core.withObject
      "AppAssessment"
      ( \x ->
          AppAssessment'
            Prelude.<$> (x Core..:? "tags" Core..!= Prelude.mempty)
            Prelude.<*> (x Core..:? "policy")
            Prelude.<*> (x Core..:? "message")
            Prelude.<*> (x Core..:? "assessmentName")
            Prelude.<*> (x Core..:? "resiliencyScore")
            Prelude.<*> (x Core..:? "complianceStatus")
            Prelude.<*> (x Core..:? "endTime")
            Prelude.<*> (x Core..:? "appVersion")
            Prelude.<*> (x Core..:? "appArn")
            Prelude.<*> (x Core..:? "cost")
            Prelude.<*> (x Core..:? "startTime")
            Prelude.<*> (x Core..:? "compliance" Core..!= Prelude.mempty)
            Prelude.<*> (x Core..:? "resourceErrorsDetails")
            Prelude.<*> (x Core..: "assessmentArn")
            Prelude.<*> (x Core..: "assessmentStatus")
            Prelude.<*> (x Core..: "invoker")
      )

instance Prelude.Hashable AppAssessment where
  hashWithSalt _salt AppAssessment' {..} =
    _salt `Prelude.hashWithSalt` tags
      `Prelude.hashWithSalt` policy
      `Prelude.hashWithSalt` message
      `Prelude.hashWithSalt` assessmentName
      `Prelude.hashWithSalt` resiliencyScore
      `Prelude.hashWithSalt` complianceStatus
      `Prelude.hashWithSalt` endTime
      `Prelude.hashWithSalt` appVersion
      `Prelude.hashWithSalt` appArn
      `Prelude.hashWithSalt` cost
      `Prelude.hashWithSalt` startTime
      `Prelude.hashWithSalt` compliance
      `Prelude.hashWithSalt` resourceErrorsDetails
      `Prelude.hashWithSalt` assessmentArn
      `Prelude.hashWithSalt` assessmentStatus
      `Prelude.hashWithSalt` invoker

instance Prelude.NFData AppAssessment where
  rnf AppAssessment' {..} =
    Prelude.rnf tags
      `Prelude.seq` Prelude.rnf policy
      `Prelude.seq` Prelude.rnf message
      `Prelude.seq` Prelude.rnf assessmentName
      `Prelude.seq` Prelude.rnf resiliencyScore
      `Prelude.seq` Prelude.rnf complianceStatus
      `Prelude.seq` Prelude.rnf endTime
      `Prelude.seq` Prelude.rnf appVersion
      `Prelude.seq` Prelude.rnf appArn
      `Prelude.seq` Prelude.rnf cost
      `Prelude.seq` Prelude.rnf startTime
      `Prelude.seq` Prelude.rnf compliance
      `Prelude.seq` Prelude.rnf resourceErrorsDetails
      `Prelude.seq` Prelude.rnf assessmentArn
      `Prelude.seq` Prelude.rnf assessmentStatus
      `Prelude.seq` Prelude.rnf invoker
