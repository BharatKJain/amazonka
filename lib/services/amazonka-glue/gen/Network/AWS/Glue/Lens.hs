{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Amazonka.Glue.Lens
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.Glue.Lens
  ( -- * Operations

    -- ** StartImportLabelsTaskRun
    startImportLabelsTaskRun_replaceAllLabels,
    startImportLabelsTaskRun_transformId,
    startImportLabelsTaskRun_inputS3Path,
    startImportLabelsTaskRunResponse_taskRunId,
    startImportLabelsTaskRunResponse_httpStatus,

    -- ** UpdateMLTransform
    updateMLTransform_numberOfWorkers,
    updateMLTransform_workerType,
    updateMLTransform_glueVersion,
    updateMLTransform_role,
    updateMLTransform_name,
    updateMLTransform_parameters,
    updateMLTransform_maxRetries,
    updateMLTransform_maxCapacity,
    updateMLTransform_timeout,
    updateMLTransform_description,
    updateMLTransform_transformId,
    updateMLTransformResponse_transformId,
    updateMLTransformResponse_httpStatus,

    -- ** UpdateRegistry
    updateRegistry_registryId,
    updateRegistry_description,
    updateRegistryResponse_registryName,
    updateRegistryResponse_registryArn,
    updateRegistryResponse_httpStatus,

    -- ** DeleteRegistry
    deleteRegistry_registryId,
    deleteRegistryResponse_status,
    deleteRegistryResponse_registryName,
    deleteRegistryResponse_registryArn,
    deleteRegistryResponse_httpStatus,

    -- ** DeleteMLTransform
    deleteMLTransform_transformId,
    deleteMLTransformResponse_transformId,
    deleteMLTransformResponse_httpStatus,

    -- ** StartCrawler
    startCrawler_name,
    startCrawlerResponse_httpStatus,

    -- ** GetCatalogImportStatus
    getCatalogImportStatus_catalogId,
    getCatalogImportStatusResponse_importStatus,
    getCatalogImportStatusResponse_httpStatus,

    -- ** ListMLTransforms
    listMLTransforms_nextToken,
    listMLTransforms_sort,
    listMLTransforms_filter,
    listMLTransforms_maxResults,
    listMLTransforms_tags,
    listMLTransformsResponse_nextToken,
    listMLTransformsResponse_httpStatus,
    listMLTransformsResponse_transformIds,

    -- ** GetPartition
    getPartition_catalogId,
    getPartition_databaseName,
    getPartition_tableName,
    getPartition_partitionValues,
    getPartitionResponse_partition,
    getPartitionResponse_httpStatus,

    -- ** QuerySchemaVersionMetadata
    querySchemaVersionMetadata_schemaVersionId,
    querySchemaVersionMetadata_schemaId,
    querySchemaVersionMetadata_nextToken,
    querySchemaVersionMetadata_metadataList,
    querySchemaVersionMetadata_schemaVersionNumber,
    querySchemaVersionMetadata_maxResults,
    querySchemaVersionMetadataResponse_schemaVersionId,
    querySchemaVersionMetadataResponse_nextToken,
    querySchemaVersionMetadataResponse_metadataInfoMap,
    querySchemaVersionMetadataResponse_httpStatus,

    -- ** CreateTrigger
    createTrigger_workflowName,
    createTrigger_schedule,
    createTrigger_predicate,
    createTrigger_startOnCreation,
    createTrigger_eventBatchingCondition,
    createTrigger_description,
    createTrigger_tags,
    createTrigger_name,
    createTrigger_type,
    createTrigger_actions,
    createTriggerResponse_name,
    createTriggerResponse_httpStatus,

    -- ** CheckSchemaVersionValidity
    checkSchemaVersionValidity_dataFormat,
    checkSchemaVersionValidity_schemaDefinition,
    checkSchemaVersionValidityResponse_error,
    checkSchemaVersionValidityResponse_valid,
    checkSchemaVersionValidityResponse_httpStatus,

    -- ** DeleteTable
    deleteTable_catalogId,
    deleteTable_databaseName,
    deleteTable_name,
    deleteTableResponse_httpStatus,

    -- ** UpdateTable
    updateTable_skipArchive,
    updateTable_catalogId,
    updateTable_databaseName,
    updateTable_tableInput,
    updateTableResponse_httpStatus,

    -- ** GetWorkflowRuns
    getWorkflowRuns_includeGraph,
    getWorkflowRuns_nextToken,
    getWorkflowRuns_maxResults,
    getWorkflowRuns_name,
    getWorkflowRunsResponse_runs,
    getWorkflowRunsResponse_nextToken,
    getWorkflowRunsResponse_httpStatus,

    -- ** CreateWorkflow
    createWorkflow_maxConcurrentRuns,
    createWorkflow_defaultRunProperties,
    createWorkflow_description,
    createWorkflow_tags,
    createWorkflow_name,
    createWorkflowResponse_name,
    createWorkflowResponse_httpStatus,

    -- ** UpdateColumnStatisticsForTable
    updateColumnStatisticsForTable_catalogId,
    updateColumnStatisticsForTable_databaseName,
    updateColumnStatisticsForTable_tableName,
    updateColumnStatisticsForTable_columnStatisticsList,
    updateColumnStatisticsForTableResponse_errors,
    updateColumnStatisticsForTableResponse_httpStatus,

    -- ** DeleteColumnStatisticsForTable
    deleteColumnStatisticsForTable_catalogId,
    deleteColumnStatisticsForTable_databaseName,
    deleteColumnStatisticsForTable_tableName,
    deleteColumnStatisticsForTable_columnName,
    deleteColumnStatisticsForTableResponse_httpStatus,

    -- ** DeleteConnection
    deleteConnection_catalogId,
    deleteConnection_connectionName,
    deleteConnectionResponse_httpStatus,

    -- ** UpdateConnection
    updateConnection_catalogId,
    updateConnection_name,
    updateConnection_connectionInput,
    updateConnectionResponse_httpStatus,

    -- ** GetUserDefinedFunctions
    getUserDefinedFunctions_catalogId,
    getUserDefinedFunctions_nextToken,
    getUserDefinedFunctions_databaseName,
    getUserDefinedFunctions_maxResults,
    getUserDefinedFunctions_pattern,
    getUserDefinedFunctionsResponse_nextToken,
    getUserDefinedFunctionsResponse_userDefinedFunctions,
    getUserDefinedFunctionsResponse_httpStatus,

    -- ** GetTags
    getTags_resourceArn,
    getTagsResponse_tags,
    getTagsResponse_httpStatus,

    -- ** GetDataCatalogEncryptionSettings
    getDataCatalogEncryptionSettings_catalogId,
    getDataCatalogEncryptionSettingsResponse_dataCatalogEncryptionSettings,
    getDataCatalogEncryptionSettingsResponse_httpStatus,

    -- ** BatchCreatePartition
    batchCreatePartition_catalogId,
    batchCreatePartition_databaseName,
    batchCreatePartition_tableName,
    batchCreatePartition_partitionInputList,
    batchCreatePartitionResponse_errors,
    batchCreatePartitionResponse_httpStatus,

    -- ** GetMapping
    getMapping_sinks,
    getMapping_location,
    getMapping_source,
    getMappingResponse_httpStatus,
    getMappingResponse_mapping,

    -- ** DeleteWorkflow
    deleteWorkflow_name,
    deleteWorkflowResponse_name,
    deleteWorkflowResponse_httpStatus,

    -- ** UpdateWorkflow
    updateWorkflow_maxConcurrentRuns,
    updateWorkflow_defaultRunProperties,
    updateWorkflow_description,
    updateWorkflow_name,
    updateWorkflowResponse_name,
    updateWorkflowResponse_httpStatus,

    -- ** GetTableVersion
    getTableVersion_versionId,
    getTableVersion_catalogId,
    getTableVersion_databaseName,
    getTableVersion_tableName,
    getTableVersionResponse_tableVersion,
    getTableVersionResponse_httpStatus,

    -- ** CreateSecurityConfiguration
    createSecurityConfiguration_name,
    createSecurityConfiguration_encryptionConfiguration,
    createSecurityConfigurationResponse_name,
    createSecurityConfigurationResponse_createdTimestamp,
    createSecurityConfigurationResponse_httpStatus,

    -- ** StartWorkflowRun
    startWorkflowRun_name,
    startWorkflowRunResponse_runId,
    startWorkflowRunResponse_httpStatus,

    -- ** GetJobs
    getJobs_nextToken,
    getJobs_maxResults,
    getJobsResponse_nextToken,
    getJobsResponse_jobs,
    getJobsResponse_httpStatus,

    -- ** BatchGetWorkflows
    batchGetWorkflows_includeGraph,
    batchGetWorkflows_names,
    batchGetWorkflowsResponse_missingWorkflows,
    batchGetWorkflowsResponse_workflows,
    batchGetWorkflowsResponse_httpStatus,

    -- ** GetClassifiers
    getClassifiers_nextToken,
    getClassifiers_maxResults,
    getClassifiersResponse_nextToken,
    getClassifiersResponse_classifiers,
    getClassifiersResponse_httpStatus,

    -- ** GetResourcePolicies
    getResourcePolicies_nextToken,
    getResourcePolicies_maxResults,
    getResourcePoliciesResponse_getResourcePoliciesResponseList,
    getResourcePoliciesResponse_nextToken,
    getResourcePoliciesResponse_httpStatus,

    -- ** CreateConnection
    createConnection_catalogId,
    createConnection_tags,
    createConnection_connectionInput,
    createConnectionResponse_httpStatus,

    -- ** ListSchemaVersions
    listSchemaVersions_nextToken,
    listSchemaVersions_maxResults,
    listSchemaVersions_schemaId,
    listSchemaVersionsResponse_schemas,
    listSchemaVersionsResponse_nextToken,
    listSchemaVersionsResponse_httpStatus,

    -- ** GetWorkflowRunProperties
    getWorkflowRunProperties_name,
    getWorkflowRunProperties_runId,
    getWorkflowRunPropertiesResponse_runProperties,
    getWorkflowRunPropertiesResponse_httpStatus,

    -- ** BatchGetDevEndpoints
    batchGetDevEndpoints_devEndpointNames,
    batchGetDevEndpointsResponse_devEndpointsNotFound,
    batchGetDevEndpointsResponse_devEndpoints,
    batchGetDevEndpointsResponse_httpStatus,

    -- ** DeletePartitionIndex
    deletePartitionIndex_catalogId,
    deletePartitionIndex_databaseName,
    deletePartitionIndex_tableName,
    deletePartitionIndex_indexName,
    deletePartitionIndexResponse_httpStatus,

    -- ** DeleteTableVersion
    deleteTableVersion_catalogId,
    deleteTableVersion_databaseName,
    deleteTableVersion_tableName,
    deleteTableVersion_versionId,
    deleteTableVersionResponse_httpStatus,

    -- ** DeleteDevEndpoint
    deleteDevEndpoint_endpointName,
    deleteDevEndpointResponse_httpStatus,

    -- ** UpdateDevEndpoint
    updateDevEndpoint_addPublicKeys,
    updateDevEndpoint_customLibraries,
    updateDevEndpoint_publicKey,
    updateDevEndpoint_deleteArguments,
    updateDevEndpoint_deletePublicKeys,
    updateDevEndpoint_updateEtlLibraries,
    updateDevEndpoint_addArguments,
    updateDevEndpoint_endpointName,
    updateDevEndpointResponse_httpStatus,

    -- ** GetWorkflow
    getWorkflow_includeGraph,
    getWorkflow_name,
    getWorkflowResponse_workflow,
    getWorkflowResponse_httpStatus,

    -- ** BatchGetCrawlers
    batchGetCrawlers_crawlerNames,
    batchGetCrawlersResponse_crawlersNotFound,
    batchGetCrawlersResponse_crawlers,
    batchGetCrawlersResponse_httpStatus,

    -- ** GetJobBookmark
    getJobBookmark_runId,
    getJobBookmark_jobName,
    getJobBookmarkResponse_jobBookmarkEntry,
    getJobBookmarkResponse_httpStatus,

    -- ** DeleteCrawler
    deleteCrawler_name,
    deleteCrawlerResponse_httpStatus,

    -- ** UpdateCrawler
    updateCrawler_schemaChangePolicy,
    updateCrawler_schedule,
    updateCrawler_recrawlPolicy,
    updateCrawler_classifiers,
    updateCrawler_role,
    updateCrawler_targets,
    updateCrawler_databaseName,
    updateCrawler_crawlerSecurityConfiguration,
    updateCrawler_lineageConfiguration,
    updateCrawler_configuration,
    updateCrawler_tablePrefix,
    updateCrawler_description,
    updateCrawler_name,
    updateCrawlerResponse_httpStatus,

    -- ** StartExportLabelsTaskRun
    startExportLabelsTaskRun_transformId,
    startExportLabelsTaskRun_outputS3Path,
    startExportLabelsTaskRunResponse_taskRunId,
    startExportLabelsTaskRunResponse_httpStatus,

    -- ** GetSecurityConfiguration
    getSecurityConfiguration_name,
    getSecurityConfigurationResponse_securityConfiguration,
    getSecurityConfigurationResponse_httpStatus,

    -- ** CreatePartitionIndex
    createPartitionIndex_catalogId,
    createPartitionIndex_databaseName,
    createPartitionIndex_tableName,
    createPartitionIndex_partitionIndex,
    createPartitionIndexResponse_httpStatus,

    -- ** GetBlueprintRun
    getBlueprintRun_blueprintName,
    getBlueprintRun_runId,
    getBlueprintRunResponse_blueprintRun,
    getBlueprintRunResponse_httpStatus,

    -- ** RemoveSchemaVersionMetadata
    removeSchemaVersionMetadata_schemaVersionId,
    removeSchemaVersionMetadata_schemaId,
    removeSchemaVersionMetadata_schemaVersionNumber,
    removeSchemaVersionMetadata_metadataKeyValue,
    removeSchemaVersionMetadataResponse_registryName,
    removeSchemaVersionMetadataResponse_schemaName,
    removeSchemaVersionMetadataResponse_schemaVersionId,
    removeSchemaVersionMetadataResponse_versionNumber,
    removeSchemaVersionMetadataResponse_schemaArn,
    removeSchemaVersionMetadataResponse_metadataKey,
    removeSchemaVersionMetadataResponse_metadataValue,
    removeSchemaVersionMetadataResponse_latestVersion,
    removeSchemaVersionMetadataResponse_httpStatus,

    -- ** ListSchemas
    listSchemas_registryId,
    listSchemas_nextToken,
    listSchemas_maxResults,
    listSchemasResponse_schemas,
    listSchemasResponse_nextToken,
    listSchemasResponse_httpStatus,

    -- ** GetConnection
    getConnection_catalogId,
    getConnection_hidePassword,
    getConnection_name,
    getConnectionResponse_connection,
    getConnectionResponse_httpStatus,

    -- ** GetColumnStatisticsForTable
    getColumnStatisticsForTable_catalogId,
    getColumnStatisticsForTable_databaseName,
    getColumnStatisticsForTable_tableName,
    getColumnStatisticsForTable_columnNames,
    getColumnStatisticsForTableResponse_errors,
    getColumnStatisticsForTableResponse_columnStatisticsList,
    getColumnStatisticsForTableResponse_httpStatus,

    -- ** BatchGetPartition
    batchGetPartition_catalogId,
    batchGetPartition_databaseName,
    batchGetPartition_tableName,
    batchGetPartition_partitionsToGet,
    batchGetPartitionResponse_unprocessedKeys,
    batchGetPartitionResponse_partitions,
    batchGetPartitionResponse_httpStatus,

    -- ** StopTrigger
    stopTrigger_name,
    stopTriggerResponse_name,
    stopTriggerResponse_httpStatus,

    -- ** UpdateCrawlerSchedule
    updateCrawlerSchedule_schedule,
    updateCrawlerSchedule_crawlerName,
    updateCrawlerScheduleResponse_httpStatus,

    -- ** StartMLEvaluationTaskRun
    startMLEvaluationTaskRun_transformId,
    startMLEvaluationTaskRunResponse_taskRunId,
    startMLEvaluationTaskRunResponse_httpStatus,

    -- ** DeleteUserDefinedFunction
    deleteUserDefinedFunction_catalogId,
    deleteUserDefinedFunction_databaseName,
    deleteUserDefinedFunction_functionName,
    deleteUserDefinedFunctionResponse_httpStatus,

    -- ** UpdateUserDefinedFunction
    updateUserDefinedFunction_catalogId,
    updateUserDefinedFunction_databaseName,
    updateUserDefinedFunction_functionName,
    updateUserDefinedFunction_functionInput,
    updateUserDefinedFunctionResponse_httpStatus,

    -- ** GetRegistry
    getRegistry_registryId,
    getRegistryResponse_status,
    getRegistryResponse_registryName,
    getRegistryResponse_createdTime,
    getRegistryResponse_registryArn,
    getRegistryResponse_updatedTime,
    getRegistryResponse_description,
    getRegistryResponse_httpStatus,

    -- ** BatchDeleteTable
    batchDeleteTable_catalogId,
    batchDeleteTable_databaseName,
    batchDeleteTable_tablesToDelete,
    batchDeleteTableResponse_errors,
    batchDeleteTableResponse_httpStatus,

    -- ** CancelMLTaskRun
    cancelMLTaskRun_transformId,
    cancelMLTaskRun_taskRunId,
    cancelMLTaskRunResponse_status,
    cancelMLTaskRunResponse_transformId,
    cancelMLTaskRunResponse_taskRunId,
    cancelMLTaskRunResponse_httpStatus,

    -- ** GetTables
    getTables_catalogId,
    getTables_nextToken,
    getTables_expression,
    getTables_maxResults,
    getTables_databaseName,
    getTablesResponse_tableList,
    getTablesResponse_nextToken,
    getTablesResponse_httpStatus,

    -- ** ResumeWorkflowRun
    resumeWorkflowRun_name,
    resumeWorkflowRun_runId,
    resumeWorkflowRun_nodeIds,
    resumeWorkflowRunResponse_nodeIds,
    resumeWorkflowRunResponse_runId,
    resumeWorkflowRunResponse_httpStatus,

    -- ** CreateClassifier
    createClassifier_grokClassifier,
    createClassifier_xMLClassifier,
    createClassifier_csvClassifier,
    createClassifier_jsonClassifier,
    createClassifierResponse_httpStatus,

    -- ** BatchDeleteConnection
    batchDeleteConnection_catalogId,
    batchDeleteConnection_connectionNameList,
    batchDeleteConnectionResponse_succeeded,
    batchDeleteConnectionResponse_errors,
    batchDeleteConnectionResponse_httpStatus,

    -- ** CreateJob
    createJob_numberOfWorkers,
    createJob_notificationProperty,
    createJob_connections,
    createJob_workerType,
    createJob_securityConfiguration,
    createJob_glueVersion,
    createJob_nonOverridableArguments,
    createJob_logUri,
    createJob_maxRetries,
    createJob_executionProperty,
    createJob_allocatedCapacity,
    createJob_maxCapacity,
    createJob_timeout,
    createJob_defaultArguments,
    createJob_description,
    createJob_tags,
    createJob_name,
    createJob_role,
    createJob_command,
    createJobResponse_name,
    createJobResponse_httpStatus,

    -- ** GetJobRuns
    getJobRuns_nextToken,
    getJobRuns_maxResults,
    getJobRuns_jobName,
    getJobRunsResponse_nextToken,
    getJobRunsResponse_jobRuns,
    getJobRunsResponse_httpStatus,

    -- ** CreateUserDefinedFunction
    createUserDefinedFunction_catalogId,
    createUserDefinedFunction_databaseName,
    createUserDefinedFunction_functionInput,
    createUserDefinedFunctionResponse_httpStatus,

    -- ** ResetJobBookmark
    resetJobBookmark_runId,
    resetJobBookmark_jobName,
    resetJobBookmarkResponse_jobBookmarkEntry,
    resetJobBookmarkResponse_httpStatus,

    -- ** ListJobs
    listJobs_nextToken,
    listJobs_maxResults,
    listJobs_tags,
    listJobsResponse_nextToken,
    listJobsResponse_jobNames,
    listJobsResponse_httpStatus,

    -- ** StartBlueprintRun
    startBlueprintRun_parameters,
    startBlueprintRun_blueprintName,
    startBlueprintRun_roleArn,
    startBlueprintRunResponse_runId,
    startBlueprintRunResponse_httpStatus,

    -- ** BatchGetBlueprints
    batchGetBlueprints_includeParameterSpec,
    batchGetBlueprints_includeBlueprint,
    batchGetBlueprints_names,
    batchGetBlueprintsResponse_blueprints,
    batchGetBlueprintsResponse_missingBlueprints,
    batchGetBlueprintsResponse_httpStatus,

    -- ** DeleteJob
    deleteJob_jobName,
    deleteJobResponse_jobName,
    deleteJobResponse_httpStatus,

    -- ** UpdateJob
    updateJob_jobName,
    updateJob_jobUpdate,
    updateJobResponse_jobName,
    updateJobResponse_httpStatus,

    -- ** CreateRegistry
    createRegistry_description,
    createRegistry_tags,
    createRegistry_registryName,
    createRegistryResponse_registryName,
    createRegistryResponse_registryArn,
    createRegistryResponse_description,
    createRegistryResponse_tags,
    createRegistryResponse_httpStatus,

    -- ** GetCrawlers
    getCrawlers_nextToken,
    getCrawlers_maxResults,
    getCrawlersResponse_nextToken,
    getCrawlersResponse_crawlers,
    getCrawlersResponse_httpStatus,

    -- ** ListTriggers
    listTriggers_nextToken,
    listTriggers_maxResults,
    listTriggers_tags,
    listTriggers_dependentJobName,
    listTriggersResponse_triggerNames,
    listTriggersResponse_nextToken,
    listTriggersResponse_httpStatus,

    -- ** GetClassifier
    getClassifier_name,
    getClassifierResponse_classifier,
    getClassifierResponse_httpStatus,

    -- ** GetJob
    getJob_jobName,
    getJobResponse_job,
    getJobResponse_httpStatus,

    -- ** ListRegistries
    listRegistries_nextToken,
    listRegistries_maxResults,
    listRegistriesResponse_registries,
    listRegistriesResponse_nextToken,
    listRegistriesResponse_httpStatus,

    -- ** BatchDeleteTableVersion
    batchDeleteTableVersion_catalogId,
    batchDeleteTableVersion_databaseName,
    batchDeleteTableVersion_tableName,
    batchDeleteTableVersion_versionIds,
    batchDeleteTableVersionResponse_errors,
    batchDeleteTableVersionResponse_httpStatus,

    -- ** GetDevEndpoints
    getDevEndpoints_nextToken,
    getDevEndpoints_maxResults,
    getDevEndpointsResponse_nextToken,
    getDevEndpointsResponse_devEndpoints,
    getDevEndpointsResponse_httpStatus,

    -- ** StartCrawlerSchedule
    startCrawlerSchedule_crawlerName,
    startCrawlerScheduleResponse_httpStatus,

    -- ** GetPartitionIndexes
    getPartitionIndexes_catalogId,
    getPartitionIndexes_nextToken,
    getPartitionIndexes_databaseName,
    getPartitionIndexes_tableName,
    getPartitionIndexesResponse_partitionIndexDescriptorList,
    getPartitionIndexesResponse_nextToken,
    getPartitionIndexesResponse_httpStatus,

    -- ** GetUserDefinedFunction
    getUserDefinedFunction_catalogId,
    getUserDefinedFunction_databaseName,
    getUserDefinedFunction_functionName,
    getUserDefinedFunctionResponse_userDefinedFunction,
    getUserDefinedFunctionResponse_httpStatus,

    -- ** GetResourcePolicy
    getResourcePolicy_resourceArn,
    getResourcePolicyResponse_policyInJson,
    getResourcePolicyResponse_updateTime,
    getResourcePolicyResponse_policyHash,
    getResourcePolicyResponse_createTime,
    getResourcePolicyResponse_httpStatus,

    -- ** GetWorkflowRun
    getWorkflowRun_includeGraph,
    getWorkflowRun_name,
    getWorkflowRun_runId,
    getWorkflowRunResponse_run,
    getWorkflowRunResponse_httpStatus,

    -- ** DeleteDatabase
    deleteDatabase_catalogId,
    deleteDatabase_name,
    deleteDatabaseResponse_httpStatus,

    -- ** UpdateDatabase
    updateDatabase_catalogId,
    updateDatabase_name,
    updateDatabase_databaseInput,
    updateDatabaseResponse_httpStatus,

    -- ** GetColumnStatisticsForPartition
    getColumnStatisticsForPartition_catalogId,
    getColumnStatisticsForPartition_databaseName,
    getColumnStatisticsForPartition_tableName,
    getColumnStatisticsForPartition_partitionValues,
    getColumnStatisticsForPartition_columnNames,
    getColumnStatisticsForPartitionResponse_errors,
    getColumnStatisticsForPartitionResponse_columnStatisticsList,
    getColumnStatisticsForPartitionResponse_httpStatus,

    -- ** StopCrawler
    stopCrawler_name,
    stopCrawlerResponse_httpStatus,

    -- ** DeleteSecurityConfiguration
    deleteSecurityConfiguration_name,
    deleteSecurityConfigurationResponse_httpStatus,

    -- ** GetPartitions
    getPartitions_catalogId,
    getPartitions_excludeColumnSchema,
    getPartitions_nextToken,
    getPartitions_expression,
    getPartitions_segment,
    getPartitions_maxResults,
    getPartitions_databaseName,
    getPartitions_tableName,
    getPartitionsResponse_partitions,
    getPartitionsResponse_nextToken,
    getPartitionsResponse_httpStatus,

    -- ** PutSchemaVersionMetadata
    putSchemaVersionMetadata_schemaVersionId,
    putSchemaVersionMetadata_schemaId,
    putSchemaVersionMetadata_schemaVersionNumber,
    putSchemaVersionMetadata_metadataKeyValue,
    putSchemaVersionMetadataResponse_registryName,
    putSchemaVersionMetadataResponse_schemaName,
    putSchemaVersionMetadataResponse_schemaVersionId,
    putSchemaVersionMetadataResponse_versionNumber,
    putSchemaVersionMetadataResponse_schemaArn,
    putSchemaVersionMetadataResponse_metadataKey,
    putSchemaVersionMetadataResponse_metadataValue,
    putSchemaVersionMetadataResponse_latestVersion,
    putSchemaVersionMetadataResponse_httpStatus,

    -- ** GetSchema
    getSchema_schemaId,
    getSchemaResponse_registryName,
    getSchemaResponse_createdTime,
    getSchemaResponse_schemaStatus,
    getSchemaResponse_registryArn,
    getSchemaResponse_latestSchemaVersion,
    getSchemaResponse_dataFormat,
    getSchemaResponse_schemaCheckpoint,
    getSchemaResponse_schemaName,
    getSchemaResponse_schemaArn,
    getSchemaResponse_nextSchemaVersion,
    getSchemaResponse_updatedTime,
    getSchemaResponse_description,
    getSchemaResponse_compatibility,
    getSchemaResponse_httpStatus,

    -- ** BatchDeletePartition
    batchDeletePartition_catalogId,
    batchDeletePartition_databaseName,
    batchDeletePartition_tableName,
    batchDeletePartition_partitionsToDelete,
    batchDeletePartitionResponse_errors,
    batchDeletePartitionResponse_httpStatus,

    -- ** StartMLLabelingSetGenerationTaskRun
    startMLLabelingSetGenerationTaskRun_transformId,
    startMLLabelingSetGenerationTaskRun_outputS3Path,
    startMLLabelingSetGenerationTaskRunResponse_taskRunId,
    startMLLabelingSetGenerationTaskRunResponse_httpStatus,

    -- ** BatchUpdatePartition
    batchUpdatePartition_catalogId,
    batchUpdatePartition_databaseName,
    batchUpdatePartition_tableName,
    batchUpdatePartition_entries,
    batchUpdatePartitionResponse_errors,
    batchUpdatePartitionResponse_httpStatus,

    -- ** RegisterSchemaVersion
    registerSchemaVersion_schemaId,
    registerSchemaVersion_schemaDefinition,
    registerSchemaVersionResponse_status,
    registerSchemaVersionResponse_schemaVersionId,
    registerSchemaVersionResponse_versionNumber,
    registerSchemaVersionResponse_httpStatus,

    -- ** StopWorkflowRun
    stopWorkflowRun_name,
    stopWorkflowRun_runId,
    stopWorkflowRunResponse_httpStatus,

    -- ** GetCrawler
    getCrawler_name,
    getCrawlerResponse_crawler,
    getCrawlerResponse_httpStatus,

    -- ** ListWorkflows
    listWorkflows_nextToken,
    listWorkflows_maxResults,
    listWorkflowsResponse_nextToken,
    listWorkflowsResponse_workflows,
    listWorkflowsResponse_httpStatus,

    -- ** BatchStopJobRun
    batchStopJobRun_jobName,
    batchStopJobRun_jobRunIds,
    batchStopJobRunResponse_successfulSubmissions,
    batchStopJobRunResponse_errors,
    batchStopJobRunResponse_httpStatus,

    -- ** GetDevEndpoint
    getDevEndpoint_endpointName,
    getDevEndpointResponse_devEndpoint,
    getDevEndpointResponse_httpStatus,

    -- ** PutWorkflowRunProperties
    putWorkflowRunProperties_name,
    putWorkflowRunProperties_runId,
    putWorkflowRunProperties_runProperties,
    putWorkflowRunPropertiesResponse_httpStatus,

    -- ** CreateTable
    createTable_partitionIndexes,
    createTable_catalogId,
    createTable_databaseName,
    createTable_tableInput,
    createTableResponse_httpStatus,

    -- ** ListCrawlers
    listCrawlers_nextToken,
    listCrawlers_maxResults,
    listCrawlers_tags,
    listCrawlersResponse_nextToken,
    listCrawlersResponse_crawlerNames,
    listCrawlersResponse_httpStatus,

    -- ** GetCrawlerMetrics
    getCrawlerMetrics_nextToken,
    getCrawlerMetrics_maxResults,
    getCrawlerMetrics_crawlerNameList,
    getCrawlerMetricsResponse_crawlerMetricsList,
    getCrawlerMetricsResponse_nextToken,
    getCrawlerMetricsResponse_httpStatus,

    -- ** GetSchemaVersion
    getSchemaVersion_schemaVersionId,
    getSchemaVersion_schemaId,
    getSchemaVersion_schemaVersionNumber,
    getSchemaVersionResponse_status,
    getSchemaVersionResponse_schemaDefinition,
    getSchemaVersionResponse_createdTime,
    getSchemaVersionResponse_dataFormat,
    getSchemaVersionResponse_schemaVersionId,
    getSchemaVersionResponse_versionNumber,
    getSchemaVersionResponse_schemaArn,
    getSchemaVersionResponse_httpStatus,

    -- ** GetPlan
    getPlan_sinks,
    getPlan_location,
    getPlan_language,
    getPlan_additionalPlanOptionsMap,
    getPlan_mapping,
    getPlan_source,
    getPlanResponse_pythonScript,
    getPlanResponse_scalaCode,
    getPlanResponse_httpStatus,

    -- ** GetTriggers
    getTriggers_nextToken,
    getTriggers_maxResults,
    getTriggers_dependentJobName,
    getTriggersResponse_triggers,
    getTriggersResponse_nextToken,
    getTriggersResponse_httpStatus,

    -- ** CreateSchema
    createSchema_schemaDefinition,
    createSchema_registryId,
    createSchema_description,
    createSchema_compatibility,
    createSchema_tags,
    createSchema_schemaName,
    createSchema_dataFormat,
    createSchemaResponse_schemaVersionStatus,
    createSchemaResponse_registryName,
    createSchemaResponse_schemaStatus,
    createSchemaResponse_registryArn,
    createSchemaResponse_latestSchemaVersion,
    createSchemaResponse_dataFormat,
    createSchemaResponse_schemaCheckpoint,
    createSchemaResponse_schemaName,
    createSchemaResponse_schemaVersionId,
    createSchemaResponse_schemaArn,
    createSchemaResponse_nextSchemaVersion,
    createSchemaResponse_description,
    createSchemaResponse_compatibility,
    createSchemaResponse_tags,
    createSchemaResponse_httpStatus,

    -- ** ListDevEndpoints
    listDevEndpoints_nextToken,
    listDevEndpoints_maxResults,
    listDevEndpoints_tags,
    listDevEndpointsResponse_nextToken,
    listDevEndpointsResponse_devEndpointNames,
    listDevEndpointsResponse_httpStatus,

    -- ** StartTrigger
    startTrigger_name,
    startTriggerResponse_name,
    startTriggerResponse_httpStatus,

    -- ** GetDataflowGraph
    getDataflowGraph_pythonScript,
    getDataflowGraphResponse_dagEdges,
    getDataflowGraphResponse_dagNodes,
    getDataflowGraphResponse_httpStatus,

    -- ** GetDatabases
    getDatabases_resourceShareType,
    getDatabases_catalogId,
    getDatabases_nextToken,
    getDatabases_maxResults,
    getDatabasesResponse_nextToken,
    getDatabasesResponse_httpStatus,
    getDatabasesResponse_databaseList,

    -- ** GetTable
    getTable_catalogId,
    getTable_databaseName,
    getTable_name,
    getTableResponse_table,
    getTableResponse_httpStatus,

    -- ** CreateCrawler
    createCrawler_schemaChangePolicy,
    createCrawler_schedule,
    createCrawler_recrawlPolicy,
    createCrawler_classifiers,
    createCrawler_databaseName,
    createCrawler_crawlerSecurityConfiguration,
    createCrawler_lineageConfiguration,
    createCrawler_configuration,
    createCrawler_tablePrefix,
    createCrawler_description,
    createCrawler_tags,
    createCrawler_name,
    createCrawler_role,
    createCrawler_targets,
    createCrawlerResponse_httpStatus,

    -- ** GetJobRun
    getJobRun_predecessorsIncluded,
    getJobRun_jobName,
    getJobRun_runId,
    getJobRunResponse_jobRun,
    getJobRunResponse_httpStatus,

    -- ** CreateDevEndpoint
    createDevEndpoint_numberOfWorkers,
    createDevEndpoint_extraPythonLibsS3Path,
    createDevEndpoint_securityGroupIds,
    createDevEndpoint_publicKeys,
    createDevEndpoint_arguments,
    createDevEndpoint_workerType,
    createDevEndpoint_securityConfiguration,
    createDevEndpoint_publicKey,
    createDevEndpoint_subnetId,
    createDevEndpoint_glueVersion,
    createDevEndpoint_numberOfNodes,
    createDevEndpoint_extraJarsS3Path,
    createDevEndpoint_tags,
    createDevEndpoint_endpointName,
    createDevEndpoint_roleArn,
    createDevEndpointResponse_status,
    createDevEndpointResponse_failureReason,
    createDevEndpointResponse_endpointName,
    createDevEndpointResponse_numberOfWorkers,
    createDevEndpointResponse_extraPythonLibsS3Path,
    createDevEndpointResponse_securityGroupIds,
    createDevEndpointResponse_vpcId,
    createDevEndpointResponse_arguments,
    createDevEndpointResponse_workerType,
    createDevEndpointResponse_securityConfiguration,
    createDevEndpointResponse_subnetId,
    createDevEndpointResponse_glueVersion,
    createDevEndpointResponse_numberOfNodes,
    createDevEndpointResponse_availabilityZone,
    createDevEndpointResponse_zeppelinRemoteSparkInterpreterPort,
    createDevEndpointResponse_extraJarsS3Path,
    createDevEndpointResponse_createdTimestamp,
    createDevEndpointResponse_yarnEndpointAddress,
    createDevEndpointResponse_roleArn,
    createDevEndpointResponse_httpStatus,

    -- ** GetMLTaskRuns
    getMLTaskRuns_nextToken,
    getMLTaskRuns_sort,
    getMLTaskRuns_filter,
    getMLTaskRuns_maxResults,
    getMLTaskRuns_transformId,
    getMLTaskRunsResponse_nextToken,
    getMLTaskRunsResponse_taskRuns,
    getMLTaskRunsResponse_httpStatus,

    -- ** TagResource
    tagResource_resourceArn,
    tagResource_tagsToAdd,
    tagResourceResponse_httpStatus,

    -- ** PutDataCatalogEncryptionSettings
    putDataCatalogEncryptionSettings_catalogId,
    putDataCatalogEncryptionSettings_dataCatalogEncryptionSettings,
    putDataCatalogEncryptionSettingsResponse_httpStatus,

    -- ** GetMLTransforms
    getMLTransforms_nextToken,
    getMLTransforms_sort,
    getMLTransforms_filter,
    getMLTransforms_maxResults,
    getMLTransformsResponse_nextToken,
    getMLTransformsResponse_httpStatus,
    getMLTransformsResponse_transforms,

    -- ** UpdateSchema
    updateSchema_schemaVersionNumber,
    updateSchema_description,
    updateSchema_compatibility,
    updateSchema_schemaId,
    updateSchemaResponse_registryName,
    updateSchemaResponse_schemaName,
    updateSchemaResponse_schemaArn,
    updateSchemaResponse_httpStatus,

    -- ** DeleteSchema
    deleteSchema_schemaId,
    deleteSchemaResponse_status,
    deleteSchemaResponse_schemaName,
    deleteSchemaResponse_schemaArn,
    deleteSchemaResponse_httpStatus,

    -- ** GetDatabase
    getDatabase_catalogId,
    getDatabase_name,
    getDatabaseResponse_database,
    getDatabaseResponse_httpStatus,

    -- ** DeleteColumnStatisticsForPartition
    deleteColumnStatisticsForPartition_catalogId,
    deleteColumnStatisticsForPartition_databaseName,
    deleteColumnStatisticsForPartition_tableName,
    deleteColumnStatisticsForPartition_partitionValues,
    deleteColumnStatisticsForPartition_columnName,
    deleteColumnStatisticsForPartitionResponse_httpStatus,

    -- ** UpdateColumnStatisticsForPartition
    updateColumnStatisticsForPartition_catalogId,
    updateColumnStatisticsForPartition_databaseName,
    updateColumnStatisticsForPartition_tableName,
    updateColumnStatisticsForPartition_partitionValues,
    updateColumnStatisticsForPartition_columnStatisticsList,
    updateColumnStatisticsForPartitionResponse_errors,
    updateColumnStatisticsForPartitionResponse_httpStatus,

    -- ** CreateBlueprint
    createBlueprint_description,
    createBlueprint_tags,
    createBlueprint_name,
    createBlueprint_blueprintLocation,
    createBlueprintResponse_name,
    createBlueprintResponse_httpStatus,

    -- ** GetMLTaskRun
    getMLTaskRun_transformId,
    getMLTaskRun_taskRunId,
    getMLTaskRunResponse_completedOn,
    getMLTaskRunResponse_status,
    getMLTaskRunResponse_lastModifiedOn,
    getMLTaskRunResponse_errorString,
    getMLTaskRunResponse_startedOn,
    getMLTaskRunResponse_logGroupName,
    getMLTaskRunResponse_executionTime,
    getMLTaskRunResponse_properties,
    getMLTaskRunResponse_transformId,
    getMLTaskRunResponse_taskRunId,
    getMLTaskRunResponse_httpStatus,

    -- ** DeletePartition
    deletePartition_catalogId,
    deletePartition_databaseName,
    deletePartition_tableName,
    deletePartition_partitionValues,
    deletePartitionResponse_httpStatus,

    -- ** UpdatePartition
    updatePartition_catalogId,
    updatePartition_databaseName,
    updatePartition_tableName,
    updatePartition_partitionValueList,
    updatePartition_partitionInput,
    updatePartitionResponse_httpStatus,

    -- ** GetMLTransform
    getMLTransform_transformId,
    getMLTransformResponse_status,
    getMLTransformResponse_numberOfWorkers,
    getMLTransformResponse_lastModifiedOn,
    getMLTransformResponse_labelCount,
    getMLTransformResponse_workerType,
    getMLTransformResponse_inputRecordTables,
    getMLTransformResponse_glueVersion,
    getMLTransformResponse_evaluationMetrics,
    getMLTransformResponse_schema,
    getMLTransformResponse_role,
    getMLTransformResponse_name,
    getMLTransformResponse_parameters,
    getMLTransformResponse_maxRetries,
    getMLTransformResponse_maxCapacity,
    getMLTransformResponse_timeout,
    getMLTransformResponse_transformEncryption,
    getMLTransformResponse_description,
    getMLTransformResponse_createdOn,
    getMLTransformResponse_transformId,
    getMLTransformResponse_httpStatus,

    -- ** CreateScript
    createScript_dagEdges,
    createScript_language,
    createScript_dagNodes,
    createScriptResponse_pythonScript,
    createScriptResponse_scalaCode,
    createScriptResponse_httpStatus,

    -- ** PutResourcePolicy
    putResourcePolicy_policyExistsCondition,
    putResourcePolicy_policyHashCondition,
    putResourcePolicy_resourceArn,
    putResourcePolicy_enableHybrid,
    putResourcePolicy_policyInJson,
    putResourcePolicyResponse_policyHash,
    putResourcePolicyResponse_httpStatus,

    -- ** GetBlueprintRuns
    getBlueprintRuns_nextToken,
    getBlueprintRuns_maxResults,
    getBlueprintRuns_blueprintName,
    getBlueprintRunsResponse_blueprintRuns,
    getBlueprintRunsResponse_nextToken,
    getBlueprintRunsResponse_httpStatus,

    -- ** GetSecurityConfigurations
    getSecurityConfigurations_nextToken,
    getSecurityConfigurations_maxResults,
    getSecurityConfigurationsResponse_securityConfigurations,
    getSecurityConfigurationsResponse_nextToken,
    getSecurityConfigurationsResponse_httpStatus,

    -- ** DeleteResourcePolicy
    deleteResourcePolicy_policyHashCondition,
    deleteResourcePolicy_resourceArn,
    deleteResourcePolicyResponse_httpStatus,

    -- ** GetConnections
    getConnections_catalogId,
    getConnections_nextToken,
    getConnections_hidePassword,
    getConnections_filter,
    getConnections_maxResults,
    getConnectionsResponse_nextToken,
    getConnectionsResponse_connectionList,
    getConnectionsResponse_httpStatus,

    -- ** UntagResource
    untagResource_resourceArn,
    untagResource_tagsToRemove,
    untagResourceResponse_httpStatus,

    -- ** GetSchemaVersionsDiff
    getSchemaVersionsDiff_schemaId,
    getSchemaVersionsDiff_firstSchemaVersionNumber,
    getSchemaVersionsDiff_secondSchemaVersionNumber,
    getSchemaVersionsDiff_schemaDiffType,
    getSchemaVersionsDiffResponse_diff,
    getSchemaVersionsDiffResponse_httpStatus,

    -- ** SearchTables
    searchTables_resourceShareType,
    searchTables_searchText,
    searchTables_filters,
    searchTables_catalogId,
    searchTables_sortCriteria,
    searchTables_nextToken,
    searchTables_maxResults,
    searchTablesResponse_tableList,
    searchTablesResponse_nextToken,
    searchTablesResponse_httpStatus,

    -- ** GetTrigger
    getTrigger_name,
    getTriggerResponse_trigger,
    getTriggerResponse_httpStatus,

    -- ** BatchGetJobs
    batchGetJobs_jobNames,
    batchGetJobsResponse_jobs,
    batchGetJobsResponse_jobsNotFound,
    batchGetJobsResponse_httpStatus,

    -- ** ImportCatalogToGlue
    importCatalogToGlue_catalogId,
    importCatalogToGlueResponse_httpStatus,

    -- ** DeleteClassifier
    deleteClassifier_name,
    deleteClassifierResponse_httpStatus,

    -- ** UpdateClassifier
    updateClassifier_grokClassifier,
    updateClassifier_xMLClassifier,
    updateClassifier_csvClassifier,
    updateClassifier_jsonClassifier,
    updateClassifierResponse_httpStatus,

    -- ** StartJobRun
    startJobRun_numberOfWorkers,
    startJobRun_notificationProperty,
    startJobRun_arguments,
    startJobRun_workerType,
    startJobRun_securityConfiguration,
    startJobRun_allocatedCapacity,
    startJobRun_maxCapacity,
    startJobRun_timeout,
    startJobRun_jobRunId,
    startJobRun_jobName,
    startJobRunResponse_jobRunId,
    startJobRunResponse_httpStatus,

    -- ** DeleteBlueprint
    deleteBlueprint_name,
    deleteBlueprintResponse_name,
    deleteBlueprintResponse_httpStatus,

    -- ** UpdateBlueprint
    updateBlueprint_description,
    updateBlueprint_name,
    updateBlueprint_blueprintLocation,
    updateBlueprintResponse_name,
    updateBlueprintResponse_httpStatus,

    -- ** ListBlueprints
    listBlueprints_nextToken,
    listBlueprints_maxResults,
    listBlueprints_tags,
    listBlueprintsResponse_blueprints,
    listBlueprintsResponse_nextToken,
    listBlueprintsResponse_httpStatus,

    -- ** CreatePartition
    createPartition_catalogId,
    createPartition_databaseName,
    createPartition_tableName,
    createPartition_partitionInput,
    createPartitionResponse_httpStatus,

    -- ** BatchGetTriggers
    batchGetTriggers_triggerNames,
    batchGetTriggersResponse_triggersNotFound,
    batchGetTriggersResponse_triggers,
    batchGetTriggersResponse_httpStatus,

    -- ** GetBlueprint
    getBlueprint_includeParameterSpec,
    getBlueprint_includeBlueprint,
    getBlueprint_name,
    getBlueprintResponse_blueprint,
    getBlueprintResponse_httpStatus,

    -- ** StopCrawlerSchedule
    stopCrawlerSchedule_crawlerName,
    stopCrawlerScheduleResponse_httpStatus,

    -- ** GetSchemaByDefinition
    getSchemaByDefinition_schemaId,
    getSchemaByDefinition_schemaDefinition,
    getSchemaByDefinitionResponse_status,
    getSchemaByDefinitionResponse_createdTime,
    getSchemaByDefinitionResponse_dataFormat,
    getSchemaByDefinitionResponse_schemaVersionId,
    getSchemaByDefinitionResponse_schemaArn,
    getSchemaByDefinitionResponse_httpStatus,

    -- ** CreateDatabase
    createDatabase_catalogId,
    createDatabase_databaseInput,
    createDatabaseResponse_httpStatus,

    -- ** GetTableVersions
    getTableVersions_catalogId,
    getTableVersions_nextToken,
    getTableVersions_maxResults,
    getTableVersions_databaseName,
    getTableVersions_tableName,
    getTableVersionsResponse_tableVersions,
    getTableVersionsResponse_nextToken,
    getTableVersionsResponse_httpStatus,

    -- ** CreateMLTransform
    createMLTransform_numberOfWorkers,
    createMLTransform_workerType,
    createMLTransform_glueVersion,
    createMLTransform_maxRetries,
    createMLTransform_maxCapacity,
    createMLTransform_timeout,
    createMLTransform_transformEncryption,
    createMLTransform_description,
    createMLTransform_tags,
    createMLTransform_name,
    createMLTransform_inputRecordTables,
    createMLTransform_parameters,
    createMLTransform_role,
    createMLTransformResponse_transformId,
    createMLTransformResponse_httpStatus,

    -- ** DeleteSchemaVersions
    deleteSchemaVersions_schemaId,
    deleteSchemaVersions_versions,
    deleteSchemaVersionsResponse_schemaVersionErrors,
    deleteSchemaVersionsResponse_httpStatus,

    -- ** DeleteTrigger
    deleteTrigger_name,
    deleteTriggerResponse_name,
    deleteTriggerResponse_httpStatus,

    -- ** UpdateTrigger
    updateTrigger_name,
    updateTrigger_triggerUpdate,
    updateTriggerResponse_trigger,
    updateTriggerResponse_httpStatus,

    -- * Types

    -- ** Action
    action_notificationProperty,
    action_arguments,
    action_jobName,
    action_securityConfiguration,
    action_timeout,
    action_crawlerName,

    -- ** BackfillError
    backfillError_partitions,
    backfillError_code,

    -- ** BatchStopJobRunError
    batchStopJobRunError_jobName,
    batchStopJobRunError_jobRunId,
    batchStopJobRunError_errorDetail,

    -- ** BatchStopJobRunSuccessfulSubmission
    batchStopJobRunSuccessfulSubmission_jobName,
    batchStopJobRunSuccessfulSubmission_jobRunId,

    -- ** BatchUpdatePartitionFailureEntry
    batchUpdatePartitionFailureEntry_partitionValueList,
    batchUpdatePartitionFailureEntry_errorDetail,

    -- ** BatchUpdatePartitionRequestEntry
    batchUpdatePartitionRequestEntry_partitionValueList,
    batchUpdatePartitionRequestEntry_partitionInput,

    -- ** BinaryColumnStatisticsData
    binaryColumnStatisticsData_maximumLength,
    binaryColumnStatisticsData_averageLength,
    binaryColumnStatisticsData_numberOfNulls,

    -- ** Blueprint
    blueprint_status,
    blueprint_parameterSpec,
    blueprint_blueprintLocation,
    blueprint_lastModifiedOn,
    blueprint_lastActiveDefinition,
    blueprint_name,
    blueprint_blueprintServiceLocation,
    blueprint_errorMessage,
    blueprint_description,
    blueprint_createdOn,

    -- ** BlueprintDetails
    blueprintDetails_runId,
    blueprintDetails_blueprintName,

    -- ** BlueprintRun
    blueprintRun_workflowName,
    blueprintRun_completedOn,
    blueprintRun_state,
    blueprintRun_rollbackErrorMessage,
    blueprintRun_startedOn,
    blueprintRun_runId,
    blueprintRun_parameters,
    blueprintRun_blueprintName,
    blueprintRun_errorMessage,
    blueprintRun_roleArn,

    -- ** BooleanColumnStatisticsData
    booleanColumnStatisticsData_numberOfTrues,
    booleanColumnStatisticsData_numberOfFalses,
    booleanColumnStatisticsData_numberOfNulls,

    -- ** CatalogEntry
    catalogEntry_databaseName,
    catalogEntry_tableName,

    -- ** CatalogImportStatus
    catalogImportStatus_importedBy,
    catalogImportStatus_importTime,
    catalogImportStatus_importCompleted,

    -- ** CatalogTarget
    catalogTarget_databaseName,
    catalogTarget_tables,

    -- ** Classifier
    classifier_grokClassifier,
    classifier_xMLClassifier,
    classifier_csvClassifier,
    classifier_jsonClassifier,

    -- ** CloudWatchEncryption
    cloudWatchEncryption_cloudWatchEncryptionMode,
    cloudWatchEncryption_kmsKeyArn,

    -- ** CodeGenEdge
    codeGenEdge_targetParameter,
    codeGenEdge_source,
    codeGenEdge_target,

    -- ** CodeGenNode
    codeGenNode_lineNumber,
    codeGenNode_id,
    codeGenNode_nodeType,
    codeGenNode_args,

    -- ** CodeGenNodeArg
    codeGenNodeArg_param,
    codeGenNodeArg_name,
    codeGenNodeArg_value,

    -- ** Column
    column_parameters,
    column_type,
    column_comment,
    column_name,

    -- ** ColumnError
    columnError_error,
    columnError_columnName,

    -- ** ColumnImportance
    columnImportance_importance,
    columnImportance_columnName,

    -- ** ColumnStatistics
    columnStatistics_columnName,
    columnStatistics_columnType,
    columnStatistics_analyzedTime,
    columnStatistics_statisticsData,

    -- ** ColumnStatisticsData
    columnStatisticsData_binaryColumnStatisticsData,
    columnStatisticsData_dateColumnStatisticsData,
    columnStatisticsData_booleanColumnStatisticsData,
    columnStatisticsData_decimalColumnStatisticsData,
    columnStatisticsData_doubleColumnStatisticsData,
    columnStatisticsData_stringColumnStatisticsData,
    columnStatisticsData_longColumnStatisticsData,
    columnStatisticsData_type,

    -- ** ColumnStatisticsError
    columnStatisticsError_error,
    columnStatisticsError_columnStatistics,

    -- ** Condition
    condition_crawlState,
    condition_state,
    condition_jobName,
    condition_logicalOperator,
    condition_crawlerName,

    -- ** ConfusionMatrix
    confusionMatrix_numTrueNegatives,
    confusionMatrix_numFalseNegatives,
    confusionMatrix_numTruePositives,
    confusionMatrix_numFalsePositives,

    -- ** Connection
    connection_creationTime,
    connection_lastUpdatedBy,
    connection_connectionProperties,
    connection_lastUpdatedTime,
    connection_matchCriteria,
    connection_physicalConnectionRequirements,
    connection_name,
    connection_description,
    connection_connectionType,

    -- ** ConnectionInput
    connectionInput_matchCriteria,
    connectionInput_physicalConnectionRequirements,
    connectionInput_description,
    connectionInput_name,
    connectionInput_connectionType,
    connectionInput_connectionProperties,

    -- ** ConnectionPasswordEncryption
    connectionPasswordEncryption_awsKmsKeyId,
    connectionPasswordEncryption_returnConnectionPasswordEncrypted,

    -- ** ConnectionsList
    connectionsList_connections,

    -- ** Crawl
    crawl_completedOn,
    crawl_state,
    crawl_startedOn,
    crawl_logStream,
    crawl_logGroup,
    crawl_errorMessage,

    -- ** Crawler
    crawler_creationTime,
    crawler_state,
    crawler_schemaChangePolicy,
    crawler_lastUpdated,
    crawler_schedule,
    crawler_lastCrawl,
    crawler_crawlElapsedTime,
    crawler_recrawlPolicy,
    crawler_classifiers,
    crawler_role,
    crawler_name,
    crawler_targets,
    crawler_version,
    crawler_databaseName,
    crawler_crawlerSecurityConfiguration,
    crawler_lineageConfiguration,
    crawler_configuration,
    crawler_tablePrefix,
    crawler_description,

    -- ** CrawlerMetrics
    crawlerMetrics_lastRuntimeSeconds,
    crawlerMetrics_tablesCreated,
    crawlerMetrics_stillEstimating,
    crawlerMetrics_medianRuntimeSeconds,
    crawlerMetrics_timeLeftSeconds,
    crawlerMetrics_tablesDeleted,
    crawlerMetrics_tablesUpdated,
    crawlerMetrics_crawlerName,

    -- ** CrawlerNodeDetails
    crawlerNodeDetails_crawls,

    -- ** CrawlerTargets
    crawlerTargets_dynamoDBTargets,
    crawlerTargets_s3Targets,
    crawlerTargets_mongoDBTargets,
    crawlerTargets_catalogTargets,
    crawlerTargets_jdbcTargets,

    -- ** CreateCsvClassifierRequest
    createCsvClassifierRequest_quoteSymbol,
    createCsvClassifierRequest_containsHeader,
    createCsvClassifierRequest_disableValueTrimming,
    createCsvClassifierRequest_header,
    createCsvClassifierRequest_allowSingleColumn,
    createCsvClassifierRequest_delimiter,
    createCsvClassifierRequest_name,

    -- ** CreateGrokClassifierRequest
    createGrokClassifierRequest_customPatterns,
    createGrokClassifierRequest_classification,
    createGrokClassifierRequest_name,
    createGrokClassifierRequest_grokPattern,

    -- ** CreateJsonClassifierRequest
    createJsonClassifierRequest_name,
    createJsonClassifierRequest_jsonPath,

    -- ** CreateXMLClassifierRequest
    createXMLClassifierRequest_rowTag,
    createXMLClassifierRequest_classification,
    createXMLClassifierRequest_name,

    -- ** CsvClassifier
    csvClassifier_creationTime,
    csvClassifier_quoteSymbol,
    csvClassifier_containsHeader,
    csvClassifier_lastUpdated,
    csvClassifier_disableValueTrimming,
    csvClassifier_header,
    csvClassifier_version,
    csvClassifier_allowSingleColumn,
    csvClassifier_delimiter,
    csvClassifier_name,

    -- ** DataCatalogEncryptionSettings
    dataCatalogEncryptionSettings_encryptionAtRest,
    dataCatalogEncryptionSettings_connectionPasswordEncryption,

    -- ** DataLakePrincipal
    dataLakePrincipal_dataLakePrincipalIdentifier,

    -- ** Database
    database_locationUri,
    database_catalogId,
    database_targetDatabase,
    database_parameters,
    database_description,
    database_createTime,
    database_createTableDefaultPermissions,
    database_name,

    -- ** DatabaseIdentifier
    databaseIdentifier_catalogId,
    databaseIdentifier_databaseName,

    -- ** DatabaseInput
    databaseInput_locationUri,
    databaseInput_targetDatabase,
    databaseInput_parameters,
    databaseInput_description,
    databaseInput_createTableDefaultPermissions,
    databaseInput_name,

    -- ** DateColumnStatisticsData
    dateColumnStatisticsData_maximumValue,
    dateColumnStatisticsData_minimumValue,
    dateColumnStatisticsData_numberOfNulls,
    dateColumnStatisticsData_numberOfDistinctValues,

    -- ** DecimalColumnStatisticsData
    decimalColumnStatisticsData_maximumValue,
    decimalColumnStatisticsData_minimumValue,
    decimalColumnStatisticsData_numberOfNulls,
    decimalColumnStatisticsData_numberOfDistinctValues,

    -- ** DecimalNumber
    decimalNumber_unscaledValue,
    decimalNumber_scale,

    -- ** DevEndpoint
    devEndpoint_status,
    devEndpoint_failureReason,
    devEndpoint_endpointName,
    devEndpoint_numberOfWorkers,
    devEndpoint_extraPythonLibsS3Path,
    devEndpoint_lastUpdateStatus,
    devEndpoint_securityGroupIds,
    devEndpoint_lastModifiedTimestamp,
    devEndpoint_publicKeys,
    devEndpoint_vpcId,
    devEndpoint_arguments,
    devEndpoint_privateAddress,
    devEndpoint_workerType,
    devEndpoint_securityConfiguration,
    devEndpoint_publicKey,
    devEndpoint_subnetId,
    devEndpoint_glueVersion,
    devEndpoint_numberOfNodes,
    devEndpoint_publicAddress,
    devEndpoint_availabilityZone,
    devEndpoint_zeppelinRemoteSparkInterpreterPort,
    devEndpoint_extraJarsS3Path,
    devEndpoint_createdTimestamp,
    devEndpoint_yarnEndpointAddress,
    devEndpoint_roleArn,

    -- ** DevEndpointCustomLibraries
    devEndpointCustomLibraries_extraPythonLibsS3Path,
    devEndpointCustomLibraries_extraJarsS3Path,

    -- ** DoubleColumnStatisticsData
    doubleColumnStatisticsData_maximumValue,
    doubleColumnStatisticsData_minimumValue,
    doubleColumnStatisticsData_numberOfNulls,
    doubleColumnStatisticsData_numberOfDistinctValues,

    -- ** DynamoDBTarget
    dynamoDBTarget_path,
    dynamoDBTarget_scanRate,
    dynamoDBTarget_scanAll,

    -- ** Edge
    edge_sourceId,
    edge_destinationId,

    -- ** EncryptionAtRest
    encryptionAtRest_sseAwsKmsKeyId,
    encryptionAtRest_catalogEncryptionMode,

    -- ** EncryptionConfiguration
    encryptionConfiguration_s3Encryption,
    encryptionConfiguration_jobBookmarksEncryption,
    encryptionConfiguration_cloudWatchEncryption,

    -- ** ErrorDetail
    errorDetail_errorCode,
    errorDetail_errorMessage,

    -- ** ErrorDetails
    errorDetails_errorCode,
    errorDetails_errorMessage,

    -- ** EvaluationMetrics
    evaluationMetrics_findMatchesMetrics,
    evaluationMetrics_transformType,

    -- ** EventBatchingCondition
    eventBatchingCondition_batchWindow,
    eventBatchingCondition_batchSize,

    -- ** ExecutionProperty
    executionProperty_maxConcurrentRuns,

    -- ** ExportLabelsTaskRunProperties
    exportLabelsTaskRunProperties_outputS3Path,

    -- ** FindMatchesMetrics
    findMatchesMetrics_f1,
    findMatchesMetrics_areaUnderPRCurve,
    findMatchesMetrics_recall,
    findMatchesMetrics_precision,
    findMatchesMetrics_columnImportances,
    findMatchesMetrics_confusionMatrix,

    -- ** FindMatchesParameters
    findMatchesParameters_enforceProvidedLabels,
    findMatchesParameters_accuracyCostTradeoff,
    findMatchesParameters_precisionRecallTradeoff,
    findMatchesParameters_primaryKeyColumnName,

    -- ** FindMatchesTaskRunProperties
    findMatchesTaskRunProperties_jobId,
    findMatchesTaskRunProperties_jobName,
    findMatchesTaskRunProperties_jobRunId,

    -- ** GetConnectionsFilter
    getConnectionsFilter_matchCriteria,
    getConnectionsFilter_connectionType,

    -- ** GluePolicy
    gluePolicy_policyInJson,
    gluePolicy_updateTime,
    gluePolicy_policyHash,
    gluePolicy_createTime,

    -- ** GlueTable
    glueTable_catalogId,
    glueTable_connectionName,
    glueTable_databaseName,
    glueTable_tableName,

    -- ** GrokClassifier
    grokClassifier_creationTime,
    grokClassifier_lastUpdated,
    grokClassifier_version,
    grokClassifier_customPatterns,
    grokClassifier_name,
    grokClassifier_classification,
    grokClassifier_grokPattern,

    -- ** ImportLabelsTaskRunProperties
    importLabelsTaskRunProperties_replace,
    importLabelsTaskRunProperties_inputS3Path,

    -- ** JdbcTarget
    jdbcTarget_path,
    jdbcTarget_connectionName,
    jdbcTarget_exclusions,

    -- ** Job
    job_numberOfWorkers,
    job_command,
    job_notificationProperty,
    job_lastModifiedOn,
    job_connections,
    job_workerType,
    job_securityConfiguration,
    job_glueVersion,
    job_nonOverridableArguments,
    job_role,
    job_name,
    job_logUri,
    job_maxRetries,
    job_executionProperty,
    job_allocatedCapacity,
    job_maxCapacity,
    job_timeout,
    job_defaultArguments,
    job_description,
    job_createdOn,

    -- ** JobBookmarkEntry
    jobBookmarkEntry_jobName,
    jobBookmarkEntry_run,
    jobBookmarkEntry_runId,
    jobBookmarkEntry_version,
    jobBookmarkEntry_previousRunId,
    jobBookmarkEntry_attempt,
    jobBookmarkEntry_jobBookmark,

    -- ** JobBookmarksEncryption
    jobBookmarksEncryption_jobBookmarksEncryptionMode,
    jobBookmarksEncryption_kmsKeyArn,

    -- ** JobCommand
    jobCommand_scriptLocation,
    jobCommand_pythonVersion,
    jobCommand_name,

    -- ** JobNodeDetails
    jobNodeDetails_jobRuns,

    -- ** JobRun
    jobRun_completedOn,
    jobRun_numberOfWorkers,
    jobRun_triggerName,
    jobRun_notificationProperty,
    jobRun_lastModifiedOn,
    jobRun_arguments,
    jobRun_jobName,
    jobRun_startedOn,
    jobRun_workerType,
    jobRun_securityConfiguration,
    jobRun_glueVersion,
    jobRun_jobRunState,
    jobRun_logGroupName,
    jobRun_executionTime,
    jobRun_predecessorRuns,
    jobRun_previousRunId,
    jobRun_id,
    jobRun_attempt,
    jobRun_allocatedCapacity,
    jobRun_maxCapacity,
    jobRun_timeout,
    jobRun_errorMessage,

    -- ** JobUpdate
    jobUpdate_numberOfWorkers,
    jobUpdate_command,
    jobUpdate_notificationProperty,
    jobUpdate_connections,
    jobUpdate_workerType,
    jobUpdate_securityConfiguration,
    jobUpdate_glueVersion,
    jobUpdate_nonOverridableArguments,
    jobUpdate_role,
    jobUpdate_logUri,
    jobUpdate_maxRetries,
    jobUpdate_executionProperty,
    jobUpdate_allocatedCapacity,
    jobUpdate_maxCapacity,
    jobUpdate_timeout,
    jobUpdate_defaultArguments,
    jobUpdate_description,

    -- ** JsonClassifier
    jsonClassifier_creationTime,
    jsonClassifier_lastUpdated,
    jsonClassifier_version,
    jsonClassifier_name,
    jsonClassifier_jsonPath,

    -- ** KeySchemaElement
    keySchemaElement_name,
    keySchemaElement_type,

    -- ** LabelingSetGenerationTaskRunProperties
    labelingSetGenerationTaskRunProperties_outputS3Path,

    -- ** LastActiveDefinition
    lastActiveDefinition_parameterSpec,
    lastActiveDefinition_blueprintLocation,
    lastActiveDefinition_lastModifiedOn,
    lastActiveDefinition_blueprintServiceLocation,
    lastActiveDefinition_description,

    -- ** LastCrawlInfo
    lastCrawlInfo_status,
    lastCrawlInfo_startTime,
    lastCrawlInfo_logStream,
    lastCrawlInfo_logGroup,
    lastCrawlInfo_messagePrefix,
    lastCrawlInfo_errorMessage,

    -- ** LineageConfiguration
    lineageConfiguration_crawlerLineageSettings,

    -- ** Location
    location_dynamoDB,
    location_jdbc,
    location_s3,

    -- ** LongColumnStatisticsData
    longColumnStatisticsData_maximumValue,
    longColumnStatisticsData_minimumValue,
    longColumnStatisticsData_numberOfNulls,
    longColumnStatisticsData_numberOfDistinctValues,

    -- ** MLTransform
    mLTransform_status,
    mLTransform_numberOfWorkers,
    mLTransform_lastModifiedOn,
    mLTransform_labelCount,
    mLTransform_workerType,
    mLTransform_inputRecordTables,
    mLTransform_glueVersion,
    mLTransform_evaluationMetrics,
    mLTransform_schema,
    mLTransform_role,
    mLTransform_name,
    mLTransform_parameters,
    mLTransform_maxRetries,
    mLTransform_maxCapacity,
    mLTransform_timeout,
    mLTransform_transformEncryption,
    mLTransform_description,
    mLTransform_createdOn,
    mLTransform_transformId,

    -- ** MLUserDataEncryption
    mLUserDataEncryption_kmsKeyId,
    mLUserDataEncryption_mlUserDataEncryptionMode,

    -- ** MappingEntry
    mappingEntry_targetTable,
    mappingEntry_sourceType,
    mappingEntry_sourceTable,
    mappingEntry_targetType,
    mappingEntry_targetPath,
    mappingEntry_sourcePath,

    -- ** MetadataInfo
    metadataInfo_createdTime,
    metadataInfo_otherMetadataValueList,
    metadataInfo_metadataValue,

    -- ** MetadataKeyValuePair
    metadataKeyValuePair_metadataKey,
    metadataKeyValuePair_metadataValue,

    -- ** MongoDBTarget
    mongoDBTarget_path,
    mongoDBTarget_connectionName,
    mongoDBTarget_scanAll,

    -- ** Node
    node_triggerDetails,
    node_uniqueId,
    node_crawlerDetails,
    node_name,
    node_jobDetails,
    node_type,

    -- ** NotificationProperty
    notificationProperty_notifyDelayAfter,

    -- ** Order
    order_column,
    order_sortOrder,

    -- ** OtherMetadataValueListItem
    otherMetadataValueListItem_createdTime,
    otherMetadataValueListItem_metadataValue,

    -- ** Partition
    partition_creationTime,
    partition_values,
    partition_catalogId,
    partition_lastAnalyzedTime,
    partition_storageDescriptor,
    partition_databaseName,
    partition_parameters,
    partition_lastAccessTime,
    partition_tableName,

    -- ** PartitionError
    partitionError_partitionValues,
    partitionError_errorDetail,

    -- ** PartitionIndex
    partitionIndex_keys,
    partitionIndex_indexName,

    -- ** PartitionIndexDescriptor
    partitionIndexDescriptor_backfillErrors,
    partitionIndexDescriptor_indexName,
    partitionIndexDescriptor_keys,
    partitionIndexDescriptor_indexStatus,

    -- ** PartitionInput
    partitionInput_values,
    partitionInput_lastAnalyzedTime,
    partitionInput_storageDescriptor,
    partitionInput_parameters,
    partitionInput_lastAccessTime,

    -- ** PartitionValueList
    partitionValueList_values,

    -- ** PhysicalConnectionRequirements
    physicalConnectionRequirements_securityGroupIdList,
    physicalConnectionRequirements_subnetId,
    physicalConnectionRequirements_availabilityZone,

    -- ** Predecessor
    predecessor_jobName,
    predecessor_runId,

    -- ** Predicate
    predicate_logical,
    predicate_conditions,

    -- ** PrincipalPermissions
    principalPermissions_principal,
    principalPermissions_permissions,

    -- ** PropertyPredicate
    propertyPredicate_value,
    propertyPredicate_key,
    propertyPredicate_comparator,

    -- ** RecrawlPolicy
    recrawlPolicy_recrawlBehavior,

    -- ** RegistryId
    registryId_registryName,
    registryId_registryArn,

    -- ** RegistryListItem
    registryListItem_status,
    registryListItem_registryName,
    registryListItem_createdTime,
    registryListItem_registryArn,
    registryListItem_updatedTime,
    registryListItem_description,

    -- ** ResourceUri
    resourceUri_resourceType,
    resourceUri_uri,

    -- ** S3Encryption
    s3Encryption_s3EncryptionMode,
    s3Encryption_kmsKeyArn,

    -- ** S3Target
    s3Target_path,
    s3Target_sampleSize,
    s3Target_connectionName,
    s3Target_exclusions,
    s3Target_eventQueueArn,
    s3Target_dlqEventQueueArn,

    -- ** Schedule
    schedule_state,
    schedule_scheduleExpression,

    -- ** SchemaChangePolicy
    schemaChangePolicy_deleteBehavior,
    schemaChangePolicy_updateBehavior,

    -- ** SchemaColumn
    schemaColumn_name,
    schemaColumn_dataType,

    -- ** SchemaId
    schemaId_registryName,
    schemaId_schemaName,
    schemaId_schemaArn,

    -- ** SchemaListItem
    schemaListItem_registryName,
    schemaListItem_createdTime,
    schemaListItem_schemaStatus,
    schemaListItem_schemaName,
    schemaListItem_schemaArn,
    schemaListItem_updatedTime,
    schemaListItem_description,

    -- ** SchemaReference
    schemaReference_schemaVersionId,
    schemaReference_schemaId,
    schemaReference_schemaVersionNumber,

    -- ** SchemaVersionErrorItem
    schemaVersionErrorItem_versionNumber,
    schemaVersionErrorItem_errorDetails,

    -- ** SchemaVersionListItem
    schemaVersionListItem_status,
    schemaVersionListItem_createdTime,
    schemaVersionListItem_schemaVersionId,
    schemaVersionListItem_versionNumber,
    schemaVersionListItem_schemaArn,

    -- ** SchemaVersionNumber
    schemaVersionNumber_versionNumber,
    schemaVersionNumber_latestVersion,

    -- ** SecurityConfiguration
    securityConfiguration_name,
    securityConfiguration_encryptionConfiguration,
    securityConfiguration_createdTimeStamp,

    -- ** Segment
    segment_segmentNumber,
    segment_totalSegments,

    -- ** SerDeInfo
    serDeInfo_serializationLibrary,
    serDeInfo_name,
    serDeInfo_parameters,

    -- ** SkewedInfo
    skewedInfo_skewedColumnValueLocationMaps,
    skewedInfo_skewedColumnValues,
    skewedInfo_skewedColumnNames,

    -- ** SortCriterion
    sortCriterion_sort,
    sortCriterion_fieldName,

    -- ** StartingEventBatchCondition
    startingEventBatchCondition_batchWindow,
    startingEventBatchCondition_batchSize,

    -- ** StorageDescriptor
    storageDescriptor_sortColumns,
    storageDescriptor_compressed,
    storageDescriptor_location,
    storageDescriptor_bucketColumns,
    storageDescriptor_serdeInfo,
    storageDescriptor_outputFormat,
    storageDescriptor_numberOfBuckets,
    storageDescriptor_schemaReference,
    storageDescriptor_storedAsSubDirectories,
    storageDescriptor_parameters,
    storageDescriptor_inputFormat,
    storageDescriptor_skewedInfo,
    storageDescriptor_columns,

    -- ** StringColumnStatisticsData
    stringColumnStatisticsData_maximumLength,
    stringColumnStatisticsData_averageLength,
    stringColumnStatisticsData_numberOfNulls,
    stringColumnStatisticsData_numberOfDistinctValues,

    -- ** Table
    table_retention,
    table_targetTable,
    table_isRegisteredWithLakeFormation,
    table_createdBy,
    table_tableType,
    table_catalogId,
    table_owner,
    table_viewOriginalText,
    table_updateTime,
    table_viewExpandedText,
    table_lastAnalyzedTime,
    table_storageDescriptor,
    table_databaseName,
    table_parameters,
    table_lastAccessTime,
    table_description,
    table_partitionKeys,
    table_createTime,
    table_name,

    -- ** TableError
    tableError_tableName,
    tableError_errorDetail,

    -- ** TableIdentifier
    tableIdentifier_catalogId,
    tableIdentifier_name,
    tableIdentifier_databaseName,

    -- ** TableInput
    tableInput_retention,
    tableInput_targetTable,
    tableInput_tableType,
    tableInput_owner,
    tableInput_viewOriginalText,
    tableInput_viewExpandedText,
    tableInput_lastAnalyzedTime,
    tableInput_storageDescriptor,
    tableInput_parameters,
    tableInput_lastAccessTime,
    tableInput_description,
    tableInput_partitionKeys,
    tableInput_name,

    -- ** TableVersion
    tableVersion_versionId,
    tableVersion_table,

    -- ** TableVersionError
    tableVersionError_versionId,
    tableVersionError_tableName,
    tableVersionError_errorDetail,

    -- ** TaskRun
    taskRun_completedOn,
    taskRun_status,
    taskRun_lastModifiedOn,
    taskRun_errorString,
    taskRun_startedOn,
    taskRun_logGroupName,
    taskRun_executionTime,
    taskRun_properties,
    taskRun_transformId,
    taskRun_taskRunId,

    -- ** TaskRunFilterCriteria
    taskRunFilterCriteria_status,
    taskRunFilterCriteria_startedAfter,
    taskRunFilterCriteria_startedBefore,
    taskRunFilterCriteria_taskRunType,

    -- ** TaskRunProperties
    taskRunProperties_taskType,
    taskRunProperties_exportLabelsTaskRunProperties,
    taskRunProperties_labelingSetGenerationTaskRunProperties,
    taskRunProperties_findMatchesTaskRunProperties,
    taskRunProperties_importLabelsTaskRunProperties,

    -- ** TaskRunSortCriteria
    taskRunSortCriteria_column,
    taskRunSortCriteria_sortDirection,

    -- ** TransformEncryption
    transformEncryption_mlUserDataEncryption,
    transformEncryption_taskRunSecurityConfigurationName,

    -- ** TransformFilterCriteria
    transformFilterCriteria_createdAfter,
    transformFilterCriteria_status,
    transformFilterCriteria_lastModifiedAfter,
    transformFilterCriteria_lastModifiedBefore,
    transformFilterCriteria_glueVersion,
    transformFilterCriteria_schema,
    transformFilterCriteria_transformType,
    transformFilterCriteria_name,
    transformFilterCriteria_createdBefore,

    -- ** TransformParameters
    transformParameters_findMatchesParameters,
    transformParameters_transformType,

    -- ** TransformSortCriteria
    transformSortCriteria_column,
    transformSortCriteria_sortDirection,

    -- ** Trigger
    trigger_workflowName,
    trigger_state,
    trigger_actions,
    trigger_schedule,
    trigger_predicate,
    trigger_name,
    trigger_id,
    trigger_type,
    trigger_eventBatchingCondition,
    trigger_description,

    -- ** TriggerNodeDetails
    triggerNodeDetails_trigger,

    -- ** TriggerUpdate
    triggerUpdate_actions,
    triggerUpdate_schedule,
    triggerUpdate_predicate,
    triggerUpdate_name,
    triggerUpdate_eventBatchingCondition,
    triggerUpdate_description,

    -- ** UpdateCsvClassifierRequest
    updateCsvClassifierRequest_quoteSymbol,
    updateCsvClassifierRequest_containsHeader,
    updateCsvClassifierRequest_disableValueTrimming,
    updateCsvClassifierRequest_header,
    updateCsvClassifierRequest_allowSingleColumn,
    updateCsvClassifierRequest_delimiter,
    updateCsvClassifierRequest_name,

    -- ** UpdateGrokClassifierRequest
    updateGrokClassifierRequest_classification,
    updateGrokClassifierRequest_customPatterns,
    updateGrokClassifierRequest_grokPattern,
    updateGrokClassifierRequest_name,

    -- ** UpdateJsonClassifierRequest
    updateJsonClassifierRequest_jsonPath,
    updateJsonClassifierRequest_name,

    -- ** UpdateXMLClassifierRequest
    updateXMLClassifierRequest_classification,
    updateXMLClassifierRequest_rowTag,
    updateXMLClassifierRequest_name,

    -- ** UserDefinedFunction
    userDefinedFunction_ownerName,
    userDefinedFunction_catalogId,
    userDefinedFunction_resourceUris,
    userDefinedFunction_databaseName,
    userDefinedFunction_functionName,
    userDefinedFunction_ownerType,
    userDefinedFunction_createTime,
    userDefinedFunction_className,

    -- ** UserDefinedFunctionInput
    userDefinedFunctionInput_ownerName,
    userDefinedFunctionInput_resourceUris,
    userDefinedFunctionInput_functionName,
    userDefinedFunctionInput_ownerType,
    userDefinedFunctionInput_className,

    -- ** Workflow
    workflow_graph,
    workflow_lastModifiedOn,
    workflow_blueprintDetails,
    workflow_maxConcurrentRuns,
    workflow_defaultRunProperties,
    workflow_name,
    workflow_lastRun,
    workflow_description,
    workflow_createdOn,

    -- ** WorkflowGraph
    workflowGraph_edges,
    workflowGraph_nodes,

    -- ** WorkflowRun
    workflowRun_completedOn,
    workflowRun_status,
    workflowRun_graph,
    workflowRun_startedOn,
    workflowRun_workflowRunId,
    workflowRun_name,
    workflowRun_previousRunId,
    workflowRun_statistics,
    workflowRun_startingEventBatchCondition,
    workflowRun_errorMessage,
    workflowRun_workflowRunProperties,

    -- ** WorkflowRunStatistics
    workflowRunStatistics_runningActions,
    workflowRunStatistics_stoppedActions,
    workflowRunStatistics_totalActions,
    workflowRunStatistics_failedActions,
    workflowRunStatistics_timeoutActions,
    workflowRunStatistics_succeededActions,

    -- ** XMLClassifier
    xMLClassifier_creationTime,
    xMLClassifier_lastUpdated,
    xMLClassifier_version,
    xMLClassifier_rowTag,
    xMLClassifier_name,
    xMLClassifier_classification,
  )
where

import Amazonka.Glue.BatchCreatePartition
import Amazonka.Glue.BatchDeleteConnection
import Amazonka.Glue.BatchDeletePartition
import Amazonka.Glue.BatchDeleteTable
import Amazonka.Glue.BatchDeleteTableVersion
import Amazonka.Glue.BatchGetBlueprints
import Amazonka.Glue.BatchGetCrawlers
import Amazonka.Glue.BatchGetDevEndpoints
import Amazonka.Glue.BatchGetJobs
import Amazonka.Glue.BatchGetPartition
import Amazonka.Glue.BatchGetTriggers
import Amazonka.Glue.BatchGetWorkflows
import Amazonka.Glue.BatchStopJobRun
import Amazonka.Glue.BatchUpdatePartition
import Amazonka.Glue.CancelMLTaskRun
import Amazonka.Glue.CheckSchemaVersionValidity
import Amazonka.Glue.CreateBlueprint
import Amazonka.Glue.CreateClassifier
import Amazonka.Glue.CreateConnection
import Amazonka.Glue.CreateCrawler
import Amazonka.Glue.CreateDatabase
import Amazonka.Glue.CreateDevEndpoint
import Amazonka.Glue.CreateJob
import Amazonka.Glue.CreateMLTransform
import Amazonka.Glue.CreatePartition
import Amazonka.Glue.CreatePartitionIndex
import Amazonka.Glue.CreateRegistry
import Amazonka.Glue.CreateSchema
import Amazonka.Glue.CreateScript
import Amazonka.Glue.CreateSecurityConfiguration
import Amazonka.Glue.CreateTable
import Amazonka.Glue.CreateTrigger
import Amazonka.Glue.CreateUserDefinedFunction
import Amazonka.Glue.CreateWorkflow
import Amazonka.Glue.DeleteBlueprint
import Amazonka.Glue.DeleteClassifier
import Amazonka.Glue.DeleteColumnStatisticsForPartition
import Amazonka.Glue.DeleteColumnStatisticsForTable
import Amazonka.Glue.DeleteConnection
import Amazonka.Glue.DeleteCrawler
import Amazonka.Glue.DeleteDatabase
import Amazonka.Glue.DeleteDevEndpoint
import Amazonka.Glue.DeleteJob
import Amazonka.Glue.DeleteMLTransform
import Amazonka.Glue.DeletePartition
import Amazonka.Glue.DeletePartitionIndex
import Amazonka.Glue.DeleteRegistry
import Amazonka.Glue.DeleteResourcePolicy
import Amazonka.Glue.DeleteSchema
import Amazonka.Glue.DeleteSchemaVersions
import Amazonka.Glue.DeleteSecurityConfiguration
import Amazonka.Glue.DeleteTable
import Amazonka.Glue.DeleteTableVersion
import Amazonka.Glue.DeleteTrigger
import Amazonka.Glue.DeleteUserDefinedFunction
import Amazonka.Glue.DeleteWorkflow
import Amazonka.Glue.GetBlueprint
import Amazonka.Glue.GetBlueprintRun
import Amazonka.Glue.GetBlueprintRuns
import Amazonka.Glue.GetCatalogImportStatus
import Amazonka.Glue.GetClassifier
import Amazonka.Glue.GetClassifiers
import Amazonka.Glue.GetColumnStatisticsForPartition
import Amazonka.Glue.GetColumnStatisticsForTable
import Amazonka.Glue.GetConnection
import Amazonka.Glue.GetConnections
import Amazonka.Glue.GetCrawler
import Amazonka.Glue.GetCrawlerMetrics
import Amazonka.Glue.GetCrawlers
import Amazonka.Glue.GetDataCatalogEncryptionSettings
import Amazonka.Glue.GetDatabase
import Amazonka.Glue.GetDatabases
import Amazonka.Glue.GetDataflowGraph
import Amazonka.Glue.GetDevEndpoint
import Amazonka.Glue.GetDevEndpoints
import Amazonka.Glue.GetJob
import Amazonka.Glue.GetJobBookmark
import Amazonka.Glue.GetJobRun
import Amazonka.Glue.GetJobRuns
import Amazonka.Glue.GetJobs
import Amazonka.Glue.GetMLTaskRun
import Amazonka.Glue.GetMLTaskRuns
import Amazonka.Glue.GetMLTransform
import Amazonka.Glue.GetMLTransforms
import Amazonka.Glue.GetMapping
import Amazonka.Glue.GetPartition
import Amazonka.Glue.GetPartitionIndexes
import Amazonka.Glue.GetPartitions
import Amazonka.Glue.GetPlan
import Amazonka.Glue.GetRegistry
import Amazonka.Glue.GetResourcePolicies
import Amazonka.Glue.GetResourcePolicy
import Amazonka.Glue.GetSchema
import Amazonka.Glue.GetSchemaByDefinition
import Amazonka.Glue.GetSchemaVersion
import Amazonka.Glue.GetSchemaVersionsDiff
import Amazonka.Glue.GetSecurityConfiguration
import Amazonka.Glue.GetSecurityConfigurations
import Amazonka.Glue.GetTable
import Amazonka.Glue.GetTableVersion
import Amazonka.Glue.GetTableVersions
import Amazonka.Glue.GetTables
import Amazonka.Glue.GetTags
import Amazonka.Glue.GetTrigger
import Amazonka.Glue.GetTriggers
import Amazonka.Glue.GetUserDefinedFunction
import Amazonka.Glue.GetUserDefinedFunctions
import Amazonka.Glue.GetWorkflow
import Amazonka.Glue.GetWorkflowRun
import Amazonka.Glue.GetWorkflowRunProperties
import Amazonka.Glue.GetWorkflowRuns
import Amazonka.Glue.ImportCatalogToGlue
import Amazonka.Glue.ListBlueprints
import Amazonka.Glue.ListCrawlers
import Amazonka.Glue.ListDevEndpoints
import Amazonka.Glue.ListJobs
import Amazonka.Glue.ListMLTransforms
import Amazonka.Glue.ListRegistries
import Amazonka.Glue.ListSchemaVersions
import Amazonka.Glue.ListSchemas
import Amazonka.Glue.ListTriggers
import Amazonka.Glue.ListWorkflows
import Amazonka.Glue.PutDataCatalogEncryptionSettings
import Amazonka.Glue.PutResourcePolicy
import Amazonka.Glue.PutSchemaVersionMetadata
import Amazonka.Glue.PutWorkflowRunProperties
import Amazonka.Glue.QuerySchemaVersionMetadata
import Amazonka.Glue.RegisterSchemaVersion
import Amazonka.Glue.RemoveSchemaVersionMetadata
import Amazonka.Glue.ResetJobBookmark
import Amazonka.Glue.ResumeWorkflowRun
import Amazonka.Glue.SearchTables
import Amazonka.Glue.StartBlueprintRun
import Amazonka.Glue.StartCrawler
import Amazonka.Glue.StartCrawlerSchedule
import Amazonka.Glue.StartExportLabelsTaskRun
import Amazonka.Glue.StartImportLabelsTaskRun
import Amazonka.Glue.StartJobRun
import Amazonka.Glue.StartMLEvaluationTaskRun
import Amazonka.Glue.StartMLLabelingSetGenerationTaskRun
import Amazonka.Glue.StartTrigger
import Amazonka.Glue.StartWorkflowRun
import Amazonka.Glue.StopCrawler
import Amazonka.Glue.StopCrawlerSchedule
import Amazonka.Glue.StopTrigger
import Amazonka.Glue.StopWorkflowRun
import Amazonka.Glue.TagResource
import Amazonka.Glue.Types.Action
import Amazonka.Glue.Types.BackfillError
import Amazonka.Glue.Types.BatchStopJobRunError
import Amazonka.Glue.Types.BatchStopJobRunSuccessfulSubmission
import Amazonka.Glue.Types.BatchUpdatePartitionFailureEntry
import Amazonka.Glue.Types.BatchUpdatePartitionRequestEntry
import Amazonka.Glue.Types.BinaryColumnStatisticsData
import Amazonka.Glue.Types.Blueprint
import Amazonka.Glue.Types.BlueprintDetails
import Amazonka.Glue.Types.BlueprintRun
import Amazonka.Glue.Types.BooleanColumnStatisticsData
import Amazonka.Glue.Types.CatalogEntry
import Amazonka.Glue.Types.CatalogImportStatus
import Amazonka.Glue.Types.CatalogTarget
import Amazonka.Glue.Types.Classifier
import Amazonka.Glue.Types.CloudWatchEncryption
import Amazonka.Glue.Types.CodeGenEdge
import Amazonka.Glue.Types.CodeGenNode
import Amazonka.Glue.Types.CodeGenNodeArg
import Amazonka.Glue.Types.Column
import Amazonka.Glue.Types.ColumnError
import Amazonka.Glue.Types.ColumnImportance
import Amazonka.Glue.Types.ColumnStatistics
import Amazonka.Glue.Types.ColumnStatisticsData
import Amazonka.Glue.Types.ColumnStatisticsError
import Amazonka.Glue.Types.Condition
import Amazonka.Glue.Types.ConfusionMatrix
import Amazonka.Glue.Types.Connection
import Amazonka.Glue.Types.ConnectionInput
import Amazonka.Glue.Types.ConnectionPasswordEncryption
import Amazonka.Glue.Types.ConnectionsList
import Amazonka.Glue.Types.Crawl
import Amazonka.Glue.Types.Crawler
import Amazonka.Glue.Types.CrawlerMetrics
import Amazonka.Glue.Types.CrawlerNodeDetails
import Amazonka.Glue.Types.CrawlerTargets
import Amazonka.Glue.Types.CreateCsvClassifierRequest
import Amazonka.Glue.Types.CreateGrokClassifierRequest
import Amazonka.Glue.Types.CreateJsonClassifierRequest
import Amazonka.Glue.Types.CreateXMLClassifierRequest
import Amazonka.Glue.Types.CsvClassifier
import Amazonka.Glue.Types.DataCatalogEncryptionSettings
import Amazonka.Glue.Types.DataLakePrincipal
import Amazonka.Glue.Types.Database
import Amazonka.Glue.Types.DatabaseIdentifier
import Amazonka.Glue.Types.DatabaseInput
import Amazonka.Glue.Types.DateColumnStatisticsData
import Amazonka.Glue.Types.DecimalColumnStatisticsData
import Amazonka.Glue.Types.DecimalNumber
import Amazonka.Glue.Types.DevEndpoint
import Amazonka.Glue.Types.DevEndpointCustomLibraries
import Amazonka.Glue.Types.DoubleColumnStatisticsData
import Amazonka.Glue.Types.DynamoDBTarget
import Amazonka.Glue.Types.Edge
import Amazonka.Glue.Types.EncryptionAtRest
import Amazonka.Glue.Types.EncryptionConfiguration
import Amazonka.Glue.Types.ErrorDetail
import Amazonka.Glue.Types.ErrorDetails
import Amazonka.Glue.Types.EvaluationMetrics
import Amazonka.Glue.Types.EventBatchingCondition
import Amazonka.Glue.Types.ExecutionProperty
import Amazonka.Glue.Types.ExportLabelsTaskRunProperties
import Amazonka.Glue.Types.FindMatchesMetrics
import Amazonka.Glue.Types.FindMatchesParameters
import Amazonka.Glue.Types.FindMatchesTaskRunProperties
import Amazonka.Glue.Types.GetConnectionsFilter
import Amazonka.Glue.Types.GluePolicy
import Amazonka.Glue.Types.GlueTable
import Amazonka.Glue.Types.GrokClassifier
import Amazonka.Glue.Types.ImportLabelsTaskRunProperties
import Amazonka.Glue.Types.JdbcTarget
import Amazonka.Glue.Types.Job
import Amazonka.Glue.Types.JobBookmarkEntry
import Amazonka.Glue.Types.JobBookmarksEncryption
import Amazonka.Glue.Types.JobCommand
import Amazonka.Glue.Types.JobNodeDetails
import Amazonka.Glue.Types.JobRun
import Amazonka.Glue.Types.JobUpdate
import Amazonka.Glue.Types.JsonClassifier
import Amazonka.Glue.Types.KeySchemaElement
import Amazonka.Glue.Types.LabelingSetGenerationTaskRunProperties
import Amazonka.Glue.Types.LastActiveDefinition
import Amazonka.Glue.Types.LastCrawlInfo
import Amazonka.Glue.Types.LineageConfiguration
import Amazonka.Glue.Types.Location
import Amazonka.Glue.Types.LongColumnStatisticsData
import Amazonka.Glue.Types.MLTransform
import Amazonka.Glue.Types.MLUserDataEncryption
import Amazonka.Glue.Types.MappingEntry
import Amazonka.Glue.Types.MetadataInfo
import Amazonka.Glue.Types.MetadataKeyValuePair
import Amazonka.Glue.Types.MongoDBTarget
import Amazonka.Glue.Types.Node
import Amazonka.Glue.Types.NotificationProperty
import Amazonka.Glue.Types.Order
import Amazonka.Glue.Types.OtherMetadataValueListItem
import Amazonka.Glue.Types.Partition
import Amazonka.Glue.Types.PartitionError
import Amazonka.Glue.Types.PartitionIndex
import Amazonka.Glue.Types.PartitionIndexDescriptor
import Amazonka.Glue.Types.PartitionInput
import Amazonka.Glue.Types.PartitionValueList
import Amazonka.Glue.Types.PhysicalConnectionRequirements
import Amazonka.Glue.Types.Predecessor
import Amazonka.Glue.Types.Predicate
import Amazonka.Glue.Types.PrincipalPermissions
import Amazonka.Glue.Types.PropertyPredicate
import Amazonka.Glue.Types.RecrawlPolicy
import Amazonka.Glue.Types.RegistryId
import Amazonka.Glue.Types.RegistryListItem
import Amazonka.Glue.Types.ResourceUri
import Amazonka.Glue.Types.S3Encryption
import Amazonka.Glue.Types.S3Target
import Amazonka.Glue.Types.Schedule
import Amazonka.Glue.Types.SchemaChangePolicy
import Amazonka.Glue.Types.SchemaColumn
import Amazonka.Glue.Types.SchemaId
import Amazonka.Glue.Types.SchemaListItem
import Amazonka.Glue.Types.SchemaReference
import Amazonka.Glue.Types.SchemaVersionErrorItem
import Amazonka.Glue.Types.SchemaVersionListItem
import Amazonka.Glue.Types.SchemaVersionNumber
import Amazonka.Glue.Types.SecurityConfiguration
import Amazonka.Glue.Types.Segment
import Amazonka.Glue.Types.SerDeInfo
import Amazonka.Glue.Types.SkewedInfo
import Amazonka.Glue.Types.SortCriterion
import Amazonka.Glue.Types.StartingEventBatchCondition
import Amazonka.Glue.Types.StorageDescriptor
import Amazonka.Glue.Types.StringColumnStatisticsData
import Amazonka.Glue.Types.Table
import Amazonka.Glue.Types.TableError
import Amazonka.Glue.Types.TableIdentifier
import Amazonka.Glue.Types.TableInput
import Amazonka.Glue.Types.TableVersion
import Amazonka.Glue.Types.TableVersionError
import Amazonka.Glue.Types.TaskRun
import Amazonka.Glue.Types.TaskRunFilterCriteria
import Amazonka.Glue.Types.TaskRunProperties
import Amazonka.Glue.Types.TaskRunSortCriteria
import Amazonka.Glue.Types.TransformEncryption
import Amazonka.Glue.Types.TransformFilterCriteria
import Amazonka.Glue.Types.TransformParameters
import Amazonka.Glue.Types.TransformSortCriteria
import Amazonka.Glue.Types.Trigger
import Amazonka.Glue.Types.TriggerNodeDetails
import Amazonka.Glue.Types.TriggerUpdate
import Amazonka.Glue.Types.UpdateCsvClassifierRequest
import Amazonka.Glue.Types.UpdateGrokClassifierRequest
import Amazonka.Glue.Types.UpdateJsonClassifierRequest
import Amazonka.Glue.Types.UpdateXMLClassifierRequest
import Amazonka.Glue.Types.UserDefinedFunction
import Amazonka.Glue.Types.UserDefinedFunctionInput
import Amazonka.Glue.Types.Workflow
import Amazonka.Glue.Types.WorkflowGraph
import Amazonka.Glue.Types.WorkflowRun
import Amazonka.Glue.Types.WorkflowRunStatistics
import Amazonka.Glue.Types.XMLClassifier
import Amazonka.Glue.UntagResource
import Amazonka.Glue.UpdateBlueprint
import Amazonka.Glue.UpdateClassifier
import Amazonka.Glue.UpdateColumnStatisticsForPartition
import Amazonka.Glue.UpdateColumnStatisticsForTable
import Amazonka.Glue.UpdateConnection
import Amazonka.Glue.UpdateCrawler
import Amazonka.Glue.UpdateCrawlerSchedule
import Amazonka.Glue.UpdateDatabase
import Amazonka.Glue.UpdateDevEndpoint
import Amazonka.Glue.UpdateJob
import Amazonka.Glue.UpdateMLTransform
import Amazonka.Glue.UpdatePartition
import Amazonka.Glue.UpdateRegistry
import Amazonka.Glue.UpdateSchema
import Amazonka.Glue.UpdateTable
import Amazonka.Glue.UpdateTrigger
import Amazonka.Glue.UpdateUserDefinedFunction
import Amazonka.Glue.UpdateWorkflow
