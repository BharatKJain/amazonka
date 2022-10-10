{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Amazonka.IoT.Lens
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.IoT.Lens
  ( -- * Operations

    -- ** AcceptCertificateTransfer
    acceptCertificateTransfer_setAsActive,
    acceptCertificateTransfer_certificateId,

    -- ** AddThingToBillingGroup
    addThingToBillingGroup_billingGroupName,
    addThingToBillingGroup_thingName,
    addThingToBillingGroup_billingGroupArn,
    addThingToBillingGroup_thingArn,
    addThingToBillingGroupResponse_httpStatus,

    -- ** AddThingToThingGroup
    addThingToThingGroup_overrideDynamicGroups,
    addThingToThingGroup_thingName,
    addThingToThingGroup_thingArn,
    addThingToThingGroup_thingGroupName,
    addThingToThingGroup_thingGroupArn,
    addThingToThingGroupResponse_httpStatus,

    -- ** AssociateTargetsWithJob
    associateTargetsWithJob_comment,
    associateTargetsWithJob_namespaceId,
    associateTargetsWithJob_targets,
    associateTargetsWithJob_jobId,
    associateTargetsWithJobResponse_jobId,
    associateTargetsWithJobResponse_description,
    associateTargetsWithJobResponse_jobArn,
    associateTargetsWithJobResponse_httpStatus,

    -- ** AttachPolicy
    attachPolicy_policyName,
    attachPolicy_target,

    -- ** AttachSecurityProfile
    attachSecurityProfile_securityProfileName,
    attachSecurityProfile_securityProfileTargetArn,
    attachSecurityProfileResponse_httpStatus,

    -- ** AttachThingPrincipal
    attachThingPrincipal_thingName,
    attachThingPrincipal_principal,
    attachThingPrincipalResponse_httpStatus,

    -- ** CancelAuditMitigationActionsTask
    cancelAuditMitigationActionsTask_taskId,
    cancelAuditMitigationActionsTaskResponse_httpStatus,

    -- ** CancelAuditTask
    cancelAuditTask_taskId,
    cancelAuditTaskResponse_httpStatus,

    -- ** CancelCertificateTransfer
    cancelCertificateTransfer_certificateId,

    -- ** CancelDetectMitigationActionsTask
    cancelDetectMitigationActionsTask_taskId,
    cancelDetectMitigationActionsTaskResponse_httpStatus,

    -- ** CancelJob
    cancelJob_comment,
    cancelJob_reasonCode,
    cancelJob_force,
    cancelJob_jobId,
    cancelJobResponse_jobId,
    cancelJobResponse_description,
    cancelJobResponse_jobArn,
    cancelJobResponse_httpStatus,

    -- ** CancelJobExecution
    cancelJobExecution_statusDetails,
    cancelJobExecution_force,
    cancelJobExecution_expectedVersion,
    cancelJobExecution_jobId,
    cancelJobExecution_thingName,

    -- ** ClearDefaultAuthorizer
    clearDefaultAuthorizerResponse_httpStatus,

    -- ** ConfirmTopicRuleDestination
    confirmTopicRuleDestination_confirmationToken,
    confirmTopicRuleDestinationResponse_httpStatus,

    -- ** CreateAuditSuppression
    createAuditSuppression_description,
    createAuditSuppression_expirationDate,
    createAuditSuppression_suppressIndefinitely,
    createAuditSuppression_checkName,
    createAuditSuppression_resourceIdentifier,
    createAuditSuppression_clientRequestToken,
    createAuditSuppressionResponse_httpStatus,

    -- ** CreateAuthorizer
    createAuthorizer_tags,
    createAuthorizer_tokenKeyName,
    createAuthorizer_status,
    createAuthorizer_signingDisabled,
    createAuthorizer_tokenSigningPublicKeys,
    createAuthorizer_enableCachingForHttp,
    createAuthorizer_authorizerName,
    createAuthorizer_authorizerFunctionArn,
    createAuthorizerResponse_authorizerArn,
    createAuthorizerResponse_authorizerName,
    createAuthorizerResponse_httpStatus,

    -- ** CreateBillingGroup
    createBillingGroup_tags,
    createBillingGroup_billingGroupProperties,
    createBillingGroup_billingGroupName,
    createBillingGroupResponse_billingGroupName,
    createBillingGroupResponse_billingGroupArn,
    createBillingGroupResponse_billingGroupId,
    createBillingGroupResponse_httpStatus,

    -- ** CreateCertificateFromCsr
    createCertificateFromCsr_setAsActive,
    createCertificateFromCsr_certificateSigningRequest,
    createCertificateFromCsrResponse_certificateArn,
    createCertificateFromCsrResponse_certificateId,
    createCertificateFromCsrResponse_certificatePem,
    createCertificateFromCsrResponse_httpStatus,

    -- ** CreateCustomMetric
    createCustomMetric_tags,
    createCustomMetric_displayName,
    createCustomMetric_metricName,
    createCustomMetric_metricType,
    createCustomMetric_clientRequestToken,
    createCustomMetricResponse_metricArn,
    createCustomMetricResponse_metricName,
    createCustomMetricResponse_httpStatus,

    -- ** CreateDimension
    createDimension_tags,
    createDimension_name,
    createDimension_type,
    createDimension_stringValues,
    createDimension_clientRequestToken,
    createDimensionResponse_name,
    createDimensionResponse_arn,
    createDimensionResponse_httpStatus,

    -- ** CreateDomainConfiguration
    createDomainConfiguration_tags,
    createDomainConfiguration_serverCertificateArns,
    createDomainConfiguration_domainName,
    createDomainConfiguration_authorizerConfig,
    createDomainConfiguration_serviceType,
    createDomainConfiguration_validationCertificateArn,
    createDomainConfiguration_domainConfigurationName,
    createDomainConfigurationResponse_domainConfigurationArn,
    createDomainConfigurationResponse_domainConfigurationName,
    createDomainConfigurationResponse_httpStatus,

    -- ** CreateDynamicThingGroup
    createDynamicThingGroup_tags,
    createDynamicThingGroup_thingGroupProperties,
    createDynamicThingGroup_indexName,
    createDynamicThingGroup_queryVersion,
    createDynamicThingGroup_thingGroupName,
    createDynamicThingGroup_queryString,
    createDynamicThingGroupResponse_thingGroupName,
    createDynamicThingGroupResponse_indexName,
    createDynamicThingGroupResponse_queryVersion,
    createDynamicThingGroupResponse_thingGroupArn,
    createDynamicThingGroupResponse_queryString,
    createDynamicThingGroupResponse_thingGroupId,
    createDynamicThingGroupResponse_httpStatus,

    -- ** CreateFleetMetric
    createFleetMetric_tags,
    createFleetMetric_description,
    createFleetMetric_indexName,
    createFleetMetric_queryVersion,
    createFleetMetric_unit,
    createFleetMetric_metricName,
    createFleetMetric_queryString,
    createFleetMetric_aggregationType,
    createFleetMetric_period,
    createFleetMetric_aggregationField,
    createFleetMetricResponse_metricArn,
    createFleetMetricResponse_metricName,
    createFleetMetricResponse_httpStatus,

    -- ** CreateJob
    createJob_tags,
    createJob_jobExecutionsRolloutConfig,
    createJob_documentSource,
    createJob_abortConfig,
    createJob_documentParameters,
    createJob_jobTemplateArn,
    createJob_targetSelection,
    createJob_description,
    createJob_presignedUrlConfig,
    createJob_document,
    createJob_namespaceId,
    createJob_jobExecutionsRetryConfig,
    createJob_timeoutConfig,
    createJob_jobId,
    createJob_targets,
    createJobResponse_jobId,
    createJobResponse_description,
    createJobResponse_jobArn,
    createJobResponse_httpStatus,

    -- ** CreateJobTemplate
    createJobTemplate_tags,
    createJobTemplate_jobExecutionsRolloutConfig,
    createJobTemplate_documentSource,
    createJobTemplate_abortConfig,
    createJobTemplate_presignedUrlConfig,
    createJobTemplate_document,
    createJobTemplate_jobArn,
    createJobTemplate_jobExecutionsRetryConfig,
    createJobTemplate_timeoutConfig,
    createJobTemplate_jobTemplateId,
    createJobTemplate_description,
    createJobTemplateResponse_jobTemplateArn,
    createJobTemplateResponse_jobTemplateId,
    createJobTemplateResponse_httpStatus,

    -- ** CreateKeysAndCertificate
    createKeysAndCertificate_setAsActive,
    createKeysAndCertificateResponse_keyPair,
    createKeysAndCertificateResponse_certificateArn,
    createKeysAndCertificateResponse_certificateId,
    createKeysAndCertificateResponse_certificatePem,
    createKeysAndCertificateResponse_httpStatus,

    -- ** CreateMitigationAction
    createMitigationAction_tags,
    createMitigationAction_actionName,
    createMitigationAction_roleArn,
    createMitigationAction_actionParams,
    createMitigationActionResponse_actionId,
    createMitigationActionResponse_actionArn,
    createMitigationActionResponse_httpStatus,

    -- ** CreateOTAUpdate
    createOTAUpdate_tags,
    createOTAUpdate_awsJobExecutionsRolloutConfig,
    createOTAUpdate_targetSelection,
    createOTAUpdate_protocols,
    createOTAUpdate_description,
    createOTAUpdate_additionalParameters,
    createOTAUpdate_awsJobAbortConfig,
    createOTAUpdate_awsJobTimeoutConfig,
    createOTAUpdate_awsJobPresignedUrlConfig,
    createOTAUpdate_otaUpdateId,
    createOTAUpdate_targets,
    createOTAUpdate_files,
    createOTAUpdate_roleArn,
    createOTAUpdateResponse_awsIotJobId,
    createOTAUpdateResponse_awsIotJobArn,
    createOTAUpdateResponse_otaUpdateStatus,
    createOTAUpdateResponse_otaUpdateArn,
    createOTAUpdateResponse_otaUpdateId,
    createOTAUpdateResponse_httpStatus,

    -- ** CreatePolicy
    createPolicy_tags,
    createPolicy_policyName,
    createPolicy_policyDocument,
    createPolicyResponse_policyName,
    createPolicyResponse_policyVersionId,
    createPolicyResponse_policyDocument,
    createPolicyResponse_policyArn,
    createPolicyResponse_httpStatus,

    -- ** CreatePolicyVersion
    createPolicyVersion_setAsDefault,
    createPolicyVersion_policyName,
    createPolicyVersion_policyDocument,
    createPolicyVersionResponse_isDefaultVersion,
    createPolicyVersionResponse_policyVersionId,
    createPolicyVersionResponse_policyDocument,
    createPolicyVersionResponse_policyArn,
    createPolicyVersionResponse_httpStatus,

    -- ** CreateProvisioningClaim
    createProvisioningClaim_templateName,
    createProvisioningClaimResponse_expiration,
    createProvisioningClaimResponse_keyPair,
    createProvisioningClaimResponse_certificateId,
    createProvisioningClaimResponse_certificatePem,
    createProvisioningClaimResponse_httpStatus,

    -- ** CreateProvisioningTemplate
    createProvisioningTemplate_tags,
    createProvisioningTemplate_type,
    createProvisioningTemplate_preProvisioningHook,
    createProvisioningTemplate_description,
    createProvisioningTemplate_enabled,
    createProvisioningTemplate_templateName,
    createProvisioningTemplate_templateBody,
    createProvisioningTemplate_provisioningRoleArn,
    createProvisioningTemplateResponse_templateName,
    createProvisioningTemplateResponse_defaultVersionId,
    createProvisioningTemplateResponse_templateArn,
    createProvisioningTemplateResponse_httpStatus,

    -- ** CreateProvisioningTemplateVersion
    createProvisioningTemplateVersion_setAsDefault,
    createProvisioningTemplateVersion_templateName,
    createProvisioningTemplateVersion_templateBody,
    createProvisioningTemplateVersionResponse_isDefaultVersion,
    createProvisioningTemplateVersionResponse_templateName,
    createProvisioningTemplateVersionResponse_templateArn,
    createProvisioningTemplateVersionResponse_versionId,
    createProvisioningTemplateVersionResponse_httpStatus,

    -- ** CreateRoleAlias
    createRoleAlias_tags,
    createRoleAlias_credentialDurationSeconds,
    createRoleAlias_roleAlias,
    createRoleAlias_roleArn,
    createRoleAliasResponse_roleAlias,
    createRoleAliasResponse_roleAliasArn,
    createRoleAliasResponse_httpStatus,

    -- ** CreateScheduledAudit
    createScheduledAudit_tags,
    createScheduledAudit_dayOfWeek,
    createScheduledAudit_dayOfMonth,
    createScheduledAudit_frequency,
    createScheduledAudit_targetCheckNames,
    createScheduledAudit_scheduledAuditName,
    createScheduledAuditResponse_scheduledAuditArn,
    createScheduledAuditResponse_httpStatus,

    -- ** CreateSecurityProfile
    createSecurityProfile_tags,
    createSecurityProfile_alertTargets,
    createSecurityProfile_securityProfileDescription,
    createSecurityProfile_additionalMetricsToRetainV2,
    createSecurityProfile_additionalMetricsToRetain,
    createSecurityProfile_behaviors,
    createSecurityProfile_securityProfileName,
    createSecurityProfileResponse_securityProfileName,
    createSecurityProfileResponse_securityProfileArn,
    createSecurityProfileResponse_httpStatus,

    -- ** CreateStream
    createStream_tags,
    createStream_description,
    createStream_streamId,
    createStream_files,
    createStream_roleArn,
    createStreamResponse_streamId,
    createStreamResponse_description,
    createStreamResponse_streamVersion,
    createStreamResponse_streamArn,
    createStreamResponse_httpStatus,

    -- ** CreateThing
    createThing_billingGroupName,
    createThing_thingTypeName,
    createThing_attributePayload,
    createThing_thingName,
    createThingResponse_thingName,
    createThingResponse_thingId,
    createThingResponse_thingArn,
    createThingResponse_httpStatus,

    -- ** CreateThingGroup
    createThingGroup_tags,
    createThingGroup_thingGroupProperties,
    createThingGroup_parentGroupName,
    createThingGroup_thingGroupName,
    createThingGroupResponse_thingGroupName,
    createThingGroupResponse_thingGroupArn,
    createThingGroupResponse_thingGroupId,
    createThingGroupResponse_httpStatus,

    -- ** CreateThingType
    createThingType_tags,
    createThingType_thingTypeProperties,
    createThingType_thingTypeName,
    createThingTypeResponse_thingTypeId,
    createThingTypeResponse_thingTypeName,
    createThingTypeResponse_thingTypeArn,
    createThingTypeResponse_httpStatus,

    -- ** CreateTopicRule
    createTopicRule_tags,
    createTopicRule_ruleName,
    createTopicRule_topicRulePayload,

    -- ** CreateTopicRuleDestination
    createTopicRuleDestination_destinationConfiguration,
    createTopicRuleDestinationResponse_topicRuleDestination,
    createTopicRuleDestinationResponse_httpStatus,

    -- ** DeleteAccountAuditConfiguration
    deleteAccountAuditConfiguration_deleteScheduledAudits,
    deleteAccountAuditConfigurationResponse_httpStatus,

    -- ** DeleteAuditSuppression
    deleteAuditSuppression_checkName,
    deleteAuditSuppression_resourceIdentifier,
    deleteAuditSuppressionResponse_httpStatus,

    -- ** DeleteAuthorizer
    deleteAuthorizer_authorizerName,
    deleteAuthorizerResponse_httpStatus,

    -- ** DeleteBillingGroup
    deleteBillingGroup_expectedVersion,
    deleteBillingGroup_billingGroupName,
    deleteBillingGroupResponse_httpStatus,

    -- ** DeleteCACertificate
    deleteCACertificate_certificateId,
    deleteCACertificateResponse_httpStatus,

    -- ** DeleteCertificate
    deleteCertificate_forceDelete,
    deleteCertificate_certificateId,

    -- ** DeleteCustomMetric
    deleteCustomMetric_metricName,
    deleteCustomMetricResponse_httpStatus,

    -- ** DeleteDimension
    deleteDimension_name,
    deleteDimensionResponse_httpStatus,

    -- ** DeleteDomainConfiguration
    deleteDomainConfiguration_domainConfigurationName,
    deleteDomainConfigurationResponse_httpStatus,

    -- ** DeleteDynamicThingGroup
    deleteDynamicThingGroup_expectedVersion,
    deleteDynamicThingGroup_thingGroupName,
    deleteDynamicThingGroupResponse_httpStatus,

    -- ** DeleteFleetMetric
    deleteFleetMetric_expectedVersion,
    deleteFleetMetric_metricName,

    -- ** DeleteJob
    deleteJob_namespaceId,
    deleteJob_force,
    deleteJob_jobId,

    -- ** DeleteJobExecution
    deleteJobExecution_namespaceId,
    deleteJobExecution_force,
    deleteJobExecution_jobId,
    deleteJobExecution_thingName,
    deleteJobExecution_executionNumber,

    -- ** DeleteJobTemplate
    deleteJobTemplate_jobTemplateId,

    -- ** DeleteMitigationAction
    deleteMitigationAction_actionName,
    deleteMitigationActionResponse_httpStatus,

    -- ** DeleteOTAUpdate
    deleteOTAUpdate_forceDeleteAWSJob,
    deleteOTAUpdate_deleteStream,
    deleteOTAUpdate_otaUpdateId,
    deleteOTAUpdateResponse_httpStatus,

    -- ** DeletePolicy
    deletePolicy_policyName,

    -- ** DeletePolicyVersion
    deletePolicyVersion_policyName,
    deletePolicyVersion_policyVersionId,

    -- ** DeleteProvisioningTemplate
    deleteProvisioningTemplate_templateName,
    deleteProvisioningTemplateResponse_httpStatus,

    -- ** DeleteProvisioningTemplateVersion
    deleteProvisioningTemplateVersion_templateName,
    deleteProvisioningTemplateVersion_versionId,
    deleteProvisioningTemplateVersionResponse_httpStatus,

    -- ** DeleteRegistrationCode
    deleteRegistrationCodeResponse_httpStatus,

    -- ** DeleteRoleAlias
    deleteRoleAlias_roleAlias,
    deleteRoleAliasResponse_httpStatus,

    -- ** DeleteScheduledAudit
    deleteScheduledAudit_scheduledAuditName,
    deleteScheduledAuditResponse_httpStatus,

    -- ** DeleteSecurityProfile
    deleteSecurityProfile_expectedVersion,
    deleteSecurityProfile_securityProfileName,
    deleteSecurityProfileResponse_httpStatus,

    -- ** DeleteStream
    deleteStream_streamId,
    deleteStreamResponse_httpStatus,

    -- ** DeleteThing
    deleteThing_expectedVersion,
    deleteThing_thingName,
    deleteThingResponse_httpStatus,

    -- ** DeleteThingGroup
    deleteThingGroup_expectedVersion,
    deleteThingGroup_thingGroupName,
    deleteThingGroupResponse_httpStatus,

    -- ** DeleteThingType
    deleteThingType_thingTypeName,
    deleteThingTypeResponse_httpStatus,

    -- ** DeleteTopicRule
    deleteTopicRule_ruleName,

    -- ** DeleteTopicRuleDestination
    deleteTopicRuleDestination_arn,
    deleteTopicRuleDestinationResponse_httpStatus,

    -- ** DeleteV2LoggingLevel
    deleteV2LoggingLevel_targetType,
    deleteV2LoggingLevel_targetName,

    -- ** DeprecateThingType
    deprecateThingType_undoDeprecate,
    deprecateThingType_thingTypeName,
    deprecateThingTypeResponse_httpStatus,

    -- ** DescribeAccountAuditConfiguration
    describeAccountAuditConfigurationResponse_roleArn,
    describeAccountAuditConfigurationResponse_auditNotificationTargetConfigurations,
    describeAccountAuditConfigurationResponse_auditCheckConfigurations,
    describeAccountAuditConfigurationResponse_httpStatus,

    -- ** DescribeAuditFinding
    describeAuditFinding_findingId,
    describeAuditFindingResponse_finding,
    describeAuditFindingResponse_httpStatus,

    -- ** DescribeAuditMitigationActionsTask
    describeAuditMitigationActionsTask_taskId,
    describeAuditMitigationActionsTaskResponse_auditCheckToActionsMapping,
    describeAuditMitigationActionsTaskResponse_taskStatus,
    describeAuditMitigationActionsTaskResponse_target,
    describeAuditMitigationActionsTaskResponse_endTime,
    describeAuditMitigationActionsTaskResponse_actionsDefinition,
    describeAuditMitigationActionsTaskResponse_taskStatistics,
    describeAuditMitigationActionsTaskResponse_startTime,
    describeAuditMitigationActionsTaskResponse_httpStatus,

    -- ** DescribeAuditSuppression
    describeAuditSuppression_checkName,
    describeAuditSuppression_resourceIdentifier,
    describeAuditSuppressionResponse_checkName,
    describeAuditSuppressionResponse_description,
    describeAuditSuppressionResponse_resourceIdentifier,
    describeAuditSuppressionResponse_expirationDate,
    describeAuditSuppressionResponse_suppressIndefinitely,
    describeAuditSuppressionResponse_httpStatus,

    -- ** DescribeAuditTask
    describeAuditTask_taskId,
    describeAuditTaskResponse_taskStartTime,
    describeAuditTaskResponse_taskStatus,
    describeAuditTaskResponse_taskType,
    describeAuditTaskResponse_taskStatistics,
    describeAuditTaskResponse_auditDetails,
    describeAuditTaskResponse_scheduledAuditName,
    describeAuditTaskResponse_httpStatus,

    -- ** DescribeAuthorizer
    describeAuthorizer_authorizerName,
    describeAuthorizerResponse_authorizerDescription,
    describeAuthorizerResponse_httpStatus,

    -- ** DescribeBillingGroup
    describeBillingGroup_billingGroupName,
    describeBillingGroupResponse_billingGroupProperties,
    describeBillingGroupResponse_billingGroupName,
    describeBillingGroupResponse_billingGroupArn,
    describeBillingGroupResponse_billingGroupMetadata,
    describeBillingGroupResponse_billingGroupId,
    describeBillingGroupResponse_version,
    describeBillingGroupResponse_httpStatus,

    -- ** DescribeCACertificate
    describeCACertificate_certificateId,
    describeCACertificateResponse_registrationConfig,
    describeCACertificateResponse_certificateDescription,
    describeCACertificateResponse_httpStatus,

    -- ** DescribeCertificate
    describeCertificate_certificateId,
    describeCertificateResponse_certificateDescription,
    describeCertificateResponse_httpStatus,

    -- ** DescribeCustomMetric
    describeCustomMetric_metricName,
    describeCustomMetricResponse_metricArn,
    describeCustomMetricResponse_lastModifiedDate,
    describeCustomMetricResponse_displayName,
    describeCustomMetricResponse_creationDate,
    describeCustomMetricResponse_metricType,
    describeCustomMetricResponse_metricName,
    describeCustomMetricResponse_httpStatus,

    -- ** DescribeDefaultAuthorizer
    describeDefaultAuthorizerResponse_authorizerDescription,
    describeDefaultAuthorizerResponse_httpStatus,

    -- ** DescribeDetectMitigationActionsTask
    describeDetectMitigationActionsTask_taskId,
    describeDetectMitigationActionsTaskResponse_taskSummary,
    describeDetectMitigationActionsTaskResponse_httpStatus,

    -- ** DescribeDimension
    describeDimension_name,
    describeDimensionResponse_name,
    describeDimensionResponse_type,
    describeDimensionResponse_stringValues,
    describeDimensionResponse_lastModifiedDate,
    describeDimensionResponse_arn,
    describeDimensionResponse_creationDate,
    describeDimensionResponse_httpStatus,

    -- ** DescribeDomainConfiguration
    describeDomainConfiguration_domainConfigurationName,
    describeDomainConfigurationResponse_domainConfigurationArn,
    describeDomainConfigurationResponse_lastStatusChangeDate,
    describeDomainConfigurationResponse_domainName,
    describeDomainConfigurationResponse_authorizerConfig,
    describeDomainConfigurationResponse_serviceType,
    describeDomainConfigurationResponse_serverCertificates,
    describeDomainConfigurationResponse_domainConfigurationName,
    describeDomainConfigurationResponse_domainConfigurationStatus,
    describeDomainConfigurationResponse_domainType,
    describeDomainConfigurationResponse_httpStatus,

    -- ** DescribeEndpoint
    describeEndpoint_endpointType,
    describeEndpointResponse_endpointAddress,
    describeEndpointResponse_httpStatus,

    -- ** DescribeEventConfigurations
    describeEventConfigurationsResponse_lastModifiedDate,
    describeEventConfigurationsResponse_creationDate,
    describeEventConfigurationsResponse_eventConfigurations,
    describeEventConfigurationsResponse_httpStatus,

    -- ** DescribeFleetMetric
    describeFleetMetric_metricName,
    describeFleetMetricResponse_aggregationField,
    describeFleetMetricResponse_metricArn,
    describeFleetMetricResponse_aggregationType,
    describeFleetMetricResponse_lastModifiedDate,
    describeFleetMetricResponse_period,
    describeFleetMetricResponse_creationDate,
    describeFleetMetricResponse_description,
    describeFleetMetricResponse_indexName,
    describeFleetMetricResponse_queryVersion,
    describeFleetMetricResponse_metricName,
    describeFleetMetricResponse_queryString,
    describeFleetMetricResponse_unit,
    describeFleetMetricResponse_version,
    describeFleetMetricResponse_httpStatus,

    -- ** DescribeIndex
    describeIndex_indexName,
    describeIndexResponse_indexName,
    describeIndexResponse_indexStatus,
    describeIndexResponse_schema,
    describeIndexResponse_httpStatus,

    -- ** DescribeJob
    describeJob_jobId,
    describeJobResponse_documentSource,
    describeJobResponse_job,
    describeJobResponse_httpStatus,

    -- ** DescribeJobExecution
    describeJobExecution_executionNumber,
    describeJobExecution_jobId,
    describeJobExecution_thingName,
    describeJobExecutionResponse_execution,
    describeJobExecutionResponse_httpStatus,

    -- ** DescribeJobTemplate
    describeJobTemplate_jobTemplateId,
    describeJobTemplateResponse_jobExecutionsRolloutConfig,
    describeJobTemplateResponse_documentSource,
    describeJobTemplateResponse_abortConfig,
    describeJobTemplateResponse_jobTemplateArn,
    describeJobTemplateResponse_jobTemplateId,
    describeJobTemplateResponse_description,
    describeJobTemplateResponse_presignedUrlConfig,
    describeJobTemplateResponse_document,
    describeJobTemplateResponse_jobExecutionsRetryConfig,
    describeJobTemplateResponse_timeoutConfig,
    describeJobTemplateResponse_createdAt,
    describeJobTemplateResponse_httpStatus,

    -- ** DescribeManagedJobTemplate
    describeManagedJobTemplate_templateVersion,
    describeManagedJobTemplate_templateName,
    describeManagedJobTemplateResponse_templateName,
    describeManagedJobTemplateResponse_environments,
    describeManagedJobTemplateResponse_documentParameters,
    describeManagedJobTemplateResponse_description,
    describeManagedJobTemplateResponse_templateVersion,
    describeManagedJobTemplateResponse_document,
    describeManagedJobTemplateResponse_templateArn,
    describeManagedJobTemplateResponse_httpStatus,

    -- ** DescribeMitigationAction
    describeMitigationAction_actionName,
    describeMitigationActionResponse_actionName,
    describeMitigationActionResponse_roleArn,
    describeMitigationActionResponse_actionType,
    describeMitigationActionResponse_lastModifiedDate,
    describeMitigationActionResponse_creationDate,
    describeMitigationActionResponse_actionParams,
    describeMitigationActionResponse_actionId,
    describeMitigationActionResponse_actionArn,
    describeMitigationActionResponse_httpStatus,

    -- ** DescribeProvisioningTemplate
    describeProvisioningTemplate_templateName,
    describeProvisioningTemplateResponse_templateName,
    describeProvisioningTemplateResponse_type,
    describeProvisioningTemplateResponse_defaultVersionId,
    describeProvisioningTemplateResponse_lastModifiedDate,
    describeProvisioningTemplateResponse_preProvisioningHook,
    describeProvisioningTemplateResponse_templateBody,
    describeProvisioningTemplateResponse_creationDate,
    describeProvisioningTemplateResponse_description,
    describeProvisioningTemplateResponse_enabled,
    describeProvisioningTemplateResponse_templateArn,
    describeProvisioningTemplateResponse_provisioningRoleArn,
    describeProvisioningTemplateResponse_httpStatus,

    -- ** DescribeProvisioningTemplateVersion
    describeProvisioningTemplateVersion_templateName,
    describeProvisioningTemplateVersion_versionId,
    describeProvisioningTemplateVersionResponse_isDefaultVersion,
    describeProvisioningTemplateVersionResponse_templateBody,
    describeProvisioningTemplateVersionResponse_creationDate,
    describeProvisioningTemplateVersionResponse_versionId,
    describeProvisioningTemplateVersionResponse_httpStatus,

    -- ** DescribeRoleAlias
    describeRoleAlias_roleAlias,
    describeRoleAliasResponse_roleAliasDescription,
    describeRoleAliasResponse_httpStatus,

    -- ** DescribeScheduledAudit
    describeScheduledAudit_scheduledAuditName,
    describeScheduledAuditResponse_targetCheckNames,
    describeScheduledAuditResponse_frequency,
    describeScheduledAuditResponse_dayOfWeek,
    describeScheduledAuditResponse_dayOfMonth,
    describeScheduledAuditResponse_scheduledAuditArn,
    describeScheduledAuditResponse_scheduledAuditName,
    describeScheduledAuditResponse_httpStatus,

    -- ** DescribeSecurityProfile
    describeSecurityProfile_securityProfileName,
    describeSecurityProfileResponse_lastModifiedDate,
    describeSecurityProfileResponse_alertTargets,
    describeSecurityProfileResponse_creationDate,
    describeSecurityProfileResponse_securityProfileDescription,
    describeSecurityProfileResponse_additionalMetricsToRetainV2,
    describeSecurityProfileResponse_securityProfileName,
    describeSecurityProfileResponse_securityProfileArn,
    describeSecurityProfileResponse_additionalMetricsToRetain,
    describeSecurityProfileResponse_version,
    describeSecurityProfileResponse_behaviors,
    describeSecurityProfileResponse_httpStatus,

    -- ** DescribeStream
    describeStream_streamId,
    describeStreamResponse_streamInfo,
    describeStreamResponse_httpStatus,

    -- ** DescribeThing
    describeThing_thingName,
    describeThingResponse_billingGroupName,
    describeThingResponse_thingName,
    describeThingResponse_thingId,
    describeThingResponse_thingArn,
    describeThingResponse_thingTypeName,
    describeThingResponse_defaultClientId,
    describeThingResponse_attributes,
    describeThingResponse_version,
    describeThingResponse_httpStatus,

    -- ** DescribeThingGroup
    describeThingGroup_thingGroupName,
    describeThingGroupResponse_thingGroupProperties,
    describeThingGroupResponse_thingGroupName,
    describeThingGroupResponse_status,
    describeThingGroupResponse_indexName,
    describeThingGroupResponse_thingGroupMetadata,
    describeThingGroupResponse_queryVersion,
    describeThingGroupResponse_thingGroupArn,
    describeThingGroupResponse_queryString,
    describeThingGroupResponse_thingGroupId,
    describeThingGroupResponse_version,
    describeThingGroupResponse_httpStatus,

    -- ** DescribeThingRegistrationTask
    describeThingRegistrationTask_taskId,
    describeThingRegistrationTaskResponse_message,
    describeThingRegistrationTaskResponse_roleArn,
    describeThingRegistrationTaskResponse_lastModifiedDate,
    describeThingRegistrationTaskResponse_failureCount,
    describeThingRegistrationTaskResponse_taskId,
    describeThingRegistrationTaskResponse_templateBody,
    describeThingRegistrationTaskResponse_creationDate,
    describeThingRegistrationTaskResponse_status,
    describeThingRegistrationTaskResponse_percentageProgress,
    describeThingRegistrationTaskResponse_inputFileKey,
    describeThingRegistrationTaskResponse_inputFileBucket,
    describeThingRegistrationTaskResponse_successCount,
    describeThingRegistrationTaskResponse_httpStatus,

    -- ** DescribeThingType
    describeThingType_thingTypeName,
    describeThingTypeResponse_thingTypeMetadata,
    describeThingTypeResponse_thingTypeId,
    describeThingTypeResponse_thingTypeName,
    describeThingTypeResponse_thingTypeArn,
    describeThingTypeResponse_thingTypeProperties,
    describeThingTypeResponse_httpStatus,

    -- ** DetachPolicy
    detachPolicy_policyName,
    detachPolicy_target,

    -- ** DetachSecurityProfile
    detachSecurityProfile_securityProfileName,
    detachSecurityProfile_securityProfileTargetArn,
    detachSecurityProfileResponse_httpStatus,

    -- ** DetachThingPrincipal
    detachThingPrincipal_thingName,
    detachThingPrincipal_principal,
    detachThingPrincipalResponse_httpStatus,

    -- ** DisableTopicRule
    disableTopicRule_ruleName,

    -- ** EnableTopicRule
    enableTopicRule_ruleName,

    -- ** GetBehaviorModelTrainingSummaries
    getBehaviorModelTrainingSummaries_nextToken,
    getBehaviorModelTrainingSummaries_securityProfileName,
    getBehaviorModelTrainingSummaries_maxResults,
    getBehaviorModelTrainingSummariesResponse_nextToken,
    getBehaviorModelTrainingSummariesResponse_summaries,
    getBehaviorModelTrainingSummariesResponse_httpStatus,

    -- ** GetBucketsAggregation
    getBucketsAggregation_indexName,
    getBucketsAggregation_queryVersion,
    getBucketsAggregation_queryString,
    getBucketsAggregation_aggregationField,
    getBucketsAggregation_bucketsAggregationType,
    getBucketsAggregationResponse_totalCount,
    getBucketsAggregationResponse_buckets,
    getBucketsAggregationResponse_httpStatus,

    -- ** GetCardinality
    getCardinality_aggregationField,
    getCardinality_indexName,
    getCardinality_queryVersion,
    getCardinality_queryString,
    getCardinalityResponse_cardinality,
    getCardinalityResponse_httpStatus,

    -- ** GetEffectivePolicies
    getEffectivePolicies_principal,
    getEffectivePolicies_thingName,
    getEffectivePolicies_cognitoIdentityPoolId,
    getEffectivePoliciesResponse_effectivePolicies,
    getEffectivePoliciesResponse_httpStatus,

    -- ** GetIndexingConfiguration
    getIndexingConfigurationResponse_thingGroupIndexingConfiguration,
    getIndexingConfigurationResponse_thingIndexingConfiguration,
    getIndexingConfigurationResponse_httpStatus,

    -- ** GetJobDocument
    getJobDocument_jobId,
    getJobDocumentResponse_document,
    getJobDocumentResponse_httpStatus,

    -- ** GetLoggingOptions
    getLoggingOptionsResponse_roleArn,
    getLoggingOptionsResponse_logLevel,
    getLoggingOptionsResponse_httpStatus,

    -- ** GetOTAUpdate
    getOTAUpdate_otaUpdateId,
    getOTAUpdateResponse_otaUpdateInfo,
    getOTAUpdateResponse_httpStatus,

    -- ** GetPercentiles
    getPercentiles_aggregationField,
    getPercentiles_percents,
    getPercentiles_indexName,
    getPercentiles_queryVersion,
    getPercentiles_queryString,
    getPercentilesResponse_percentiles,
    getPercentilesResponse_httpStatus,

    -- ** GetPolicy
    getPolicy_policyName,
    getPolicyResponse_policyName,
    getPolicyResponse_defaultVersionId,
    getPolicyResponse_lastModifiedDate,
    getPolicyResponse_creationDate,
    getPolicyResponse_policyDocument,
    getPolicyResponse_policyArn,
    getPolicyResponse_generationId,
    getPolicyResponse_httpStatus,

    -- ** GetPolicyVersion
    getPolicyVersion_policyName,
    getPolicyVersion_policyVersionId,
    getPolicyVersionResponse_policyName,
    getPolicyVersionResponse_isDefaultVersion,
    getPolicyVersionResponse_lastModifiedDate,
    getPolicyVersionResponse_creationDate,
    getPolicyVersionResponse_policyVersionId,
    getPolicyVersionResponse_policyDocument,
    getPolicyVersionResponse_policyArn,
    getPolicyVersionResponse_generationId,
    getPolicyVersionResponse_httpStatus,

    -- ** GetRegistrationCode
    getRegistrationCodeResponse_registrationCode,
    getRegistrationCodeResponse_httpStatus,

    -- ** GetStatistics
    getStatistics_aggregationField,
    getStatistics_indexName,
    getStatistics_queryVersion,
    getStatistics_queryString,
    getStatisticsResponse_statistics,
    getStatisticsResponse_httpStatus,

    -- ** GetTopicRule
    getTopicRule_ruleName,
    getTopicRuleResponse_ruleArn,
    getTopicRuleResponse_rule,
    getTopicRuleResponse_httpStatus,

    -- ** GetTopicRuleDestination
    getTopicRuleDestination_arn,
    getTopicRuleDestinationResponse_topicRuleDestination,
    getTopicRuleDestinationResponse_httpStatus,

    -- ** GetV2LoggingOptions
    getV2LoggingOptionsResponse_roleArn,
    getV2LoggingOptionsResponse_disableAllLogs,
    getV2LoggingOptionsResponse_defaultLogLevel,
    getV2LoggingOptionsResponse_httpStatus,

    -- ** ListActiveViolations
    listActiveViolations_listSuppressedAlerts,
    listActiveViolations_behaviorCriteriaType,
    listActiveViolations_nextToken,
    listActiveViolations_thingName,
    listActiveViolations_securityProfileName,
    listActiveViolations_maxResults,
    listActiveViolations_verificationState,
    listActiveViolationsResponse_nextToken,
    listActiveViolationsResponse_activeViolations,
    listActiveViolationsResponse_httpStatus,

    -- ** ListAttachedPolicies
    listAttachedPolicies_marker,
    listAttachedPolicies_recursive,
    listAttachedPolicies_pageSize,
    listAttachedPolicies_target,
    listAttachedPoliciesResponse_policies,
    listAttachedPoliciesResponse_nextMarker,
    listAttachedPoliciesResponse_httpStatus,

    -- ** ListAuditFindings
    listAuditFindings_nextToken,
    listAuditFindings_taskId,
    listAuditFindings_checkName,
    listAuditFindings_endTime,
    listAuditFindings_resourceIdentifier,
    listAuditFindings_maxResults,
    listAuditFindings_listSuppressedFindings,
    listAuditFindings_startTime,
    listAuditFindingsResponse_findings,
    listAuditFindingsResponse_nextToken,
    listAuditFindingsResponse_httpStatus,

    -- ** ListAuditMitigationActionsExecutions
    listAuditMitigationActionsExecutions_nextToken,
    listAuditMitigationActionsExecutions_maxResults,
    listAuditMitigationActionsExecutions_actionStatus,
    listAuditMitigationActionsExecutions_taskId,
    listAuditMitigationActionsExecutions_findingId,
    listAuditMitigationActionsExecutionsResponse_nextToken,
    listAuditMitigationActionsExecutionsResponse_actionsExecutions,
    listAuditMitigationActionsExecutionsResponse_httpStatus,

    -- ** ListAuditMitigationActionsTasks
    listAuditMitigationActionsTasks_nextToken,
    listAuditMitigationActionsTasks_taskStatus,
    listAuditMitigationActionsTasks_maxResults,
    listAuditMitigationActionsTasks_auditTaskId,
    listAuditMitigationActionsTasks_findingId,
    listAuditMitigationActionsTasks_startTime,
    listAuditMitigationActionsTasks_endTime,
    listAuditMitigationActionsTasksResponse_tasks,
    listAuditMitigationActionsTasksResponse_nextToken,
    listAuditMitigationActionsTasksResponse_httpStatus,

    -- ** ListAuditSuppressions
    listAuditSuppressions_nextToken,
    listAuditSuppressions_checkName,
    listAuditSuppressions_resourceIdentifier,
    listAuditSuppressions_maxResults,
    listAuditSuppressions_ascendingOrder,
    listAuditSuppressionsResponse_nextToken,
    listAuditSuppressionsResponse_suppressions,
    listAuditSuppressionsResponse_httpStatus,

    -- ** ListAuditTasks
    listAuditTasks_nextToken,
    listAuditTasks_taskStatus,
    listAuditTasks_taskType,
    listAuditTasks_maxResults,
    listAuditTasks_startTime,
    listAuditTasks_endTime,
    listAuditTasksResponse_tasks,
    listAuditTasksResponse_nextToken,
    listAuditTasksResponse_httpStatus,

    -- ** ListAuthorizers
    listAuthorizers_marker,
    listAuthorizers_status,
    listAuthorizers_pageSize,
    listAuthorizers_ascendingOrder,
    listAuthorizersResponse_authorizers,
    listAuthorizersResponse_nextMarker,
    listAuthorizersResponse_httpStatus,

    -- ** ListBillingGroups
    listBillingGroups_nextToken,
    listBillingGroups_namePrefixFilter,
    listBillingGroups_maxResults,
    listBillingGroupsResponse_nextToken,
    listBillingGroupsResponse_billingGroups,
    listBillingGroupsResponse_httpStatus,

    -- ** ListCACertificates
    listCACertificates_templateName,
    listCACertificates_marker,
    listCACertificates_pageSize,
    listCACertificates_ascendingOrder,
    listCACertificatesResponse_certificates,
    listCACertificatesResponse_nextMarker,
    listCACertificatesResponse_httpStatus,

    -- ** ListCertificates
    listCertificates_marker,
    listCertificates_pageSize,
    listCertificates_ascendingOrder,
    listCertificatesResponse_certificates,
    listCertificatesResponse_nextMarker,
    listCertificatesResponse_httpStatus,

    -- ** ListCertificatesByCA
    listCertificatesByCA_marker,
    listCertificatesByCA_pageSize,
    listCertificatesByCA_ascendingOrder,
    listCertificatesByCA_caCertificateId,
    listCertificatesByCAResponse_certificates,
    listCertificatesByCAResponse_nextMarker,
    listCertificatesByCAResponse_httpStatus,

    -- ** ListCustomMetrics
    listCustomMetrics_nextToken,
    listCustomMetrics_maxResults,
    listCustomMetricsResponse_nextToken,
    listCustomMetricsResponse_metricNames,
    listCustomMetricsResponse_httpStatus,

    -- ** ListDetectMitigationActionsExecutions
    listDetectMitigationActionsExecutions_nextToken,
    listDetectMitigationActionsExecutions_thingName,
    listDetectMitigationActionsExecutions_violationId,
    listDetectMitigationActionsExecutions_taskId,
    listDetectMitigationActionsExecutions_endTime,
    listDetectMitigationActionsExecutions_maxResults,
    listDetectMitigationActionsExecutions_startTime,
    listDetectMitigationActionsExecutionsResponse_nextToken,
    listDetectMitigationActionsExecutionsResponse_actionsExecutions,
    listDetectMitigationActionsExecutionsResponse_httpStatus,

    -- ** ListDetectMitigationActionsTasks
    listDetectMitigationActionsTasks_nextToken,
    listDetectMitigationActionsTasks_maxResults,
    listDetectMitigationActionsTasks_startTime,
    listDetectMitigationActionsTasks_endTime,
    listDetectMitigationActionsTasksResponse_tasks,
    listDetectMitigationActionsTasksResponse_nextToken,
    listDetectMitigationActionsTasksResponse_httpStatus,

    -- ** ListDimensions
    listDimensions_nextToken,
    listDimensions_maxResults,
    listDimensionsResponse_nextToken,
    listDimensionsResponse_dimensionNames,
    listDimensionsResponse_httpStatus,

    -- ** ListDomainConfigurations
    listDomainConfigurations_marker,
    listDomainConfigurations_serviceType,
    listDomainConfigurations_pageSize,
    listDomainConfigurationsResponse_domainConfigurations,
    listDomainConfigurationsResponse_nextMarker,
    listDomainConfigurationsResponse_httpStatus,

    -- ** ListFleetMetrics
    listFleetMetrics_nextToken,
    listFleetMetrics_maxResults,
    listFleetMetricsResponse_nextToken,
    listFleetMetricsResponse_fleetMetrics,
    listFleetMetricsResponse_httpStatus,

    -- ** ListIndices
    listIndices_nextToken,
    listIndices_maxResults,
    listIndicesResponse_nextToken,
    listIndicesResponse_indexNames,
    listIndicesResponse_httpStatus,

    -- ** ListJobExecutionsForJob
    listJobExecutionsForJob_nextToken,
    listJobExecutionsForJob_status,
    listJobExecutionsForJob_maxResults,
    listJobExecutionsForJob_jobId,
    listJobExecutionsForJobResponse_nextToken,
    listJobExecutionsForJobResponse_executionSummaries,
    listJobExecutionsForJobResponse_httpStatus,

    -- ** ListJobExecutionsForThing
    listJobExecutionsForThing_nextToken,
    listJobExecutionsForThing_jobId,
    listJobExecutionsForThing_status,
    listJobExecutionsForThing_maxResults,
    listJobExecutionsForThing_namespaceId,
    listJobExecutionsForThing_thingName,
    listJobExecutionsForThingResponse_nextToken,
    listJobExecutionsForThingResponse_executionSummaries,
    listJobExecutionsForThingResponse_httpStatus,

    -- ** ListJobTemplates
    listJobTemplates_nextToken,
    listJobTemplates_maxResults,
    listJobTemplatesResponse_nextToken,
    listJobTemplatesResponse_jobTemplates,
    listJobTemplatesResponse_httpStatus,

    -- ** ListJobs
    listJobs_nextToken,
    listJobs_targetSelection,
    listJobs_thingGroupName,
    listJobs_status,
    listJobs_maxResults,
    listJobs_namespaceId,
    listJobs_thingGroupId,
    listJobsResponse_nextToken,
    listJobsResponse_jobs,
    listJobsResponse_httpStatus,

    -- ** ListManagedJobTemplates
    listManagedJobTemplates_nextToken,
    listManagedJobTemplates_templateName,
    listManagedJobTemplates_maxResults,
    listManagedJobTemplatesResponse_nextToken,
    listManagedJobTemplatesResponse_managedJobTemplates,
    listManagedJobTemplatesResponse_httpStatus,

    -- ** ListMetricValues
    listMetricValues_nextToken,
    listMetricValues_dimensionValueOperator,
    listMetricValues_dimensionName,
    listMetricValues_maxResults,
    listMetricValues_thingName,
    listMetricValues_metricName,
    listMetricValues_startTime,
    listMetricValues_endTime,
    listMetricValuesResponse_nextToken,
    listMetricValuesResponse_metricDatumList,
    listMetricValuesResponse_httpStatus,

    -- ** ListMitigationActions
    listMitigationActions_nextToken,
    listMitigationActions_actionType,
    listMitigationActions_maxResults,
    listMitigationActionsResponse_nextToken,
    listMitigationActionsResponse_actionIdentifiers,
    listMitigationActionsResponse_httpStatus,

    -- ** ListOTAUpdates
    listOTAUpdates_nextToken,
    listOTAUpdates_otaUpdateStatus,
    listOTAUpdates_maxResults,
    listOTAUpdatesResponse_nextToken,
    listOTAUpdatesResponse_otaUpdates,
    listOTAUpdatesResponse_httpStatus,

    -- ** ListOutgoingCertificates
    listOutgoingCertificates_marker,
    listOutgoingCertificates_pageSize,
    listOutgoingCertificates_ascendingOrder,
    listOutgoingCertificatesResponse_outgoingCertificates,
    listOutgoingCertificatesResponse_nextMarker,
    listOutgoingCertificatesResponse_httpStatus,

    -- ** ListPolicies
    listPolicies_marker,
    listPolicies_pageSize,
    listPolicies_ascendingOrder,
    listPoliciesResponse_policies,
    listPoliciesResponse_nextMarker,
    listPoliciesResponse_httpStatus,

    -- ** ListPolicyVersions
    listPolicyVersions_policyName,
    listPolicyVersionsResponse_policyVersions,
    listPolicyVersionsResponse_httpStatus,

    -- ** ListPrincipalThings
    listPrincipalThings_nextToken,
    listPrincipalThings_maxResults,
    listPrincipalThings_principal,
    listPrincipalThingsResponse_nextToken,
    listPrincipalThingsResponse_things,
    listPrincipalThingsResponse_httpStatus,

    -- ** ListProvisioningTemplateVersions
    listProvisioningTemplateVersions_nextToken,
    listProvisioningTemplateVersions_maxResults,
    listProvisioningTemplateVersions_templateName,
    listProvisioningTemplateVersionsResponse_nextToken,
    listProvisioningTemplateVersionsResponse_versions,
    listProvisioningTemplateVersionsResponse_httpStatus,

    -- ** ListProvisioningTemplates
    listProvisioningTemplates_nextToken,
    listProvisioningTemplates_maxResults,
    listProvisioningTemplatesResponse_nextToken,
    listProvisioningTemplatesResponse_templates,
    listProvisioningTemplatesResponse_httpStatus,

    -- ** ListRoleAliases
    listRoleAliases_marker,
    listRoleAliases_pageSize,
    listRoleAliases_ascendingOrder,
    listRoleAliasesResponse_nextMarker,
    listRoleAliasesResponse_roleAliases,
    listRoleAliasesResponse_httpStatus,

    -- ** ListScheduledAudits
    listScheduledAudits_nextToken,
    listScheduledAudits_maxResults,
    listScheduledAuditsResponse_nextToken,
    listScheduledAuditsResponse_scheduledAudits,
    listScheduledAuditsResponse_httpStatus,

    -- ** ListSecurityProfiles
    listSecurityProfiles_nextToken,
    listSecurityProfiles_dimensionName,
    listSecurityProfiles_maxResults,
    listSecurityProfiles_metricName,
    listSecurityProfilesResponse_nextToken,
    listSecurityProfilesResponse_securityProfileIdentifiers,
    listSecurityProfilesResponse_httpStatus,

    -- ** ListSecurityProfilesForTarget
    listSecurityProfilesForTarget_nextToken,
    listSecurityProfilesForTarget_recursive,
    listSecurityProfilesForTarget_maxResults,
    listSecurityProfilesForTarget_securityProfileTargetArn,
    listSecurityProfilesForTargetResponse_nextToken,
    listSecurityProfilesForTargetResponse_securityProfileTargetMappings,
    listSecurityProfilesForTargetResponse_httpStatus,

    -- ** ListStreams
    listStreams_nextToken,
    listStreams_maxResults,
    listStreams_ascendingOrder,
    listStreamsResponse_nextToken,
    listStreamsResponse_streams,
    listStreamsResponse_httpStatus,

    -- ** ListTagsForResource
    listTagsForResource_nextToken,
    listTagsForResource_resourceArn,
    listTagsForResourceResponse_tags,
    listTagsForResourceResponse_nextToken,
    listTagsForResourceResponse_httpStatus,

    -- ** ListTargetsForPolicy
    listTargetsForPolicy_marker,
    listTargetsForPolicy_pageSize,
    listTargetsForPolicy_policyName,
    listTargetsForPolicyResponse_targets,
    listTargetsForPolicyResponse_nextMarker,
    listTargetsForPolicyResponse_httpStatus,

    -- ** ListTargetsForSecurityProfile
    listTargetsForSecurityProfile_nextToken,
    listTargetsForSecurityProfile_maxResults,
    listTargetsForSecurityProfile_securityProfileName,
    listTargetsForSecurityProfileResponse_nextToken,
    listTargetsForSecurityProfileResponse_securityProfileTargets,
    listTargetsForSecurityProfileResponse_httpStatus,

    -- ** ListThingGroups
    listThingGroups_nextToken,
    listThingGroups_namePrefixFilter,
    listThingGroups_recursive,
    listThingGroups_maxResults,
    listThingGroups_parentGroup,
    listThingGroupsResponse_nextToken,
    listThingGroupsResponse_thingGroups,
    listThingGroupsResponse_httpStatus,

    -- ** ListThingGroupsForThing
    listThingGroupsForThing_nextToken,
    listThingGroupsForThing_maxResults,
    listThingGroupsForThing_thingName,
    listThingGroupsForThingResponse_nextToken,
    listThingGroupsForThingResponse_thingGroups,
    listThingGroupsForThingResponse_httpStatus,

    -- ** ListThingPrincipals
    listThingPrincipals_nextToken,
    listThingPrincipals_maxResults,
    listThingPrincipals_thingName,
    listThingPrincipalsResponse_nextToken,
    listThingPrincipalsResponse_principals,
    listThingPrincipalsResponse_httpStatus,

    -- ** ListThingRegistrationTaskReports
    listThingRegistrationTaskReports_nextToken,
    listThingRegistrationTaskReports_maxResults,
    listThingRegistrationTaskReports_taskId,
    listThingRegistrationTaskReports_reportType,
    listThingRegistrationTaskReportsResponse_nextToken,
    listThingRegistrationTaskReportsResponse_reportType,
    listThingRegistrationTaskReportsResponse_resourceLinks,
    listThingRegistrationTaskReportsResponse_httpStatus,

    -- ** ListThingRegistrationTasks
    listThingRegistrationTasks_nextToken,
    listThingRegistrationTasks_status,
    listThingRegistrationTasks_maxResults,
    listThingRegistrationTasksResponse_nextToken,
    listThingRegistrationTasksResponse_taskIds,
    listThingRegistrationTasksResponse_httpStatus,

    -- ** ListThingTypes
    listThingTypes_nextToken,
    listThingTypes_thingTypeName,
    listThingTypes_maxResults,
    listThingTypesResponse_nextToken,
    listThingTypesResponse_thingTypes,
    listThingTypesResponse_httpStatus,

    -- ** ListThings
    listThings_nextToken,
    listThings_attributeValue,
    listThings_thingTypeName,
    listThings_maxResults,
    listThings_usePrefixAttributeValue,
    listThings_attributeName,
    listThingsResponse_nextToken,
    listThingsResponse_things,
    listThingsResponse_httpStatus,

    -- ** ListThingsInBillingGroup
    listThingsInBillingGroup_nextToken,
    listThingsInBillingGroup_maxResults,
    listThingsInBillingGroup_billingGroupName,
    listThingsInBillingGroupResponse_nextToken,
    listThingsInBillingGroupResponse_things,
    listThingsInBillingGroupResponse_httpStatus,

    -- ** ListThingsInThingGroup
    listThingsInThingGroup_nextToken,
    listThingsInThingGroup_recursive,
    listThingsInThingGroup_maxResults,
    listThingsInThingGroup_thingGroupName,
    listThingsInThingGroupResponse_nextToken,
    listThingsInThingGroupResponse_things,
    listThingsInThingGroupResponse_httpStatus,

    -- ** ListTopicRuleDestinations
    listTopicRuleDestinations_nextToken,
    listTopicRuleDestinations_maxResults,
    listTopicRuleDestinationsResponse_nextToken,
    listTopicRuleDestinationsResponse_destinationSummaries,
    listTopicRuleDestinationsResponse_httpStatus,

    -- ** ListTopicRules
    listTopicRules_nextToken,
    listTopicRules_maxResults,
    listTopicRules_topic,
    listTopicRules_ruleDisabled,
    listTopicRulesResponse_nextToken,
    listTopicRulesResponse_rules,
    listTopicRulesResponse_httpStatus,

    -- ** ListV2LoggingLevels
    listV2LoggingLevels_nextToken,
    listV2LoggingLevels_targetType,
    listV2LoggingLevels_maxResults,
    listV2LoggingLevelsResponse_logTargetConfigurations,
    listV2LoggingLevelsResponse_nextToken,
    listV2LoggingLevelsResponse_httpStatus,

    -- ** ListViolationEvents
    listViolationEvents_listSuppressedAlerts,
    listViolationEvents_behaviorCriteriaType,
    listViolationEvents_nextToken,
    listViolationEvents_thingName,
    listViolationEvents_securityProfileName,
    listViolationEvents_maxResults,
    listViolationEvents_verificationState,
    listViolationEvents_startTime,
    listViolationEvents_endTime,
    listViolationEventsResponse_nextToken,
    listViolationEventsResponse_violationEvents,
    listViolationEventsResponse_httpStatus,

    -- ** PutVerificationStateOnViolation
    putVerificationStateOnViolation_verificationStateDescription,
    putVerificationStateOnViolation_violationId,
    putVerificationStateOnViolation_verificationState,
    putVerificationStateOnViolationResponse_httpStatus,

    -- ** RegisterCACertificate
    registerCACertificate_tags,
    registerCACertificate_allowAutoRegistration,
    registerCACertificate_registrationConfig,
    registerCACertificate_verificationCertificate,
    registerCACertificate_setAsActive,
    registerCACertificate_certificateMode,
    registerCACertificate_caCertificate,
    registerCACertificateResponse_certificateArn,
    registerCACertificateResponse_certificateId,
    registerCACertificateResponse_httpStatus,

    -- ** RegisterCertificate
    registerCertificate_caCertificatePem,
    registerCertificate_status,
    registerCertificate_setAsActive,
    registerCertificate_certificatePem,
    registerCertificateResponse_certificateArn,
    registerCertificateResponse_certificateId,
    registerCertificateResponse_httpStatus,

    -- ** RegisterCertificateWithoutCA
    registerCertificateWithoutCA_status,
    registerCertificateWithoutCA_certificatePem,
    registerCertificateWithoutCAResponse_certificateArn,
    registerCertificateWithoutCAResponse_certificateId,
    registerCertificateWithoutCAResponse_httpStatus,

    -- ** RegisterThing
    registerThing_parameters,
    registerThing_templateBody,
    registerThingResponse_certificatePem,
    registerThingResponse_resourceArns,
    registerThingResponse_httpStatus,

    -- ** RejectCertificateTransfer
    rejectCertificateTransfer_rejectReason,
    rejectCertificateTransfer_certificateId,

    -- ** RemoveThingFromBillingGroup
    removeThingFromBillingGroup_billingGroupName,
    removeThingFromBillingGroup_thingName,
    removeThingFromBillingGroup_billingGroupArn,
    removeThingFromBillingGroup_thingArn,
    removeThingFromBillingGroupResponse_httpStatus,

    -- ** RemoveThingFromThingGroup
    removeThingFromThingGroup_thingName,
    removeThingFromThingGroup_thingArn,
    removeThingFromThingGroup_thingGroupName,
    removeThingFromThingGroup_thingGroupArn,
    removeThingFromThingGroupResponse_httpStatus,

    -- ** ReplaceTopicRule
    replaceTopicRule_ruleName,
    replaceTopicRule_topicRulePayload,

    -- ** SearchIndex
    searchIndex_nextToken,
    searchIndex_indexName,
    searchIndex_maxResults,
    searchIndex_queryVersion,
    searchIndex_queryString,
    searchIndexResponse_nextToken,
    searchIndexResponse_thingGroups,
    searchIndexResponse_things,
    searchIndexResponse_httpStatus,

    -- ** SetDefaultAuthorizer
    setDefaultAuthorizer_authorizerName,
    setDefaultAuthorizerResponse_authorizerArn,
    setDefaultAuthorizerResponse_authorizerName,
    setDefaultAuthorizerResponse_httpStatus,

    -- ** SetDefaultPolicyVersion
    setDefaultPolicyVersion_policyName,
    setDefaultPolicyVersion_policyVersionId,

    -- ** SetLoggingOptions
    setLoggingOptions_loggingOptionsPayload,

    -- ** SetV2LoggingLevel
    setV2LoggingLevel_logTarget,
    setV2LoggingLevel_logLevel,

    -- ** SetV2LoggingOptions
    setV2LoggingOptions_roleArn,
    setV2LoggingOptions_disableAllLogs,
    setV2LoggingOptions_defaultLogLevel,

    -- ** StartAuditMitigationActionsTask
    startAuditMitigationActionsTask_taskId,
    startAuditMitigationActionsTask_target,
    startAuditMitigationActionsTask_auditCheckToActionsMapping,
    startAuditMitigationActionsTask_clientRequestToken,
    startAuditMitigationActionsTaskResponse_taskId,
    startAuditMitigationActionsTaskResponse_httpStatus,

    -- ** StartDetectMitigationActionsTask
    startDetectMitigationActionsTask_includeOnlyActiveViolations,
    startDetectMitigationActionsTask_violationEventOccurrenceRange,
    startDetectMitigationActionsTask_includeSuppressedAlerts,
    startDetectMitigationActionsTask_taskId,
    startDetectMitigationActionsTask_target,
    startDetectMitigationActionsTask_actions,
    startDetectMitigationActionsTask_clientRequestToken,
    startDetectMitigationActionsTaskResponse_taskId,
    startDetectMitigationActionsTaskResponse_httpStatus,

    -- ** StartOnDemandAuditTask
    startOnDemandAuditTask_targetCheckNames,
    startOnDemandAuditTaskResponse_taskId,
    startOnDemandAuditTaskResponse_httpStatus,

    -- ** StartThingRegistrationTask
    startThingRegistrationTask_templateBody,
    startThingRegistrationTask_inputFileBucket,
    startThingRegistrationTask_inputFileKey,
    startThingRegistrationTask_roleArn,
    startThingRegistrationTaskResponse_taskId,
    startThingRegistrationTaskResponse_httpStatus,

    -- ** StopThingRegistrationTask
    stopThingRegistrationTask_taskId,
    stopThingRegistrationTaskResponse_httpStatus,

    -- ** TagResource
    tagResource_resourceArn,
    tagResource_tags,
    tagResourceResponse_httpStatus,

    -- ** TestAuthorization
    testAuthorization_principal,
    testAuthorization_clientId,
    testAuthorization_policyNamesToSkip,
    testAuthorization_policyNamesToAdd,
    testAuthorization_cognitoIdentityPoolId,
    testAuthorization_authInfos,
    testAuthorizationResponse_authResults,
    testAuthorizationResponse_httpStatus,

    -- ** TestInvokeAuthorizer
    testInvokeAuthorizer_mqttContext,
    testInvokeAuthorizer_httpContext,
    testInvokeAuthorizer_tlsContext,
    testInvokeAuthorizer_tokenSignature,
    testInvokeAuthorizer_token,
    testInvokeAuthorizer_authorizerName,
    testInvokeAuthorizerResponse_refreshAfterInSeconds,
    testInvokeAuthorizerResponse_isAuthenticated,
    testInvokeAuthorizerResponse_principalId,
    testInvokeAuthorizerResponse_policyDocuments,
    testInvokeAuthorizerResponse_disconnectAfterInSeconds,
    testInvokeAuthorizerResponse_httpStatus,

    -- ** TransferCertificate
    transferCertificate_transferMessage,
    transferCertificate_certificateId,
    transferCertificate_targetAwsAccount,
    transferCertificateResponse_transferredCertificateArn,
    transferCertificateResponse_httpStatus,

    -- ** UntagResource
    untagResource_resourceArn,
    untagResource_tagKeys,
    untagResourceResponse_httpStatus,

    -- ** UpdateAccountAuditConfiguration
    updateAccountAuditConfiguration_roleArn,
    updateAccountAuditConfiguration_auditNotificationTargetConfigurations,
    updateAccountAuditConfiguration_auditCheckConfigurations,
    updateAccountAuditConfigurationResponse_httpStatus,

    -- ** UpdateAuditSuppression
    updateAuditSuppression_description,
    updateAuditSuppression_expirationDate,
    updateAuditSuppression_suppressIndefinitely,
    updateAuditSuppression_checkName,
    updateAuditSuppression_resourceIdentifier,
    updateAuditSuppressionResponse_httpStatus,

    -- ** UpdateAuthorizer
    updateAuthorizer_tokenKeyName,
    updateAuthorizer_status,
    updateAuthorizer_authorizerFunctionArn,
    updateAuthorizer_tokenSigningPublicKeys,
    updateAuthorizer_enableCachingForHttp,
    updateAuthorizer_authorizerName,
    updateAuthorizerResponse_authorizerArn,
    updateAuthorizerResponse_authorizerName,
    updateAuthorizerResponse_httpStatus,

    -- ** UpdateBillingGroup
    updateBillingGroup_expectedVersion,
    updateBillingGroup_billingGroupName,
    updateBillingGroup_billingGroupProperties,
    updateBillingGroupResponse_version,
    updateBillingGroupResponse_httpStatus,

    -- ** UpdateCACertificate
    updateCACertificate_registrationConfig,
    updateCACertificate_newStatus,
    updateCACertificate_removeAutoRegistration,
    updateCACertificate_newAutoRegistrationStatus,
    updateCACertificate_certificateId,

    -- ** UpdateCertificate
    updateCertificate_certificateId,
    updateCertificate_newStatus,

    -- ** UpdateCustomMetric
    updateCustomMetric_metricName,
    updateCustomMetric_displayName,
    updateCustomMetricResponse_metricArn,
    updateCustomMetricResponse_lastModifiedDate,
    updateCustomMetricResponse_displayName,
    updateCustomMetricResponse_creationDate,
    updateCustomMetricResponse_metricType,
    updateCustomMetricResponse_metricName,
    updateCustomMetricResponse_httpStatus,

    -- ** UpdateDimension
    updateDimension_name,
    updateDimension_stringValues,
    updateDimensionResponse_name,
    updateDimensionResponse_type,
    updateDimensionResponse_stringValues,
    updateDimensionResponse_lastModifiedDate,
    updateDimensionResponse_arn,
    updateDimensionResponse_creationDate,
    updateDimensionResponse_httpStatus,

    -- ** UpdateDomainConfiguration
    updateDomainConfiguration_authorizerConfig,
    updateDomainConfiguration_domainConfigurationStatus,
    updateDomainConfiguration_removeAuthorizerConfig,
    updateDomainConfiguration_domainConfigurationName,
    updateDomainConfigurationResponse_domainConfigurationArn,
    updateDomainConfigurationResponse_domainConfigurationName,
    updateDomainConfigurationResponse_httpStatus,

    -- ** UpdateDynamicThingGroup
    updateDynamicThingGroup_indexName,
    updateDynamicThingGroup_queryVersion,
    updateDynamicThingGroup_queryString,
    updateDynamicThingGroup_expectedVersion,
    updateDynamicThingGroup_thingGroupName,
    updateDynamicThingGroup_thingGroupProperties,
    updateDynamicThingGroupResponse_version,
    updateDynamicThingGroupResponse_httpStatus,

    -- ** UpdateEventConfigurations
    updateEventConfigurations_eventConfigurations,
    updateEventConfigurationsResponse_httpStatus,

    -- ** UpdateFleetMetric
    updateFleetMetric_aggregationField,
    updateFleetMetric_aggregationType,
    updateFleetMetric_period,
    updateFleetMetric_description,
    updateFleetMetric_queryVersion,
    updateFleetMetric_queryString,
    updateFleetMetric_expectedVersion,
    updateFleetMetric_unit,
    updateFleetMetric_metricName,
    updateFleetMetric_indexName,

    -- ** UpdateIndexingConfiguration
    updateIndexingConfiguration_thingGroupIndexingConfiguration,
    updateIndexingConfiguration_thingIndexingConfiguration,
    updateIndexingConfigurationResponse_httpStatus,

    -- ** UpdateJob
    updateJob_jobExecutionsRolloutConfig,
    updateJob_abortConfig,
    updateJob_description,
    updateJob_presignedUrlConfig,
    updateJob_namespaceId,
    updateJob_jobExecutionsRetryConfig,
    updateJob_timeoutConfig,
    updateJob_jobId,

    -- ** UpdateMitigationAction
    updateMitigationAction_roleArn,
    updateMitigationAction_actionParams,
    updateMitigationAction_actionName,
    updateMitigationActionResponse_actionId,
    updateMitigationActionResponse_actionArn,
    updateMitigationActionResponse_httpStatus,

    -- ** UpdateProvisioningTemplate
    updateProvisioningTemplate_removePreProvisioningHook,
    updateProvisioningTemplate_defaultVersionId,
    updateProvisioningTemplate_preProvisioningHook,
    updateProvisioningTemplate_description,
    updateProvisioningTemplate_enabled,
    updateProvisioningTemplate_provisioningRoleArn,
    updateProvisioningTemplate_templateName,
    updateProvisioningTemplateResponse_httpStatus,

    -- ** UpdateRoleAlias
    updateRoleAlias_roleArn,
    updateRoleAlias_credentialDurationSeconds,
    updateRoleAlias_roleAlias,
    updateRoleAliasResponse_roleAlias,
    updateRoleAliasResponse_roleAliasArn,
    updateRoleAliasResponse_httpStatus,

    -- ** UpdateScheduledAudit
    updateScheduledAudit_targetCheckNames,
    updateScheduledAudit_frequency,
    updateScheduledAudit_dayOfWeek,
    updateScheduledAudit_dayOfMonth,
    updateScheduledAudit_scheduledAuditName,
    updateScheduledAuditResponse_scheduledAuditArn,
    updateScheduledAuditResponse_httpStatus,

    -- ** UpdateSecurityProfile
    updateSecurityProfile_deleteBehaviors,
    updateSecurityProfile_alertTargets,
    updateSecurityProfile_securityProfileDescription,
    updateSecurityProfile_deleteAlertTargets,
    updateSecurityProfile_additionalMetricsToRetainV2,
    updateSecurityProfile_deleteAdditionalMetricsToRetain,
    updateSecurityProfile_expectedVersion,
    updateSecurityProfile_additionalMetricsToRetain,
    updateSecurityProfile_behaviors,
    updateSecurityProfile_securityProfileName,
    updateSecurityProfileResponse_lastModifiedDate,
    updateSecurityProfileResponse_alertTargets,
    updateSecurityProfileResponse_creationDate,
    updateSecurityProfileResponse_securityProfileDescription,
    updateSecurityProfileResponse_additionalMetricsToRetainV2,
    updateSecurityProfileResponse_securityProfileName,
    updateSecurityProfileResponse_securityProfileArn,
    updateSecurityProfileResponse_additionalMetricsToRetain,
    updateSecurityProfileResponse_version,
    updateSecurityProfileResponse_behaviors,
    updateSecurityProfileResponse_httpStatus,

    -- ** UpdateStream
    updateStream_files,
    updateStream_roleArn,
    updateStream_description,
    updateStream_streamId,
    updateStreamResponse_streamId,
    updateStreamResponse_description,
    updateStreamResponse_streamVersion,
    updateStreamResponse_streamArn,
    updateStreamResponse_httpStatus,

    -- ** UpdateThing
    updateThing_thingTypeName,
    updateThing_removeThingType,
    updateThing_attributePayload,
    updateThing_expectedVersion,
    updateThing_thingName,
    updateThingResponse_httpStatus,

    -- ** UpdateThingGroup
    updateThingGroup_expectedVersion,
    updateThingGroup_thingGroupName,
    updateThingGroup_thingGroupProperties,
    updateThingGroupResponse_version,
    updateThingGroupResponse_httpStatus,

    -- ** UpdateThingGroupsForThing
    updateThingGroupsForThing_overrideDynamicGroups,
    updateThingGroupsForThing_thingName,
    updateThingGroupsForThing_thingGroupsToRemove,
    updateThingGroupsForThing_thingGroupsToAdd,
    updateThingGroupsForThingResponse_httpStatus,

    -- ** UpdateTopicRuleDestination
    updateTopicRuleDestination_arn,
    updateTopicRuleDestination_status,
    updateTopicRuleDestinationResponse_httpStatus,

    -- ** ValidateSecurityProfileBehaviors
    validateSecurityProfileBehaviors_behaviors,
    validateSecurityProfileBehaviorsResponse_valid,
    validateSecurityProfileBehaviorsResponse_validationErrors,
    validateSecurityProfileBehaviorsResponse_httpStatus,

    -- * Types

    -- ** AbortConfig
    abortConfig_criteriaList,

    -- ** AbortCriteria
    abortCriteria_failureType,
    abortCriteria_action,
    abortCriteria_thresholdPercentage,
    abortCriteria_minNumberOfExecutedThings,

    -- ** Action
    action_kinesis,
    action_cloudwatchAlarm,
    action_http,
    action_firehose,
    action_cloudwatchLogs,
    action_s3,
    action_salesforce,
    action_dynamoDBv2,
    action_kafka,
    action_dynamoDB,
    action_cloudwatchMetric,
    action_republish,
    action_timestream,
    action_lambda,
    action_iotEvents,
    action_sqs,
    action_iotSiteWise,
    action_stepFunctions,
    action_sns,
    action_openSearch,
    action_elasticsearch,
    action_iotAnalytics,

    -- ** ActiveViolation
    activeViolation_thingName,
    activeViolation_violationId,
    activeViolation_violationEventAdditionalInfo,
    activeViolation_lastViolationTime,
    activeViolation_lastViolationValue,
    activeViolation_violationStartTime,
    activeViolation_securityProfileName,
    activeViolation_verificationStateDescription,
    activeViolation_verificationState,
    activeViolation_behavior,

    -- ** AddThingsToThingGroupParams
    addThingsToThingGroupParams_overrideDynamicGroups,
    addThingsToThingGroupParams_thingGroupNames,

    -- ** AggregationType
    aggregationType_values,
    aggregationType_name,

    -- ** AlertTarget
    alertTarget_alertTargetArn,
    alertTarget_roleArn,

    -- ** Allowed
    allowed_policies,

    -- ** AssetPropertyTimestamp
    assetPropertyTimestamp_offsetInNanos,
    assetPropertyTimestamp_timeInSeconds,

    -- ** AssetPropertyValue
    assetPropertyValue_quality,
    assetPropertyValue_value,
    assetPropertyValue_timestamp,

    -- ** AssetPropertyVariant
    assetPropertyVariant_integerValue,
    assetPropertyVariant_doubleValue,
    assetPropertyVariant_booleanValue,
    assetPropertyVariant_stringValue,

    -- ** AttributePayload
    attributePayload_merge,
    attributePayload_attributes,

    -- ** AuditCheckConfiguration
    auditCheckConfiguration_enabled,

    -- ** AuditCheckDetails
    auditCheckDetails_message,
    auditCheckDetails_totalResourcesCount,
    auditCheckDetails_checkCompliant,
    auditCheckDetails_nonCompliantResourcesCount,
    auditCheckDetails_errorCode,
    auditCheckDetails_checkRunStatus,
    auditCheckDetails_suppressedNonCompliantResourcesCount,

    -- ** AuditFinding
    auditFinding_nonCompliantResource,
    auditFinding_relatedResources,
    auditFinding_severity,
    auditFinding_taskStartTime,
    auditFinding_reasonForNonCompliance,
    auditFinding_taskId,
    auditFinding_checkName,
    auditFinding_isSuppressed,
    auditFinding_findingTime,
    auditFinding_reasonForNonComplianceCode,
    auditFinding_findingId,

    -- ** AuditMitigationActionExecutionMetadata
    auditMitigationActionExecutionMetadata_message,
    auditMitigationActionExecutionMetadata_actionName,
    auditMitigationActionExecutionMetadata_taskId,
    auditMitigationActionExecutionMetadata_status,
    auditMitigationActionExecutionMetadata_endTime,
    auditMitigationActionExecutionMetadata_actionId,
    auditMitigationActionExecutionMetadata_errorCode,
    auditMitigationActionExecutionMetadata_startTime,
    auditMitigationActionExecutionMetadata_findingId,

    -- ** AuditMitigationActionsTaskMetadata
    auditMitigationActionsTaskMetadata_taskId,
    auditMitigationActionsTaskMetadata_taskStatus,
    auditMitigationActionsTaskMetadata_startTime,

    -- ** AuditMitigationActionsTaskTarget
    auditMitigationActionsTaskTarget_auditCheckToReasonCodeFilter,
    auditMitigationActionsTaskTarget_auditTaskId,
    auditMitigationActionsTaskTarget_findingIds,

    -- ** AuditNotificationTarget
    auditNotificationTarget_roleArn,
    auditNotificationTarget_targetArn,
    auditNotificationTarget_enabled,

    -- ** AuditSuppression
    auditSuppression_description,
    auditSuppression_expirationDate,
    auditSuppression_suppressIndefinitely,
    auditSuppression_checkName,
    auditSuppression_resourceIdentifier,

    -- ** AuditTaskMetadata
    auditTaskMetadata_taskId,
    auditTaskMetadata_taskStatus,
    auditTaskMetadata_taskType,

    -- ** AuthInfo
    authInfo_actionType,
    authInfo_resources,

    -- ** AuthResult
    authResult_allowed,
    authResult_denied,
    authResult_missingContextValues,
    authResult_authInfo,
    authResult_authDecision,

    -- ** AuthorizerConfig
    authorizerConfig_defaultAuthorizerName,
    authorizerConfig_allowAuthorizerOverride,

    -- ** AuthorizerDescription
    authorizerDescription_lastModifiedDate,
    authorizerDescription_tokenKeyName,
    authorizerDescription_creationDate,
    authorizerDescription_status,
    authorizerDescription_authorizerFunctionArn,
    authorizerDescription_signingDisabled,
    authorizerDescription_tokenSigningPublicKeys,
    authorizerDescription_authorizerArn,
    authorizerDescription_enableCachingForHttp,
    authorizerDescription_authorizerName,

    -- ** AuthorizerSummary
    authorizerSummary_authorizerArn,
    authorizerSummary_authorizerName,

    -- ** AwsJobAbortConfig
    awsJobAbortConfig_abortCriteriaList,

    -- ** AwsJobAbortCriteria
    awsJobAbortCriteria_failureType,
    awsJobAbortCriteria_action,
    awsJobAbortCriteria_thresholdPercentage,
    awsJobAbortCriteria_minNumberOfExecutedThings,

    -- ** AwsJobExecutionsRolloutConfig
    awsJobExecutionsRolloutConfig_maximumPerMinute,
    awsJobExecutionsRolloutConfig_exponentialRate,

    -- ** AwsJobExponentialRolloutRate
    awsJobExponentialRolloutRate_baseRatePerMinute,
    awsJobExponentialRolloutRate_incrementFactor,
    awsJobExponentialRolloutRate_rateIncreaseCriteria,

    -- ** AwsJobPresignedUrlConfig
    awsJobPresignedUrlConfig_expiresInSec,

    -- ** AwsJobRateIncreaseCriteria
    awsJobRateIncreaseCriteria_numberOfSucceededThings,
    awsJobRateIncreaseCriteria_numberOfNotifiedThings,

    -- ** AwsJobTimeoutConfig
    awsJobTimeoutConfig_inProgressTimeoutInMinutes,

    -- ** Behavior
    behavior_suppressAlerts,
    behavior_criteria,
    behavior_metricDimension,
    behavior_metric,
    behavior_name,

    -- ** BehaviorCriteria
    behaviorCriteria_consecutiveDatapointsToClear,
    behaviorCriteria_consecutiveDatapointsToAlarm,
    behaviorCriteria_durationSeconds,
    behaviorCriteria_mlDetectionConfig,
    behaviorCriteria_statisticalThreshold,
    behaviorCriteria_comparisonOperator,
    behaviorCriteria_value,

    -- ** BehaviorModelTrainingSummary
    behaviorModelTrainingSummary_modelStatus,
    behaviorModelTrainingSummary_behaviorName,
    behaviorModelTrainingSummary_securityProfileName,
    behaviorModelTrainingSummary_trainingDataCollectionStartDate,
    behaviorModelTrainingSummary_datapointsCollectionPercentage,
    behaviorModelTrainingSummary_lastModelRefreshDate,

    -- ** BillingGroupMetadata
    billingGroupMetadata_creationDate,

    -- ** BillingGroupProperties
    billingGroupProperties_billingGroupDescription,

    -- ** Bucket
    bucket_count,
    bucket_keyValue,

    -- ** BucketsAggregationType
    bucketsAggregationType_termsAggregation,

    -- ** CACertificate
    cACertificate_creationDate,
    cACertificate_status,
    cACertificate_certificateArn,
    cACertificate_certificateId,

    -- ** CACertificateDescription
    cACertificateDescription_customerVersion,
    cACertificateDescription_lastModifiedDate,
    cACertificateDescription_creationDate,
    cACertificateDescription_status,
    cACertificateDescription_certificateArn,
    cACertificateDescription_certificateId,
    cACertificateDescription_certificatePem,
    cACertificateDescription_autoRegistrationStatus,
    cACertificateDescription_generationId,
    cACertificateDescription_certificateMode,
    cACertificateDescription_ownedBy,
    cACertificateDescription_validity,

    -- ** Certificate
    certificate_creationDate,
    certificate_status,
    certificate_certificateArn,
    certificate_certificateId,
    certificate_certificateMode,

    -- ** CertificateDescription
    certificateDescription_customerVersion,
    certificateDescription_lastModifiedDate,
    certificateDescription_creationDate,
    certificateDescription_status,
    certificateDescription_caCertificateId,
    certificateDescription_certificateArn,
    certificateDescription_certificateId,
    certificateDescription_certificatePem,
    certificateDescription_transferData,
    certificateDescription_generationId,
    certificateDescription_previousOwnedBy,
    certificateDescription_certificateMode,
    certificateDescription_ownedBy,
    certificateDescription_validity,

    -- ** CertificateValidity
    certificateValidity_notBefore,
    certificateValidity_notAfter,

    -- ** CloudwatchAlarmAction
    cloudwatchAlarmAction_roleArn,
    cloudwatchAlarmAction_alarmName,
    cloudwatchAlarmAction_stateReason,
    cloudwatchAlarmAction_stateValue,

    -- ** CloudwatchLogsAction
    cloudwatchLogsAction_roleArn,
    cloudwatchLogsAction_logGroupName,

    -- ** CloudwatchMetricAction
    cloudwatchMetricAction_metricTimestamp,
    cloudwatchMetricAction_roleArn,
    cloudwatchMetricAction_metricNamespace,
    cloudwatchMetricAction_metricName,
    cloudwatchMetricAction_metricValue,
    cloudwatchMetricAction_metricUnit,

    -- ** CodeSigning
    codeSigning_awsSignerJobId,
    codeSigning_startSigningJobParameter,
    codeSigning_customCodeSigning,

    -- ** CodeSigningCertificateChain
    codeSigningCertificateChain_certificateName,
    codeSigningCertificateChain_inlineDocument,

    -- ** CodeSigningSignature
    codeSigningSignature_inlineDocument,

    -- ** Configuration
    configuration_enabled,

    -- ** CustomCodeSigning
    customCodeSigning_hashAlgorithm,
    customCodeSigning_signatureAlgorithm,
    customCodeSigning_certificateChain,
    customCodeSigning_signature,

    -- ** Denied
    denied_explicitDeny,
    denied_implicitDeny,

    -- ** Destination
    destination_s3Destination,

    -- ** DetectMitigationActionExecution
    detectMitigationActionExecution_message,
    detectMitigationActionExecution_actionName,
    detectMitigationActionExecution_thingName,
    detectMitigationActionExecution_violationId,
    detectMitigationActionExecution_taskId,
    detectMitigationActionExecution_executionStartDate,
    detectMitigationActionExecution_status,
    detectMitigationActionExecution_executionEndDate,
    detectMitigationActionExecution_errorCode,

    -- ** DetectMitigationActionsTaskStatistics
    detectMitigationActionsTaskStatistics_actionsExecuted,
    detectMitigationActionsTaskStatistics_actionsFailed,
    detectMitigationActionsTaskStatistics_actionsSkipped,

    -- ** DetectMitigationActionsTaskSummary
    detectMitigationActionsTaskSummary_suppressedAlertsIncluded,
    detectMitigationActionsTaskSummary_taskStartTime,
    detectMitigationActionsTaskSummary_taskId,
    detectMitigationActionsTaskSummary_taskStatus,
    detectMitigationActionsTaskSummary_target,
    detectMitigationActionsTaskSummary_actionsDefinition,
    detectMitigationActionsTaskSummary_onlyActiveViolationsIncluded,
    detectMitigationActionsTaskSummary_violationEventOccurrenceRange,
    detectMitigationActionsTaskSummary_taskStatistics,
    detectMitigationActionsTaskSummary_taskEndTime,

    -- ** DetectMitigationActionsTaskTarget
    detectMitigationActionsTaskTarget_behaviorName,
    detectMitigationActionsTaskTarget_violationIds,
    detectMitigationActionsTaskTarget_securityProfileName,

    -- ** DocumentParameter
    documentParameter_key,
    documentParameter_example,
    documentParameter_regex,
    documentParameter_description,
    documentParameter_optional,

    -- ** DomainConfigurationSummary
    domainConfigurationSummary_domainConfigurationArn,
    domainConfigurationSummary_serviceType,
    domainConfigurationSummary_domainConfigurationName,

    -- ** DynamoDBAction
    dynamoDBAction_rangeKeyType,
    dynamoDBAction_rangeKeyValue,
    dynamoDBAction_hashKeyType,
    dynamoDBAction_rangeKeyField,
    dynamoDBAction_operation,
    dynamoDBAction_payloadField,
    dynamoDBAction_tableName,
    dynamoDBAction_roleArn,
    dynamoDBAction_hashKeyField,
    dynamoDBAction_hashKeyValue,

    -- ** DynamoDBv2Action
    dynamoDBv2Action_roleArn,
    dynamoDBv2Action_putItem,

    -- ** EffectivePolicy
    effectivePolicy_policyName,
    effectivePolicy_policyDocument,
    effectivePolicy_policyArn,

    -- ** ElasticsearchAction
    elasticsearchAction_roleArn,
    elasticsearchAction_endpoint,
    elasticsearchAction_index,
    elasticsearchAction_type,
    elasticsearchAction_id,

    -- ** EnableIoTLoggingParams
    enableIoTLoggingParams_roleArnForLogging,
    enableIoTLoggingParams_logLevel,

    -- ** ErrorInfo
    errorInfo_message,
    errorInfo_code,

    -- ** ExplicitDeny
    explicitDeny_policies,

    -- ** ExponentialRolloutRate
    exponentialRolloutRate_baseRatePerMinute,
    exponentialRolloutRate_incrementFactor,
    exponentialRolloutRate_rateIncreaseCriteria,

    -- ** Field
    field_name,
    field_type,

    -- ** FileLocation
    fileLocation_s3Location,
    fileLocation_stream,

    -- ** FirehoseAction
    firehoseAction_separator,
    firehoseAction_batchMode,
    firehoseAction_roleArn,
    firehoseAction_deliveryStreamName,

    -- ** FleetMetricNameAndArn
    fleetMetricNameAndArn_metricArn,
    fleetMetricNameAndArn_metricName,

    -- ** GroupNameAndArn
    groupNameAndArn_groupName,
    groupNameAndArn_groupArn,

    -- ** HttpAction
    httpAction_confirmationUrl,
    httpAction_headers,
    httpAction_auth,
    httpAction_url,

    -- ** HttpActionHeader
    httpActionHeader_key,
    httpActionHeader_value,

    -- ** HttpAuthorization
    httpAuthorization_sigv4,

    -- ** HttpContext
    httpContext_headers,
    httpContext_queryString,

    -- ** HttpUrlDestinationConfiguration
    httpUrlDestinationConfiguration_confirmationUrl,

    -- ** HttpUrlDestinationProperties
    httpUrlDestinationProperties_confirmationUrl,

    -- ** HttpUrlDestinationSummary
    httpUrlDestinationSummary_confirmationUrl,

    -- ** ImplicitDeny
    implicitDeny_policies,

    -- ** IndexingFilter
    indexingFilter_namedShadowNames,

    -- ** IotAnalyticsAction
    iotAnalyticsAction_roleArn,
    iotAnalyticsAction_channelName,
    iotAnalyticsAction_channelArn,
    iotAnalyticsAction_batchMode,

    -- ** IotEventsAction
    iotEventsAction_messageId,
    iotEventsAction_batchMode,
    iotEventsAction_inputName,
    iotEventsAction_roleArn,

    -- ** IotSiteWiseAction
    iotSiteWiseAction_putAssetPropertyValueEntries,
    iotSiteWiseAction_roleArn,

    -- ** Job
    job_jobExecutionsRolloutConfig,
    job_abortConfig,
    job_lastUpdatedAt,
    job_documentParameters,
    job_isConcurrent,
    job_jobTemplateArn,
    job_targetSelection,
    job_jobId,
    job_forceCanceled,
    job_status,
    job_targets,
    job_description,
    job_comment,
    job_presignedUrlConfig,
    job_reasonCode,
    job_namespaceId,
    job_jobArn,
    job_jobExecutionsRetryConfig,
    job_jobProcessDetails,
    job_completedAt,
    job_timeoutConfig,
    job_createdAt,

    -- ** JobExecution
    jobExecution_executionNumber,
    jobExecution_thingArn,
    jobExecution_lastUpdatedAt,
    jobExecution_statusDetails,
    jobExecution_jobId,
    jobExecution_forceCanceled,
    jobExecution_status,
    jobExecution_startedAt,
    jobExecution_versionNumber,
    jobExecution_queuedAt,
    jobExecution_approximateSecondsBeforeTimedOut,

    -- ** JobExecutionStatusDetails
    jobExecutionStatusDetails_detailsMap,

    -- ** JobExecutionSummary
    jobExecutionSummary_executionNumber,
    jobExecutionSummary_lastUpdatedAt,
    jobExecutionSummary_status,
    jobExecutionSummary_startedAt,
    jobExecutionSummary_queuedAt,
    jobExecutionSummary_retryAttempt,

    -- ** JobExecutionSummaryForJob
    jobExecutionSummaryForJob_thingArn,
    jobExecutionSummaryForJob_jobExecutionSummary,

    -- ** JobExecutionSummaryForThing
    jobExecutionSummaryForThing_jobId,
    jobExecutionSummaryForThing_jobExecutionSummary,

    -- ** JobExecutionsRetryConfig
    jobExecutionsRetryConfig_criteriaList,

    -- ** JobExecutionsRolloutConfig
    jobExecutionsRolloutConfig_maximumPerMinute,
    jobExecutionsRolloutConfig_exponentialRate,

    -- ** JobProcessDetails
    jobProcessDetails_numberOfSucceededThings,
    jobProcessDetails_numberOfFailedThings,
    jobProcessDetails_numberOfRejectedThings,
    jobProcessDetails_numberOfTimedOutThings,
    jobProcessDetails_numberOfCanceledThings,
    jobProcessDetails_numberOfInProgressThings,
    jobProcessDetails_processingTargets,
    jobProcessDetails_numberOfRemovedThings,
    jobProcessDetails_numberOfQueuedThings,

    -- ** JobSummary
    jobSummary_lastUpdatedAt,
    jobSummary_isConcurrent,
    jobSummary_targetSelection,
    jobSummary_jobId,
    jobSummary_status,
    jobSummary_jobArn,
    jobSummary_completedAt,
    jobSummary_thingGroupId,
    jobSummary_createdAt,

    -- ** JobTemplateSummary
    jobTemplateSummary_jobTemplateArn,
    jobTemplateSummary_jobTemplateId,
    jobTemplateSummary_description,
    jobTemplateSummary_createdAt,

    -- ** KafkaAction
    kafkaAction_key,
    kafkaAction_partition,
    kafkaAction_destinationArn,
    kafkaAction_topic,
    kafkaAction_clientProperties,

    -- ** KeyPair
    keyPair_publicKey,
    keyPair_privateKey,

    -- ** KinesisAction
    kinesisAction_partitionKey,
    kinesisAction_roleArn,
    kinesisAction_streamName,

    -- ** LambdaAction
    lambdaAction_functionArn,

    -- ** LogTarget
    logTarget_targetName,
    logTarget_targetType,

    -- ** LogTargetConfiguration
    logTargetConfiguration_logLevel,
    logTargetConfiguration_logTarget,

    -- ** LoggingOptionsPayload
    loggingOptionsPayload_logLevel,
    loggingOptionsPayload_roleArn,

    -- ** MachineLearningDetectionConfig
    machineLearningDetectionConfig_confidenceLevel,

    -- ** ManagedJobTemplateSummary
    managedJobTemplateSummary_templateName,
    managedJobTemplateSummary_environments,
    managedJobTemplateSummary_description,
    managedJobTemplateSummary_templateVersion,
    managedJobTemplateSummary_templateArn,

    -- ** MetricDatum
    metricDatum_timestamp,
    metricDatum_value,

    -- ** MetricDimension
    metricDimension_operator,
    metricDimension_dimensionName,

    -- ** MetricToRetain
    metricToRetain_metricDimension,
    metricToRetain_metric,

    -- ** MetricValue
    metricValue_numbers,
    metricValue_number,
    metricValue_ports,
    metricValue_cidrs,
    metricValue_count,
    metricValue_strings,

    -- ** MitigationAction
    mitigationAction_name,
    mitigationAction_roleArn,
    mitigationAction_id,
    mitigationAction_actionParams,

    -- ** MitigationActionIdentifier
    mitigationActionIdentifier_actionName,
    mitigationActionIdentifier_creationDate,
    mitigationActionIdentifier_actionArn,

    -- ** MitigationActionParams
    mitigationActionParams_replaceDefaultPolicyVersionParams,
    mitigationActionParams_updateDeviceCertificateParams,
    mitigationActionParams_publishFindingToSnsParams,
    mitigationActionParams_updateCACertificateParams,
    mitigationActionParams_enableIoTLoggingParams,
    mitigationActionParams_addThingsToThingGroupParams,

    -- ** MqttContext
    mqttContext_clientId,
    mqttContext_password,
    mqttContext_username,

    -- ** NonCompliantResource
    nonCompliantResource_resourceType,
    nonCompliantResource_additionalInfo,
    nonCompliantResource_resourceIdentifier,

    -- ** OTAUpdateFile
    oTAUpdateFile_fileVersion,
    oTAUpdateFile_fileName,
    oTAUpdateFile_fileLocation,
    oTAUpdateFile_attributes,
    oTAUpdateFile_fileType,
    oTAUpdateFile_codeSigning,

    -- ** OTAUpdateInfo
    oTAUpdateInfo_awsIotJobId,
    oTAUpdateInfo_awsJobExecutionsRolloutConfig,
    oTAUpdateInfo_lastModifiedDate,
    oTAUpdateInfo_targetSelection,
    oTAUpdateInfo_creationDate,
    oTAUpdateInfo_awsIotJobArn,
    oTAUpdateInfo_otaUpdateStatus,
    oTAUpdateInfo_protocols,
    oTAUpdateInfo_targets,
    oTAUpdateInfo_description,
    oTAUpdateInfo_additionalParameters,
    oTAUpdateInfo_otaUpdateFiles,
    oTAUpdateInfo_otaUpdateArn,
    oTAUpdateInfo_awsJobPresignedUrlConfig,
    oTAUpdateInfo_errorInfo,
    oTAUpdateInfo_otaUpdateId,

    -- ** OTAUpdateSummary
    oTAUpdateSummary_creationDate,
    oTAUpdateSummary_otaUpdateArn,
    oTAUpdateSummary_otaUpdateId,

    -- ** OpenSearchAction
    openSearchAction_roleArn,
    openSearchAction_endpoint,
    openSearchAction_index,
    openSearchAction_type,
    openSearchAction_id,

    -- ** OutgoingCertificate
    outgoingCertificate_transferDate,
    outgoingCertificate_transferredTo,
    outgoingCertificate_transferMessage,
    outgoingCertificate_creationDate,
    outgoingCertificate_certificateArn,
    outgoingCertificate_certificateId,

    -- ** PercentPair
    percentPair_percent,
    percentPair_value,

    -- ** Policy
    policy_policyName,
    policy_policyArn,

    -- ** PolicyVersion
    policyVersion_isDefaultVersion,
    policyVersion_createDate,
    policyVersion_versionId,

    -- ** PolicyVersionIdentifier
    policyVersionIdentifier_policyName,
    policyVersionIdentifier_policyVersionId,

    -- ** PresignedUrlConfig
    presignedUrlConfig_roleArn,
    presignedUrlConfig_expiresInSec,

    -- ** ProvisioningHook
    provisioningHook_payloadVersion,
    provisioningHook_targetArn,

    -- ** ProvisioningTemplateSummary
    provisioningTemplateSummary_templateName,
    provisioningTemplateSummary_type,
    provisioningTemplateSummary_lastModifiedDate,
    provisioningTemplateSummary_creationDate,
    provisioningTemplateSummary_description,
    provisioningTemplateSummary_enabled,
    provisioningTemplateSummary_templateArn,

    -- ** ProvisioningTemplateVersionSummary
    provisioningTemplateVersionSummary_isDefaultVersion,
    provisioningTemplateVersionSummary_creationDate,
    provisioningTemplateVersionSummary_versionId,

    -- ** PublishFindingToSnsParams
    publishFindingToSnsParams_topicArn,

    -- ** PutAssetPropertyValueEntry
    putAssetPropertyValueEntry_propertyAlias,
    putAssetPropertyValueEntry_assetId,
    putAssetPropertyValueEntry_entryId,
    putAssetPropertyValueEntry_propertyId,
    putAssetPropertyValueEntry_propertyValues,

    -- ** PutItemInput
    putItemInput_tableName,

    -- ** RateIncreaseCriteria
    rateIncreaseCriteria_numberOfSucceededThings,
    rateIncreaseCriteria_numberOfNotifiedThings,

    -- ** RegistrationConfig
    registrationConfig_templateName,
    registrationConfig_roleArn,
    registrationConfig_templateBody,

    -- ** RelatedResource
    relatedResource_resourceType,
    relatedResource_additionalInfo,
    relatedResource_resourceIdentifier,

    -- ** ReplaceDefaultPolicyVersionParams
    replaceDefaultPolicyVersionParams_templateName,

    -- ** RepublishAction
    republishAction_qos,
    republishAction_roleArn,
    republishAction_topic,

    -- ** ResourceIdentifier
    resourceIdentifier_clientId,
    resourceIdentifier_account,
    resourceIdentifier_policyVersionIdentifier,
    resourceIdentifier_deviceCertificateId,
    resourceIdentifier_caCertificateId,
    resourceIdentifier_iamRoleArn,
    resourceIdentifier_roleAliasArn,
    resourceIdentifier_cognitoIdentityPoolId,

    -- ** RetryCriteria
    retryCriteria_failureType,
    retryCriteria_numberOfRetries,

    -- ** RoleAliasDescription
    roleAliasDescription_roleArn,
    roleAliasDescription_lastModifiedDate,
    roleAliasDescription_roleAlias,
    roleAliasDescription_credentialDurationSeconds,
    roleAliasDescription_creationDate,
    roleAliasDescription_owner,
    roleAliasDescription_roleAliasArn,

    -- ** S3Action
    s3Action_cannedAcl,
    s3Action_roleArn,
    s3Action_bucketName,
    s3Action_key,

    -- ** S3Destination
    s3Destination_bucket,
    s3Destination_prefix,

    -- ** S3Location
    s3Location_key,
    s3Location_bucket,
    s3Location_version,

    -- ** SalesforceAction
    salesforceAction_token,
    salesforceAction_url,

    -- ** ScheduledAuditMetadata
    scheduledAuditMetadata_frequency,
    scheduledAuditMetadata_dayOfWeek,
    scheduledAuditMetadata_dayOfMonth,
    scheduledAuditMetadata_scheduledAuditArn,
    scheduledAuditMetadata_scheduledAuditName,

    -- ** SecurityProfileIdentifier
    securityProfileIdentifier_name,
    securityProfileIdentifier_arn,

    -- ** SecurityProfileTarget
    securityProfileTarget_arn,

    -- ** SecurityProfileTargetMapping
    securityProfileTargetMapping_securityProfileIdentifier,
    securityProfileTargetMapping_target,

    -- ** ServerCertificateSummary
    serverCertificateSummary_serverCertificateArn,
    serverCertificateSummary_serverCertificateStatus,
    serverCertificateSummary_serverCertificateStatusDetail,

    -- ** SigV4Authorization
    sigV4Authorization_signingRegion,
    sigV4Authorization_serviceName,
    sigV4Authorization_roleArn,

    -- ** SigningProfileParameter
    signingProfileParameter_platform,
    signingProfileParameter_certificateArn,
    signingProfileParameter_certificatePathOnDevice,

    -- ** SnsAction
    snsAction_messageFormat,
    snsAction_targetArn,
    snsAction_roleArn,

    -- ** SqsAction
    sqsAction_useBase64,
    sqsAction_roleArn,
    sqsAction_queueUrl,

    -- ** StartSigningJobParameter
    startSigningJobParameter_destination,
    startSigningJobParameter_signingProfileName,
    startSigningJobParameter_signingProfileParameter,

    -- ** StatisticalThreshold
    statisticalThreshold_statistic,

    -- ** Statistics
    statistics_minimum,
    statistics_average,
    statistics_sumOfSquares,
    statistics_count,
    statistics_stdDeviation,
    statistics_sum,
    statistics_variance,
    statistics_maximum,

    -- ** StepFunctionsAction
    stepFunctionsAction_executionNamePrefix,
    stepFunctionsAction_stateMachineName,
    stepFunctionsAction_roleArn,

    -- ** Stream
    stream_fileId,
    stream_streamId,

    -- ** StreamFile
    streamFile_fileId,
    streamFile_s3Location,

    -- ** StreamInfo
    streamInfo_files,
    streamInfo_roleArn,
    streamInfo_lastUpdatedAt,
    streamInfo_streamId,
    streamInfo_description,
    streamInfo_streamVersion,
    streamInfo_streamArn,
    streamInfo_createdAt,

    -- ** StreamSummary
    streamSummary_streamId,
    streamSummary_description,
    streamSummary_streamVersion,
    streamSummary_streamArn,

    -- ** Tag
    tag_value,
    tag_key,

    -- ** TaskStatistics
    taskStatistics_waitingForDataCollectionChecks,
    taskStatistics_compliantChecks,
    taskStatistics_nonCompliantChecks,
    taskStatistics_inProgressChecks,
    taskStatistics_totalChecks,
    taskStatistics_canceledChecks,
    taskStatistics_failedChecks,

    -- ** TaskStatisticsForAuditCheck
    taskStatisticsForAuditCheck_totalFindingsCount,
    taskStatisticsForAuditCheck_failedFindingsCount,
    taskStatisticsForAuditCheck_canceledFindingsCount,
    taskStatisticsForAuditCheck_skippedFindingsCount,
    taskStatisticsForAuditCheck_succeededFindingsCount,

    -- ** TermsAggregation
    termsAggregation_maxBuckets,

    -- ** ThingAttribute
    thingAttribute_thingName,
    thingAttribute_thingArn,
    thingAttribute_thingTypeName,
    thingAttribute_attributes,
    thingAttribute_version,

    -- ** ThingConnectivity
    thingConnectivity_timestamp,
    thingConnectivity_connected,
    thingConnectivity_disconnectReason,

    -- ** ThingDocument
    thingDocument_thingName,
    thingDocument_thingId,
    thingDocument_deviceDefender,
    thingDocument_shadow,
    thingDocument_thingTypeName,
    thingDocument_thingGroupNames,
    thingDocument_attributes,
    thingDocument_connectivity,

    -- ** ThingGroupDocument
    thingGroupDocument_thingGroupDescription,
    thingGroupDocument_thingGroupName,
    thingGroupDocument_parentGroupNames,
    thingGroupDocument_attributes,
    thingGroupDocument_thingGroupId,

    -- ** ThingGroupIndexingConfiguration
    thingGroupIndexingConfiguration_managedFields,
    thingGroupIndexingConfiguration_customFields,
    thingGroupIndexingConfiguration_thingGroupIndexingMode,

    -- ** ThingGroupMetadata
    thingGroupMetadata_rootToParentThingGroups,
    thingGroupMetadata_creationDate,
    thingGroupMetadata_parentGroupName,

    -- ** ThingGroupProperties
    thingGroupProperties_thingGroupDescription,
    thingGroupProperties_attributePayload,

    -- ** ThingIndexingConfiguration
    thingIndexingConfiguration_deviceDefenderIndexingMode,
    thingIndexingConfiguration_filter,
    thingIndexingConfiguration_thingConnectivityIndexingMode,
    thingIndexingConfiguration_managedFields,
    thingIndexingConfiguration_namedShadowIndexingMode,
    thingIndexingConfiguration_customFields,
    thingIndexingConfiguration_thingIndexingMode,

    -- ** ThingTypeDefinition
    thingTypeDefinition_thingTypeMetadata,
    thingTypeDefinition_thingTypeName,
    thingTypeDefinition_thingTypeArn,
    thingTypeDefinition_thingTypeProperties,

    -- ** ThingTypeMetadata
    thingTypeMetadata_deprecated,
    thingTypeMetadata_creationDate,
    thingTypeMetadata_deprecationDate,

    -- ** ThingTypeProperties
    thingTypeProperties_searchableAttributes,
    thingTypeProperties_thingTypeDescription,

    -- ** TimeoutConfig
    timeoutConfig_inProgressTimeoutInMinutes,

    -- ** TimestreamAction
    timestreamAction_timestamp,
    timestreamAction_roleArn,
    timestreamAction_databaseName,
    timestreamAction_tableName,
    timestreamAction_dimensions,

    -- ** TimestreamDimension
    timestreamDimension_name,
    timestreamDimension_value,

    -- ** TimestreamTimestamp
    timestreamTimestamp_value,
    timestreamTimestamp_unit,

    -- ** TlsContext
    tlsContext_serverName,

    -- ** TopicRule
    topicRule_errorAction,
    topicRule_awsIotSqlVersion,
    topicRule_description,
    topicRule_ruleName,
    topicRule_sql,
    topicRule_createdAt,
    topicRule_ruleDisabled,
    topicRule_actions,

    -- ** TopicRuleDestination
    topicRuleDestination_lastUpdatedAt,
    topicRuleDestination_arn,
    topicRuleDestination_statusReason,
    topicRuleDestination_status,
    topicRuleDestination_httpUrlProperties,
    topicRuleDestination_createdAt,
    topicRuleDestination_vpcProperties,

    -- ** TopicRuleDestinationConfiguration
    topicRuleDestinationConfiguration_vpcConfiguration,
    topicRuleDestinationConfiguration_httpUrlConfiguration,

    -- ** TopicRuleDestinationSummary
    topicRuleDestinationSummary_vpcDestinationSummary,
    topicRuleDestinationSummary_httpUrlSummary,
    topicRuleDestinationSummary_lastUpdatedAt,
    topicRuleDestinationSummary_arn,
    topicRuleDestinationSummary_statusReason,
    topicRuleDestinationSummary_status,
    topicRuleDestinationSummary_createdAt,

    -- ** TopicRuleListItem
    topicRuleListItem_ruleArn,
    topicRuleListItem_topicPattern,
    topicRuleListItem_ruleName,
    topicRuleListItem_createdAt,
    topicRuleListItem_ruleDisabled,

    -- ** TopicRulePayload
    topicRulePayload_errorAction,
    topicRulePayload_awsIotSqlVersion,
    topicRulePayload_description,
    topicRulePayload_ruleDisabled,
    topicRulePayload_sql,
    topicRulePayload_actions,

    -- ** TransferData
    transferData_transferDate,
    transferData_rejectReason,
    transferData_transferMessage,
    transferData_rejectDate,
    transferData_acceptDate,

    -- ** UpdateCACertificateParams
    updateCACertificateParams_action,

    -- ** UpdateDeviceCertificateParams
    updateDeviceCertificateParams_action,

    -- ** ValidationError
    validationError_errorMessage,

    -- ** ViolationEvent
    violationEvent_thingName,
    violationEvent_violationEventTime,
    violationEvent_violationId,
    violationEvent_metricValue,
    violationEvent_violationEventAdditionalInfo,
    violationEvent_securityProfileName,
    violationEvent_verificationStateDescription,
    violationEvent_verificationState,
    violationEvent_violationEventType,
    violationEvent_behavior,

    -- ** ViolationEventAdditionalInfo
    violationEventAdditionalInfo_confidenceLevel,

    -- ** ViolationEventOccurrenceRange
    violationEventOccurrenceRange_startTime,
    violationEventOccurrenceRange_endTime,

    -- ** VpcDestinationConfiguration
    vpcDestinationConfiguration_securityGroups,
    vpcDestinationConfiguration_subnetIds,
    vpcDestinationConfiguration_vpcId,
    vpcDestinationConfiguration_roleArn,

    -- ** VpcDestinationProperties
    vpcDestinationProperties_roleArn,
    vpcDestinationProperties_securityGroups,
    vpcDestinationProperties_vpcId,
    vpcDestinationProperties_subnetIds,

    -- ** VpcDestinationSummary
    vpcDestinationSummary_roleArn,
    vpcDestinationSummary_securityGroups,
    vpcDestinationSummary_vpcId,
    vpcDestinationSummary_subnetIds,
  )
where

import Amazonka.IoT.AcceptCertificateTransfer
import Amazonka.IoT.AddThingToBillingGroup
import Amazonka.IoT.AddThingToThingGroup
import Amazonka.IoT.AssociateTargetsWithJob
import Amazonka.IoT.AttachPolicy
import Amazonka.IoT.AttachSecurityProfile
import Amazonka.IoT.AttachThingPrincipal
import Amazonka.IoT.CancelAuditMitigationActionsTask
import Amazonka.IoT.CancelAuditTask
import Amazonka.IoT.CancelCertificateTransfer
import Amazonka.IoT.CancelDetectMitigationActionsTask
import Amazonka.IoT.CancelJob
import Amazonka.IoT.CancelJobExecution
import Amazonka.IoT.ClearDefaultAuthorizer
import Amazonka.IoT.ConfirmTopicRuleDestination
import Amazonka.IoT.CreateAuditSuppression
import Amazonka.IoT.CreateAuthorizer
import Amazonka.IoT.CreateBillingGroup
import Amazonka.IoT.CreateCertificateFromCsr
import Amazonka.IoT.CreateCustomMetric
import Amazonka.IoT.CreateDimension
import Amazonka.IoT.CreateDomainConfiguration
import Amazonka.IoT.CreateDynamicThingGroup
import Amazonka.IoT.CreateFleetMetric
import Amazonka.IoT.CreateJob
import Amazonka.IoT.CreateJobTemplate
import Amazonka.IoT.CreateKeysAndCertificate
import Amazonka.IoT.CreateMitigationAction
import Amazonka.IoT.CreateOTAUpdate
import Amazonka.IoT.CreatePolicy
import Amazonka.IoT.CreatePolicyVersion
import Amazonka.IoT.CreateProvisioningClaim
import Amazonka.IoT.CreateProvisioningTemplate
import Amazonka.IoT.CreateProvisioningTemplateVersion
import Amazonka.IoT.CreateRoleAlias
import Amazonka.IoT.CreateScheduledAudit
import Amazonka.IoT.CreateSecurityProfile
import Amazonka.IoT.CreateStream
import Amazonka.IoT.CreateThing
import Amazonka.IoT.CreateThingGroup
import Amazonka.IoT.CreateThingType
import Amazonka.IoT.CreateTopicRule
import Amazonka.IoT.CreateTopicRuleDestination
import Amazonka.IoT.DeleteAccountAuditConfiguration
import Amazonka.IoT.DeleteAuditSuppression
import Amazonka.IoT.DeleteAuthorizer
import Amazonka.IoT.DeleteBillingGroup
import Amazonka.IoT.DeleteCACertificate
import Amazonka.IoT.DeleteCertificate
import Amazonka.IoT.DeleteCustomMetric
import Amazonka.IoT.DeleteDimension
import Amazonka.IoT.DeleteDomainConfiguration
import Amazonka.IoT.DeleteDynamicThingGroup
import Amazonka.IoT.DeleteFleetMetric
import Amazonka.IoT.DeleteJob
import Amazonka.IoT.DeleteJobExecution
import Amazonka.IoT.DeleteJobTemplate
import Amazonka.IoT.DeleteMitigationAction
import Amazonka.IoT.DeleteOTAUpdate
import Amazonka.IoT.DeletePolicy
import Amazonka.IoT.DeletePolicyVersion
import Amazonka.IoT.DeleteProvisioningTemplate
import Amazonka.IoT.DeleteProvisioningTemplateVersion
import Amazonka.IoT.DeleteRegistrationCode
import Amazonka.IoT.DeleteRoleAlias
import Amazonka.IoT.DeleteScheduledAudit
import Amazonka.IoT.DeleteSecurityProfile
import Amazonka.IoT.DeleteStream
import Amazonka.IoT.DeleteThing
import Amazonka.IoT.DeleteThingGroup
import Amazonka.IoT.DeleteThingType
import Amazonka.IoT.DeleteTopicRule
import Amazonka.IoT.DeleteTopicRuleDestination
import Amazonka.IoT.DeleteV2LoggingLevel
import Amazonka.IoT.DeprecateThingType
import Amazonka.IoT.DescribeAccountAuditConfiguration
import Amazonka.IoT.DescribeAuditFinding
import Amazonka.IoT.DescribeAuditMitigationActionsTask
import Amazonka.IoT.DescribeAuditSuppression
import Amazonka.IoT.DescribeAuditTask
import Amazonka.IoT.DescribeAuthorizer
import Amazonka.IoT.DescribeBillingGroup
import Amazonka.IoT.DescribeCACertificate
import Amazonka.IoT.DescribeCertificate
import Amazonka.IoT.DescribeCustomMetric
import Amazonka.IoT.DescribeDefaultAuthorizer
import Amazonka.IoT.DescribeDetectMitigationActionsTask
import Amazonka.IoT.DescribeDimension
import Amazonka.IoT.DescribeDomainConfiguration
import Amazonka.IoT.DescribeEndpoint
import Amazonka.IoT.DescribeEventConfigurations
import Amazonka.IoT.DescribeFleetMetric
import Amazonka.IoT.DescribeIndex
import Amazonka.IoT.DescribeJob
import Amazonka.IoT.DescribeJobExecution
import Amazonka.IoT.DescribeJobTemplate
import Amazonka.IoT.DescribeManagedJobTemplate
import Amazonka.IoT.DescribeMitigationAction
import Amazonka.IoT.DescribeProvisioningTemplate
import Amazonka.IoT.DescribeProvisioningTemplateVersion
import Amazonka.IoT.DescribeRoleAlias
import Amazonka.IoT.DescribeScheduledAudit
import Amazonka.IoT.DescribeSecurityProfile
import Amazonka.IoT.DescribeStream
import Amazonka.IoT.DescribeThing
import Amazonka.IoT.DescribeThingGroup
import Amazonka.IoT.DescribeThingRegistrationTask
import Amazonka.IoT.DescribeThingType
import Amazonka.IoT.DetachPolicy
import Amazonka.IoT.DetachSecurityProfile
import Amazonka.IoT.DetachThingPrincipal
import Amazonka.IoT.DisableTopicRule
import Amazonka.IoT.EnableTopicRule
import Amazonka.IoT.GetBehaviorModelTrainingSummaries
import Amazonka.IoT.GetBucketsAggregation
import Amazonka.IoT.GetCardinality
import Amazonka.IoT.GetEffectivePolicies
import Amazonka.IoT.GetIndexingConfiguration
import Amazonka.IoT.GetJobDocument
import Amazonka.IoT.GetLoggingOptions
import Amazonka.IoT.GetOTAUpdate
import Amazonka.IoT.GetPercentiles
import Amazonka.IoT.GetPolicy
import Amazonka.IoT.GetPolicyVersion
import Amazonka.IoT.GetRegistrationCode
import Amazonka.IoT.GetStatistics
import Amazonka.IoT.GetTopicRule
import Amazonka.IoT.GetTopicRuleDestination
import Amazonka.IoT.GetV2LoggingOptions
import Amazonka.IoT.ListActiveViolations
import Amazonka.IoT.ListAttachedPolicies
import Amazonka.IoT.ListAuditFindings
import Amazonka.IoT.ListAuditMitigationActionsExecutions
import Amazonka.IoT.ListAuditMitigationActionsTasks
import Amazonka.IoT.ListAuditSuppressions
import Amazonka.IoT.ListAuditTasks
import Amazonka.IoT.ListAuthorizers
import Amazonka.IoT.ListBillingGroups
import Amazonka.IoT.ListCACertificates
import Amazonka.IoT.ListCertificates
import Amazonka.IoT.ListCertificatesByCA
import Amazonka.IoT.ListCustomMetrics
import Amazonka.IoT.ListDetectMitigationActionsExecutions
import Amazonka.IoT.ListDetectMitigationActionsTasks
import Amazonka.IoT.ListDimensions
import Amazonka.IoT.ListDomainConfigurations
import Amazonka.IoT.ListFleetMetrics
import Amazonka.IoT.ListIndices
import Amazonka.IoT.ListJobExecutionsForJob
import Amazonka.IoT.ListJobExecutionsForThing
import Amazonka.IoT.ListJobTemplates
import Amazonka.IoT.ListJobs
import Amazonka.IoT.ListManagedJobTemplates
import Amazonka.IoT.ListMetricValues
import Amazonka.IoT.ListMitigationActions
import Amazonka.IoT.ListOTAUpdates
import Amazonka.IoT.ListOutgoingCertificates
import Amazonka.IoT.ListPolicies
import Amazonka.IoT.ListPolicyVersions
import Amazonka.IoT.ListPrincipalThings
import Amazonka.IoT.ListProvisioningTemplateVersions
import Amazonka.IoT.ListProvisioningTemplates
import Amazonka.IoT.ListRoleAliases
import Amazonka.IoT.ListScheduledAudits
import Amazonka.IoT.ListSecurityProfiles
import Amazonka.IoT.ListSecurityProfilesForTarget
import Amazonka.IoT.ListStreams
import Amazonka.IoT.ListTagsForResource
import Amazonka.IoT.ListTargetsForPolicy
import Amazonka.IoT.ListTargetsForSecurityProfile
import Amazonka.IoT.ListThingGroups
import Amazonka.IoT.ListThingGroupsForThing
import Amazonka.IoT.ListThingPrincipals
import Amazonka.IoT.ListThingRegistrationTaskReports
import Amazonka.IoT.ListThingRegistrationTasks
import Amazonka.IoT.ListThingTypes
import Amazonka.IoT.ListThings
import Amazonka.IoT.ListThingsInBillingGroup
import Amazonka.IoT.ListThingsInThingGroup
import Amazonka.IoT.ListTopicRuleDestinations
import Amazonka.IoT.ListTopicRules
import Amazonka.IoT.ListV2LoggingLevels
import Amazonka.IoT.ListViolationEvents
import Amazonka.IoT.PutVerificationStateOnViolation
import Amazonka.IoT.RegisterCACertificate
import Amazonka.IoT.RegisterCertificate
import Amazonka.IoT.RegisterCertificateWithoutCA
import Amazonka.IoT.RegisterThing
import Amazonka.IoT.RejectCertificateTransfer
import Amazonka.IoT.RemoveThingFromBillingGroup
import Amazonka.IoT.RemoveThingFromThingGroup
import Amazonka.IoT.ReplaceTopicRule
import Amazonka.IoT.SearchIndex
import Amazonka.IoT.SetDefaultAuthorizer
import Amazonka.IoT.SetDefaultPolicyVersion
import Amazonka.IoT.SetLoggingOptions
import Amazonka.IoT.SetV2LoggingLevel
import Amazonka.IoT.SetV2LoggingOptions
import Amazonka.IoT.StartAuditMitigationActionsTask
import Amazonka.IoT.StartDetectMitigationActionsTask
import Amazonka.IoT.StartOnDemandAuditTask
import Amazonka.IoT.StartThingRegistrationTask
import Amazonka.IoT.StopThingRegistrationTask
import Amazonka.IoT.TagResource
import Amazonka.IoT.TestAuthorization
import Amazonka.IoT.TestInvokeAuthorizer
import Amazonka.IoT.TransferCertificate
import Amazonka.IoT.Types.AbortConfig
import Amazonka.IoT.Types.AbortCriteria
import Amazonka.IoT.Types.Action
import Amazonka.IoT.Types.ActiveViolation
import Amazonka.IoT.Types.AddThingsToThingGroupParams
import Amazonka.IoT.Types.AggregationType
import Amazonka.IoT.Types.AlertTarget
import Amazonka.IoT.Types.Allowed
import Amazonka.IoT.Types.AssetPropertyTimestamp
import Amazonka.IoT.Types.AssetPropertyValue
import Amazonka.IoT.Types.AssetPropertyVariant
import Amazonka.IoT.Types.AttributePayload
import Amazonka.IoT.Types.AuditCheckConfiguration
import Amazonka.IoT.Types.AuditCheckDetails
import Amazonka.IoT.Types.AuditFinding
import Amazonka.IoT.Types.AuditMitigationActionExecutionMetadata
import Amazonka.IoT.Types.AuditMitigationActionsTaskMetadata
import Amazonka.IoT.Types.AuditMitigationActionsTaskTarget
import Amazonka.IoT.Types.AuditNotificationTarget
import Amazonka.IoT.Types.AuditSuppression
import Amazonka.IoT.Types.AuditTaskMetadata
import Amazonka.IoT.Types.AuthInfo
import Amazonka.IoT.Types.AuthResult
import Amazonka.IoT.Types.AuthorizerConfig
import Amazonka.IoT.Types.AuthorizerDescription
import Amazonka.IoT.Types.AuthorizerSummary
import Amazonka.IoT.Types.AwsJobAbortConfig
import Amazonka.IoT.Types.AwsJobAbortCriteria
import Amazonka.IoT.Types.AwsJobExecutionsRolloutConfig
import Amazonka.IoT.Types.AwsJobExponentialRolloutRate
import Amazonka.IoT.Types.AwsJobPresignedUrlConfig
import Amazonka.IoT.Types.AwsJobRateIncreaseCriteria
import Amazonka.IoT.Types.AwsJobTimeoutConfig
import Amazonka.IoT.Types.Behavior
import Amazonka.IoT.Types.BehaviorCriteria
import Amazonka.IoT.Types.BehaviorModelTrainingSummary
import Amazonka.IoT.Types.BillingGroupMetadata
import Amazonka.IoT.Types.BillingGroupProperties
import Amazonka.IoT.Types.Bucket
import Amazonka.IoT.Types.BucketsAggregationType
import Amazonka.IoT.Types.CACertificate
import Amazonka.IoT.Types.CACertificateDescription
import Amazonka.IoT.Types.Certificate
import Amazonka.IoT.Types.CertificateDescription
import Amazonka.IoT.Types.CertificateValidity
import Amazonka.IoT.Types.CloudwatchAlarmAction
import Amazonka.IoT.Types.CloudwatchLogsAction
import Amazonka.IoT.Types.CloudwatchMetricAction
import Amazonka.IoT.Types.CodeSigning
import Amazonka.IoT.Types.CodeSigningCertificateChain
import Amazonka.IoT.Types.CodeSigningSignature
import Amazonka.IoT.Types.Configuration
import Amazonka.IoT.Types.CustomCodeSigning
import Amazonka.IoT.Types.Denied
import Amazonka.IoT.Types.Destination
import Amazonka.IoT.Types.DetectMitigationActionExecution
import Amazonka.IoT.Types.DetectMitigationActionsTaskStatistics
import Amazonka.IoT.Types.DetectMitigationActionsTaskSummary
import Amazonka.IoT.Types.DetectMitigationActionsTaskTarget
import Amazonka.IoT.Types.DocumentParameter
import Amazonka.IoT.Types.DomainConfigurationSummary
import Amazonka.IoT.Types.DynamoDBAction
import Amazonka.IoT.Types.DynamoDBv2Action
import Amazonka.IoT.Types.EffectivePolicy
import Amazonka.IoT.Types.ElasticsearchAction
import Amazonka.IoT.Types.EnableIoTLoggingParams
import Amazonka.IoT.Types.ErrorInfo
import Amazonka.IoT.Types.ExplicitDeny
import Amazonka.IoT.Types.ExponentialRolloutRate
import Amazonka.IoT.Types.Field
import Amazonka.IoT.Types.FileLocation
import Amazonka.IoT.Types.FirehoseAction
import Amazonka.IoT.Types.FleetMetricNameAndArn
import Amazonka.IoT.Types.GroupNameAndArn
import Amazonka.IoT.Types.HttpAction
import Amazonka.IoT.Types.HttpActionHeader
import Amazonka.IoT.Types.HttpAuthorization
import Amazonka.IoT.Types.HttpContext
import Amazonka.IoT.Types.HttpUrlDestinationConfiguration
import Amazonka.IoT.Types.HttpUrlDestinationProperties
import Amazonka.IoT.Types.HttpUrlDestinationSummary
import Amazonka.IoT.Types.ImplicitDeny
import Amazonka.IoT.Types.IndexingFilter
import Amazonka.IoT.Types.IotAnalyticsAction
import Amazonka.IoT.Types.IotEventsAction
import Amazonka.IoT.Types.IotSiteWiseAction
import Amazonka.IoT.Types.Job
import Amazonka.IoT.Types.JobExecution
import Amazonka.IoT.Types.JobExecutionStatusDetails
import Amazonka.IoT.Types.JobExecutionSummary
import Amazonka.IoT.Types.JobExecutionSummaryForJob
import Amazonka.IoT.Types.JobExecutionSummaryForThing
import Amazonka.IoT.Types.JobExecutionsRetryConfig
import Amazonka.IoT.Types.JobExecutionsRolloutConfig
import Amazonka.IoT.Types.JobProcessDetails
import Amazonka.IoT.Types.JobSummary
import Amazonka.IoT.Types.JobTemplateSummary
import Amazonka.IoT.Types.KafkaAction
import Amazonka.IoT.Types.KeyPair
import Amazonka.IoT.Types.KinesisAction
import Amazonka.IoT.Types.LambdaAction
import Amazonka.IoT.Types.LogTarget
import Amazonka.IoT.Types.LogTargetConfiguration
import Amazonka.IoT.Types.LoggingOptionsPayload
import Amazonka.IoT.Types.MachineLearningDetectionConfig
import Amazonka.IoT.Types.ManagedJobTemplateSummary
import Amazonka.IoT.Types.MetricDatum
import Amazonka.IoT.Types.MetricDimension
import Amazonka.IoT.Types.MetricToRetain
import Amazonka.IoT.Types.MetricValue
import Amazonka.IoT.Types.MitigationAction
import Amazonka.IoT.Types.MitigationActionIdentifier
import Amazonka.IoT.Types.MitigationActionParams
import Amazonka.IoT.Types.MqttContext
import Amazonka.IoT.Types.NonCompliantResource
import Amazonka.IoT.Types.OTAUpdateFile
import Amazonka.IoT.Types.OTAUpdateInfo
import Amazonka.IoT.Types.OTAUpdateSummary
import Amazonka.IoT.Types.OpenSearchAction
import Amazonka.IoT.Types.OutgoingCertificate
import Amazonka.IoT.Types.PercentPair
import Amazonka.IoT.Types.Policy
import Amazonka.IoT.Types.PolicyVersion
import Amazonka.IoT.Types.PolicyVersionIdentifier
import Amazonka.IoT.Types.PresignedUrlConfig
import Amazonka.IoT.Types.ProvisioningHook
import Amazonka.IoT.Types.ProvisioningTemplateSummary
import Amazonka.IoT.Types.ProvisioningTemplateVersionSummary
import Amazonka.IoT.Types.PublishFindingToSnsParams
import Amazonka.IoT.Types.PutAssetPropertyValueEntry
import Amazonka.IoT.Types.PutItemInput
import Amazonka.IoT.Types.RateIncreaseCriteria
import Amazonka.IoT.Types.RegistrationConfig
import Amazonka.IoT.Types.RelatedResource
import Amazonka.IoT.Types.ReplaceDefaultPolicyVersionParams
import Amazonka.IoT.Types.RepublishAction
import Amazonka.IoT.Types.ResourceIdentifier
import Amazonka.IoT.Types.RetryCriteria
import Amazonka.IoT.Types.RoleAliasDescription
import Amazonka.IoT.Types.S3Action
import Amazonka.IoT.Types.S3Destination
import Amazonka.IoT.Types.S3Location
import Amazonka.IoT.Types.SalesforceAction
import Amazonka.IoT.Types.ScheduledAuditMetadata
import Amazonka.IoT.Types.SecurityProfileIdentifier
import Amazonka.IoT.Types.SecurityProfileTarget
import Amazonka.IoT.Types.SecurityProfileTargetMapping
import Amazonka.IoT.Types.ServerCertificateSummary
import Amazonka.IoT.Types.SigV4Authorization
import Amazonka.IoT.Types.SigningProfileParameter
import Amazonka.IoT.Types.SnsAction
import Amazonka.IoT.Types.SqsAction
import Amazonka.IoT.Types.StartSigningJobParameter
import Amazonka.IoT.Types.StatisticalThreshold
import Amazonka.IoT.Types.Statistics
import Amazonka.IoT.Types.StepFunctionsAction
import Amazonka.IoT.Types.Stream
import Amazonka.IoT.Types.StreamFile
import Amazonka.IoT.Types.StreamInfo
import Amazonka.IoT.Types.StreamSummary
import Amazonka.IoT.Types.Tag
import Amazonka.IoT.Types.TaskStatistics
import Amazonka.IoT.Types.TaskStatisticsForAuditCheck
import Amazonka.IoT.Types.TermsAggregation
import Amazonka.IoT.Types.ThingAttribute
import Amazonka.IoT.Types.ThingConnectivity
import Amazonka.IoT.Types.ThingDocument
import Amazonka.IoT.Types.ThingGroupDocument
import Amazonka.IoT.Types.ThingGroupIndexingConfiguration
import Amazonka.IoT.Types.ThingGroupMetadata
import Amazonka.IoT.Types.ThingGroupProperties
import Amazonka.IoT.Types.ThingIndexingConfiguration
import Amazonka.IoT.Types.ThingTypeDefinition
import Amazonka.IoT.Types.ThingTypeMetadata
import Amazonka.IoT.Types.ThingTypeProperties
import Amazonka.IoT.Types.TimeoutConfig
import Amazonka.IoT.Types.TimestreamAction
import Amazonka.IoT.Types.TimestreamDimension
import Amazonka.IoT.Types.TimestreamTimestamp
import Amazonka.IoT.Types.TlsContext
import Amazonka.IoT.Types.TopicRule
import Amazonka.IoT.Types.TopicRuleDestination
import Amazonka.IoT.Types.TopicRuleDestinationConfiguration
import Amazonka.IoT.Types.TopicRuleDestinationSummary
import Amazonka.IoT.Types.TopicRuleListItem
import Amazonka.IoT.Types.TopicRulePayload
import Amazonka.IoT.Types.TransferData
import Amazonka.IoT.Types.UpdateCACertificateParams
import Amazonka.IoT.Types.UpdateDeviceCertificateParams
import Amazonka.IoT.Types.ValidationError
import Amazonka.IoT.Types.ViolationEvent
import Amazonka.IoT.Types.ViolationEventAdditionalInfo
import Amazonka.IoT.Types.ViolationEventOccurrenceRange
import Amazonka.IoT.Types.VpcDestinationConfiguration
import Amazonka.IoT.Types.VpcDestinationProperties
import Amazonka.IoT.Types.VpcDestinationSummary
import Amazonka.IoT.UntagResource
import Amazonka.IoT.UpdateAccountAuditConfiguration
import Amazonka.IoT.UpdateAuditSuppression
import Amazonka.IoT.UpdateAuthorizer
import Amazonka.IoT.UpdateBillingGroup
import Amazonka.IoT.UpdateCACertificate
import Amazonka.IoT.UpdateCertificate
import Amazonka.IoT.UpdateCustomMetric
import Amazonka.IoT.UpdateDimension
import Amazonka.IoT.UpdateDomainConfiguration
import Amazonka.IoT.UpdateDynamicThingGroup
import Amazonka.IoT.UpdateEventConfigurations
import Amazonka.IoT.UpdateFleetMetric
import Amazonka.IoT.UpdateIndexingConfiguration
import Amazonka.IoT.UpdateJob
import Amazonka.IoT.UpdateMitigationAction
import Amazonka.IoT.UpdateProvisioningTemplate
import Amazonka.IoT.UpdateRoleAlias
import Amazonka.IoT.UpdateScheduledAudit
import Amazonka.IoT.UpdateSecurityProfile
import Amazonka.IoT.UpdateStream
import Amazonka.IoT.UpdateThing
import Amazonka.IoT.UpdateThingGroup
import Amazonka.IoT.UpdateThingGroupsForThing
import Amazonka.IoT.UpdateTopicRuleDestination
import Amazonka.IoT.ValidateSecurityProfileBehaviors
