{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Amazonka.ImportExport.Lens
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.ImportExport.Lens
  ( -- * Operations

    -- ** CancelJob
    cancelJob_aPIVersion,
    cancelJob_jobId,
    cancelJobResponse_success,
    cancelJobResponse_httpStatus,

    -- ** CreateJob
    createJob_aPIVersion,
    createJob_manifestAddendum,
    createJob_jobType,
    createJob_manifest,
    createJob_validateOnly,
    createJobResponse_jobId,
    createJobResponse_warningMessage,
    createJobResponse_signature,
    createJobResponse_signatureFileContents,
    createJobResponse_jobType,
    createJobResponse_artifactList,
    createJobResponse_httpStatus,

    -- ** GetShippingLabel
    getShippingLabel_stateOrProvince,
    getShippingLabel_street1,
    getShippingLabel_name,
    getShippingLabel_postalCode,
    getShippingLabel_company,
    getShippingLabel_street3,
    getShippingLabel_aPIVersion,
    getShippingLabel_country,
    getShippingLabel_city,
    getShippingLabel_phoneNumber,
    getShippingLabel_street2,
    getShippingLabel_jobIds,
    getShippingLabelResponse_warning,
    getShippingLabelResponse_shippingLabelURL,
    getShippingLabelResponse_httpStatus,

    -- ** GetStatus
    getStatus_aPIVersion,
    getStatus_jobId,
    getStatusResponse_logKey,
    getStatusResponse_progressMessage,
    getStatusResponse_locationMessage,
    getStatusResponse_errorCount,
    getStatusResponse_currentManifest,
    getStatusResponse_progressCode,
    getStatusResponse_carrier,
    getStatusResponse_creationDate,
    getStatusResponse_jobId,
    getStatusResponse_logBucket,
    getStatusResponse_trackingNumber,
    getStatusResponse_signature,
    getStatusResponse_signatureFileContents,
    getStatusResponse_locationCode,
    getStatusResponse_jobType,
    getStatusResponse_artifactList,
    getStatusResponse_httpStatus,

    -- ** ListJobs
    listJobs_marker,
    listJobs_aPIVersion,
    listJobs_maxJobs,
    listJobsResponse_isTruncated,
    listJobsResponse_jobs,
    listJobsResponse_httpStatus,

    -- ** UpdateJob
    updateJob_aPIVersion,
    updateJob_jobId,
    updateJob_manifest,
    updateJob_jobType,
    updateJob_validateOnly,
    updateJobResponse_warningMessage,
    updateJobResponse_success,
    updateJobResponse_artifactList,
    updateJobResponse_httpStatus,

    -- * Types

    -- ** Artifact
    artifact_url,
    artifact_description,

    -- ** Job
    job_jobType,
    job_jobId,
    job_isCanceled,
    job_creationDate,
  )
where

import Amazonka.ImportExport.CancelJob
import Amazonka.ImportExport.CreateJob
import Amazonka.ImportExport.GetShippingLabel
import Amazonka.ImportExport.GetStatus
import Amazonka.ImportExport.ListJobs
import Amazonka.ImportExport.Types.Artifact
import Amazonka.ImportExport.Types.Job
import Amazonka.ImportExport.UpdateJob
