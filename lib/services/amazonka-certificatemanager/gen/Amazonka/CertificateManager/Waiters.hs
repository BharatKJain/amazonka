{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Amazonka.CertificateManager.Waiters
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.CertificateManager.Waiters where

import Amazonka.CertificateManager.DescribeCertificate
import Amazonka.CertificateManager.Lens
import Amazonka.CertificateManager.Types
import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | Polls 'Amazonka.CertificateManager.DescribeCertificate' every 60 seconds until a successful state is reached. An error is returned after 40 failed checks.
newCertificateValidated :: Core.Wait DescribeCertificate
newCertificateValidated =
  Core.Wait
    { Core._waitName = "CertificateValidated",
      Core._waitAttempts = 40,
      Core._waitDelay = 60,
      Core._waitAcceptors =
        [ Core.matchAll
            "SUCCESS"
            Core.AcceptSuccess
            ( describeCertificateResponse_certificate
                Prelude.. Lens._Just
                Prelude.. Lens.folding
                  ( Lens.concatOf
                      ( certificateDetail_domainValidationOptions
                          Prelude.. Lens._Just
                          Prelude.. Lens.to Prelude.toList
                      )
                  )
                Prelude.. domainValidation_validationStatus
                Prelude.. Lens._Just
                Prelude.. Lens.to Core.toTextCI
            ),
          Core.matchAny
            "PENDING_VALIDATION"
            Core.AcceptRetry
            ( describeCertificateResponse_certificate
                Prelude.. Lens._Just
                Prelude.. Lens.folding
                  ( Lens.concatOf
                      ( certificateDetail_domainValidationOptions
                          Prelude.. Lens._Just
                          Prelude.. Lens.to Prelude.toList
                      )
                  )
                Prelude.. domainValidation_validationStatus
                Prelude.. Lens._Just
                Prelude.. Lens.to Core.toTextCI
            ),
          Core.matchAll
            "FAILED"
            Core.AcceptFailure
            ( describeCertificateResponse_certificate
                Prelude.. Lens._Just
                Prelude.. certificateDetail_status
                Prelude.. Lens._Just
                Prelude.. Lens.to Core.toTextCI
            ),
          Core.matchError
            "ResourceNotFoundException"
            Core.AcceptFailure
        ]
    }
