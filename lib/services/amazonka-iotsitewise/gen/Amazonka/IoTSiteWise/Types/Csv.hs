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
-- Module      : Amazonka.IoTSiteWise.Types.Csv
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.IoTSiteWise.Types.Csv where

import qualified Amazonka.Core as Core
import Amazonka.IoTSiteWise.Types.ColumnName
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | A .csv file.
--
-- /See:/ 'newCsv' smart constructor.
data Csv = Csv'
  { -- | The column names specified in the .csv file.
    columnNames :: Prelude.Maybe [ColumnName]
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'Csv' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'columnNames', 'csv_columnNames' - The column names specified in the .csv file.
newCsv ::
  Csv
newCsv = Csv' {columnNames = Prelude.Nothing}

-- | The column names specified in the .csv file.
csv_columnNames :: Lens.Lens' Csv (Prelude.Maybe [ColumnName])
csv_columnNames = Lens.lens (\Csv' {columnNames} -> columnNames) (\s@Csv' {} a -> s {columnNames = a} :: Csv) Prelude.. Lens.mapping Lens.coerced

instance Core.FromJSON Csv where
  parseJSON =
    Core.withObject
      "Csv"
      ( \x ->
          Csv'
            Prelude.<$> (x Core..:? "columnNames" Core..!= Prelude.mempty)
      )

instance Prelude.Hashable Csv where
  hashWithSalt _salt Csv' {..} =
    _salt `Prelude.hashWithSalt` columnNames

instance Prelude.NFData Csv where
  rnf Csv' {..} = Prelude.rnf columnNames

instance Core.ToJSON Csv where
  toJSON Csv' {..} =
    Core.object
      ( Prelude.catMaybes
          [("columnNames" Core..=) Prelude.<$> columnNames]
      )
