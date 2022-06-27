{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Amazonka.Proton.Lens
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.Proton.Lens
  ( -- * Operations

    -- ** AcceptEnvironmentAccountConnection
    acceptEnvironmentAccountConnection_id,
    acceptEnvironmentAccountConnectionResponse_httpStatus,
    acceptEnvironmentAccountConnectionResponse_environmentAccountConnection,

    -- ** CancelEnvironmentDeployment
    cancelEnvironmentDeployment_environmentName,
    cancelEnvironmentDeploymentResponse_httpStatus,
    cancelEnvironmentDeploymentResponse_environment,

    -- ** CancelServiceInstanceDeployment
    cancelServiceInstanceDeployment_serviceInstanceName,
    cancelServiceInstanceDeployment_serviceName,
    cancelServiceInstanceDeploymentResponse_httpStatus,
    cancelServiceInstanceDeploymentResponse_serviceInstance,

    -- ** CancelServicePipelineDeployment
    cancelServicePipelineDeployment_serviceName,
    cancelServicePipelineDeploymentResponse_httpStatus,
    cancelServicePipelineDeploymentResponse_pipeline,

    -- ** CreateEnvironment
    createEnvironment_tags,
    createEnvironment_description,
    createEnvironment_templateMinorVersion,
    createEnvironment_protonServiceRoleArn,
    createEnvironment_environmentAccountConnectionId,
    createEnvironment_name,
    createEnvironment_spec,
    createEnvironment_templateMajorVersion,
    createEnvironment_templateName,
    createEnvironmentResponse_httpStatus,
    createEnvironmentResponse_environment,

    -- ** CreateEnvironmentAccountConnection
    createEnvironmentAccountConnection_clientToken,
    createEnvironmentAccountConnection_environmentName,
    createEnvironmentAccountConnection_managementAccountId,
    createEnvironmentAccountConnection_roleArn,
    createEnvironmentAccountConnectionResponse_httpStatus,
    createEnvironmentAccountConnectionResponse_environmentAccountConnection,

    -- ** CreateEnvironmentTemplate
    createEnvironmentTemplate_tags,
    createEnvironmentTemplate_provisioning,
    createEnvironmentTemplate_displayName,
    createEnvironmentTemplate_description,
    createEnvironmentTemplate_encryptionKey,
    createEnvironmentTemplate_name,
    createEnvironmentTemplateResponse_httpStatus,
    createEnvironmentTemplateResponse_environmentTemplate,

    -- ** CreateEnvironmentTemplateVersion
    createEnvironmentTemplateVersion_tags,
    createEnvironmentTemplateVersion_majorVersion,
    createEnvironmentTemplateVersion_clientToken,
    createEnvironmentTemplateVersion_description,
    createEnvironmentTemplateVersion_source,
    createEnvironmentTemplateVersion_templateName,
    createEnvironmentTemplateVersionResponse_httpStatus,
    createEnvironmentTemplateVersionResponse_environmentTemplateVersion,

    -- ** CreateService
    createService_tags,
    createService_repositoryConnectionArn,
    createService_branchName,
    createService_description,
    createService_templateMinorVersion,
    createService_repositoryId,
    createService_name,
    createService_spec,
    createService_templateMajorVersion,
    createService_templateName,
    createServiceResponse_httpStatus,
    createServiceResponse_service,

    -- ** CreateServiceTemplate
    createServiceTemplate_tags,
    createServiceTemplate_displayName,
    createServiceTemplate_description,
    createServiceTemplate_pipelineProvisioning,
    createServiceTemplate_encryptionKey,
    createServiceTemplate_name,
    createServiceTemplateResponse_httpStatus,
    createServiceTemplateResponse_serviceTemplate,

    -- ** CreateServiceTemplateVersion
    createServiceTemplateVersion_tags,
    createServiceTemplateVersion_majorVersion,
    createServiceTemplateVersion_clientToken,
    createServiceTemplateVersion_description,
    createServiceTemplateVersion_compatibleEnvironmentTemplates,
    createServiceTemplateVersion_source,
    createServiceTemplateVersion_templateName,
    createServiceTemplateVersionResponse_httpStatus,
    createServiceTemplateVersionResponse_serviceTemplateVersion,

    -- ** DeleteEnvironment
    deleteEnvironment_name,
    deleteEnvironmentResponse_environment,
    deleteEnvironmentResponse_httpStatus,

    -- ** DeleteEnvironmentAccountConnection
    deleteEnvironmentAccountConnection_id,
    deleteEnvironmentAccountConnectionResponse_environmentAccountConnection,
    deleteEnvironmentAccountConnectionResponse_httpStatus,

    -- ** DeleteEnvironmentTemplate
    deleteEnvironmentTemplate_name,
    deleteEnvironmentTemplateResponse_environmentTemplate,
    deleteEnvironmentTemplateResponse_httpStatus,

    -- ** DeleteEnvironmentTemplateVersion
    deleteEnvironmentTemplateVersion_majorVersion,
    deleteEnvironmentTemplateVersion_minorVersion,
    deleteEnvironmentTemplateVersion_templateName,
    deleteEnvironmentTemplateVersionResponse_environmentTemplateVersion,
    deleteEnvironmentTemplateVersionResponse_httpStatus,

    -- ** DeleteService
    deleteService_name,
    deleteServiceResponse_service,
    deleteServiceResponse_httpStatus,

    -- ** DeleteServiceTemplate
    deleteServiceTemplate_name,
    deleteServiceTemplateResponse_serviceTemplate,
    deleteServiceTemplateResponse_httpStatus,

    -- ** DeleteServiceTemplateVersion
    deleteServiceTemplateVersion_majorVersion,
    deleteServiceTemplateVersion_minorVersion,
    deleteServiceTemplateVersion_templateName,
    deleteServiceTemplateVersionResponse_serviceTemplateVersion,
    deleteServiceTemplateVersionResponse_httpStatus,

    -- ** GetAccountSettings
    getAccountSettingsResponse_accountSettings,
    getAccountSettingsResponse_httpStatus,

    -- ** GetEnvironment
    getEnvironment_name,
    getEnvironmentResponse_httpStatus,
    getEnvironmentResponse_environment,

    -- ** GetEnvironmentAccountConnection
    getEnvironmentAccountConnection_id,
    getEnvironmentAccountConnectionResponse_httpStatus,
    getEnvironmentAccountConnectionResponse_environmentAccountConnection,

    -- ** GetEnvironmentTemplate
    getEnvironmentTemplate_name,
    getEnvironmentTemplateResponse_httpStatus,
    getEnvironmentTemplateResponse_environmentTemplate,

    -- ** GetEnvironmentTemplateVersion
    getEnvironmentTemplateVersion_majorVersion,
    getEnvironmentTemplateVersion_minorVersion,
    getEnvironmentTemplateVersion_templateName,
    getEnvironmentTemplateVersionResponse_httpStatus,
    getEnvironmentTemplateVersionResponse_environmentTemplateVersion,

    -- ** GetService
    getService_name,
    getServiceResponse_service,
    getServiceResponse_httpStatus,

    -- ** GetServiceInstance
    getServiceInstance_name,
    getServiceInstance_serviceName,
    getServiceInstanceResponse_httpStatus,
    getServiceInstanceResponse_serviceInstance,

    -- ** GetServiceTemplate
    getServiceTemplate_name,
    getServiceTemplateResponse_httpStatus,
    getServiceTemplateResponse_serviceTemplate,

    -- ** GetServiceTemplateVersion
    getServiceTemplateVersion_majorVersion,
    getServiceTemplateVersion_minorVersion,
    getServiceTemplateVersion_templateName,
    getServiceTemplateVersionResponse_httpStatus,
    getServiceTemplateVersionResponse_serviceTemplateVersion,

    -- ** ListEnvironmentAccountConnections
    listEnvironmentAccountConnections_nextToken,
    listEnvironmentAccountConnections_environmentName,
    listEnvironmentAccountConnections_statuses,
    listEnvironmentAccountConnections_maxResults,
    listEnvironmentAccountConnections_requestedBy,
    listEnvironmentAccountConnectionsResponse_nextToken,
    listEnvironmentAccountConnectionsResponse_httpStatus,
    listEnvironmentAccountConnectionsResponse_environmentAccountConnections,

    -- ** ListEnvironmentTemplateVersions
    listEnvironmentTemplateVersions_majorVersion,
    listEnvironmentTemplateVersions_nextToken,
    listEnvironmentTemplateVersions_maxResults,
    listEnvironmentTemplateVersions_templateName,
    listEnvironmentTemplateVersionsResponse_nextToken,
    listEnvironmentTemplateVersionsResponse_httpStatus,
    listEnvironmentTemplateVersionsResponse_templateVersions,

    -- ** ListEnvironmentTemplates
    listEnvironmentTemplates_nextToken,
    listEnvironmentTemplates_maxResults,
    listEnvironmentTemplatesResponse_nextToken,
    listEnvironmentTemplatesResponse_httpStatus,
    listEnvironmentTemplatesResponse_templates,

    -- ** ListEnvironments
    listEnvironments_nextToken,
    listEnvironments_maxResults,
    listEnvironments_environmentTemplates,
    listEnvironmentsResponse_nextToken,
    listEnvironmentsResponse_httpStatus,
    listEnvironmentsResponse_environments,

    -- ** ListServiceInstances
    listServiceInstances_nextToken,
    listServiceInstances_maxResults,
    listServiceInstances_serviceName,
    listServiceInstancesResponse_nextToken,
    listServiceInstancesResponse_httpStatus,
    listServiceInstancesResponse_serviceInstances,

    -- ** ListServiceTemplateVersions
    listServiceTemplateVersions_majorVersion,
    listServiceTemplateVersions_nextToken,
    listServiceTemplateVersions_maxResults,
    listServiceTemplateVersions_templateName,
    listServiceTemplateVersionsResponse_nextToken,
    listServiceTemplateVersionsResponse_httpStatus,
    listServiceTemplateVersionsResponse_templateVersions,

    -- ** ListServiceTemplates
    listServiceTemplates_nextToken,
    listServiceTemplates_maxResults,
    listServiceTemplatesResponse_nextToken,
    listServiceTemplatesResponse_httpStatus,
    listServiceTemplatesResponse_templates,

    -- ** ListServices
    listServices_nextToken,
    listServices_maxResults,
    listServicesResponse_nextToken,
    listServicesResponse_httpStatus,
    listServicesResponse_services,

    -- ** ListTagsForResource
    listTagsForResource_nextToken,
    listTagsForResource_maxResults,
    listTagsForResource_resourceArn,
    listTagsForResourceResponse_nextToken,
    listTagsForResourceResponse_httpStatus,
    listTagsForResourceResponse_tags,

    -- ** RejectEnvironmentAccountConnection
    rejectEnvironmentAccountConnection_id,
    rejectEnvironmentAccountConnectionResponse_httpStatus,
    rejectEnvironmentAccountConnectionResponse_environmentAccountConnection,

    -- ** TagResource
    tagResource_resourceArn,
    tagResource_tags,
    tagResourceResponse_httpStatus,

    -- ** UntagResource
    untagResource_resourceArn,
    untagResource_tagKeys,
    untagResourceResponse_httpStatus,

    -- ** UpdateAccountSettings
    updateAccountSettings_pipelineServiceRoleArn,
    updateAccountSettingsResponse_httpStatus,
    updateAccountSettingsResponse_accountSettings,

    -- ** UpdateEnvironment
    updateEnvironment_templateMajorVersion,
    updateEnvironment_description,
    updateEnvironment_templateMinorVersion,
    updateEnvironment_spec,
    updateEnvironment_protonServiceRoleArn,
    updateEnvironment_environmentAccountConnectionId,
    updateEnvironment_deploymentType,
    updateEnvironment_name,
    updateEnvironmentResponse_httpStatus,
    updateEnvironmentResponse_environment,

    -- ** UpdateEnvironmentAccountConnection
    updateEnvironmentAccountConnection_id,
    updateEnvironmentAccountConnection_roleArn,
    updateEnvironmentAccountConnectionResponse_httpStatus,
    updateEnvironmentAccountConnectionResponse_environmentAccountConnection,

    -- ** UpdateEnvironmentTemplate
    updateEnvironmentTemplate_displayName,
    updateEnvironmentTemplate_description,
    updateEnvironmentTemplate_name,
    updateEnvironmentTemplateResponse_httpStatus,
    updateEnvironmentTemplateResponse_environmentTemplate,

    -- ** UpdateEnvironmentTemplateVersion
    updateEnvironmentTemplateVersion_status,
    updateEnvironmentTemplateVersion_description,
    updateEnvironmentTemplateVersion_majorVersion,
    updateEnvironmentTemplateVersion_minorVersion,
    updateEnvironmentTemplateVersion_templateName,
    updateEnvironmentTemplateVersionResponse_httpStatus,
    updateEnvironmentTemplateVersionResponse_environmentTemplateVersion,

    -- ** UpdateService
    updateService_description,
    updateService_spec,
    updateService_name,
    updateServiceResponse_httpStatus,
    updateServiceResponse_service,

    -- ** UpdateServiceInstance
    updateServiceInstance_templateMajorVersion,
    updateServiceInstance_templateMinorVersion,
    updateServiceInstance_spec,
    updateServiceInstance_deploymentType,
    updateServiceInstance_name,
    updateServiceInstance_serviceName,
    updateServiceInstanceResponse_httpStatus,
    updateServiceInstanceResponse_serviceInstance,

    -- ** UpdateServicePipeline
    updateServicePipeline_templateMajorVersion,
    updateServicePipeline_templateMinorVersion,
    updateServicePipeline_deploymentType,
    updateServicePipeline_serviceName,
    updateServicePipeline_spec,
    updateServicePipelineResponse_httpStatus,
    updateServicePipelineResponse_pipeline,

    -- ** UpdateServiceTemplate
    updateServiceTemplate_displayName,
    updateServiceTemplate_description,
    updateServiceTemplate_name,
    updateServiceTemplateResponse_httpStatus,
    updateServiceTemplateResponse_serviceTemplate,

    -- ** UpdateServiceTemplateVersion
    updateServiceTemplateVersion_status,
    updateServiceTemplateVersion_description,
    updateServiceTemplateVersion_compatibleEnvironmentTemplates,
    updateServiceTemplateVersion_majorVersion,
    updateServiceTemplateVersion_minorVersion,
    updateServiceTemplateVersion_templateName,
    updateServiceTemplateVersionResponse_httpStatus,
    updateServiceTemplateVersionResponse_serviceTemplateVersion,

    -- * Types

    -- ** AccountSettings
    accountSettings_pipelineServiceRoleArn,

    -- ** CompatibleEnvironmentTemplate
    compatibleEnvironmentTemplate_majorVersion,
    compatibleEnvironmentTemplate_templateName,

    -- ** CompatibleEnvironmentTemplateInput
    compatibleEnvironmentTemplateInput_majorVersion,
    compatibleEnvironmentTemplateInput_templateName,

    -- ** Environment
    environment_provisioning,
    environment_description,
    environment_deploymentStatusMessage,
    environment_spec,
    environment_protonServiceRoleArn,
    environment_environmentAccountId,
    environment_environmentAccountConnectionId,
    environment_arn,
    environment_createdAt,
    environment_deploymentStatus,
    environment_lastDeploymentAttemptedAt,
    environment_lastDeploymentSucceededAt,
    environment_name,
    environment_templateMajorVersion,
    environment_templateMinorVersion,
    environment_templateName,

    -- ** EnvironmentAccountConnection
    environmentAccountConnection_arn,
    environmentAccountConnection_environmentAccountId,
    environmentAccountConnection_environmentName,
    environmentAccountConnection_id,
    environmentAccountConnection_lastModifiedAt,
    environmentAccountConnection_managementAccountId,
    environmentAccountConnection_requestedAt,
    environmentAccountConnection_roleArn,
    environmentAccountConnection_status,

    -- ** EnvironmentAccountConnectionSummary
    environmentAccountConnectionSummary_arn,
    environmentAccountConnectionSummary_environmentAccountId,
    environmentAccountConnectionSummary_environmentName,
    environmentAccountConnectionSummary_id,
    environmentAccountConnectionSummary_lastModifiedAt,
    environmentAccountConnectionSummary_managementAccountId,
    environmentAccountConnectionSummary_requestedAt,
    environmentAccountConnectionSummary_roleArn,
    environmentAccountConnectionSummary_status,

    -- ** EnvironmentSummary
    environmentSummary_provisioning,
    environmentSummary_description,
    environmentSummary_deploymentStatusMessage,
    environmentSummary_protonServiceRoleArn,
    environmentSummary_environmentAccountId,
    environmentSummary_environmentAccountConnectionId,
    environmentSummary_arn,
    environmentSummary_createdAt,
    environmentSummary_deploymentStatus,
    environmentSummary_lastDeploymentAttemptedAt,
    environmentSummary_lastDeploymentSucceededAt,
    environmentSummary_name,
    environmentSummary_templateMajorVersion,
    environmentSummary_templateMinorVersion,
    environmentSummary_templateName,

    -- ** EnvironmentTemplate
    environmentTemplate_recommendedVersion,
    environmentTemplate_provisioning,
    environmentTemplate_displayName,
    environmentTemplate_description,
    environmentTemplate_encryptionKey,
    environmentTemplate_arn,
    environmentTemplate_createdAt,
    environmentTemplate_lastModifiedAt,
    environmentTemplate_name,

    -- ** EnvironmentTemplateFilter
    environmentTemplateFilter_majorVersion,
    environmentTemplateFilter_templateName,

    -- ** EnvironmentTemplateSummary
    environmentTemplateSummary_recommendedVersion,
    environmentTemplateSummary_provisioning,
    environmentTemplateSummary_displayName,
    environmentTemplateSummary_description,
    environmentTemplateSummary_arn,
    environmentTemplateSummary_createdAt,
    environmentTemplateSummary_lastModifiedAt,
    environmentTemplateSummary_name,

    -- ** EnvironmentTemplateVersion
    environmentTemplateVersion_description,
    environmentTemplateVersion_recommendedMinorVersion,
    environmentTemplateVersion_schema,
    environmentTemplateVersion_statusMessage,
    environmentTemplateVersion_arn,
    environmentTemplateVersion_createdAt,
    environmentTemplateVersion_lastModifiedAt,
    environmentTemplateVersion_majorVersion,
    environmentTemplateVersion_minorVersion,
    environmentTemplateVersion_status,
    environmentTemplateVersion_templateName,

    -- ** EnvironmentTemplateVersionSummary
    environmentTemplateVersionSummary_description,
    environmentTemplateVersionSummary_recommendedMinorVersion,
    environmentTemplateVersionSummary_statusMessage,
    environmentTemplateVersionSummary_arn,
    environmentTemplateVersionSummary_createdAt,
    environmentTemplateVersionSummary_lastModifiedAt,
    environmentTemplateVersionSummary_majorVersion,
    environmentTemplateVersionSummary_minorVersion,
    environmentTemplateVersionSummary_status,
    environmentTemplateVersionSummary_templateName,

    -- ** S3ObjectSource
    s3ObjectSource_bucket,
    s3ObjectSource_key,

    -- ** Service
    service_repositoryConnectionArn,
    service_branchName,
    service_description,
    service_repositoryId,
    service_statusMessage,
    service_pipeline,
    service_arn,
    service_createdAt,
    service_lastModifiedAt,
    service_name,
    service_spec,
    service_status,
    service_templateName,

    -- ** ServiceInstance
    serviceInstance_deploymentStatusMessage,
    serviceInstance_spec,
    serviceInstance_arn,
    serviceInstance_createdAt,
    serviceInstance_deploymentStatus,
    serviceInstance_environmentName,
    serviceInstance_lastDeploymentAttemptedAt,
    serviceInstance_lastDeploymentSucceededAt,
    serviceInstance_name,
    serviceInstance_serviceName,
    serviceInstance_templateMajorVersion,
    serviceInstance_templateMinorVersion,
    serviceInstance_templateName,

    -- ** ServiceInstanceSummary
    serviceInstanceSummary_deploymentStatusMessage,
    serviceInstanceSummary_arn,
    serviceInstanceSummary_createdAt,
    serviceInstanceSummary_deploymentStatus,
    serviceInstanceSummary_environmentName,
    serviceInstanceSummary_lastDeploymentAttemptedAt,
    serviceInstanceSummary_lastDeploymentSucceededAt,
    serviceInstanceSummary_name,
    serviceInstanceSummary_serviceName,
    serviceInstanceSummary_templateMajorVersion,
    serviceInstanceSummary_templateMinorVersion,
    serviceInstanceSummary_templateName,

    -- ** ServicePipeline
    servicePipeline_deploymentStatusMessage,
    servicePipeline_spec,
    servicePipeline_arn,
    servicePipeline_createdAt,
    servicePipeline_deploymentStatus,
    servicePipeline_lastDeploymentAttemptedAt,
    servicePipeline_lastDeploymentSucceededAt,
    servicePipeline_templateMajorVersion,
    servicePipeline_templateMinorVersion,
    servicePipeline_templateName,

    -- ** ServiceSummary
    serviceSummary_description,
    serviceSummary_statusMessage,
    serviceSummary_arn,
    serviceSummary_createdAt,
    serviceSummary_lastModifiedAt,
    serviceSummary_name,
    serviceSummary_status,
    serviceSummary_templateName,

    -- ** ServiceTemplate
    serviceTemplate_recommendedVersion,
    serviceTemplate_displayName,
    serviceTemplate_description,
    serviceTemplate_pipelineProvisioning,
    serviceTemplate_encryptionKey,
    serviceTemplate_arn,
    serviceTemplate_createdAt,
    serviceTemplate_lastModifiedAt,
    serviceTemplate_name,

    -- ** ServiceTemplateSummary
    serviceTemplateSummary_recommendedVersion,
    serviceTemplateSummary_displayName,
    serviceTemplateSummary_description,
    serviceTemplateSummary_pipelineProvisioning,
    serviceTemplateSummary_arn,
    serviceTemplateSummary_createdAt,
    serviceTemplateSummary_lastModifiedAt,
    serviceTemplateSummary_name,

    -- ** ServiceTemplateVersion
    serviceTemplateVersion_description,
    serviceTemplateVersion_recommendedMinorVersion,
    serviceTemplateVersion_schema,
    serviceTemplateVersion_statusMessage,
    serviceTemplateVersion_arn,
    serviceTemplateVersion_compatibleEnvironmentTemplates,
    serviceTemplateVersion_createdAt,
    serviceTemplateVersion_lastModifiedAt,
    serviceTemplateVersion_majorVersion,
    serviceTemplateVersion_minorVersion,
    serviceTemplateVersion_status,
    serviceTemplateVersion_templateName,

    -- ** ServiceTemplateVersionSummary
    serviceTemplateVersionSummary_description,
    serviceTemplateVersionSummary_recommendedMinorVersion,
    serviceTemplateVersionSummary_statusMessage,
    serviceTemplateVersionSummary_arn,
    serviceTemplateVersionSummary_createdAt,
    serviceTemplateVersionSummary_lastModifiedAt,
    serviceTemplateVersionSummary_majorVersion,
    serviceTemplateVersionSummary_minorVersion,
    serviceTemplateVersionSummary_status,
    serviceTemplateVersionSummary_templateName,

    -- ** Tag
    tag_key,
    tag_value,

    -- ** TemplateVersionSourceInput
    templateVersionSourceInput_s3,
  )
where

import Amazonka.Proton.AcceptEnvironmentAccountConnection
import Amazonka.Proton.CancelEnvironmentDeployment
import Amazonka.Proton.CancelServiceInstanceDeployment
import Amazonka.Proton.CancelServicePipelineDeployment
import Amazonka.Proton.CreateEnvironment
import Amazonka.Proton.CreateEnvironmentAccountConnection
import Amazonka.Proton.CreateEnvironmentTemplate
import Amazonka.Proton.CreateEnvironmentTemplateVersion
import Amazonka.Proton.CreateService
import Amazonka.Proton.CreateServiceTemplate
import Amazonka.Proton.CreateServiceTemplateVersion
import Amazonka.Proton.DeleteEnvironment
import Amazonka.Proton.DeleteEnvironmentAccountConnection
import Amazonka.Proton.DeleteEnvironmentTemplate
import Amazonka.Proton.DeleteEnvironmentTemplateVersion
import Amazonka.Proton.DeleteService
import Amazonka.Proton.DeleteServiceTemplate
import Amazonka.Proton.DeleteServiceTemplateVersion
import Amazonka.Proton.GetAccountSettings
import Amazonka.Proton.GetEnvironment
import Amazonka.Proton.GetEnvironmentAccountConnection
import Amazonka.Proton.GetEnvironmentTemplate
import Amazonka.Proton.GetEnvironmentTemplateVersion
import Amazonka.Proton.GetService
import Amazonka.Proton.GetServiceInstance
import Amazonka.Proton.GetServiceTemplate
import Amazonka.Proton.GetServiceTemplateVersion
import Amazonka.Proton.ListEnvironmentAccountConnections
import Amazonka.Proton.ListEnvironmentTemplateVersions
import Amazonka.Proton.ListEnvironmentTemplates
import Amazonka.Proton.ListEnvironments
import Amazonka.Proton.ListServiceInstances
import Amazonka.Proton.ListServiceTemplateVersions
import Amazonka.Proton.ListServiceTemplates
import Amazonka.Proton.ListServices
import Amazonka.Proton.ListTagsForResource
import Amazonka.Proton.RejectEnvironmentAccountConnection
import Amazonka.Proton.TagResource
import Amazonka.Proton.Types.AccountSettings
import Amazonka.Proton.Types.CompatibleEnvironmentTemplate
import Amazonka.Proton.Types.CompatibleEnvironmentTemplateInput
import Amazonka.Proton.Types.Environment
import Amazonka.Proton.Types.EnvironmentAccountConnection
import Amazonka.Proton.Types.EnvironmentAccountConnectionSummary
import Amazonka.Proton.Types.EnvironmentSummary
import Amazonka.Proton.Types.EnvironmentTemplate
import Amazonka.Proton.Types.EnvironmentTemplateFilter
import Amazonka.Proton.Types.EnvironmentTemplateSummary
import Amazonka.Proton.Types.EnvironmentTemplateVersion
import Amazonka.Proton.Types.EnvironmentTemplateVersionSummary
import Amazonka.Proton.Types.S3ObjectSource
import Amazonka.Proton.Types.Service
import Amazonka.Proton.Types.ServiceInstance
import Amazonka.Proton.Types.ServiceInstanceSummary
import Amazonka.Proton.Types.ServicePipeline
import Amazonka.Proton.Types.ServiceSummary
import Amazonka.Proton.Types.ServiceTemplate
import Amazonka.Proton.Types.ServiceTemplateSummary
import Amazonka.Proton.Types.ServiceTemplateVersion
import Amazonka.Proton.Types.ServiceTemplateVersionSummary
import Amazonka.Proton.Types.Tag
import Amazonka.Proton.Types.TemplateVersionSourceInput
import Amazonka.Proton.UntagResource
import Amazonka.Proton.UpdateAccountSettings
import Amazonka.Proton.UpdateEnvironment
import Amazonka.Proton.UpdateEnvironmentAccountConnection
import Amazonka.Proton.UpdateEnvironmentTemplate
import Amazonka.Proton.UpdateEnvironmentTemplateVersion
import Amazonka.Proton.UpdateService
import Amazonka.Proton.UpdateServiceInstance
import Amazonka.Proton.UpdateServicePipeline
import Amazonka.Proton.UpdateServiceTemplate
import Amazonka.Proton.UpdateServiceTemplateVersion
