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
-- Module      : Amazonka.Inspector2.Types.TitleAggregation
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.Inspector2.Types.TitleAggregation where

import qualified Amazonka.Core as Core
import Amazonka.Inspector2.Types.AggregationResourceType
import Amazonka.Inspector2.Types.SortOrder
import Amazonka.Inspector2.Types.StringFilter
import Amazonka.Inspector2.Types.TitleSortBy
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | The details that define an aggregation based on finding title.
--
-- /See:/ 'newTitleAggregation' smart constructor.
data TitleAggregation = TitleAggregation'
  { -- | The resource type to aggregate on.
    resourceType :: Prelude.Maybe AggregationResourceType,
    -- | The order to sort results by.
    sortOrder :: Prelude.Maybe SortOrder,
    -- | The vulnerability IDs of the findings.
    vulnerabilityIds :: Prelude.Maybe (Prelude.NonEmpty StringFilter),
    -- | The value to sort results by.
    sortBy :: Prelude.Maybe TitleSortBy,
    -- | The finding titles to aggregate on.
    titles :: Prelude.Maybe (Prelude.NonEmpty StringFilter)
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'TitleAggregation' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'resourceType', 'titleAggregation_resourceType' - The resource type to aggregate on.
--
-- 'sortOrder', 'titleAggregation_sortOrder' - The order to sort results by.
--
-- 'vulnerabilityIds', 'titleAggregation_vulnerabilityIds' - The vulnerability IDs of the findings.
--
-- 'sortBy', 'titleAggregation_sortBy' - The value to sort results by.
--
-- 'titles', 'titleAggregation_titles' - The finding titles to aggregate on.
newTitleAggregation ::
  TitleAggregation
newTitleAggregation =
  TitleAggregation'
    { resourceType = Prelude.Nothing,
      sortOrder = Prelude.Nothing,
      vulnerabilityIds = Prelude.Nothing,
      sortBy = Prelude.Nothing,
      titles = Prelude.Nothing
    }

-- | The resource type to aggregate on.
titleAggregation_resourceType :: Lens.Lens' TitleAggregation (Prelude.Maybe AggregationResourceType)
titleAggregation_resourceType = Lens.lens (\TitleAggregation' {resourceType} -> resourceType) (\s@TitleAggregation' {} a -> s {resourceType = a} :: TitleAggregation)

-- | The order to sort results by.
titleAggregation_sortOrder :: Lens.Lens' TitleAggregation (Prelude.Maybe SortOrder)
titleAggregation_sortOrder = Lens.lens (\TitleAggregation' {sortOrder} -> sortOrder) (\s@TitleAggregation' {} a -> s {sortOrder = a} :: TitleAggregation)

-- | The vulnerability IDs of the findings.
titleAggregation_vulnerabilityIds :: Lens.Lens' TitleAggregation (Prelude.Maybe (Prelude.NonEmpty StringFilter))
titleAggregation_vulnerabilityIds = Lens.lens (\TitleAggregation' {vulnerabilityIds} -> vulnerabilityIds) (\s@TitleAggregation' {} a -> s {vulnerabilityIds = a} :: TitleAggregation) Prelude.. Lens.mapping Lens.coerced

-- | The value to sort results by.
titleAggregation_sortBy :: Lens.Lens' TitleAggregation (Prelude.Maybe TitleSortBy)
titleAggregation_sortBy = Lens.lens (\TitleAggregation' {sortBy} -> sortBy) (\s@TitleAggregation' {} a -> s {sortBy = a} :: TitleAggregation)

-- | The finding titles to aggregate on.
titleAggregation_titles :: Lens.Lens' TitleAggregation (Prelude.Maybe (Prelude.NonEmpty StringFilter))
titleAggregation_titles = Lens.lens (\TitleAggregation' {titles} -> titles) (\s@TitleAggregation' {} a -> s {titles = a} :: TitleAggregation) Prelude.. Lens.mapping Lens.coerced

instance Prelude.Hashable TitleAggregation where
  hashWithSalt _salt TitleAggregation' {..} =
    _salt `Prelude.hashWithSalt` resourceType
      `Prelude.hashWithSalt` sortOrder
      `Prelude.hashWithSalt` vulnerabilityIds
      `Prelude.hashWithSalt` sortBy
      `Prelude.hashWithSalt` titles

instance Prelude.NFData TitleAggregation where
  rnf TitleAggregation' {..} =
    Prelude.rnf resourceType
      `Prelude.seq` Prelude.rnf sortOrder
      `Prelude.seq` Prelude.rnf vulnerabilityIds
      `Prelude.seq` Prelude.rnf sortBy
      `Prelude.seq` Prelude.rnf titles

instance Core.ToJSON TitleAggregation where
  toJSON TitleAggregation' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("resourceType" Core..=) Prelude.<$> resourceType,
            ("sortOrder" Core..=) Prelude.<$> sortOrder,
            ("vulnerabilityIds" Core..=)
              Prelude.<$> vulnerabilityIds,
            ("sortBy" Core..=) Prelude.<$> sortBy,
            ("titles" Core..=) Prelude.<$> titles
          ]
      )
