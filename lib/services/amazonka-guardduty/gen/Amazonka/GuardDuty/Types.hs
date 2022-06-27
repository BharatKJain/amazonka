{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Amazonka.GuardDuty.Types
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.GuardDuty.Types
  ( -- * Service Configuration
    defaultService,

    -- * Errors
    _InternalServerErrorException,
    _BadRequestException,

    -- * AdminStatus
    AdminStatus (..),

    -- * DataSource
    DataSource (..),

    -- * DataSourceStatus
    DataSourceStatus (..),

    -- * DestinationType
    DestinationType (..),

    -- * DetectorStatus
    DetectorStatus (..),

    -- * Feedback
    Feedback (..),

    -- * FilterAction
    FilterAction (..),

    -- * FindingPublishingFrequency
    FindingPublishingFrequency (..),

    -- * FindingStatisticType
    FindingStatisticType (..),

    -- * IpSetFormat
    IpSetFormat (..),

    -- * IpSetStatus
    IpSetStatus (..),

    -- * OrderBy
    OrderBy (..),

    -- * PublishingStatus
    PublishingStatus (..),

    -- * ThreatIntelSetFormat
    ThreatIntelSetFormat (..),

    -- * ThreatIntelSetStatus
    ThreatIntelSetStatus (..),

    -- * UsageStatisticType
    UsageStatisticType (..),

    -- * AccessControlList
    AccessControlList (..),
    newAccessControlList,
    accessControlList_allowsPublicReadAccess,
    accessControlList_allowsPublicWriteAccess,

    -- * AccessKeyDetails
    AccessKeyDetails (..),
    newAccessKeyDetails,
    accessKeyDetails_principalId,
    accessKeyDetails_userName,
    accessKeyDetails_userType,
    accessKeyDetails_accessKeyId,

    -- * AccountDetail
    AccountDetail (..),
    newAccountDetail,
    accountDetail_accountId,
    accountDetail_email,

    -- * AccountLevelPermissions
    AccountLevelPermissions (..),
    newAccountLevelPermissions,
    accountLevelPermissions_blockPublicAccess,

    -- * Action
    Action (..),
    newAction,
    action_actionType,
    action_networkConnectionAction,
    action_awsApiCallAction,
    action_dnsRequestAction,
    action_portProbeAction,

    -- * AdminAccount
    AdminAccount (..),
    newAdminAccount,
    adminAccount_adminAccountId,
    adminAccount_adminStatus,

    -- * AwsApiCallAction
    AwsApiCallAction (..),
    newAwsApiCallAction,
    awsApiCallAction_remoteIpDetails,
    awsApiCallAction_domainDetails,
    awsApiCallAction_api,
    awsApiCallAction_errorCode,
    awsApiCallAction_serviceName,
    awsApiCallAction_callerType,

    -- * BlockPublicAccess
    BlockPublicAccess (..),
    newBlockPublicAccess,
    blockPublicAccess_restrictPublicBuckets,
    blockPublicAccess_ignorePublicAcls,
    blockPublicAccess_blockPublicPolicy,
    blockPublicAccess_blockPublicAcls,

    -- * BucketLevelPermissions
    BucketLevelPermissions (..),
    newBucketLevelPermissions,
    bucketLevelPermissions_accessControlList,
    bucketLevelPermissions_blockPublicAccess,
    bucketLevelPermissions_bucketPolicy,

    -- * BucketPolicy
    BucketPolicy (..),
    newBucketPolicy,
    bucketPolicy_allowsPublicReadAccess,
    bucketPolicy_allowsPublicWriteAccess,

    -- * City
    City (..),
    newCity,
    city_cityName,

    -- * CloudTrailConfigurationResult
    CloudTrailConfigurationResult (..),
    newCloudTrailConfigurationResult,
    cloudTrailConfigurationResult_status,

    -- * Condition
    Condition (..),
    newCondition,
    condition_notEquals,
    condition_lessThanOrEqual,
    condition_neq,
    condition_equals,
    condition_lessThan,
    condition_lte,
    condition_lt,
    condition_gte,
    condition_eq,
    condition_gt,
    condition_greaterThanOrEqual,
    condition_greaterThan,

    -- * Country
    Country (..),
    newCountry,
    country_countryName,
    country_countryCode,

    -- * DNSLogsConfigurationResult
    DNSLogsConfigurationResult (..),
    newDNSLogsConfigurationResult,
    dNSLogsConfigurationResult_status,

    -- * DataSourceConfigurations
    DataSourceConfigurations (..),
    newDataSourceConfigurations,
    dataSourceConfigurations_s3Logs,

    -- * DataSourceConfigurationsResult
    DataSourceConfigurationsResult (..),
    newDataSourceConfigurationsResult,
    dataSourceConfigurationsResult_cloudTrail,
    dataSourceConfigurationsResult_dNSLogs,
    dataSourceConfigurationsResult_flowLogs,
    dataSourceConfigurationsResult_s3Logs,

    -- * DefaultServerSideEncryption
    DefaultServerSideEncryption (..),
    newDefaultServerSideEncryption,
    defaultServerSideEncryption_encryptionType,
    defaultServerSideEncryption_kmsMasterKeyArn,

    -- * Destination
    Destination (..),
    newDestination,
    destination_destinationId,
    destination_destinationType,
    destination_status,

    -- * DestinationProperties
    DestinationProperties (..),
    newDestinationProperties,
    destinationProperties_kmsKeyArn,
    destinationProperties_destinationArn,

    -- * DnsRequestAction
    DnsRequestAction (..),
    newDnsRequestAction,
    dnsRequestAction_domain,

    -- * DomainDetails
    DomainDetails (..),
    newDomainDetails,
    domainDetails_domain,

    -- * Evidence
    Evidence (..),
    newEvidence,
    evidence_threatIntelligenceDetails,

    -- * Finding
    Finding (..),
    newFinding,
    finding_confidence,
    finding_description,
    finding_service,
    finding_partition,
    finding_title,
    finding_accountId,
    finding_arn,
    finding_createdAt,
    finding_id,
    finding_region,
    finding_resource,
    finding_schemaVersion,
    finding_severity,
    finding_type,
    finding_updatedAt,

    -- * FindingCriteria
    FindingCriteria (..),
    newFindingCriteria,
    findingCriteria_criterion,

    -- * FindingStatistics
    FindingStatistics (..),
    newFindingStatistics,
    findingStatistics_countBySeverity,

    -- * FlowLogsConfigurationResult
    FlowLogsConfigurationResult (..),
    newFlowLogsConfigurationResult,
    flowLogsConfigurationResult_status,

    -- * GeoLocation
    GeoLocation (..),
    newGeoLocation,
    geoLocation_lat,
    geoLocation_lon,

    -- * IamInstanceProfile
    IamInstanceProfile (..),
    newIamInstanceProfile,
    iamInstanceProfile_arn,
    iamInstanceProfile_id,

    -- * InstanceDetails
    InstanceDetails (..),
    newInstanceDetails,
    instanceDetails_tags,
    instanceDetails_instanceState,
    instanceDetails_iamInstanceProfile,
    instanceDetails_outpostArn,
    instanceDetails_imageDescription,
    instanceDetails_launchTime,
    instanceDetails_productCodes,
    instanceDetails_platform,
    instanceDetails_availabilityZone,
    instanceDetails_instanceType,
    instanceDetails_instanceId,
    instanceDetails_imageId,
    instanceDetails_networkInterfaces,

    -- * Invitation
    Invitation (..),
    newInvitation,
    invitation_accountId,
    invitation_invitedAt,
    invitation_relationshipStatus,
    invitation_invitationId,

    -- * LocalIpDetails
    LocalIpDetails (..),
    newLocalIpDetails,
    localIpDetails_ipAddressV4,

    -- * LocalPortDetails
    LocalPortDetails (..),
    newLocalPortDetails,
    localPortDetails_port,
    localPortDetails_portName,

    -- * Master
    Master (..),
    newMaster,
    master_accountId,
    master_invitedAt,
    master_relationshipStatus,
    master_invitationId,

    -- * Member
    Member (..),
    newMember,
    member_invitedAt,
    member_detectorId,
    member_accountId,
    member_masterId,
    member_email,
    member_relationshipStatus,
    member_updatedAt,

    -- * MemberDataSourceConfiguration
    MemberDataSourceConfiguration (..),
    newMemberDataSourceConfiguration,
    memberDataSourceConfiguration_accountId,
    memberDataSourceConfiguration_dataSources,

    -- * NetworkConnectionAction
    NetworkConnectionAction (..),
    newNetworkConnectionAction,
    networkConnectionAction_connectionDirection,
    networkConnectionAction_remoteIpDetails,
    networkConnectionAction_localPortDetails,
    networkConnectionAction_localIpDetails,
    networkConnectionAction_blocked,
    networkConnectionAction_protocol,
    networkConnectionAction_remotePortDetails,

    -- * NetworkInterface
    NetworkInterface (..),
    newNetworkInterface,
    networkInterface_privateIpAddresses,
    networkInterface_subnetId,
    networkInterface_publicIp,
    networkInterface_networkInterfaceId,
    networkInterface_publicDnsName,
    networkInterface_securityGroups,
    networkInterface_privateIpAddress,
    networkInterface_privateDnsName,
    networkInterface_vpcId,
    networkInterface_ipv6Addresses,

    -- * Organization
    Organization (..),
    newOrganization,
    organization_isp,
    organization_org,
    organization_asn,
    organization_asnOrg,

    -- * OrganizationDataSourceConfigurations
    OrganizationDataSourceConfigurations (..),
    newOrganizationDataSourceConfigurations,
    organizationDataSourceConfigurations_s3Logs,

    -- * OrganizationDataSourceConfigurationsResult
    OrganizationDataSourceConfigurationsResult (..),
    newOrganizationDataSourceConfigurationsResult,
    organizationDataSourceConfigurationsResult_s3Logs,

    -- * OrganizationS3LogsConfiguration
    OrganizationS3LogsConfiguration (..),
    newOrganizationS3LogsConfiguration,
    organizationS3LogsConfiguration_autoEnable,

    -- * OrganizationS3LogsConfigurationResult
    OrganizationS3LogsConfigurationResult (..),
    newOrganizationS3LogsConfigurationResult,
    organizationS3LogsConfigurationResult_autoEnable,

    -- * Owner
    Owner (..),
    newOwner,
    owner_id,

    -- * PermissionConfiguration
    PermissionConfiguration (..),
    newPermissionConfiguration,
    permissionConfiguration_accountLevelPermissions,
    permissionConfiguration_bucketLevelPermissions,

    -- * PortProbeAction
    PortProbeAction (..),
    newPortProbeAction,
    portProbeAction_blocked,
    portProbeAction_portProbeDetails,

    -- * PortProbeDetail
    PortProbeDetail (..),
    newPortProbeDetail,
    portProbeDetail_remoteIpDetails,
    portProbeDetail_localPortDetails,
    portProbeDetail_localIpDetails,

    -- * PrivateIpAddressDetails
    PrivateIpAddressDetails (..),
    newPrivateIpAddressDetails,
    privateIpAddressDetails_privateIpAddress,
    privateIpAddressDetails_privateDnsName,

    -- * ProductCode
    ProductCode (..),
    newProductCode,
    productCode_code,
    productCode_productType,

    -- * PublicAccess
    PublicAccess (..),
    newPublicAccess,
    publicAccess_permissionConfiguration,
    publicAccess_effectivePermission,

    -- * RemoteIpDetails
    RemoteIpDetails (..),
    newRemoteIpDetails,
    remoteIpDetails_country,
    remoteIpDetails_ipAddressV4,
    remoteIpDetails_city,
    remoteIpDetails_organization,
    remoteIpDetails_geoLocation,

    -- * RemotePortDetails
    RemotePortDetails (..),
    newRemotePortDetails,
    remotePortDetails_port,
    remotePortDetails_portName,

    -- * Resource
    Resource (..),
    newResource,
    resource_resourceType,
    resource_instanceDetails,
    resource_s3BucketDetails,
    resource_accessKeyDetails,

    -- * S3BucketDetail
    S3BucketDetail (..),
    newS3BucketDetail,
    s3BucketDetail_tags,
    s3BucketDetail_name,
    s3BucketDetail_type,
    s3BucketDetail_defaultServerSideEncryption,
    s3BucketDetail_arn,
    s3BucketDetail_publicAccess,
    s3BucketDetail_owner,
    s3BucketDetail_createdAt,

    -- * S3LogsConfiguration
    S3LogsConfiguration (..),
    newS3LogsConfiguration,
    s3LogsConfiguration_enable,

    -- * S3LogsConfigurationResult
    S3LogsConfigurationResult (..),
    newS3LogsConfigurationResult,
    s3LogsConfigurationResult_status,

    -- * SecurityGroup
    SecurityGroup (..),
    newSecurityGroup,
    securityGroup_groupName,
    securityGroup_groupId,

    -- * ServiceInfo
    ServiceInfo (..),
    newServiceInfo,
    serviceInfo_resourceRole,
    serviceInfo_evidence,
    serviceInfo_userFeedback,
    serviceInfo_count,
    serviceInfo_eventFirstSeen,
    serviceInfo_archived,
    serviceInfo_action,
    serviceInfo_detectorId,
    serviceInfo_serviceName,
    serviceInfo_eventLastSeen,

    -- * SortCriteria
    SortCriteria (..),
    newSortCriteria,
    sortCriteria_attributeName,
    sortCriteria_orderBy,

    -- * Tag
    Tag (..),
    newTag,
    tag_key,
    tag_value,

    -- * ThreatIntelligenceDetail
    ThreatIntelligenceDetail (..),
    newThreatIntelligenceDetail,
    threatIntelligenceDetail_threatListName,
    threatIntelligenceDetail_threatNames,

    -- * Total
    Total (..),
    newTotal,
    total_unit,
    total_amount,

    -- * UnprocessedAccount
    UnprocessedAccount (..),
    newUnprocessedAccount,
    unprocessedAccount_accountId,
    unprocessedAccount_result,

    -- * UsageAccountResult
    UsageAccountResult (..),
    newUsageAccountResult,
    usageAccountResult_total,
    usageAccountResult_accountId,

    -- * UsageCriteria
    UsageCriteria (..),
    newUsageCriteria,
    usageCriteria_accountIds,
    usageCriteria_resources,
    usageCriteria_dataSources,

    -- * UsageDataSourceResult
    UsageDataSourceResult (..),
    newUsageDataSourceResult,
    usageDataSourceResult_total,
    usageDataSourceResult_dataSource,

    -- * UsageResourceResult
    UsageResourceResult (..),
    newUsageResourceResult,
    usageResourceResult_total,
    usageResourceResult_resource,

    -- * UsageStatistics
    UsageStatistics (..),
    newUsageStatistics,
    usageStatistics_sumByDataSource,
    usageStatistics_topResources,
    usageStatistics_sumByResource,
    usageStatistics_sumByAccount,
  )
where

import qualified Amazonka.Core as Core
import Amazonka.GuardDuty.Types.AccessControlList
import Amazonka.GuardDuty.Types.AccessKeyDetails
import Amazonka.GuardDuty.Types.AccountDetail
import Amazonka.GuardDuty.Types.AccountLevelPermissions
import Amazonka.GuardDuty.Types.Action
import Amazonka.GuardDuty.Types.AdminAccount
import Amazonka.GuardDuty.Types.AdminStatus
import Amazonka.GuardDuty.Types.AwsApiCallAction
import Amazonka.GuardDuty.Types.BlockPublicAccess
import Amazonka.GuardDuty.Types.BucketLevelPermissions
import Amazonka.GuardDuty.Types.BucketPolicy
import Amazonka.GuardDuty.Types.City
import Amazonka.GuardDuty.Types.CloudTrailConfigurationResult
import Amazonka.GuardDuty.Types.Condition
import Amazonka.GuardDuty.Types.Country
import Amazonka.GuardDuty.Types.DNSLogsConfigurationResult
import Amazonka.GuardDuty.Types.DataSource
import Amazonka.GuardDuty.Types.DataSourceConfigurations
import Amazonka.GuardDuty.Types.DataSourceConfigurationsResult
import Amazonka.GuardDuty.Types.DataSourceStatus
import Amazonka.GuardDuty.Types.DefaultServerSideEncryption
import Amazonka.GuardDuty.Types.Destination
import Amazonka.GuardDuty.Types.DestinationProperties
import Amazonka.GuardDuty.Types.DestinationType
import Amazonka.GuardDuty.Types.DetectorStatus
import Amazonka.GuardDuty.Types.DnsRequestAction
import Amazonka.GuardDuty.Types.DomainDetails
import Amazonka.GuardDuty.Types.Evidence
import Amazonka.GuardDuty.Types.Feedback
import Amazonka.GuardDuty.Types.FilterAction
import Amazonka.GuardDuty.Types.Finding
import Amazonka.GuardDuty.Types.FindingCriteria
import Amazonka.GuardDuty.Types.FindingPublishingFrequency
import Amazonka.GuardDuty.Types.FindingStatisticType
import Amazonka.GuardDuty.Types.FindingStatistics
import Amazonka.GuardDuty.Types.FlowLogsConfigurationResult
import Amazonka.GuardDuty.Types.GeoLocation
import Amazonka.GuardDuty.Types.IamInstanceProfile
import Amazonka.GuardDuty.Types.InstanceDetails
import Amazonka.GuardDuty.Types.Invitation
import Amazonka.GuardDuty.Types.IpSetFormat
import Amazonka.GuardDuty.Types.IpSetStatus
import Amazonka.GuardDuty.Types.LocalIpDetails
import Amazonka.GuardDuty.Types.LocalPortDetails
import Amazonka.GuardDuty.Types.Master
import Amazonka.GuardDuty.Types.Member
import Amazonka.GuardDuty.Types.MemberDataSourceConfiguration
import Amazonka.GuardDuty.Types.NetworkConnectionAction
import Amazonka.GuardDuty.Types.NetworkInterface
import Amazonka.GuardDuty.Types.OrderBy
import Amazonka.GuardDuty.Types.Organization
import Amazonka.GuardDuty.Types.OrganizationDataSourceConfigurations
import Amazonka.GuardDuty.Types.OrganizationDataSourceConfigurationsResult
import Amazonka.GuardDuty.Types.OrganizationS3LogsConfiguration
import Amazonka.GuardDuty.Types.OrganizationS3LogsConfigurationResult
import Amazonka.GuardDuty.Types.Owner
import Amazonka.GuardDuty.Types.PermissionConfiguration
import Amazonka.GuardDuty.Types.PortProbeAction
import Amazonka.GuardDuty.Types.PortProbeDetail
import Amazonka.GuardDuty.Types.PrivateIpAddressDetails
import Amazonka.GuardDuty.Types.ProductCode
import Amazonka.GuardDuty.Types.PublicAccess
import Amazonka.GuardDuty.Types.PublishingStatus
import Amazonka.GuardDuty.Types.RemoteIpDetails
import Amazonka.GuardDuty.Types.RemotePortDetails
import Amazonka.GuardDuty.Types.Resource
import Amazonka.GuardDuty.Types.S3BucketDetail
import Amazonka.GuardDuty.Types.S3LogsConfiguration
import Amazonka.GuardDuty.Types.S3LogsConfigurationResult
import Amazonka.GuardDuty.Types.SecurityGroup
import Amazonka.GuardDuty.Types.ServiceInfo
import Amazonka.GuardDuty.Types.SortCriteria
import Amazonka.GuardDuty.Types.Tag
import Amazonka.GuardDuty.Types.ThreatIntelSetFormat
import Amazonka.GuardDuty.Types.ThreatIntelSetStatus
import Amazonka.GuardDuty.Types.ThreatIntelligenceDetail
import Amazonka.GuardDuty.Types.Total
import Amazonka.GuardDuty.Types.UnprocessedAccount
import Amazonka.GuardDuty.Types.UsageAccountResult
import Amazonka.GuardDuty.Types.UsageCriteria
import Amazonka.GuardDuty.Types.UsageDataSourceResult
import Amazonka.GuardDuty.Types.UsageResourceResult
import Amazonka.GuardDuty.Types.UsageStatisticType
import Amazonka.GuardDuty.Types.UsageStatistics
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Sign.V4 as Sign

-- | API version @2017-11-28@ of the Amazon GuardDuty SDK configuration.
defaultService :: Core.Service
defaultService =
  Core.Service
    { Core._serviceAbbrev = "GuardDuty",
      Core._serviceSigner = Sign.v4,
      Core._serviceEndpointPrefix = "guardduty",
      Core._serviceSigningName = "guardduty",
      Core._serviceVersion = "2017-11-28",
      Core._serviceEndpoint =
        Core.defaultEndpoint defaultService,
      Core._serviceTimeout = Prelude.Just 70,
      Core._serviceCheck = Core.statusSuccess,
      Core._serviceError = Core.parseJSONError "GuardDuty",
      Core._serviceRetry = retry
    }
  where
    retry =
      Core.Exponential
        { Core._retryBase = 5.0e-2,
          Core._retryGrowth = 2,
          Core._retryAttempts = 5,
          Core._retryCheck = check
        }
    check e
      | Lens.has (Core.hasStatus 429) e =
        Prelude.Just "too_many_requests"
      | Lens.has
          ( Core.hasCode "RequestThrottledException"
              Prelude.. Core.hasStatus 400
          )
          e =
        Prelude.Just "request_throttled_exception"
      | Lens.has (Core.hasStatus 502) e =
        Prelude.Just "bad_gateway"
      | Lens.has (Core.hasStatus 500) e =
        Prelude.Just "general_server_error"
      | Lens.has
          ( Core.hasCode "Throttling"
              Prelude.. Core.hasStatus 400
          )
          e =
        Prelude.Just "throttling"
      | Lens.has (Core.hasStatus 503) e =
        Prelude.Just "service_unavailable"
      | Lens.has (Core.hasStatus 509) e =
        Prelude.Just "limit_exceeded"
      | Lens.has
          ( Core.hasCode "ThrottledException"
              Prelude.. Core.hasStatus 400
          )
          e =
        Prelude.Just "throttled_exception"
      | Lens.has
          ( Core.hasCode "ThrottlingException"
              Prelude.. Core.hasStatus 400
          )
          e =
        Prelude.Just "throttling_exception"
      | Lens.has (Core.hasStatus 504) e =
        Prelude.Just "gateway_timeout"
      | Lens.has
          ( Core.hasCode
              "ProvisionedThroughputExceededException"
              Prelude.. Core.hasStatus 400
          )
          e =
        Prelude.Just "throughput_exceeded"
      | Prelude.otherwise = Prelude.Nothing

-- | An internal server error exception object.
_InternalServerErrorException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_InternalServerErrorException =
  Core._MatchServiceError
    defaultService
    "InternalServerErrorException"
    Prelude.. Core.hasStatus 500

-- | A bad request exception object.
_BadRequestException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_BadRequestException =
  Core._MatchServiceError
    defaultService
    "BadRequestException"
    Prelude.. Core.hasStatus 400
