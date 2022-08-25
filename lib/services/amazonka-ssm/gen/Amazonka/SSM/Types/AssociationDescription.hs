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
-- Module      : Amazonka.SSM.Types.AssociationDescription
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.SSM.Types.AssociationDescription where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import Amazonka.SSM.Types.AssociationComplianceSeverity
import Amazonka.SSM.Types.AssociationOverview
import Amazonka.SSM.Types.AssociationStatus
import Amazonka.SSM.Types.AssociationSyncCompliance
import Amazonka.SSM.Types.InstanceAssociationOutputLocation
import Amazonka.SSM.Types.Target
import Amazonka.SSM.Types.TargetLocation

-- | Describes the parameters for a document.
--
-- /See:/ 'newAssociationDescription' smart constructor.
data AssociationDescription = AssociationDescription'
  { -- | The association name.
    associationName :: Prelude.Maybe Prelude.Text,
    -- | The name of the SSM document.
    name :: Prelude.Maybe Prelude.Text,
    -- | The association version.
    associationVersion :: Prelude.Maybe Prelude.Text,
    -- | The last date on which the association was successfully run.
    lastSuccessfulExecutionDate :: Prelude.Maybe Core.POSIX,
    -- | The combination of Amazon Web Services Regions and Amazon Web Services
    -- accounts where you want to run the association.
    targetLocations :: Prelude.Maybe (Prelude.NonEmpty TargetLocation),
    -- | The date when the association was made.
    date :: Prelude.Maybe Core.POSIX,
    -- | Choose the parameter that will define how your automation will branch
    -- out. This target is required for associations that use an Automation
    -- runbook and target resources by using rate controls. Automation is a
    -- capability of Amazon Web Services Systems Manager.
    automationTargetParameterName :: Prelude.Maybe Prelude.Text,
    -- | A key-value mapping of document parameters to target resources. Both
    -- Targets and TargetMaps can\'t be specified together.
    targetMaps :: Prelude.Maybe [Prelude.HashMap Prelude.Text [Prelude.Text]],
    -- | An S3 bucket where you want to store the output details of the request.
    outputLocation :: Prelude.Maybe InstanceAssociationOutputLocation,
    -- | The association status.
    status :: Prelude.Maybe AssociationStatus,
    -- | The managed nodes targeted by the request.
    targets :: Prelude.Maybe [Target],
    -- | The names or Amazon Resource Names (ARNs) of the Change Calendar type
    -- documents your associations are gated under. The associations only run
    -- when that change calendar is open. For more information, see
    -- <https://docs.aws.amazon.com/systems-manager/latest/userguide/systems-manager-change-calendar Amazon Web Services Systems Manager Change Calendar>.
    calendarNames :: Prelude.Maybe [Prelude.Text],
    -- | A cron expression that specifies a schedule when the association runs.
    scheduleExpression :: Prelude.Maybe Prelude.Text,
    -- | Number of days to wait after the scheduled day to run an association.
    scheduleOffset :: Prelude.Maybe Prelude.Natural,
    -- | The managed node ID.
    instanceId :: Prelude.Maybe Prelude.Text,
    -- | Information about the association.
    overview :: Prelude.Maybe AssociationOverview,
    -- | The date when the association was last updated.
    lastUpdateAssociationDate :: Prelude.Maybe Core.POSIX,
    -- | The maximum number of targets allowed to run the association at the same
    -- time. You can specify a number, for example 10, or a percentage of the
    -- target set, for example 10%. The default value is 100%, which means all
    -- targets run the association at the same time.
    --
    -- If a new managed node starts and attempts to run an association while
    -- Systems Manager is running @MaxConcurrency@ associations, the
    -- association is allowed to run. During the next association interval, the
    -- new managed node will process its association within the limit specified
    -- for @MaxConcurrency@.
    maxConcurrency :: Prelude.Maybe Prelude.Text,
    -- | By default, when you create a new associations, the system runs it
    -- immediately after it is created and then according to the schedule you
    -- specified. Specify this option if you don\'t want an association to run
    -- immediately after you create it. This parameter isn\'t supported for
    -- rate expressions.
    applyOnlyAtCronInterval :: Prelude.Maybe Prelude.Bool,
    -- | The number of errors that are allowed before the system stops sending
    -- requests to run the association on additional targets. You can specify
    -- either an absolute number of errors, for example 10, or a percentage of
    -- the target set, for example 10%. If you specify 3, for example, the
    -- system stops sending requests when the fourth error is received. If you
    -- specify 0, then the system stops sending requests after the first error
    -- is returned. If you run an association on 50 managed nodes and set
    -- @MaxError@ to 10%, then the system stops sending the request when the
    -- sixth error is received.
    --
    -- Executions that are already running an association when @MaxErrors@ is
    -- reached are allowed to complete, but some of these executions may fail
    -- as well. If you need to ensure that there won\'t be more than max-errors
    -- failed executions, set @MaxConcurrency@ to 1 so that executions proceed
    -- one at a time.
    maxErrors :: Prelude.Maybe Prelude.Text,
    -- | The date on which the association was last run.
    lastExecutionDate :: Prelude.Maybe Core.POSIX,
    -- | The severity level that is assigned to the association.
    complianceSeverity :: Prelude.Maybe AssociationComplianceSeverity,
    -- | The mode for generating association compliance. You can specify @AUTO@
    -- or @MANUAL@. In @AUTO@ mode, the system uses the status of the
    -- association execution to determine the compliance status. If the
    -- association execution runs successfully, then the association is
    -- @COMPLIANT@. If the association execution doesn\'t run successfully, the
    -- association is @NON-COMPLIANT@.
    --
    -- In @MANUAL@ mode, you must specify the @AssociationId@ as a parameter
    -- for the PutComplianceItems API operation. In this case, compliance data
    -- isn\'t managed by State Manager, a capability of Amazon Web Services
    -- Systems Manager. It is managed by your direct call to the
    -- PutComplianceItems API operation.
    --
    -- By default, all associations use @AUTO@ mode.
    syncCompliance :: Prelude.Maybe AssociationSyncCompliance,
    -- | The association ID.
    associationId :: Prelude.Maybe Prelude.Text,
    -- | The document version.
    documentVersion :: Prelude.Maybe Prelude.Text,
    -- | A description of the parameters for a document.
    parameters :: Prelude.Maybe (Core.Sensitive (Prelude.HashMap Prelude.Text [Prelude.Text]))
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'AssociationDescription' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'associationName', 'associationDescription_associationName' - The association name.
--
-- 'name', 'associationDescription_name' - The name of the SSM document.
--
-- 'associationVersion', 'associationDescription_associationVersion' - The association version.
--
-- 'lastSuccessfulExecutionDate', 'associationDescription_lastSuccessfulExecutionDate' - The last date on which the association was successfully run.
--
-- 'targetLocations', 'associationDescription_targetLocations' - The combination of Amazon Web Services Regions and Amazon Web Services
-- accounts where you want to run the association.
--
-- 'date', 'associationDescription_date' - The date when the association was made.
--
-- 'automationTargetParameterName', 'associationDescription_automationTargetParameterName' - Choose the parameter that will define how your automation will branch
-- out. This target is required for associations that use an Automation
-- runbook and target resources by using rate controls. Automation is a
-- capability of Amazon Web Services Systems Manager.
--
-- 'targetMaps', 'associationDescription_targetMaps' - A key-value mapping of document parameters to target resources. Both
-- Targets and TargetMaps can\'t be specified together.
--
-- 'outputLocation', 'associationDescription_outputLocation' - An S3 bucket where you want to store the output details of the request.
--
-- 'status', 'associationDescription_status' - The association status.
--
-- 'targets', 'associationDescription_targets' - The managed nodes targeted by the request.
--
-- 'calendarNames', 'associationDescription_calendarNames' - The names or Amazon Resource Names (ARNs) of the Change Calendar type
-- documents your associations are gated under. The associations only run
-- when that change calendar is open. For more information, see
-- <https://docs.aws.amazon.com/systems-manager/latest/userguide/systems-manager-change-calendar Amazon Web Services Systems Manager Change Calendar>.
--
-- 'scheduleExpression', 'associationDescription_scheduleExpression' - A cron expression that specifies a schedule when the association runs.
--
-- 'scheduleOffset', 'associationDescription_scheduleOffset' - Number of days to wait after the scheduled day to run an association.
--
-- 'instanceId', 'associationDescription_instanceId' - The managed node ID.
--
-- 'overview', 'associationDescription_overview' - Information about the association.
--
-- 'lastUpdateAssociationDate', 'associationDescription_lastUpdateAssociationDate' - The date when the association was last updated.
--
-- 'maxConcurrency', 'associationDescription_maxConcurrency' - The maximum number of targets allowed to run the association at the same
-- time. You can specify a number, for example 10, or a percentage of the
-- target set, for example 10%. The default value is 100%, which means all
-- targets run the association at the same time.
--
-- If a new managed node starts and attempts to run an association while
-- Systems Manager is running @MaxConcurrency@ associations, the
-- association is allowed to run. During the next association interval, the
-- new managed node will process its association within the limit specified
-- for @MaxConcurrency@.
--
-- 'applyOnlyAtCronInterval', 'associationDescription_applyOnlyAtCronInterval' - By default, when you create a new associations, the system runs it
-- immediately after it is created and then according to the schedule you
-- specified. Specify this option if you don\'t want an association to run
-- immediately after you create it. This parameter isn\'t supported for
-- rate expressions.
--
-- 'maxErrors', 'associationDescription_maxErrors' - The number of errors that are allowed before the system stops sending
-- requests to run the association on additional targets. You can specify
-- either an absolute number of errors, for example 10, or a percentage of
-- the target set, for example 10%. If you specify 3, for example, the
-- system stops sending requests when the fourth error is received. If you
-- specify 0, then the system stops sending requests after the first error
-- is returned. If you run an association on 50 managed nodes and set
-- @MaxError@ to 10%, then the system stops sending the request when the
-- sixth error is received.
--
-- Executions that are already running an association when @MaxErrors@ is
-- reached are allowed to complete, but some of these executions may fail
-- as well. If you need to ensure that there won\'t be more than max-errors
-- failed executions, set @MaxConcurrency@ to 1 so that executions proceed
-- one at a time.
--
-- 'lastExecutionDate', 'associationDescription_lastExecutionDate' - The date on which the association was last run.
--
-- 'complianceSeverity', 'associationDescription_complianceSeverity' - The severity level that is assigned to the association.
--
-- 'syncCompliance', 'associationDescription_syncCompliance' - The mode for generating association compliance. You can specify @AUTO@
-- or @MANUAL@. In @AUTO@ mode, the system uses the status of the
-- association execution to determine the compliance status. If the
-- association execution runs successfully, then the association is
-- @COMPLIANT@. If the association execution doesn\'t run successfully, the
-- association is @NON-COMPLIANT@.
--
-- In @MANUAL@ mode, you must specify the @AssociationId@ as a parameter
-- for the PutComplianceItems API operation. In this case, compliance data
-- isn\'t managed by State Manager, a capability of Amazon Web Services
-- Systems Manager. It is managed by your direct call to the
-- PutComplianceItems API operation.
--
-- By default, all associations use @AUTO@ mode.
--
-- 'associationId', 'associationDescription_associationId' - The association ID.
--
-- 'documentVersion', 'associationDescription_documentVersion' - The document version.
--
-- 'parameters', 'associationDescription_parameters' - A description of the parameters for a document.
newAssociationDescription ::
  AssociationDescription
newAssociationDescription =
  AssociationDescription'
    { associationName =
        Prelude.Nothing,
      name = Prelude.Nothing,
      associationVersion = Prelude.Nothing,
      lastSuccessfulExecutionDate = Prelude.Nothing,
      targetLocations = Prelude.Nothing,
      date = Prelude.Nothing,
      automationTargetParameterName = Prelude.Nothing,
      targetMaps = Prelude.Nothing,
      outputLocation = Prelude.Nothing,
      status = Prelude.Nothing,
      targets = Prelude.Nothing,
      calendarNames = Prelude.Nothing,
      scheduleExpression = Prelude.Nothing,
      scheduleOffset = Prelude.Nothing,
      instanceId = Prelude.Nothing,
      overview = Prelude.Nothing,
      lastUpdateAssociationDate = Prelude.Nothing,
      maxConcurrency = Prelude.Nothing,
      applyOnlyAtCronInterval = Prelude.Nothing,
      maxErrors = Prelude.Nothing,
      lastExecutionDate = Prelude.Nothing,
      complianceSeverity = Prelude.Nothing,
      syncCompliance = Prelude.Nothing,
      associationId = Prelude.Nothing,
      documentVersion = Prelude.Nothing,
      parameters = Prelude.Nothing
    }

-- | The association name.
associationDescription_associationName :: Lens.Lens' AssociationDescription (Prelude.Maybe Prelude.Text)
associationDescription_associationName = Lens.lens (\AssociationDescription' {associationName} -> associationName) (\s@AssociationDescription' {} a -> s {associationName = a} :: AssociationDescription)

-- | The name of the SSM document.
associationDescription_name :: Lens.Lens' AssociationDescription (Prelude.Maybe Prelude.Text)
associationDescription_name = Lens.lens (\AssociationDescription' {name} -> name) (\s@AssociationDescription' {} a -> s {name = a} :: AssociationDescription)

-- | The association version.
associationDescription_associationVersion :: Lens.Lens' AssociationDescription (Prelude.Maybe Prelude.Text)
associationDescription_associationVersion = Lens.lens (\AssociationDescription' {associationVersion} -> associationVersion) (\s@AssociationDescription' {} a -> s {associationVersion = a} :: AssociationDescription)

-- | The last date on which the association was successfully run.
associationDescription_lastSuccessfulExecutionDate :: Lens.Lens' AssociationDescription (Prelude.Maybe Prelude.UTCTime)
associationDescription_lastSuccessfulExecutionDate = Lens.lens (\AssociationDescription' {lastSuccessfulExecutionDate} -> lastSuccessfulExecutionDate) (\s@AssociationDescription' {} a -> s {lastSuccessfulExecutionDate = a} :: AssociationDescription) Prelude.. Lens.mapping Core._Time

-- | The combination of Amazon Web Services Regions and Amazon Web Services
-- accounts where you want to run the association.
associationDescription_targetLocations :: Lens.Lens' AssociationDescription (Prelude.Maybe (Prelude.NonEmpty TargetLocation))
associationDescription_targetLocations = Lens.lens (\AssociationDescription' {targetLocations} -> targetLocations) (\s@AssociationDescription' {} a -> s {targetLocations = a} :: AssociationDescription) Prelude.. Lens.mapping Lens.coerced

-- | The date when the association was made.
associationDescription_date :: Lens.Lens' AssociationDescription (Prelude.Maybe Prelude.UTCTime)
associationDescription_date = Lens.lens (\AssociationDescription' {date} -> date) (\s@AssociationDescription' {} a -> s {date = a} :: AssociationDescription) Prelude.. Lens.mapping Core._Time

-- | Choose the parameter that will define how your automation will branch
-- out. This target is required for associations that use an Automation
-- runbook and target resources by using rate controls. Automation is a
-- capability of Amazon Web Services Systems Manager.
associationDescription_automationTargetParameterName :: Lens.Lens' AssociationDescription (Prelude.Maybe Prelude.Text)
associationDescription_automationTargetParameterName = Lens.lens (\AssociationDescription' {automationTargetParameterName} -> automationTargetParameterName) (\s@AssociationDescription' {} a -> s {automationTargetParameterName = a} :: AssociationDescription)

-- | A key-value mapping of document parameters to target resources. Both
-- Targets and TargetMaps can\'t be specified together.
associationDescription_targetMaps :: Lens.Lens' AssociationDescription (Prelude.Maybe [Prelude.HashMap Prelude.Text [Prelude.Text]])
associationDescription_targetMaps = Lens.lens (\AssociationDescription' {targetMaps} -> targetMaps) (\s@AssociationDescription' {} a -> s {targetMaps = a} :: AssociationDescription) Prelude.. Lens.mapping Lens.coerced

-- | An S3 bucket where you want to store the output details of the request.
associationDescription_outputLocation :: Lens.Lens' AssociationDescription (Prelude.Maybe InstanceAssociationOutputLocation)
associationDescription_outputLocation = Lens.lens (\AssociationDescription' {outputLocation} -> outputLocation) (\s@AssociationDescription' {} a -> s {outputLocation = a} :: AssociationDescription)

-- | The association status.
associationDescription_status :: Lens.Lens' AssociationDescription (Prelude.Maybe AssociationStatus)
associationDescription_status = Lens.lens (\AssociationDescription' {status} -> status) (\s@AssociationDescription' {} a -> s {status = a} :: AssociationDescription)

-- | The managed nodes targeted by the request.
associationDescription_targets :: Lens.Lens' AssociationDescription (Prelude.Maybe [Target])
associationDescription_targets = Lens.lens (\AssociationDescription' {targets} -> targets) (\s@AssociationDescription' {} a -> s {targets = a} :: AssociationDescription) Prelude.. Lens.mapping Lens.coerced

-- | The names or Amazon Resource Names (ARNs) of the Change Calendar type
-- documents your associations are gated under. The associations only run
-- when that change calendar is open. For more information, see
-- <https://docs.aws.amazon.com/systems-manager/latest/userguide/systems-manager-change-calendar Amazon Web Services Systems Manager Change Calendar>.
associationDescription_calendarNames :: Lens.Lens' AssociationDescription (Prelude.Maybe [Prelude.Text])
associationDescription_calendarNames = Lens.lens (\AssociationDescription' {calendarNames} -> calendarNames) (\s@AssociationDescription' {} a -> s {calendarNames = a} :: AssociationDescription) Prelude.. Lens.mapping Lens.coerced

-- | A cron expression that specifies a schedule when the association runs.
associationDescription_scheduleExpression :: Lens.Lens' AssociationDescription (Prelude.Maybe Prelude.Text)
associationDescription_scheduleExpression = Lens.lens (\AssociationDescription' {scheduleExpression} -> scheduleExpression) (\s@AssociationDescription' {} a -> s {scheduleExpression = a} :: AssociationDescription)

-- | Number of days to wait after the scheduled day to run an association.
associationDescription_scheduleOffset :: Lens.Lens' AssociationDescription (Prelude.Maybe Prelude.Natural)
associationDescription_scheduleOffset = Lens.lens (\AssociationDescription' {scheduleOffset} -> scheduleOffset) (\s@AssociationDescription' {} a -> s {scheduleOffset = a} :: AssociationDescription)

-- | The managed node ID.
associationDescription_instanceId :: Lens.Lens' AssociationDescription (Prelude.Maybe Prelude.Text)
associationDescription_instanceId = Lens.lens (\AssociationDescription' {instanceId} -> instanceId) (\s@AssociationDescription' {} a -> s {instanceId = a} :: AssociationDescription)

-- | Information about the association.
associationDescription_overview :: Lens.Lens' AssociationDescription (Prelude.Maybe AssociationOverview)
associationDescription_overview = Lens.lens (\AssociationDescription' {overview} -> overview) (\s@AssociationDescription' {} a -> s {overview = a} :: AssociationDescription)

-- | The date when the association was last updated.
associationDescription_lastUpdateAssociationDate :: Lens.Lens' AssociationDescription (Prelude.Maybe Prelude.UTCTime)
associationDescription_lastUpdateAssociationDate = Lens.lens (\AssociationDescription' {lastUpdateAssociationDate} -> lastUpdateAssociationDate) (\s@AssociationDescription' {} a -> s {lastUpdateAssociationDate = a} :: AssociationDescription) Prelude.. Lens.mapping Core._Time

-- | The maximum number of targets allowed to run the association at the same
-- time. You can specify a number, for example 10, or a percentage of the
-- target set, for example 10%. The default value is 100%, which means all
-- targets run the association at the same time.
--
-- If a new managed node starts and attempts to run an association while
-- Systems Manager is running @MaxConcurrency@ associations, the
-- association is allowed to run. During the next association interval, the
-- new managed node will process its association within the limit specified
-- for @MaxConcurrency@.
associationDescription_maxConcurrency :: Lens.Lens' AssociationDescription (Prelude.Maybe Prelude.Text)
associationDescription_maxConcurrency = Lens.lens (\AssociationDescription' {maxConcurrency} -> maxConcurrency) (\s@AssociationDescription' {} a -> s {maxConcurrency = a} :: AssociationDescription)

-- | By default, when you create a new associations, the system runs it
-- immediately after it is created and then according to the schedule you
-- specified. Specify this option if you don\'t want an association to run
-- immediately after you create it. This parameter isn\'t supported for
-- rate expressions.
associationDescription_applyOnlyAtCronInterval :: Lens.Lens' AssociationDescription (Prelude.Maybe Prelude.Bool)
associationDescription_applyOnlyAtCronInterval = Lens.lens (\AssociationDescription' {applyOnlyAtCronInterval} -> applyOnlyAtCronInterval) (\s@AssociationDescription' {} a -> s {applyOnlyAtCronInterval = a} :: AssociationDescription)

-- | The number of errors that are allowed before the system stops sending
-- requests to run the association on additional targets. You can specify
-- either an absolute number of errors, for example 10, or a percentage of
-- the target set, for example 10%. If you specify 3, for example, the
-- system stops sending requests when the fourth error is received. If you
-- specify 0, then the system stops sending requests after the first error
-- is returned. If you run an association on 50 managed nodes and set
-- @MaxError@ to 10%, then the system stops sending the request when the
-- sixth error is received.
--
-- Executions that are already running an association when @MaxErrors@ is
-- reached are allowed to complete, but some of these executions may fail
-- as well. If you need to ensure that there won\'t be more than max-errors
-- failed executions, set @MaxConcurrency@ to 1 so that executions proceed
-- one at a time.
associationDescription_maxErrors :: Lens.Lens' AssociationDescription (Prelude.Maybe Prelude.Text)
associationDescription_maxErrors = Lens.lens (\AssociationDescription' {maxErrors} -> maxErrors) (\s@AssociationDescription' {} a -> s {maxErrors = a} :: AssociationDescription)

-- | The date on which the association was last run.
associationDescription_lastExecutionDate :: Lens.Lens' AssociationDescription (Prelude.Maybe Prelude.UTCTime)
associationDescription_lastExecutionDate = Lens.lens (\AssociationDescription' {lastExecutionDate} -> lastExecutionDate) (\s@AssociationDescription' {} a -> s {lastExecutionDate = a} :: AssociationDescription) Prelude.. Lens.mapping Core._Time

-- | The severity level that is assigned to the association.
associationDescription_complianceSeverity :: Lens.Lens' AssociationDescription (Prelude.Maybe AssociationComplianceSeverity)
associationDescription_complianceSeverity = Lens.lens (\AssociationDescription' {complianceSeverity} -> complianceSeverity) (\s@AssociationDescription' {} a -> s {complianceSeverity = a} :: AssociationDescription)

-- | The mode for generating association compliance. You can specify @AUTO@
-- or @MANUAL@. In @AUTO@ mode, the system uses the status of the
-- association execution to determine the compliance status. If the
-- association execution runs successfully, then the association is
-- @COMPLIANT@. If the association execution doesn\'t run successfully, the
-- association is @NON-COMPLIANT@.
--
-- In @MANUAL@ mode, you must specify the @AssociationId@ as a parameter
-- for the PutComplianceItems API operation. In this case, compliance data
-- isn\'t managed by State Manager, a capability of Amazon Web Services
-- Systems Manager. It is managed by your direct call to the
-- PutComplianceItems API operation.
--
-- By default, all associations use @AUTO@ mode.
associationDescription_syncCompliance :: Lens.Lens' AssociationDescription (Prelude.Maybe AssociationSyncCompliance)
associationDescription_syncCompliance = Lens.lens (\AssociationDescription' {syncCompliance} -> syncCompliance) (\s@AssociationDescription' {} a -> s {syncCompliance = a} :: AssociationDescription)

-- | The association ID.
associationDescription_associationId :: Lens.Lens' AssociationDescription (Prelude.Maybe Prelude.Text)
associationDescription_associationId = Lens.lens (\AssociationDescription' {associationId} -> associationId) (\s@AssociationDescription' {} a -> s {associationId = a} :: AssociationDescription)

-- | The document version.
associationDescription_documentVersion :: Lens.Lens' AssociationDescription (Prelude.Maybe Prelude.Text)
associationDescription_documentVersion = Lens.lens (\AssociationDescription' {documentVersion} -> documentVersion) (\s@AssociationDescription' {} a -> s {documentVersion = a} :: AssociationDescription)

-- | A description of the parameters for a document.
associationDescription_parameters :: Lens.Lens' AssociationDescription (Prelude.Maybe (Prelude.HashMap Prelude.Text [Prelude.Text]))
associationDescription_parameters = Lens.lens (\AssociationDescription' {parameters} -> parameters) (\s@AssociationDescription' {} a -> s {parameters = a} :: AssociationDescription) Prelude.. Lens.mapping (Core._Sensitive Prelude.. Lens.coerced)

instance Core.FromJSON AssociationDescription where
  parseJSON =
    Core.withObject
      "AssociationDescription"
      ( \x ->
          AssociationDescription'
            Prelude.<$> (x Core..:? "AssociationName")
            Prelude.<*> (x Core..:? "Name")
            Prelude.<*> (x Core..:? "AssociationVersion")
            Prelude.<*> (x Core..:? "LastSuccessfulExecutionDate")
            Prelude.<*> (x Core..:? "TargetLocations")
            Prelude.<*> (x Core..:? "Date")
            Prelude.<*> (x Core..:? "AutomationTargetParameterName")
            Prelude.<*> (x Core..:? "TargetMaps" Core..!= Prelude.mempty)
            Prelude.<*> (x Core..:? "OutputLocation")
            Prelude.<*> (x Core..:? "Status")
            Prelude.<*> (x Core..:? "Targets" Core..!= Prelude.mempty)
            Prelude.<*> (x Core..:? "CalendarNames" Core..!= Prelude.mempty)
            Prelude.<*> (x Core..:? "ScheduleExpression")
            Prelude.<*> (x Core..:? "ScheduleOffset")
            Prelude.<*> (x Core..:? "InstanceId")
            Prelude.<*> (x Core..:? "Overview")
            Prelude.<*> (x Core..:? "LastUpdateAssociationDate")
            Prelude.<*> (x Core..:? "MaxConcurrency")
            Prelude.<*> (x Core..:? "ApplyOnlyAtCronInterval")
            Prelude.<*> (x Core..:? "MaxErrors")
            Prelude.<*> (x Core..:? "LastExecutionDate")
            Prelude.<*> (x Core..:? "ComplianceSeverity")
            Prelude.<*> (x Core..:? "SyncCompliance")
            Prelude.<*> (x Core..:? "AssociationId")
            Prelude.<*> (x Core..:? "DocumentVersion")
            Prelude.<*> (x Core..:? "Parameters" Core..!= Prelude.mempty)
      )

instance Prelude.Hashable AssociationDescription where
  hashWithSalt _salt AssociationDescription' {..} =
    _salt `Prelude.hashWithSalt` associationName
      `Prelude.hashWithSalt` name
      `Prelude.hashWithSalt` associationVersion
      `Prelude.hashWithSalt` lastSuccessfulExecutionDate
      `Prelude.hashWithSalt` targetLocations
      `Prelude.hashWithSalt` date
      `Prelude.hashWithSalt` automationTargetParameterName
      `Prelude.hashWithSalt` targetMaps
      `Prelude.hashWithSalt` outputLocation
      `Prelude.hashWithSalt` status
      `Prelude.hashWithSalt` targets
      `Prelude.hashWithSalt` calendarNames
      `Prelude.hashWithSalt` scheduleExpression
      `Prelude.hashWithSalt` scheduleOffset
      `Prelude.hashWithSalt` instanceId
      `Prelude.hashWithSalt` overview
      `Prelude.hashWithSalt` lastUpdateAssociationDate
      `Prelude.hashWithSalt` maxConcurrency
      `Prelude.hashWithSalt` applyOnlyAtCronInterval
      `Prelude.hashWithSalt` maxErrors
      `Prelude.hashWithSalt` lastExecutionDate
      `Prelude.hashWithSalt` complianceSeverity
      `Prelude.hashWithSalt` syncCompliance
      `Prelude.hashWithSalt` associationId
      `Prelude.hashWithSalt` documentVersion
      `Prelude.hashWithSalt` parameters

instance Prelude.NFData AssociationDescription where
  rnf AssociationDescription' {..} =
    Prelude.rnf associationName
      `Prelude.seq` Prelude.rnf name
      `Prelude.seq` Prelude.rnf associationVersion
      `Prelude.seq` Prelude.rnf lastSuccessfulExecutionDate
      `Prelude.seq` Prelude.rnf targetLocations
      `Prelude.seq` Prelude.rnf date
      `Prelude.seq` Prelude.rnf automationTargetParameterName
      `Prelude.seq` Prelude.rnf targetMaps
      `Prelude.seq` Prelude.rnf outputLocation
      `Prelude.seq` Prelude.rnf status
      `Prelude.seq` Prelude.rnf targets
      `Prelude.seq` Prelude.rnf calendarNames
      `Prelude.seq` Prelude.rnf scheduleExpression
      `Prelude.seq` Prelude.rnf scheduleOffset
      `Prelude.seq` Prelude.rnf instanceId
      `Prelude.seq` Prelude.rnf overview
      `Prelude.seq` Prelude.rnf
        lastUpdateAssociationDate
      `Prelude.seq` Prelude.rnf maxConcurrency
      `Prelude.seq` Prelude.rnf
        applyOnlyAtCronInterval
      `Prelude.seq` Prelude.rnf maxErrors
      `Prelude.seq` Prelude.rnf
        lastExecutionDate
      `Prelude.seq` Prelude.rnf
        complianceSeverity
      `Prelude.seq` Prelude.rnf
        syncCompliance
      `Prelude.seq` Prelude.rnf
        associationId
      `Prelude.seq` Prelude.rnf
        documentVersion
      `Prelude.seq` Prelude.rnf
        parameters
