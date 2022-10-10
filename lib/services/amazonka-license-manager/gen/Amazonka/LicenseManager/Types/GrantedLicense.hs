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
-- Module      : Amazonka.LicenseManager.Types.GrantedLicense
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.LicenseManager.Types.GrantedLicense where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import Amazonka.LicenseManager.Types.ConsumptionConfiguration
import Amazonka.LicenseManager.Types.DatetimeRange
import Amazonka.LicenseManager.Types.Entitlement
import Amazonka.LicenseManager.Types.IssuerDetails
import Amazonka.LicenseManager.Types.LicenseStatus
import Amazonka.LicenseManager.Types.Metadata
import Amazonka.LicenseManager.Types.ReceivedMetadata
import qualified Amazonka.Prelude as Prelude

-- | Describes a license that is granted to a grantee.
--
-- /See:/ 'newGrantedLicense' smart constructor.
data GrantedLicense = GrantedLicense'
  { -- | Product name.
    productName :: Prelude.Maybe Prelude.Text,
    -- | Granted license issuer.
    issuer :: Prelude.Maybe IssuerDetails,
    -- | License name.
    licenseName :: Prelude.Maybe Prelude.Text,
    -- | Granted license metadata.
    licenseMetadata :: Prelude.Maybe [Metadata],
    -- | Amazon Resource Name (ARN) of the license.
    licenseArn :: Prelude.Maybe Prelude.Text,
    -- | Configuration for consumption of the license.
    consumptionConfiguration :: Prelude.Maybe ConsumptionConfiguration,
    -- | License entitlements.
    entitlements :: Prelude.Maybe [Entitlement],
    -- | Granted license status.
    status :: Prelude.Maybe LicenseStatus,
    -- | Granted license received metadata.
    receivedMetadata :: Prelude.Maybe ReceivedMetadata,
    -- | Home Region of the granted license.
    homeRegion :: Prelude.Maybe Prelude.Text,
    -- | Creation time of the granted license.
    createTime :: Prelude.Maybe Prelude.Text,
    -- | Product SKU.
    productSKU :: Prelude.Maybe Prelude.Text,
    -- | Granted license beneficiary.
    beneficiary :: Prelude.Maybe Prelude.Text,
    -- | Date and time range during which the granted license is valid, in
    -- ISO8601-UTC format.
    validity :: Prelude.Maybe DatetimeRange,
    -- | Version of the granted license.
    version :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GrantedLicense' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'productName', 'grantedLicense_productName' - Product name.
--
-- 'issuer', 'grantedLicense_issuer' - Granted license issuer.
--
-- 'licenseName', 'grantedLicense_licenseName' - License name.
--
-- 'licenseMetadata', 'grantedLicense_licenseMetadata' - Granted license metadata.
--
-- 'licenseArn', 'grantedLicense_licenseArn' - Amazon Resource Name (ARN) of the license.
--
-- 'consumptionConfiguration', 'grantedLicense_consumptionConfiguration' - Configuration for consumption of the license.
--
-- 'entitlements', 'grantedLicense_entitlements' - License entitlements.
--
-- 'status', 'grantedLicense_status' - Granted license status.
--
-- 'receivedMetadata', 'grantedLicense_receivedMetadata' - Granted license received metadata.
--
-- 'homeRegion', 'grantedLicense_homeRegion' - Home Region of the granted license.
--
-- 'createTime', 'grantedLicense_createTime' - Creation time of the granted license.
--
-- 'productSKU', 'grantedLicense_productSKU' - Product SKU.
--
-- 'beneficiary', 'grantedLicense_beneficiary' - Granted license beneficiary.
--
-- 'validity', 'grantedLicense_validity' - Date and time range during which the granted license is valid, in
-- ISO8601-UTC format.
--
-- 'version', 'grantedLicense_version' - Version of the granted license.
newGrantedLicense ::
  GrantedLicense
newGrantedLicense =
  GrantedLicense'
    { productName = Prelude.Nothing,
      issuer = Prelude.Nothing,
      licenseName = Prelude.Nothing,
      licenseMetadata = Prelude.Nothing,
      licenseArn = Prelude.Nothing,
      consumptionConfiguration = Prelude.Nothing,
      entitlements = Prelude.Nothing,
      status = Prelude.Nothing,
      receivedMetadata = Prelude.Nothing,
      homeRegion = Prelude.Nothing,
      createTime = Prelude.Nothing,
      productSKU = Prelude.Nothing,
      beneficiary = Prelude.Nothing,
      validity = Prelude.Nothing,
      version = Prelude.Nothing
    }

-- | Product name.
grantedLicense_productName :: Lens.Lens' GrantedLicense (Prelude.Maybe Prelude.Text)
grantedLicense_productName = Lens.lens (\GrantedLicense' {productName} -> productName) (\s@GrantedLicense' {} a -> s {productName = a} :: GrantedLicense)

-- | Granted license issuer.
grantedLicense_issuer :: Lens.Lens' GrantedLicense (Prelude.Maybe IssuerDetails)
grantedLicense_issuer = Lens.lens (\GrantedLicense' {issuer} -> issuer) (\s@GrantedLicense' {} a -> s {issuer = a} :: GrantedLicense)

-- | License name.
grantedLicense_licenseName :: Lens.Lens' GrantedLicense (Prelude.Maybe Prelude.Text)
grantedLicense_licenseName = Lens.lens (\GrantedLicense' {licenseName} -> licenseName) (\s@GrantedLicense' {} a -> s {licenseName = a} :: GrantedLicense)

-- | Granted license metadata.
grantedLicense_licenseMetadata :: Lens.Lens' GrantedLicense (Prelude.Maybe [Metadata])
grantedLicense_licenseMetadata = Lens.lens (\GrantedLicense' {licenseMetadata} -> licenseMetadata) (\s@GrantedLicense' {} a -> s {licenseMetadata = a} :: GrantedLicense) Prelude.. Lens.mapping Lens.coerced

-- | Amazon Resource Name (ARN) of the license.
grantedLicense_licenseArn :: Lens.Lens' GrantedLicense (Prelude.Maybe Prelude.Text)
grantedLicense_licenseArn = Lens.lens (\GrantedLicense' {licenseArn} -> licenseArn) (\s@GrantedLicense' {} a -> s {licenseArn = a} :: GrantedLicense)

-- | Configuration for consumption of the license.
grantedLicense_consumptionConfiguration :: Lens.Lens' GrantedLicense (Prelude.Maybe ConsumptionConfiguration)
grantedLicense_consumptionConfiguration = Lens.lens (\GrantedLicense' {consumptionConfiguration} -> consumptionConfiguration) (\s@GrantedLicense' {} a -> s {consumptionConfiguration = a} :: GrantedLicense)

-- | License entitlements.
grantedLicense_entitlements :: Lens.Lens' GrantedLicense (Prelude.Maybe [Entitlement])
grantedLicense_entitlements = Lens.lens (\GrantedLicense' {entitlements} -> entitlements) (\s@GrantedLicense' {} a -> s {entitlements = a} :: GrantedLicense) Prelude.. Lens.mapping Lens.coerced

-- | Granted license status.
grantedLicense_status :: Lens.Lens' GrantedLicense (Prelude.Maybe LicenseStatus)
grantedLicense_status = Lens.lens (\GrantedLicense' {status} -> status) (\s@GrantedLicense' {} a -> s {status = a} :: GrantedLicense)

-- | Granted license received metadata.
grantedLicense_receivedMetadata :: Lens.Lens' GrantedLicense (Prelude.Maybe ReceivedMetadata)
grantedLicense_receivedMetadata = Lens.lens (\GrantedLicense' {receivedMetadata} -> receivedMetadata) (\s@GrantedLicense' {} a -> s {receivedMetadata = a} :: GrantedLicense)

-- | Home Region of the granted license.
grantedLicense_homeRegion :: Lens.Lens' GrantedLicense (Prelude.Maybe Prelude.Text)
grantedLicense_homeRegion = Lens.lens (\GrantedLicense' {homeRegion} -> homeRegion) (\s@GrantedLicense' {} a -> s {homeRegion = a} :: GrantedLicense)

-- | Creation time of the granted license.
grantedLicense_createTime :: Lens.Lens' GrantedLicense (Prelude.Maybe Prelude.Text)
grantedLicense_createTime = Lens.lens (\GrantedLicense' {createTime} -> createTime) (\s@GrantedLicense' {} a -> s {createTime = a} :: GrantedLicense)

-- | Product SKU.
grantedLicense_productSKU :: Lens.Lens' GrantedLicense (Prelude.Maybe Prelude.Text)
grantedLicense_productSKU = Lens.lens (\GrantedLicense' {productSKU} -> productSKU) (\s@GrantedLicense' {} a -> s {productSKU = a} :: GrantedLicense)

-- | Granted license beneficiary.
grantedLicense_beneficiary :: Lens.Lens' GrantedLicense (Prelude.Maybe Prelude.Text)
grantedLicense_beneficiary = Lens.lens (\GrantedLicense' {beneficiary} -> beneficiary) (\s@GrantedLicense' {} a -> s {beneficiary = a} :: GrantedLicense)

-- | Date and time range during which the granted license is valid, in
-- ISO8601-UTC format.
grantedLicense_validity :: Lens.Lens' GrantedLicense (Prelude.Maybe DatetimeRange)
grantedLicense_validity = Lens.lens (\GrantedLicense' {validity} -> validity) (\s@GrantedLicense' {} a -> s {validity = a} :: GrantedLicense)

-- | Version of the granted license.
grantedLicense_version :: Lens.Lens' GrantedLicense (Prelude.Maybe Prelude.Text)
grantedLicense_version = Lens.lens (\GrantedLicense' {version} -> version) (\s@GrantedLicense' {} a -> s {version = a} :: GrantedLicense)

instance Core.FromJSON GrantedLicense where
  parseJSON =
    Core.withObject
      "GrantedLicense"
      ( \x ->
          GrantedLicense'
            Prelude.<$> (x Core..:? "ProductName")
            Prelude.<*> (x Core..:? "Issuer")
            Prelude.<*> (x Core..:? "LicenseName")
            Prelude.<*> ( x Core..:? "LicenseMetadata"
                            Core..!= Prelude.mempty
                        )
            Prelude.<*> (x Core..:? "LicenseArn")
            Prelude.<*> (x Core..:? "ConsumptionConfiguration")
            Prelude.<*> (x Core..:? "Entitlements" Core..!= Prelude.mempty)
            Prelude.<*> (x Core..:? "Status")
            Prelude.<*> (x Core..:? "ReceivedMetadata")
            Prelude.<*> (x Core..:? "HomeRegion")
            Prelude.<*> (x Core..:? "CreateTime")
            Prelude.<*> (x Core..:? "ProductSKU")
            Prelude.<*> (x Core..:? "Beneficiary")
            Prelude.<*> (x Core..:? "Validity")
            Prelude.<*> (x Core..:? "Version")
      )

instance Prelude.Hashable GrantedLicense where
  hashWithSalt _salt GrantedLicense' {..} =
    _salt `Prelude.hashWithSalt` productName
      `Prelude.hashWithSalt` issuer
      `Prelude.hashWithSalt` licenseName
      `Prelude.hashWithSalt` licenseMetadata
      `Prelude.hashWithSalt` licenseArn
      `Prelude.hashWithSalt` consumptionConfiguration
      `Prelude.hashWithSalt` entitlements
      `Prelude.hashWithSalt` status
      `Prelude.hashWithSalt` receivedMetadata
      `Prelude.hashWithSalt` homeRegion
      `Prelude.hashWithSalt` createTime
      `Prelude.hashWithSalt` productSKU
      `Prelude.hashWithSalt` beneficiary
      `Prelude.hashWithSalt` validity
      `Prelude.hashWithSalt` version

instance Prelude.NFData GrantedLicense where
  rnf GrantedLicense' {..} =
    Prelude.rnf productName
      `Prelude.seq` Prelude.rnf issuer
      `Prelude.seq` Prelude.rnf licenseName
      `Prelude.seq` Prelude.rnf licenseMetadata
      `Prelude.seq` Prelude.rnf licenseArn
      `Prelude.seq` Prelude.rnf consumptionConfiguration
      `Prelude.seq` Prelude.rnf entitlements
      `Prelude.seq` Prelude.rnf status
      `Prelude.seq` Prelude.rnf receivedMetadata
      `Prelude.seq` Prelude.rnf homeRegion
      `Prelude.seq` Prelude.rnf createTime
      `Prelude.seq` Prelude.rnf productSKU
      `Prelude.seq` Prelude.rnf beneficiary
      `Prelude.seq` Prelude.rnf validity
      `Prelude.seq` Prelude.rnf version
