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
-- Module      : Amazonka.AppSync.Types.DomainNameConfig
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.AppSync.Types.DomainNameConfig where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | Describes a configuration for a custom domain.
--
-- /See:/ 'newDomainNameConfig' smart constructor.
data DomainNameConfig = DomainNameConfig'
  { -- | The ID of your Amazon Route 53 hosted zone.
    hostedZoneId :: Prelude.Maybe Prelude.Text,
    -- | The domain name.
    domainName :: Prelude.Maybe Prelude.Text,
    -- | A description of the @DomainName@ configuration.
    description :: Prelude.Maybe Prelude.Text,
    -- | The domain name that AppSync provides.
    appsyncDomainName :: Prelude.Maybe Prelude.Text,
    -- | The Amazon Resource Name (ARN) of the certificate. This can be an
    -- Certificate Manager (ACM) certificate or an Identity and Access
    -- Management (IAM) server certificate.
    certificateArn :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DomainNameConfig' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'hostedZoneId', 'domainNameConfig_hostedZoneId' - The ID of your Amazon Route 53 hosted zone.
--
-- 'domainName', 'domainNameConfig_domainName' - The domain name.
--
-- 'description', 'domainNameConfig_description' - A description of the @DomainName@ configuration.
--
-- 'appsyncDomainName', 'domainNameConfig_appsyncDomainName' - The domain name that AppSync provides.
--
-- 'certificateArn', 'domainNameConfig_certificateArn' - The Amazon Resource Name (ARN) of the certificate. This can be an
-- Certificate Manager (ACM) certificate or an Identity and Access
-- Management (IAM) server certificate.
newDomainNameConfig ::
  DomainNameConfig
newDomainNameConfig =
  DomainNameConfig'
    { hostedZoneId = Prelude.Nothing,
      domainName = Prelude.Nothing,
      description = Prelude.Nothing,
      appsyncDomainName = Prelude.Nothing,
      certificateArn = Prelude.Nothing
    }

-- | The ID of your Amazon Route 53 hosted zone.
domainNameConfig_hostedZoneId :: Lens.Lens' DomainNameConfig (Prelude.Maybe Prelude.Text)
domainNameConfig_hostedZoneId = Lens.lens (\DomainNameConfig' {hostedZoneId} -> hostedZoneId) (\s@DomainNameConfig' {} a -> s {hostedZoneId = a} :: DomainNameConfig)

-- | The domain name.
domainNameConfig_domainName :: Lens.Lens' DomainNameConfig (Prelude.Maybe Prelude.Text)
domainNameConfig_domainName = Lens.lens (\DomainNameConfig' {domainName} -> domainName) (\s@DomainNameConfig' {} a -> s {domainName = a} :: DomainNameConfig)

-- | A description of the @DomainName@ configuration.
domainNameConfig_description :: Lens.Lens' DomainNameConfig (Prelude.Maybe Prelude.Text)
domainNameConfig_description = Lens.lens (\DomainNameConfig' {description} -> description) (\s@DomainNameConfig' {} a -> s {description = a} :: DomainNameConfig)

-- | The domain name that AppSync provides.
domainNameConfig_appsyncDomainName :: Lens.Lens' DomainNameConfig (Prelude.Maybe Prelude.Text)
domainNameConfig_appsyncDomainName = Lens.lens (\DomainNameConfig' {appsyncDomainName} -> appsyncDomainName) (\s@DomainNameConfig' {} a -> s {appsyncDomainName = a} :: DomainNameConfig)

-- | The Amazon Resource Name (ARN) of the certificate. This can be an
-- Certificate Manager (ACM) certificate or an Identity and Access
-- Management (IAM) server certificate.
domainNameConfig_certificateArn :: Lens.Lens' DomainNameConfig (Prelude.Maybe Prelude.Text)
domainNameConfig_certificateArn = Lens.lens (\DomainNameConfig' {certificateArn} -> certificateArn) (\s@DomainNameConfig' {} a -> s {certificateArn = a} :: DomainNameConfig)

instance Core.FromJSON DomainNameConfig where
  parseJSON =
    Core.withObject
      "DomainNameConfig"
      ( \x ->
          DomainNameConfig'
            Prelude.<$> (x Core..:? "hostedZoneId")
            Prelude.<*> (x Core..:? "domainName")
            Prelude.<*> (x Core..:? "description")
            Prelude.<*> (x Core..:? "appsyncDomainName")
            Prelude.<*> (x Core..:? "certificateArn")
      )

instance Prelude.Hashable DomainNameConfig where
  hashWithSalt _salt DomainNameConfig' {..} =
    _salt `Prelude.hashWithSalt` hostedZoneId
      `Prelude.hashWithSalt` domainName
      `Prelude.hashWithSalt` description
      `Prelude.hashWithSalt` appsyncDomainName
      `Prelude.hashWithSalt` certificateArn

instance Prelude.NFData DomainNameConfig where
  rnf DomainNameConfig' {..} =
    Prelude.rnf hostedZoneId
      `Prelude.seq` Prelude.rnf domainName
      `Prelude.seq` Prelude.rnf description
      `Prelude.seq` Prelude.rnf appsyncDomainName
      `Prelude.seq` Prelude.rnf certificateArn
