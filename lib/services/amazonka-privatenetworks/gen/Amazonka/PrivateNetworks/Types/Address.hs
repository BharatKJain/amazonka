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
-- Module      : Amazonka.PrivateNetworks.Types.Address
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.PrivateNetworks.Types.Address where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | Information about an address.
--
-- /See:/ 'newAddress' smart constructor.
data Address = Address'
  { -- | The company name for this address.
    company :: Prelude.Maybe (Core.Sensitive Prelude.Text),
    -- | The third line of the street address.
    street3 :: Prelude.Maybe (Core.Sensitive Prelude.Text),
    -- | The phone number for this address.
    phoneNumber :: Prelude.Maybe (Core.Sensitive Prelude.Text),
    -- | The second line of the street address.
    street2 :: Prelude.Maybe (Core.Sensitive Prelude.Text),
    -- | The city for this address.
    city :: Core.Sensitive Prelude.Text,
    -- | The country for this address.
    country :: Core.Sensitive Prelude.Text,
    -- | The recipient\'s name for this address.
    name :: Core.Sensitive Prelude.Text,
    -- | The postal code for this address.
    postalCode :: Core.Sensitive Prelude.Text,
    -- | The state or province for this address.
    stateOrProvince :: Core.Sensitive Prelude.Text,
    -- | The first line of the street address.
    street1 :: Core.Sensitive Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'Address' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'company', 'address_company' - The company name for this address.
--
-- 'street3', 'address_street3' - The third line of the street address.
--
-- 'phoneNumber', 'address_phoneNumber' - The phone number for this address.
--
-- 'street2', 'address_street2' - The second line of the street address.
--
-- 'city', 'address_city' - The city for this address.
--
-- 'country', 'address_country' - The country for this address.
--
-- 'name', 'address_name' - The recipient\'s name for this address.
--
-- 'postalCode', 'address_postalCode' - The postal code for this address.
--
-- 'stateOrProvince', 'address_stateOrProvince' - The state or province for this address.
--
-- 'street1', 'address_street1' - The first line of the street address.
newAddress ::
  -- | 'city'
  Prelude.Text ->
  -- | 'country'
  Prelude.Text ->
  -- | 'name'
  Prelude.Text ->
  -- | 'postalCode'
  Prelude.Text ->
  -- | 'stateOrProvince'
  Prelude.Text ->
  -- | 'street1'
  Prelude.Text ->
  Address
newAddress
  pCity_
  pCountry_
  pName_
  pPostalCode_
  pStateOrProvince_
  pStreet1_ =
    Address'
      { company = Prelude.Nothing,
        street3 = Prelude.Nothing,
        phoneNumber = Prelude.Nothing,
        street2 = Prelude.Nothing,
        city = Core._Sensitive Lens.# pCity_,
        country = Core._Sensitive Lens.# pCountry_,
        name = Core._Sensitive Lens.# pName_,
        postalCode = Core._Sensitive Lens.# pPostalCode_,
        stateOrProvince =
          Core._Sensitive Lens.# pStateOrProvince_,
        street1 = Core._Sensitive Lens.# pStreet1_
      }

-- | The company name for this address.
address_company :: Lens.Lens' Address (Prelude.Maybe Prelude.Text)
address_company = Lens.lens (\Address' {company} -> company) (\s@Address' {} a -> s {company = a} :: Address) Prelude.. Lens.mapping Core._Sensitive

-- | The third line of the street address.
address_street3 :: Lens.Lens' Address (Prelude.Maybe Prelude.Text)
address_street3 = Lens.lens (\Address' {street3} -> street3) (\s@Address' {} a -> s {street3 = a} :: Address) Prelude.. Lens.mapping Core._Sensitive

-- | The phone number for this address.
address_phoneNumber :: Lens.Lens' Address (Prelude.Maybe Prelude.Text)
address_phoneNumber = Lens.lens (\Address' {phoneNumber} -> phoneNumber) (\s@Address' {} a -> s {phoneNumber = a} :: Address) Prelude.. Lens.mapping Core._Sensitive

-- | The second line of the street address.
address_street2 :: Lens.Lens' Address (Prelude.Maybe Prelude.Text)
address_street2 = Lens.lens (\Address' {street2} -> street2) (\s@Address' {} a -> s {street2 = a} :: Address) Prelude.. Lens.mapping Core._Sensitive

-- | The city for this address.
address_city :: Lens.Lens' Address Prelude.Text
address_city = Lens.lens (\Address' {city} -> city) (\s@Address' {} a -> s {city = a} :: Address) Prelude.. Core._Sensitive

-- | The country for this address.
address_country :: Lens.Lens' Address Prelude.Text
address_country = Lens.lens (\Address' {country} -> country) (\s@Address' {} a -> s {country = a} :: Address) Prelude.. Core._Sensitive

-- | The recipient\'s name for this address.
address_name :: Lens.Lens' Address Prelude.Text
address_name = Lens.lens (\Address' {name} -> name) (\s@Address' {} a -> s {name = a} :: Address) Prelude.. Core._Sensitive

-- | The postal code for this address.
address_postalCode :: Lens.Lens' Address Prelude.Text
address_postalCode = Lens.lens (\Address' {postalCode} -> postalCode) (\s@Address' {} a -> s {postalCode = a} :: Address) Prelude.. Core._Sensitive

-- | The state or province for this address.
address_stateOrProvince :: Lens.Lens' Address Prelude.Text
address_stateOrProvince = Lens.lens (\Address' {stateOrProvince} -> stateOrProvince) (\s@Address' {} a -> s {stateOrProvince = a} :: Address) Prelude.. Core._Sensitive

-- | The first line of the street address.
address_street1 :: Lens.Lens' Address Prelude.Text
address_street1 = Lens.lens (\Address' {street1} -> street1) (\s@Address' {} a -> s {street1 = a} :: Address) Prelude.. Core._Sensitive

instance Core.FromJSON Address where
  parseJSON =
    Core.withObject
      "Address"
      ( \x ->
          Address'
            Prelude.<$> (x Core..:? "company")
            Prelude.<*> (x Core..:? "street3")
            Prelude.<*> (x Core..:? "phoneNumber")
            Prelude.<*> (x Core..:? "street2")
            Prelude.<*> (x Core..: "city")
            Prelude.<*> (x Core..: "country")
            Prelude.<*> (x Core..: "name")
            Prelude.<*> (x Core..: "postalCode")
            Prelude.<*> (x Core..: "stateOrProvince")
            Prelude.<*> (x Core..: "street1")
      )

instance Prelude.Hashable Address where
  hashWithSalt _salt Address' {..} =
    _salt `Prelude.hashWithSalt` company
      `Prelude.hashWithSalt` street3
      `Prelude.hashWithSalt` phoneNumber
      `Prelude.hashWithSalt` street2
      `Prelude.hashWithSalt` city
      `Prelude.hashWithSalt` country
      `Prelude.hashWithSalt` name
      `Prelude.hashWithSalt` postalCode
      `Prelude.hashWithSalt` stateOrProvince
      `Prelude.hashWithSalt` street1

instance Prelude.NFData Address where
  rnf Address' {..} =
    Prelude.rnf company
      `Prelude.seq` Prelude.rnf street3
      `Prelude.seq` Prelude.rnf phoneNumber
      `Prelude.seq` Prelude.rnf street2
      `Prelude.seq` Prelude.rnf city
      `Prelude.seq` Prelude.rnf country
      `Prelude.seq` Prelude.rnf name
      `Prelude.seq` Prelude.rnf postalCode
      `Prelude.seq` Prelude.rnf stateOrProvince
      `Prelude.seq` Prelude.rnf street1

instance Core.ToJSON Address where
  toJSON Address' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("company" Core..=) Prelude.<$> company,
            ("street3" Core..=) Prelude.<$> street3,
            ("phoneNumber" Core..=) Prelude.<$> phoneNumber,
            ("street2" Core..=) Prelude.<$> street2,
            Prelude.Just ("city" Core..= city),
            Prelude.Just ("country" Core..= country),
            Prelude.Just ("name" Core..= name),
            Prelude.Just ("postalCode" Core..= postalCode),
            Prelude.Just
              ("stateOrProvince" Core..= stateOrProvince),
            Prelude.Just ("street1" Core..= street1)
          ]
      )
