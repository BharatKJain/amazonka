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
-- Module      : Amazonka.Forecast.Types.DataConfig
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.Forecast.Types.DataConfig where

import qualified Amazonka.Core as Core
import Amazonka.Forecast.Types.AdditionalDataset
import Amazonka.Forecast.Types.AttributeConfig
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | The data configuration for your dataset group and any additional
-- datasets.
--
-- /See:/ 'newDataConfig' smart constructor.
data DataConfig = DataConfig'
  { -- | Additional built-in datasets like Holidays and the Weather Index.
    additionalDatasets :: Prelude.Maybe (Prelude.NonEmpty AdditionalDataset),
    -- | Aggregation and filling options for attributes in your dataset group.
    attributeConfigs :: Prelude.Maybe (Prelude.NonEmpty AttributeConfig),
    -- | The ARN of the dataset group used to train the predictor.
    datasetGroupArn :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DataConfig' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'additionalDatasets', 'dataConfig_additionalDatasets' - Additional built-in datasets like Holidays and the Weather Index.
--
-- 'attributeConfigs', 'dataConfig_attributeConfigs' - Aggregation and filling options for attributes in your dataset group.
--
-- 'datasetGroupArn', 'dataConfig_datasetGroupArn' - The ARN of the dataset group used to train the predictor.
newDataConfig ::
  -- | 'datasetGroupArn'
  Prelude.Text ->
  DataConfig
newDataConfig pDatasetGroupArn_ =
  DataConfig'
    { additionalDatasets = Prelude.Nothing,
      attributeConfigs = Prelude.Nothing,
      datasetGroupArn = pDatasetGroupArn_
    }

-- | Additional built-in datasets like Holidays and the Weather Index.
dataConfig_additionalDatasets :: Lens.Lens' DataConfig (Prelude.Maybe (Prelude.NonEmpty AdditionalDataset))
dataConfig_additionalDatasets = Lens.lens (\DataConfig' {additionalDatasets} -> additionalDatasets) (\s@DataConfig' {} a -> s {additionalDatasets = a} :: DataConfig) Prelude.. Lens.mapping Lens.coerced

-- | Aggregation and filling options for attributes in your dataset group.
dataConfig_attributeConfigs :: Lens.Lens' DataConfig (Prelude.Maybe (Prelude.NonEmpty AttributeConfig))
dataConfig_attributeConfigs = Lens.lens (\DataConfig' {attributeConfigs} -> attributeConfigs) (\s@DataConfig' {} a -> s {attributeConfigs = a} :: DataConfig) Prelude.. Lens.mapping Lens.coerced

-- | The ARN of the dataset group used to train the predictor.
dataConfig_datasetGroupArn :: Lens.Lens' DataConfig Prelude.Text
dataConfig_datasetGroupArn = Lens.lens (\DataConfig' {datasetGroupArn} -> datasetGroupArn) (\s@DataConfig' {} a -> s {datasetGroupArn = a} :: DataConfig)

instance Core.FromJSON DataConfig where
  parseJSON =
    Core.withObject
      "DataConfig"
      ( \x ->
          DataConfig'
            Prelude.<$> (x Core..:? "AdditionalDatasets")
            Prelude.<*> (x Core..:? "AttributeConfigs")
            Prelude.<*> (x Core..: "DatasetGroupArn")
      )

instance Prelude.Hashable DataConfig where
  hashWithSalt _salt DataConfig' {..} =
    _salt `Prelude.hashWithSalt` additionalDatasets
      `Prelude.hashWithSalt` attributeConfigs
      `Prelude.hashWithSalt` datasetGroupArn

instance Prelude.NFData DataConfig where
  rnf DataConfig' {..} =
    Prelude.rnf additionalDatasets
      `Prelude.seq` Prelude.rnf attributeConfigs
      `Prelude.seq` Prelude.rnf datasetGroupArn

instance Core.ToJSON DataConfig where
  toJSON DataConfig' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("AdditionalDatasets" Core..=)
              Prelude.<$> additionalDatasets,
            ("AttributeConfigs" Core..=)
              Prelude.<$> attributeConfigs,
            Prelude.Just
              ("DatasetGroupArn" Core..= datasetGroupArn)
          ]
      )
