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
-- Module      : Amazonka.IoTSiteWise.Types.PutAssetPropertyValueEntry
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.IoTSiteWise.Types.PutAssetPropertyValueEntry where

import qualified Amazonka.Core as Core
import Amazonka.IoTSiteWise.Types.AssetPropertyValue
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | Contains a list of value updates for an asset property in the list of
-- asset entries consumed by the
-- <https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_BatchPutAssetPropertyValue.html BatchPutAssetPropertyValue>
-- API operation.
--
-- /See:/ 'newPutAssetPropertyValueEntry' smart constructor.
data PutAssetPropertyValueEntry = PutAssetPropertyValueEntry'
  { -- | The alias that identifies the property, such as an OPC-UA server data
    -- stream path (for example,
    -- @\/company\/windfarm\/3\/turbine\/7\/temperature@). For more
    -- information, see
    -- <https://docs.aws.amazon.com/iot-sitewise/latest/userguide/connect-data-streams.html Mapping industrial data streams to asset properties>
    -- in the /IoT SiteWise User Guide/.
    propertyAlias :: Prelude.Maybe Prelude.Text,
    -- | The ID of the asset to update.
    assetId :: Prelude.Maybe Prelude.Text,
    -- | The ID of the asset property for this entry.
    propertyId :: Prelude.Maybe Prelude.Text,
    -- | The user specified ID for the entry. You can use this ID to identify
    -- which entries failed.
    entryId :: Prelude.Text,
    -- | The list of property values to upload. You can specify up to 10
    -- @propertyValues@ array elements.
    propertyValues :: [AssetPropertyValue]
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'PutAssetPropertyValueEntry' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'propertyAlias', 'putAssetPropertyValueEntry_propertyAlias' - The alias that identifies the property, such as an OPC-UA server data
-- stream path (for example,
-- @\/company\/windfarm\/3\/turbine\/7\/temperature@). For more
-- information, see
-- <https://docs.aws.amazon.com/iot-sitewise/latest/userguide/connect-data-streams.html Mapping industrial data streams to asset properties>
-- in the /IoT SiteWise User Guide/.
--
-- 'assetId', 'putAssetPropertyValueEntry_assetId' - The ID of the asset to update.
--
-- 'propertyId', 'putAssetPropertyValueEntry_propertyId' - The ID of the asset property for this entry.
--
-- 'entryId', 'putAssetPropertyValueEntry_entryId' - The user specified ID for the entry. You can use this ID to identify
-- which entries failed.
--
-- 'propertyValues', 'putAssetPropertyValueEntry_propertyValues' - The list of property values to upload. You can specify up to 10
-- @propertyValues@ array elements.
newPutAssetPropertyValueEntry ::
  -- | 'entryId'
  Prelude.Text ->
  PutAssetPropertyValueEntry
newPutAssetPropertyValueEntry pEntryId_ =
  PutAssetPropertyValueEntry'
    { propertyAlias =
        Prelude.Nothing,
      assetId = Prelude.Nothing,
      propertyId = Prelude.Nothing,
      entryId = pEntryId_,
      propertyValues = Prelude.mempty
    }

-- | The alias that identifies the property, such as an OPC-UA server data
-- stream path (for example,
-- @\/company\/windfarm\/3\/turbine\/7\/temperature@). For more
-- information, see
-- <https://docs.aws.amazon.com/iot-sitewise/latest/userguide/connect-data-streams.html Mapping industrial data streams to asset properties>
-- in the /IoT SiteWise User Guide/.
putAssetPropertyValueEntry_propertyAlias :: Lens.Lens' PutAssetPropertyValueEntry (Prelude.Maybe Prelude.Text)
putAssetPropertyValueEntry_propertyAlias = Lens.lens (\PutAssetPropertyValueEntry' {propertyAlias} -> propertyAlias) (\s@PutAssetPropertyValueEntry' {} a -> s {propertyAlias = a} :: PutAssetPropertyValueEntry)

-- | The ID of the asset to update.
putAssetPropertyValueEntry_assetId :: Lens.Lens' PutAssetPropertyValueEntry (Prelude.Maybe Prelude.Text)
putAssetPropertyValueEntry_assetId = Lens.lens (\PutAssetPropertyValueEntry' {assetId} -> assetId) (\s@PutAssetPropertyValueEntry' {} a -> s {assetId = a} :: PutAssetPropertyValueEntry)

-- | The ID of the asset property for this entry.
putAssetPropertyValueEntry_propertyId :: Lens.Lens' PutAssetPropertyValueEntry (Prelude.Maybe Prelude.Text)
putAssetPropertyValueEntry_propertyId = Lens.lens (\PutAssetPropertyValueEntry' {propertyId} -> propertyId) (\s@PutAssetPropertyValueEntry' {} a -> s {propertyId = a} :: PutAssetPropertyValueEntry)

-- | The user specified ID for the entry. You can use this ID to identify
-- which entries failed.
putAssetPropertyValueEntry_entryId :: Lens.Lens' PutAssetPropertyValueEntry Prelude.Text
putAssetPropertyValueEntry_entryId = Lens.lens (\PutAssetPropertyValueEntry' {entryId} -> entryId) (\s@PutAssetPropertyValueEntry' {} a -> s {entryId = a} :: PutAssetPropertyValueEntry)

-- | The list of property values to upload. You can specify up to 10
-- @propertyValues@ array elements.
putAssetPropertyValueEntry_propertyValues :: Lens.Lens' PutAssetPropertyValueEntry [AssetPropertyValue]
putAssetPropertyValueEntry_propertyValues = Lens.lens (\PutAssetPropertyValueEntry' {propertyValues} -> propertyValues) (\s@PutAssetPropertyValueEntry' {} a -> s {propertyValues = a} :: PutAssetPropertyValueEntry) Prelude.. Lens.coerced

instance Prelude.Hashable PutAssetPropertyValueEntry where
  hashWithSalt _salt PutAssetPropertyValueEntry' {..} =
    _salt `Prelude.hashWithSalt` propertyAlias
      `Prelude.hashWithSalt` assetId
      `Prelude.hashWithSalt` propertyId
      `Prelude.hashWithSalt` entryId
      `Prelude.hashWithSalt` propertyValues

instance Prelude.NFData PutAssetPropertyValueEntry where
  rnf PutAssetPropertyValueEntry' {..} =
    Prelude.rnf propertyAlias
      `Prelude.seq` Prelude.rnf assetId
      `Prelude.seq` Prelude.rnf propertyId
      `Prelude.seq` Prelude.rnf entryId
      `Prelude.seq` Prelude.rnf propertyValues

instance Core.ToJSON PutAssetPropertyValueEntry where
  toJSON PutAssetPropertyValueEntry' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("propertyAlias" Core..=) Prelude.<$> propertyAlias,
            ("assetId" Core..=) Prelude.<$> assetId,
            ("propertyId" Core..=) Prelude.<$> propertyId,
            Prelude.Just ("entryId" Core..= entryId),
            Prelude.Just
              ("propertyValues" Core..= propertyValues)
          ]
      )
