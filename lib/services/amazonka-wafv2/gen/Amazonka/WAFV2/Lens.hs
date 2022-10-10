{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Amazonka.WAFV2.Lens
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.WAFV2.Lens
  ( -- * Operations

    -- ** AssociateWebACL
    associateWebACL_webACLArn,
    associateWebACL_resourceArn,
    associateWebACLResponse_httpStatus,

    -- ** CheckCapacity
    checkCapacity_scope,
    checkCapacity_rules,
    checkCapacityResponse_capacity,
    checkCapacityResponse_httpStatus,

    -- ** CreateIPSet
    createIPSet_tags,
    createIPSet_description,
    createIPSet_name,
    createIPSet_scope,
    createIPSet_iPAddressVersion,
    createIPSet_addresses,
    createIPSetResponse_summary,
    createIPSetResponse_httpStatus,

    -- ** CreateRegexPatternSet
    createRegexPatternSet_tags,
    createRegexPatternSet_description,
    createRegexPatternSet_name,
    createRegexPatternSet_scope,
    createRegexPatternSet_regularExpressionList,
    createRegexPatternSetResponse_summary,
    createRegexPatternSetResponse_httpStatus,

    -- ** CreateRuleGroup
    createRuleGroup_tags,
    createRuleGroup_rules,
    createRuleGroup_description,
    createRuleGroup_customResponseBodies,
    createRuleGroup_name,
    createRuleGroup_scope,
    createRuleGroup_capacity,
    createRuleGroup_visibilityConfig,
    createRuleGroupResponse_summary,
    createRuleGroupResponse_httpStatus,

    -- ** CreateWebACL
    createWebACL_tags,
    createWebACL_captchaConfig,
    createWebACL_rules,
    createWebACL_description,
    createWebACL_customResponseBodies,
    createWebACL_name,
    createWebACL_scope,
    createWebACL_defaultAction,
    createWebACL_visibilityConfig,
    createWebACLResponse_summary,
    createWebACLResponse_httpStatus,

    -- ** DeleteFirewallManagerRuleGroups
    deleteFirewallManagerRuleGroups_webACLArn,
    deleteFirewallManagerRuleGroups_webACLLockToken,
    deleteFirewallManagerRuleGroupsResponse_nextWebACLLockToken,
    deleteFirewallManagerRuleGroupsResponse_httpStatus,

    -- ** DeleteIPSet
    deleteIPSet_name,
    deleteIPSet_scope,
    deleteIPSet_id,
    deleteIPSet_lockToken,
    deleteIPSetResponse_httpStatus,

    -- ** DeleteLoggingConfiguration
    deleteLoggingConfiguration_resourceArn,
    deleteLoggingConfigurationResponse_httpStatus,

    -- ** DeletePermissionPolicy
    deletePermissionPolicy_resourceArn,
    deletePermissionPolicyResponse_httpStatus,

    -- ** DeleteRegexPatternSet
    deleteRegexPatternSet_name,
    deleteRegexPatternSet_scope,
    deleteRegexPatternSet_id,
    deleteRegexPatternSet_lockToken,
    deleteRegexPatternSetResponse_httpStatus,

    -- ** DeleteRuleGroup
    deleteRuleGroup_name,
    deleteRuleGroup_scope,
    deleteRuleGroup_id,
    deleteRuleGroup_lockToken,
    deleteRuleGroupResponse_httpStatus,

    -- ** DeleteWebACL
    deleteWebACL_name,
    deleteWebACL_scope,
    deleteWebACL_id,
    deleteWebACL_lockToken,
    deleteWebACLResponse_httpStatus,

    -- ** DescribeManagedRuleGroup
    describeManagedRuleGroup_versionName,
    describeManagedRuleGroup_vendorName,
    describeManagedRuleGroup_name,
    describeManagedRuleGroup_scope,
    describeManagedRuleGroupResponse_availableLabels,
    describeManagedRuleGroupResponse_rules,
    describeManagedRuleGroupResponse_snsTopicArn,
    describeManagedRuleGroupResponse_labelNamespace,
    describeManagedRuleGroupResponse_versionName,
    describeManagedRuleGroupResponse_consumedLabels,
    describeManagedRuleGroupResponse_capacity,
    describeManagedRuleGroupResponse_httpStatus,

    -- ** DisassociateWebACL
    disassociateWebACL_resourceArn,
    disassociateWebACLResponse_httpStatus,

    -- ** GenerateMobileSdkReleaseUrl
    generateMobileSdkReleaseUrl_platform,
    generateMobileSdkReleaseUrl_releaseVersion,
    generateMobileSdkReleaseUrlResponse_url,
    generateMobileSdkReleaseUrlResponse_httpStatus,

    -- ** GetIPSet
    getIPSet_name,
    getIPSet_scope,
    getIPSet_id,
    getIPSetResponse_lockToken,
    getIPSetResponse_iPSet,
    getIPSetResponse_httpStatus,

    -- ** GetLoggingConfiguration
    getLoggingConfiguration_resourceArn,
    getLoggingConfigurationResponse_loggingConfiguration,
    getLoggingConfigurationResponse_httpStatus,

    -- ** GetManagedRuleSet
    getManagedRuleSet_name,
    getManagedRuleSet_scope,
    getManagedRuleSet_id,
    getManagedRuleSetResponse_managedRuleSet,
    getManagedRuleSetResponse_lockToken,
    getManagedRuleSetResponse_httpStatus,

    -- ** GetMobileSdkRelease
    getMobileSdkRelease_platform,
    getMobileSdkRelease_releaseVersion,
    getMobileSdkReleaseResponse_mobileSdkRelease,
    getMobileSdkReleaseResponse_httpStatus,

    -- ** GetPermissionPolicy
    getPermissionPolicy_resourceArn,
    getPermissionPolicyResponse_policy,
    getPermissionPolicyResponse_httpStatus,

    -- ** GetRateBasedStatementManagedKeys
    getRateBasedStatementManagedKeys_ruleGroupRuleName,
    getRateBasedStatementManagedKeys_scope,
    getRateBasedStatementManagedKeys_webACLName,
    getRateBasedStatementManagedKeys_webACLId,
    getRateBasedStatementManagedKeys_ruleName,
    getRateBasedStatementManagedKeysResponse_managedKeysIPV6,
    getRateBasedStatementManagedKeysResponse_managedKeysIPV4,
    getRateBasedStatementManagedKeysResponse_httpStatus,

    -- ** GetRegexPatternSet
    getRegexPatternSet_name,
    getRegexPatternSet_scope,
    getRegexPatternSet_id,
    getRegexPatternSetResponse_regexPatternSet,
    getRegexPatternSetResponse_lockToken,
    getRegexPatternSetResponse_httpStatus,

    -- ** GetRuleGroup
    getRuleGroup_name,
    getRuleGroup_arn,
    getRuleGroup_id,
    getRuleGroup_scope,
    getRuleGroupResponse_ruleGroup,
    getRuleGroupResponse_lockToken,
    getRuleGroupResponse_httpStatus,

    -- ** GetSampledRequests
    getSampledRequests_webAclArn,
    getSampledRequests_ruleMetricName,
    getSampledRequests_scope,
    getSampledRequests_timeWindow,
    getSampledRequests_maxItems,
    getSampledRequestsResponse_sampledRequests,
    getSampledRequestsResponse_populationSize,
    getSampledRequestsResponse_timeWindow,
    getSampledRequestsResponse_httpStatus,

    -- ** GetWebACL
    getWebACL_name,
    getWebACL_scope,
    getWebACL_id,
    getWebACLResponse_applicationIntegrationURL,
    getWebACLResponse_lockToken,
    getWebACLResponse_webACL,
    getWebACLResponse_httpStatus,

    -- ** GetWebACLForResource
    getWebACLForResource_resourceArn,
    getWebACLForResourceResponse_webACL,
    getWebACLForResourceResponse_httpStatus,

    -- ** ListAvailableManagedRuleGroupVersions
    listAvailableManagedRuleGroupVersions_limit,
    listAvailableManagedRuleGroupVersions_nextMarker,
    listAvailableManagedRuleGroupVersions_vendorName,
    listAvailableManagedRuleGroupVersions_name,
    listAvailableManagedRuleGroupVersions_scope,
    listAvailableManagedRuleGroupVersionsResponse_versions,
    listAvailableManagedRuleGroupVersionsResponse_nextMarker,
    listAvailableManagedRuleGroupVersionsResponse_currentDefaultVersion,
    listAvailableManagedRuleGroupVersionsResponse_httpStatus,

    -- ** ListAvailableManagedRuleGroups
    listAvailableManagedRuleGroups_limit,
    listAvailableManagedRuleGroups_nextMarker,
    listAvailableManagedRuleGroups_scope,
    listAvailableManagedRuleGroupsResponse_managedRuleGroups,
    listAvailableManagedRuleGroupsResponse_nextMarker,
    listAvailableManagedRuleGroupsResponse_httpStatus,

    -- ** ListIPSets
    listIPSets_limit,
    listIPSets_nextMarker,
    listIPSets_scope,
    listIPSetsResponse_iPSets,
    listIPSetsResponse_nextMarker,
    listIPSetsResponse_httpStatus,

    -- ** ListLoggingConfigurations
    listLoggingConfigurations_limit,
    listLoggingConfigurations_nextMarker,
    listLoggingConfigurations_scope,
    listLoggingConfigurationsResponse_loggingConfigurations,
    listLoggingConfigurationsResponse_nextMarker,
    listLoggingConfigurationsResponse_httpStatus,

    -- ** ListManagedRuleSets
    listManagedRuleSets_limit,
    listManagedRuleSets_nextMarker,
    listManagedRuleSets_scope,
    listManagedRuleSetsResponse_nextMarker,
    listManagedRuleSetsResponse_managedRuleSets,
    listManagedRuleSetsResponse_httpStatus,

    -- ** ListMobileSdkReleases
    listMobileSdkReleases_limit,
    listMobileSdkReleases_nextMarker,
    listMobileSdkReleases_platform,
    listMobileSdkReleasesResponse_releaseSummaries,
    listMobileSdkReleasesResponse_nextMarker,
    listMobileSdkReleasesResponse_httpStatus,

    -- ** ListRegexPatternSets
    listRegexPatternSets_limit,
    listRegexPatternSets_nextMarker,
    listRegexPatternSets_scope,
    listRegexPatternSetsResponse_regexPatternSets,
    listRegexPatternSetsResponse_nextMarker,
    listRegexPatternSetsResponse_httpStatus,

    -- ** ListResourcesForWebACL
    listResourcesForWebACL_resourceType,
    listResourcesForWebACL_webACLArn,
    listResourcesForWebACLResponse_resourceArns,
    listResourcesForWebACLResponse_httpStatus,

    -- ** ListRuleGroups
    listRuleGroups_limit,
    listRuleGroups_nextMarker,
    listRuleGroups_scope,
    listRuleGroupsResponse_ruleGroups,
    listRuleGroupsResponse_nextMarker,
    listRuleGroupsResponse_httpStatus,

    -- ** ListTagsForResource
    listTagsForResource_limit,
    listTagsForResource_nextMarker,
    listTagsForResource_resourceARN,
    listTagsForResourceResponse_tagInfoForResource,
    listTagsForResourceResponse_nextMarker,
    listTagsForResourceResponse_httpStatus,

    -- ** ListWebACLs
    listWebACLs_limit,
    listWebACLs_nextMarker,
    listWebACLs_scope,
    listWebACLsResponse_webACLs,
    listWebACLsResponse_nextMarker,
    listWebACLsResponse_httpStatus,

    -- ** PutLoggingConfiguration
    putLoggingConfiguration_loggingConfiguration,
    putLoggingConfigurationResponse_loggingConfiguration,
    putLoggingConfigurationResponse_httpStatus,

    -- ** PutManagedRuleSetVersions
    putManagedRuleSetVersions_recommendedVersion,
    putManagedRuleSetVersions_versionsToPublish,
    putManagedRuleSetVersions_name,
    putManagedRuleSetVersions_scope,
    putManagedRuleSetVersions_id,
    putManagedRuleSetVersions_lockToken,
    putManagedRuleSetVersionsResponse_nextLockToken,
    putManagedRuleSetVersionsResponse_httpStatus,

    -- ** PutPermissionPolicy
    putPermissionPolicy_resourceArn,
    putPermissionPolicy_policy,
    putPermissionPolicyResponse_httpStatus,

    -- ** TagResource
    tagResource_resourceARN,
    tagResource_tags,
    tagResourceResponse_httpStatus,

    -- ** UntagResource
    untagResource_resourceARN,
    untagResource_tagKeys,
    untagResourceResponse_httpStatus,

    -- ** UpdateIPSet
    updateIPSet_description,
    updateIPSet_name,
    updateIPSet_scope,
    updateIPSet_id,
    updateIPSet_addresses,
    updateIPSet_lockToken,
    updateIPSetResponse_nextLockToken,
    updateIPSetResponse_httpStatus,

    -- ** UpdateManagedRuleSetVersionExpiryDate
    updateManagedRuleSetVersionExpiryDate_name,
    updateManagedRuleSetVersionExpiryDate_scope,
    updateManagedRuleSetVersionExpiryDate_id,
    updateManagedRuleSetVersionExpiryDate_lockToken,
    updateManagedRuleSetVersionExpiryDate_versionToExpire,
    updateManagedRuleSetVersionExpiryDate_expiryTimestamp,
    updateManagedRuleSetVersionExpiryDateResponse_expiringVersion,
    updateManagedRuleSetVersionExpiryDateResponse_expiryTimestamp,
    updateManagedRuleSetVersionExpiryDateResponse_nextLockToken,
    updateManagedRuleSetVersionExpiryDateResponse_httpStatus,

    -- ** UpdateRegexPatternSet
    updateRegexPatternSet_description,
    updateRegexPatternSet_name,
    updateRegexPatternSet_scope,
    updateRegexPatternSet_id,
    updateRegexPatternSet_regularExpressionList,
    updateRegexPatternSet_lockToken,
    updateRegexPatternSetResponse_nextLockToken,
    updateRegexPatternSetResponse_httpStatus,

    -- ** UpdateRuleGroup
    updateRuleGroup_rules,
    updateRuleGroup_description,
    updateRuleGroup_customResponseBodies,
    updateRuleGroup_name,
    updateRuleGroup_scope,
    updateRuleGroup_id,
    updateRuleGroup_visibilityConfig,
    updateRuleGroup_lockToken,
    updateRuleGroupResponse_nextLockToken,
    updateRuleGroupResponse_httpStatus,

    -- ** UpdateWebACL
    updateWebACL_captchaConfig,
    updateWebACL_rules,
    updateWebACL_description,
    updateWebACL_customResponseBodies,
    updateWebACL_name,
    updateWebACL_scope,
    updateWebACL_id,
    updateWebACL_defaultAction,
    updateWebACL_visibilityConfig,
    updateWebACL_lockToken,
    updateWebACLResponse_nextLockToken,
    updateWebACLResponse_httpStatus,

    -- * Types

    -- ** ActionCondition
    actionCondition_action,

    -- ** All

    -- ** AllQueryArguments

    -- ** AllowAction
    allowAction_customRequestHandling,

    -- ** AndStatement
    andStatement_statements,

    -- ** BlockAction
    blockAction_customResponse,

    -- ** Body
    body_oversizeHandling,

    -- ** ByteMatchStatement
    byteMatchStatement_searchString,
    byteMatchStatement_fieldToMatch,
    byteMatchStatement_textTransformations,
    byteMatchStatement_positionalConstraint,

    -- ** CaptchaAction
    captchaAction_customRequestHandling,

    -- ** CaptchaConfig
    captchaConfig_immunityTimeProperty,

    -- ** CaptchaResponse
    captchaResponse_solveTimestamp,
    captchaResponse_responseCode,
    captchaResponse_failureReason,

    -- ** Condition
    condition_labelNameCondition,
    condition_actionCondition,

    -- ** CookieMatchPattern
    cookieMatchPattern_all,
    cookieMatchPattern_includedCookies,
    cookieMatchPattern_excludedCookies,

    -- ** Cookies
    cookies_matchPattern,
    cookies_matchScope,
    cookies_oversizeHandling,

    -- ** CountAction
    countAction_customRequestHandling,

    -- ** CustomHTTPHeader
    customHTTPHeader_name,
    customHTTPHeader_value,

    -- ** CustomRequestHandling
    customRequestHandling_insertHeaders,

    -- ** CustomResponse
    customResponse_customResponseBodyKey,
    customResponse_responseHeaders,
    customResponse_responseCode,

    -- ** CustomResponseBody
    customResponseBody_contentType,
    customResponseBody_content,

    -- ** DefaultAction
    defaultAction_allow,
    defaultAction_block,

    -- ** ExcludedRule
    excludedRule_name,

    -- ** FieldToMatch
    fieldToMatch_uriPath,
    fieldToMatch_method,
    fieldToMatch_headers,
    fieldToMatch_jsonBody,
    fieldToMatch_allQueryArguments,
    fieldToMatch_body,
    fieldToMatch_singleHeader,
    fieldToMatch_cookies,
    fieldToMatch_queryString,
    fieldToMatch_singleQueryArgument,

    -- ** Filter
    filter_behavior,
    filter_requirement,
    filter_conditions,

    -- ** FirewallManagerRuleGroup
    firewallManagerRuleGroup_name,
    firewallManagerRuleGroup_priority,
    firewallManagerRuleGroup_firewallManagerStatement,
    firewallManagerRuleGroup_overrideAction,
    firewallManagerRuleGroup_visibilityConfig,

    -- ** FirewallManagerStatement
    firewallManagerStatement_ruleGroupReferenceStatement,
    firewallManagerStatement_managedRuleGroupStatement,

    -- ** ForwardedIPConfig
    forwardedIPConfig_headerName,
    forwardedIPConfig_fallbackBehavior,

    -- ** GeoMatchStatement
    geoMatchStatement_countryCodes,
    geoMatchStatement_forwardedIPConfig,

    -- ** HTTPHeader
    hTTPHeader_name,
    hTTPHeader_value,

    -- ** HTTPRequest
    hTTPRequest_hTTPVersion,
    hTTPRequest_method,
    hTTPRequest_headers,
    hTTPRequest_country,
    hTTPRequest_uri,
    hTTPRequest_clientIP,

    -- ** HeaderMatchPattern
    headerMatchPattern_excludedHeaders,
    headerMatchPattern_includedHeaders,
    headerMatchPattern_all,

    -- ** Headers
    headers_matchPattern,
    headers_matchScope,
    headers_oversizeHandling,

    -- ** IPSet
    iPSet_description,
    iPSet_name,
    iPSet_id,
    iPSet_arn,
    iPSet_iPAddressVersion,
    iPSet_addresses,

    -- ** IPSetForwardedIPConfig
    iPSetForwardedIPConfig_headerName,
    iPSetForwardedIPConfig_fallbackBehavior,
    iPSetForwardedIPConfig_position,

    -- ** IPSetReferenceStatement
    iPSetReferenceStatement_iPSetForwardedIPConfig,
    iPSetReferenceStatement_arn,

    -- ** IPSetSummary
    iPSetSummary_name,
    iPSetSummary_arn,
    iPSetSummary_id,
    iPSetSummary_description,
    iPSetSummary_lockToken,

    -- ** ImmunityTimeProperty
    immunityTimeProperty_immunityTime,

    -- ** JsonBody
    jsonBody_invalidFallbackBehavior,
    jsonBody_oversizeHandling,
    jsonBody_matchPattern,
    jsonBody_matchScope,

    -- ** JsonMatchPattern
    jsonMatchPattern_all,
    jsonMatchPattern_includedPaths,

    -- ** Label
    label_name,

    -- ** LabelMatchStatement
    labelMatchStatement_scope,
    labelMatchStatement_key,

    -- ** LabelNameCondition
    labelNameCondition_labelName,

    -- ** LabelSummary
    labelSummary_name,

    -- ** LoggingConfiguration
    loggingConfiguration_managedByFirewallManager,
    loggingConfiguration_loggingFilter,
    loggingConfiguration_redactedFields,
    loggingConfiguration_resourceArn,
    loggingConfiguration_logDestinationConfigs,

    -- ** LoggingFilter
    loggingFilter_filters,
    loggingFilter_defaultBehavior,

    -- ** ManagedRuleGroupConfig
    managedRuleGroupConfig_passwordField,
    managedRuleGroupConfig_loginPath,
    managedRuleGroupConfig_payloadType,
    managedRuleGroupConfig_usernameField,

    -- ** ManagedRuleGroupStatement
    managedRuleGroupStatement_managedRuleGroupConfigs,
    managedRuleGroupStatement_scopeDownStatement,
    managedRuleGroupStatement_excludedRules,
    managedRuleGroupStatement_version,
    managedRuleGroupStatement_vendorName,
    managedRuleGroupStatement_name,

    -- ** ManagedRuleGroupSummary
    managedRuleGroupSummary_name,
    managedRuleGroupSummary_description,
    managedRuleGroupSummary_versioningSupported,
    managedRuleGroupSummary_vendorName,

    -- ** ManagedRuleGroupVersion
    managedRuleGroupVersion_name,
    managedRuleGroupVersion_lastUpdateTimestamp,

    -- ** ManagedRuleSet
    managedRuleSet_recommendedVersion,
    managedRuleSet_publishedVersions,
    managedRuleSet_description,
    managedRuleSet_labelNamespace,
    managedRuleSet_name,
    managedRuleSet_id,
    managedRuleSet_arn,

    -- ** ManagedRuleSetSummary
    managedRuleSetSummary_name,
    managedRuleSetSummary_arn,
    managedRuleSetSummary_id,
    managedRuleSetSummary_description,
    managedRuleSetSummary_labelNamespace,
    managedRuleSetSummary_lockToken,

    -- ** ManagedRuleSetVersion
    managedRuleSetVersion_lastUpdateTimestamp,
    managedRuleSetVersion_publishTimestamp,
    managedRuleSetVersion_expiryTimestamp,
    managedRuleSetVersion_forecastedLifetime,
    managedRuleSetVersion_associatedRuleGroupArn,
    managedRuleSetVersion_capacity,

    -- ** Method

    -- ** MobileSdkRelease
    mobileSdkRelease_releaseVersion,
    mobileSdkRelease_tags,
    mobileSdkRelease_releaseNotes,
    mobileSdkRelease_timestamp,

    -- ** NoneAction

    -- ** NotStatement
    notStatement_statement,

    -- ** OrStatement
    orStatement_statements,

    -- ** OverrideAction
    overrideAction_none,
    overrideAction_count,

    -- ** PasswordField
    passwordField_identifier,

    -- ** QueryString

    -- ** RateBasedStatement
    rateBasedStatement_scopeDownStatement,
    rateBasedStatement_forwardedIPConfig,
    rateBasedStatement_limit,
    rateBasedStatement_aggregateKeyType,

    -- ** RateBasedStatementManagedKeysIPSet
    rateBasedStatementManagedKeysIPSet_addresses,
    rateBasedStatementManagedKeysIPSet_iPAddressVersion,

    -- ** Regex
    regex_regexString,

    -- ** RegexMatchStatement
    regexMatchStatement_regexString,
    regexMatchStatement_fieldToMatch,
    regexMatchStatement_textTransformations,

    -- ** RegexPatternSet
    regexPatternSet_name,
    regexPatternSet_arn,
    regexPatternSet_id,
    regexPatternSet_description,
    regexPatternSet_regularExpressionList,

    -- ** RegexPatternSetReferenceStatement
    regexPatternSetReferenceStatement_arn,
    regexPatternSetReferenceStatement_fieldToMatch,
    regexPatternSetReferenceStatement_textTransformations,

    -- ** RegexPatternSetSummary
    regexPatternSetSummary_name,
    regexPatternSetSummary_arn,
    regexPatternSetSummary_id,
    regexPatternSetSummary_description,
    regexPatternSetSummary_lockToken,

    -- ** ReleaseSummary
    releaseSummary_releaseVersion,
    releaseSummary_timestamp,

    -- ** Rule
    rule_captchaConfig,
    rule_overrideAction,
    rule_ruleLabels,
    rule_action,
    rule_name,
    rule_priority,
    rule_statement,
    rule_visibilityConfig,

    -- ** RuleAction
    ruleAction_allow,
    ruleAction_count,
    ruleAction_captcha,
    ruleAction_block,

    -- ** RuleGroup
    ruleGroup_availableLabels,
    ruleGroup_rules,
    ruleGroup_description,
    ruleGroup_labelNamespace,
    ruleGroup_customResponseBodies,
    ruleGroup_consumedLabels,
    ruleGroup_name,
    ruleGroup_id,
    ruleGroup_capacity,
    ruleGroup_arn,
    ruleGroup_visibilityConfig,

    -- ** RuleGroupReferenceStatement
    ruleGroupReferenceStatement_excludedRules,
    ruleGroupReferenceStatement_arn,

    -- ** RuleGroupSummary
    ruleGroupSummary_name,
    ruleGroupSummary_arn,
    ruleGroupSummary_id,
    ruleGroupSummary_description,
    ruleGroupSummary_lockToken,

    -- ** RuleSummary
    ruleSummary_name,
    ruleSummary_action,

    -- ** SampledHTTPRequest
    sampledHTTPRequest_timestamp,
    sampledHTTPRequest_captchaResponse,
    sampledHTTPRequest_ruleNameWithinRuleGroup,
    sampledHTTPRequest_labels,
    sampledHTTPRequest_action,
    sampledHTTPRequest_requestHeadersInserted,
    sampledHTTPRequest_responseCodeSent,
    sampledHTTPRequest_request,
    sampledHTTPRequest_weight,

    -- ** SingleHeader
    singleHeader_name,

    -- ** SingleQueryArgument
    singleQueryArgument_name,

    -- ** SizeConstraintStatement
    sizeConstraintStatement_fieldToMatch,
    sizeConstraintStatement_comparisonOperator,
    sizeConstraintStatement_size,
    sizeConstraintStatement_textTransformations,

    -- ** SqliMatchStatement
    sqliMatchStatement_sensitivityLevel,
    sqliMatchStatement_fieldToMatch,
    sqliMatchStatement_textTransformations,

    -- ** Statement
    statement_ruleGroupReferenceStatement,
    statement_sqliMatchStatement,
    statement_xssMatchStatement,
    statement_managedRuleGroupStatement,
    statement_regexPatternSetReferenceStatement,
    statement_rateBasedStatement,
    statement_notStatement,
    statement_geoMatchStatement,
    statement_orStatement,
    statement_sizeConstraintStatement,
    statement_byteMatchStatement,
    statement_labelMatchStatement,
    statement_regexMatchStatement,
    statement_andStatement,
    statement_iPSetReferenceStatement,

    -- ** Tag
    tag_key,
    tag_value,

    -- ** TagInfoForResource
    tagInfoForResource_tagList,
    tagInfoForResource_resourceARN,

    -- ** TextTransformation
    textTransformation_priority,
    textTransformation_type,

    -- ** TimeWindow
    timeWindow_startTime,
    timeWindow_endTime,

    -- ** UriPath

    -- ** UsernameField
    usernameField_identifier,

    -- ** VersionToPublish
    versionToPublish_forecastedLifetime,
    versionToPublish_associatedRuleGroupArn,

    -- ** VisibilityConfig
    visibilityConfig_sampledRequestsEnabled,
    visibilityConfig_cloudWatchMetricsEnabled,
    visibilityConfig_metricName,

    -- ** WebACL
    webACL_managedByFirewallManager,
    webACL_captchaConfig,
    webACL_rules,
    webACL_preProcessFirewallManagerRuleGroups,
    webACL_description,
    webACL_labelNamespace,
    webACL_customResponseBodies,
    webACL_capacity,
    webACL_postProcessFirewallManagerRuleGroups,
    webACL_name,
    webACL_id,
    webACL_arn,
    webACL_defaultAction,
    webACL_visibilityConfig,

    -- ** WebACLSummary
    webACLSummary_name,
    webACLSummary_arn,
    webACLSummary_id,
    webACLSummary_description,
    webACLSummary_lockToken,

    -- ** XssMatchStatement
    xssMatchStatement_fieldToMatch,
    xssMatchStatement_textTransformations,
  )
where

import Amazonka.WAFV2.AssociateWebACL
import Amazonka.WAFV2.CheckCapacity
import Amazonka.WAFV2.CreateIPSet
import Amazonka.WAFV2.CreateRegexPatternSet
import Amazonka.WAFV2.CreateRuleGroup
import Amazonka.WAFV2.CreateWebACL
import Amazonka.WAFV2.DeleteFirewallManagerRuleGroups
import Amazonka.WAFV2.DeleteIPSet
import Amazonka.WAFV2.DeleteLoggingConfiguration
import Amazonka.WAFV2.DeletePermissionPolicy
import Amazonka.WAFV2.DeleteRegexPatternSet
import Amazonka.WAFV2.DeleteRuleGroup
import Amazonka.WAFV2.DeleteWebACL
import Amazonka.WAFV2.DescribeManagedRuleGroup
import Amazonka.WAFV2.DisassociateWebACL
import Amazonka.WAFV2.GenerateMobileSdkReleaseUrl
import Amazonka.WAFV2.GetIPSet
import Amazonka.WAFV2.GetLoggingConfiguration
import Amazonka.WAFV2.GetManagedRuleSet
import Amazonka.WAFV2.GetMobileSdkRelease
import Amazonka.WAFV2.GetPermissionPolicy
import Amazonka.WAFV2.GetRateBasedStatementManagedKeys
import Amazonka.WAFV2.GetRegexPatternSet
import Amazonka.WAFV2.GetRuleGroup
import Amazonka.WAFV2.GetSampledRequests
import Amazonka.WAFV2.GetWebACL
import Amazonka.WAFV2.GetWebACLForResource
import Amazonka.WAFV2.ListAvailableManagedRuleGroupVersions
import Amazonka.WAFV2.ListAvailableManagedRuleGroups
import Amazonka.WAFV2.ListIPSets
import Amazonka.WAFV2.ListLoggingConfigurations
import Amazonka.WAFV2.ListManagedRuleSets
import Amazonka.WAFV2.ListMobileSdkReleases
import Amazonka.WAFV2.ListRegexPatternSets
import Amazonka.WAFV2.ListResourcesForWebACL
import Amazonka.WAFV2.ListRuleGroups
import Amazonka.WAFV2.ListTagsForResource
import Amazonka.WAFV2.ListWebACLs
import Amazonka.WAFV2.PutLoggingConfiguration
import Amazonka.WAFV2.PutManagedRuleSetVersions
import Amazonka.WAFV2.PutPermissionPolicy
import Amazonka.WAFV2.TagResource
import Amazonka.WAFV2.Types.ActionCondition
import Amazonka.WAFV2.Types.All
import Amazonka.WAFV2.Types.AllQueryArguments
import Amazonka.WAFV2.Types.AllowAction
import Amazonka.WAFV2.Types.AndStatement
import Amazonka.WAFV2.Types.BlockAction
import Amazonka.WAFV2.Types.Body
import Amazonka.WAFV2.Types.ByteMatchStatement
import Amazonka.WAFV2.Types.CaptchaAction
import Amazonka.WAFV2.Types.CaptchaConfig
import Amazonka.WAFV2.Types.CaptchaResponse
import Amazonka.WAFV2.Types.Condition
import Amazonka.WAFV2.Types.CookieMatchPattern
import Amazonka.WAFV2.Types.Cookies
import Amazonka.WAFV2.Types.CountAction
import Amazonka.WAFV2.Types.CustomHTTPHeader
import Amazonka.WAFV2.Types.CustomRequestHandling
import Amazonka.WAFV2.Types.CustomResponse
import Amazonka.WAFV2.Types.CustomResponseBody
import Amazonka.WAFV2.Types.DefaultAction
import Amazonka.WAFV2.Types.ExcludedRule
import Amazonka.WAFV2.Types.FieldToMatch
import Amazonka.WAFV2.Types.Filter
import Amazonka.WAFV2.Types.FirewallManagerRuleGroup
import Amazonka.WAFV2.Types.FirewallManagerStatement
import Amazonka.WAFV2.Types.ForwardedIPConfig
import Amazonka.WAFV2.Types.GeoMatchStatement
import Amazonka.WAFV2.Types.HTTPHeader
import Amazonka.WAFV2.Types.HTTPRequest
import Amazonka.WAFV2.Types.HeaderMatchPattern
import Amazonka.WAFV2.Types.Headers
import Amazonka.WAFV2.Types.IPSet
import Amazonka.WAFV2.Types.IPSetForwardedIPConfig
import Amazonka.WAFV2.Types.IPSetReferenceStatement
import Amazonka.WAFV2.Types.IPSetSummary
import Amazonka.WAFV2.Types.ImmunityTimeProperty
import Amazonka.WAFV2.Types.JsonBody
import Amazonka.WAFV2.Types.JsonMatchPattern
import Amazonka.WAFV2.Types.Label
import Amazonka.WAFV2.Types.LabelMatchStatement
import Amazonka.WAFV2.Types.LabelNameCondition
import Amazonka.WAFV2.Types.LabelSummary
import Amazonka.WAFV2.Types.LoggingConfiguration
import Amazonka.WAFV2.Types.LoggingFilter
import Amazonka.WAFV2.Types.ManagedRuleGroupConfig
import Amazonka.WAFV2.Types.ManagedRuleGroupStatement
import Amazonka.WAFV2.Types.ManagedRuleGroupSummary
import Amazonka.WAFV2.Types.ManagedRuleGroupVersion
import Amazonka.WAFV2.Types.ManagedRuleSet
import Amazonka.WAFV2.Types.ManagedRuleSetSummary
import Amazonka.WAFV2.Types.ManagedRuleSetVersion
import Amazonka.WAFV2.Types.Method
import Amazonka.WAFV2.Types.MobileSdkRelease
import Amazonka.WAFV2.Types.NoneAction
import Amazonka.WAFV2.Types.NotStatement
import Amazonka.WAFV2.Types.OrStatement
import Amazonka.WAFV2.Types.OverrideAction
import Amazonka.WAFV2.Types.PasswordField
import Amazonka.WAFV2.Types.QueryString
import Amazonka.WAFV2.Types.RateBasedStatement
import Amazonka.WAFV2.Types.RateBasedStatementManagedKeysIPSet
import Amazonka.WAFV2.Types.Regex
import Amazonka.WAFV2.Types.RegexMatchStatement
import Amazonka.WAFV2.Types.RegexPatternSet
import Amazonka.WAFV2.Types.RegexPatternSetReferenceStatement
import Amazonka.WAFV2.Types.RegexPatternSetSummary
import Amazonka.WAFV2.Types.ReleaseSummary
import Amazonka.WAFV2.Types.Rule
import Amazonka.WAFV2.Types.RuleAction
import Amazonka.WAFV2.Types.RuleGroup
import Amazonka.WAFV2.Types.RuleGroupReferenceStatement
import Amazonka.WAFV2.Types.RuleGroupSummary
import Amazonka.WAFV2.Types.RuleSummary
import Amazonka.WAFV2.Types.SampledHTTPRequest
import Amazonka.WAFV2.Types.SingleHeader
import Amazonka.WAFV2.Types.SingleQueryArgument
import Amazonka.WAFV2.Types.SizeConstraintStatement
import Amazonka.WAFV2.Types.SqliMatchStatement
import Amazonka.WAFV2.Types.Statement
import Amazonka.WAFV2.Types.Tag
import Amazonka.WAFV2.Types.TagInfoForResource
import Amazonka.WAFV2.Types.TextTransformation
import Amazonka.WAFV2.Types.TimeWindow
import Amazonka.WAFV2.Types.UriPath
import Amazonka.WAFV2.Types.UsernameField
import Amazonka.WAFV2.Types.VersionToPublish
import Amazonka.WAFV2.Types.VisibilityConfig
import Amazonka.WAFV2.Types.WebACL
import Amazonka.WAFV2.Types.WebACLSummary
import Amazonka.WAFV2.Types.XssMatchStatement
import Amazonka.WAFV2.UntagResource
import Amazonka.WAFV2.UpdateIPSet
import Amazonka.WAFV2.UpdateManagedRuleSetVersionExpiryDate
import Amazonka.WAFV2.UpdateRegexPatternSet
import Amazonka.WAFV2.UpdateRuleGroup
import Amazonka.WAFV2.UpdateWebACL
