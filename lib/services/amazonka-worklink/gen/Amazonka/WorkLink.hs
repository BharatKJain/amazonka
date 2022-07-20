{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Amazonka.WorkLink
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Derived from API version @2018-09-25@ of the AWS service descriptions, licensed under Apache 2.0.
--
-- Amazon WorkLink is a cloud-based service that provides secure access to
-- internal websites and web apps from iOS and Android phones. In a single
-- step, your users, such as employees, can access internal websites as
-- efficiently as they access any other public website. They enter a URL in
-- their web browser, or choose a link to an internal website in an email.
-- Amazon WorkLink authenticates the user\'s access and securely renders
-- authorized internal web content in a secure rendering service in the AWS
-- cloud. Amazon WorkLink doesn\'t download or store any internal web
-- content on mobile devices.
module Amazonka.WorkLink
  ( -- * Service Configuration
    defaultService,

    -- * Errors
    -- $errors

    -- ** ResourceAlreadyExistsException
    _ResourceAlreadyExistsException,

    -- ** UnauthorizedException
    _UnauthorizedException,

    -- ** ResourceNotFoundException
    _ResourceNotFoundException,

    -- ** InternalServerErrorException
    _InternalServerErrorException,

    -- ** TooManyRequestsException
    _TooManyRequestsException,

    -- ** InvalidRequestException
    _InvalidRequestException,

    -- * Waiters
    -- $waiters

    -- * Operations
    -- $operations

    -- ** AssociateDomain
    AssociateDomain (AssociateDomain'),
    newAssociateDomain,
    AssociateDomainResponse (AssociateDomainResponse'),
    newAssociateDomainResponse,

    -- ** AssociateWebsiteAuthorizationProvider
    AssociateWebsiteAuthorizationProvider (AssociateWebsiteAuthorizationProvider'),
    newAssociateWebsiteAuthorizationProvider,
    AssociateWebsiteAuthorizationProviderResponse (AssociateWebsiteAuthorizationProviderResponse'),
    newAssociateWebsiteAuthorizationProviderResponse,

    -- ** AssociateWebsiteCertificateAuthority
    AssociateWebsiteCertificateAuthority (AssociateWebsiteCertificateAuthority'),
    newAssociateWebsiteCertificateAuthority,
    AssociateWebsiteCertificateAuthorityResponse (AssociateWebsiteCertificateAuthorityResponse'),
    newAssociateWebsiteCertificateAuthorityResponse,

    -- ** CreateFleet
    CreateFleet (CreateFleet'),
    newCreateFleet,
    CreateFleetResponse (CreateFleetResponse'),
    newCreateFleetResponse,

    -- ** DeleteFleet
    DeleteFleet (DeleteFleet'),
    newDeleteFleet,
    DeleteFleetResponse (DeleteFleetResponse'),
    newDeleteFleetResponse,

    -- ** DescribeAuditStreamConfiguration
    DescribeAuditStreamConfiguration (DescribeAuditStreamConfiguration'),
    newDescribeAuditStreamConfiguration,
    DescribeAuditStreamConfigurationResponse (DescribeAuditStreamConfigurationResponse'),
    newDescribeAuditStreamConfigurationResponse,

    -- ** DescribeCompanyNetworkConfiguration
    DescribeCompanyNetworkConfiguration (DescribeCompanyNetworkConfiguration'),
    newDescribeCompanyNetworkConfiguration,
    DescribeCompanyNetworkConfigurationResponse (DescribeCompanyNetworkConfigurationResponse'),
    newDescribeCompanyNetworkConfigurationResponse,

    -- ** DescribeDevice
    DescribeDevice (DescribeDevice'),
    newDescribeDevice,
    DescribeDeviceResponse (DescribeDeviceResponse'),
    newDescribeDeviceResponse,

    -- ** DescribeDevicePolicyConfiguration
    DescribeDevicePolicyConfiguration (DescribeDevicePolicyConfiguration'),
    newDescribeDevicePolicyConfiguration,
    DescribeDevicePolicyConfigurationResponse (DescribeDevicePolicyConfigurationResponse'),
    newDescribeDevicePolicyConfigurationResponse,

    -- ** DescribeDomain
    DescribeDomain (DescribeDomain'),
    newDescribeDomain,
    DescribeDomainResponse (DescribeDomainResponse'),
    newDescribeDomainResponse,

    -- ** DescribeFleetMetadata
    DescribeFleetMetadata (DescribeFleetMetadata'),
    newDescribeFleetMetadata,
    DescribeFleetMetadataResponse (DescribeFleetMetadataResponse'),
    newDescribeFleetMetadataResponse,

    -- ** DescribeIdentityProviderConfiguration
    DescribeIdentityProviderConfiguration (DescribeIdentityProviderConfiguration'),
    newDescribeIdentityProviderConfiguration,
    DescribeIdentityProviderConfigurationResponse (DescribeIdentityProviderConfigurationResponse'),
    newDescribeIdentityProviderConfigurationResponse,

    -- ** DescribeWebsiteCertificateAuthority
    DescribeWebsiteCertificateAuthority (DescribeWebsiteCertificateAuthority'),
    newDescribeWebsiteCertificateAuthority,
    DescribeWebsiteCertificateAuthorityResponse (DescribeWebsiteCertificateAuthorityResponse'),
    newDescribeWebsiteCertificateAuthorityResponse,

    -- ** DisassociateDomain
    DisassociateDomain (DisassociateDomain'),
    newDisassociateDomain,
    DisassociateDomainResponse (DisassociateDomainResponse'),
    newDisassociateDomainResponse,

    -- ** DisassociateWebsiteAuthorizationProvider
    DisassociateWebsiteAuthorizationProvider (DisassociateWebsiteAuthorizationProvider'),
    newDisassociateWebsiteAuthorizationProvider,
    DisassociateWebsiteAuthorizationProviderResponse (DisassociateWebsiteAuthorizationProviderResponse'),
    newDisassociateWebsiteAuthorizationProviderResponse,

    -- ** DisassociateWebsiteCertificateAuthority
    DisassociateWebsiteCertificateAuthority (DisassociateWebsiteCertificateAuthority'),
    newDisassociateWebsiteCertificateAuthority,
    DisassociateWebsiteCertificateAuthorityResponse (DisassociateWebsiteCertificateAuthorityResponse'),
    newDisassociateWebsiteCertificateAuthorityResponse,

    -- ** ListDevices
    ListDevices (ListDevices'),
    newListDevices,
    ListDevicesResponse (ListDevicesResponse'),
    newListDevicesResponse,

    -- ** ListDomains
    ListDomains (ListDomains'),
    newListDomains,
    ListDomainsResponse (ListDomainsResponse'),
    newListDomainsResponse,

    -- ** ListFleets
    ListFleets (ListFleets'),
    newListFleets,
    ListFleetsResponse (ListFleetsResponse'),
    newListFleetsResponse,

    -- ** ListTagsForResource
    ListTagsForResource (ListTagsForResource'),
    newListTagsForResource,
    ListTagsForResourceResponse (ListTagsForResourceResponse'),
    newListTagsForResourceResponse,

    -- ** ListWebsiteAuthorizationProviders
    ListWebsiteAuthorizationProviders (ListWebsiteAuthorizationProviders'),
    newListWebsiteAuthorizationProviders,
    ListWebsiteAuthorizationProvidersResponse (ListWebsiteAuthorizationProvidersResponse'),
    newListWebsiteAuthorizationProvidersResponse,

    -- ** ListWebsiteCertificateAuthorities
    ListWebsiteCertificateAuthorities (ListWebsiteCertificateAuthorities'),
    newListWebsiteCertificateAuthorities,
    ListWebsiteCertificateAuthoritiesResponse (ListWebsiteCertificateAuthoritiesResponse'),
    newListWebsiteCertificateAuthoritiesResponse,

    -- ** RestoreDomainAccess
    RestoreDomainAccess (RestoreDomainAccess'),
    newRestoreDomainAccess,
    RestoreDomainAccessResponse (RestoreDomainAccessResponse'),
    newRestoreDomainAccessResponse,

    -- ** RevokeDomainAccess
    RevokeDomainAccess (RevokeDomainAccess'),
    newRevokeDomainAccess,
    RevokeDomainAccessResponse (RevokeDomainAccessResponse'),
    newRevokeDomainAccessResponse,

    -- ** SignOutUser
    SignOutUser (SignOutUser'),
    newSignOutUser,
    SignOutUserResponse (SignOutUserResponse'),
    newSignOutUserResponse,

    -- ** TagResource
    TagResource (TagResource'),
    newTagResource,
    TagResourceResponse (TagResourceResponse'),
    newTagResourceResponse,

    -- ** UntagResource
    UntagResource (UntagResource'),
    newUntagResource,
    UntagResourceResponse (UntagResourceResponse'),
    newUntagResourceResponse,

    -- ** UpdateAuditStreamConfiguration
    UpdateAuditStreamConfiguration (UpdateAuditStreamConfiguration'),
    newUpdateAuditStreamConfiguration,
    UpdateAuditStreamConfigurationResponse (UpdateAuditStreamConfigurationResponse'),
    newUpdateAuditStreamConfigurationResponse,

    -- ** UpdateCompanyNetworkConfiguration
    UpdateCompanyNetworkConfiguration (UpdateCompanyNetworkConfiguration'),
    newUpdateCompanyNetworkConfiguration,
    UpdateCompanyNetworkConfigurationResponse (UpdateCompanyNetworkConfigurationResponse'),
    newUpdateCompanyNetworkConfigurationResponse,

    -- ** UpdateDevicePolicyConfiguration
    UpdateDevicePolicyConfiguration (UpdateDevicePolicyConfiguration'),
    newUpdateDevicePolicyConfiguration,
    UpdateDevicePolicyConfigurationResponse (UpdateDevicePolicyConfigurationResponse'),
    newUpdateDevicePolicyConfigurationResponse,

    -- ** UpdateDomainMetadata
    UpdateDomainMetadata (UpdateDomainMetadata'),
    newUpdateDomainMetadata,
    UpdateDomainMetadataResponse (UpdateDomainMetadataResponse'),
    newUpdateDomainMetadataResponse,

    -- ** UpdateFleetMetadata
    UpdateFleetMetadata (UpdateFleetMetadata'),
    newUpdateFleetMetadata,
    UpdateFleetMetadataResponse (UpdateFleetMetadataResponse'),
    newUpdateFleetMetadataResponse,

    -- ** UpdateIdentityProviderConfiguration
    UpdateIdentityProviderConfiguration (UpdateIdentityProviderConfiguration'),
    newUpdateIdentityProviderConfiguration,
    UpdateIdentityProviderConfigurationResponse (UpdateIdentityProviderConfigurationResponse'),
    newUpdateIdentityProviderConfigurationResponse,

    -- * Types

    -- ** AuthorizationProviderType
    AuthorizationProviderType (..),

    -- ** DeviceStatus
    DeviceStatus (..),

    -- ** DomainStatus
    DomainStatus (..),

    -- ** FleetStatus
    FleetStatus (..),

    -- ** IdentityProviderType
    IdentityProviderType (..),

    -- ** DeviceSummary
    DeviceSummary (DeviceSummary'),
    newDeviceSummary,

    -- ** DomainSummary
    DomainSummary (DomainSummary'),
    newDomainSummary,

    -- ** FleetSummary
    FleetSummary (FleetSummary'),
    newFleetSummary,

    -- ** WebsiteAuthorizationProviderSummary
    WebsiteAuthorizationProviderSummary (WebsiteAuthorizationProviderSummary'),
    newWebsiteAuthorizationProviderSummary,

    -- ** WebsiteCaSummary
    WebsiteCaSummary (WebsiteCaSummary'),
    newWebsiteCaSummary,
  )
where

import Amazonka.WorkLink.AssociateDomain
import Amazonka.WorkLink.AssociateWebsiteAuthorizationProvider
import Amazonka.WorkLink.AssociateWebsiteCertificateAuthority
import Amazonka.WorkLink.CreateFleet
import Amazonka.WorkLink.DeleteFleet
import Amazonka.WorkLink.DescribeAuditStreamConfiguration
import Amazonka.WorkLink.DescribeCompanyNetworkConfiguration
import Amazonka.WorkLink.DescribeDevice
import Amazonka.WorkLink.DescribeDevicePolicyConfiguration
import Amazonka.WorkLink.DescribeDomain
import Amazonka.WorkLink.DescribeFleetMetadata
import Amazonka.WorkLink.DescribeIdentityProviderConfiguration
import Amazonka.WorkLink.DescribeWebsiteCertificateAuthority
import Amazonka.WorkLink.DisassociateDomain
import Amazonka.WorkLink.DisassociateWebsiteAuthorizationProvider
import Amazonka.WorkLink.DisassociateWebsiteCertificateAuthority
import Amazonka.WorkLink.Lens
import Amazonka.WorkLink.ListDevices
import Amazonka.WorkLink.ListDomains
import Amazonka.WorkLink.ListFleets
import Amazonka.WorkLink.ListTagsForResource
import Amazonka.WorkLink.ListWebsiteAuthorizationProviders
import Amazonka.WorkLink.ListWebsiteCertificateAuthorities
import Amazonka.WorkLink.RestoreDomainAccess
import Amazonka.WorkLink.RevokeDomainAccess
import Amazonka.WorkLink.SignOutUser
import Amazonka.WorkLink.TagResource
import Amazonka.WorkLink.Types
import Amazonka.WorkLink.UntagResource
import Amazonka.WorkLink.UpdateAuditStreamConfiguration
import Amazonka.WorkLink.UpdateCompanyNetworkConfiguration
import Amazonka.WorkLink.UpdateDevicePolicyConfiguration
import Amazonka.WorkLink.UpdateDomainMetadata
import Amazonka.WorkLink.UpdateFleetMetadata
import Amazonka.WorkLink.UpdateIdentityProviderConfiguration
import Amazonka.WorkLink.Waiters

-- $errors
-- Error matchers are designed for use with the functions provided by
-- <http://hackage.haskell.org/package/lens/docs/Control-Exception-Lens.html Control.Exception.Lens>.
-- This allows catching (and rethrowing) service specific errors returned
-- by 'WorkLink'.

-- $operations
-- Some AWS operations return results that are incomplete and require subsequent
-- requests in order to obtain the entire result set. The process of sending
-- subsequent requests to continue where a previous request left off is called
-- pagination. For example, the 'ListObjects' operation of Amazon S3 returns up to
-- 1000 objects at a time, and you must send subsequent requests with the
-- appropriate Marker in order to retrieve the next page of results.
--
-- Operations that have an 'AWSPager' instance can transparently perform subsequent
-- requests, correctly setting Markers and other request facets to iterate through
-- the entire result set of a truncated API operation. Operations which support
-- this have an additional note in the documentation.
--
-- Many operations have the ability to filter results on the server side. See the
-- individual operation parameters for details.

-- $waiters
-- Waiters poll by repeatedly sending a request until some remote success condition
-- configured by the 'Wait' specification is fulfilled. The 'Wait' specification
-- determines how many attempts should be made, in addition to delay and retry strategies.
