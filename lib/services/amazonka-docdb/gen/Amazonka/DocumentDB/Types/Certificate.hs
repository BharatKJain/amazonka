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
-- Module      : Amazonka.DocumentDB.Types.Certificate
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.DocumentDB.Types.Certificate where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | A certificate authority (CA) certificate for an Amazon Web Services
-- account.
--
-- /See:/ 'newCertificate' smart constructor.
data Certificate = Certificate'
  { -- | The thumbprint of the certificate.
    thumbprint :: Prelude.Maybe Prelude.Text,
    -- | The date-time after which the certificate is no longer valid.
    --
    -- Example: @2024-07-31T17:57:09Z@
    validTill :: Prelude.Maybe Core.ISO8601,
    -- | The starting date-time from which the certificate is valid.
    --
    -- Example: @2019-07-31T17:57:09Z@
    validFrom :: Prelude.Maybe Core.ISO8601,
    -- | The unique key that identifies a certificate.
    --
    -- Example: @rds-ca-2019@
    certificateIdentifier :: Prelude.Maybe Prelude.Text,
    -- | The Amazon Resource Name (ARN) for the certificate.
    --
    -- Example: @arn:aws:rds:us-east-1::cert:rds-ca-2019@
    certificateArn :: Prelude.Maybe Prelude.Text,
    -- | The type of the certificate.
    --
    -- Example: @CA@
    certificateType :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'Certificate' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'thumbprint', 'certificate_thumbprint' - The thumbprint of the certificate.
--
-- 'validTill', 'certificate_validTill' - The date-time after which the certificate is no longer valid.
--
-- Example: @2024-07-31T17:57:09Z@
--
-- 'validFrom', 'certificate_validFrom' - The starting date-time from which the certificate is valid.
--
-- Example: @2019-07-31T17:57:09Z@
--
-- 'certificateIdentifier', 'certificate_certificateIdentifier' - The unique key that identifies a certificate.
--
-- Example: @rds-ca-2019@
--
-- 'certificateArn', 'certificate_certificateArn' - The Amazon Resource Name (ARN) for the certificate.
--
-- Example: @arn:aws:rds:us-east-1::cert:rds-ca-2019@
--
-- 'certificateType', 'certificate_certificateType' - The type of the certificate.
--
-- Example: @CA@
newCertificate ::
  Certificate
newCertificate =
  Certificate'
    { thumbprint = Prelude.Nothing,
      validTill = Prelude.Nothing,
      validFrom = Prelude.Nothing,
      certificateIdentifier = Prelude.Nothing,
      certificateArn = Prelude.Nothing,
      certificateType = Prelude.Nothing
    }

-- | The thumbprint of the certificate.
certificate_thumbprint :: Lens.Lens' Certificate (Prelude.Maybe Prelude.Text)
certificate_thumbprint = Lens.lens (\Certificate' {thumbprint} -> thumbprint) (\s@Certificate' {} a -> s {thumbprint = a} :: Certificate)

-- | The date-time after which the certificate is no longer valid.
--
-- Example: @2024-07-31T17:57:09Z@
certificate_validTill :: Lens.Lens' Certificate (Prelude.Maybe Prelude.UTCTime)
certificate_validTill = Lens.lens (\Certificate' {validTill} -> validTill) (\s@Certificate' {} a -> s {validTill = a} :: Certificate) Prelude.. Lens.mapping Core._Time

-- | The starting date-time from which the certificate is valid.
--
-- Example: @2019-07-31T17:57:09Z@
certificate_validFrom :: Lens.Lens' Certificate (Prelude.Maybe Prelude.UTCTime)
certificate_validFrom = Lens.lens (\Certificate' {validFrom} -> validFrom) (\s@Certificate' {} a -> s {validFrom = a} :: Certificate) Prelude.. Lens.mapping Core._Time

-- | The unique key that identifies a certificate.
--
-- Example: @rds-ca-2019@
certificate_certificateIdentifier :: Lens.Lens' Certificate (Prelude.Maybe Prelude.Text)
certificate_certificateIdentifier = Lens.lens (\Certificate' {certificateIdentifier} -> certificateIdentifier) (\s@Certificate' {} a -> s {certificateIdentifier = a} :: Certificate)

-- | The Amazon Resource Name (ARN) for the certificate.
--
-- Example: @arn:aws:rds:us-east-1::cert:rds-ca-2019@
certificate_certificateArn :: Lens.Lens' Certificate (Prelude.Maybe Prelude.Text)
certificate_certificateArn = Lens.lens (\Certificate' {certificateArn} -> certificateArn) (\s@Certificate' {} a -> s {certificateArn = a} :: Certificate)

-- | The type of the certificate.
--
-- Example: @CA@
certificate_certificateType :: Lens.Lens' Certificate (Prelude.Maybe Prelude.Text)
certificate_certificateType = Lens.lens (\Certificate' {certificateType} -> certificateType) (\s@Certificate' {} a -> s {certificateType = a} :: Certificate)

instance Core.FromXML Certificate where
  parseXML x =
    Certificate'
      Prelude.<$> (x Core..@? "Thumbprint")
      Prelude.<*> (x Core..@? "ValidTill")
      Prelude.<*> (x Core..@? "ValidFrom")
      Prelude.<*> (x Core..@? "CertificateIdentifier")
      Prelude.<*> (x Core..@? "CertificateArn")
      Prelude.<*> (x Core..@? "CertificateType")

instance Prelude.Hashable Certificate where
  hashWithSalt _salt Certificate' {..} =
    _salt `Prelude.hashWithSalt` thumbprint
      `Prelude.hashWithSalt` validTill
      `Prelude.hashWithSalt` validFrom
      `Prelude.hashWithSalt` certificateIdentifier
      `Prelude.hashWithSalt` certificateArn
      `Prelude.hashWithSalt` certificateType

instance Prelude.NFData Certificate where
  rnf Certificate' {..} =
    Prelude.rnf thumbprint
      `Prelude.seq` Prelude.rnf validTill
      `Prelude.seq` Prelude.rnf validFrom
      `Prelude.seq` Prelude.rnf certificateIdentifier
      `Prelude.seq` Prelude.rnf certificateArn
      `Prelude.seq` Prelude.rnf certificateType
