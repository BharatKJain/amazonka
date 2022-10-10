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
-- Module      : Amazonka.BillingConductor.Types.PricingPlanListElement
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.BillingConductor.Types.PricingPlanListElement where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | A representation of a pricing plan.
--
-- /See:/ 'newPricingPlanListElement' smart constructor.
data PricingPlanListElement = PricingPlanListElement'
  { -- | The name of a pricing plan.
    name :: Prelude.Maybe (Core.Sensitive Prelude.Text),
    -- | The pricing plan Amazon Resource Names (ARN). This can be used to
    -- uniquely identify a pricing plan.
    arn :: Prelude.Maybe Prelude.Text,
    -- | The pricing rules count currently associated with this pricing plan list
    -- element.
    size :: Prelude.Maybe Prelude.Natural,
    -- | The pricing plan description.
    description :: Prelude.Maybe (Core.Sensitive Prelude.Text),
    -- | The most recent time the pricing plan was modified.
    lastModifiedTime :: Prelude.Maybe Prelude.Integer,
    -- | The time the pricing plan was created.
    creationTime :: Prelude.Maybe Prelude.Integer
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'PricingPlanListElement' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'name', 'pricingPlanListElement_name' - The name of a pricing plan.
--
-- 'arn', 'pricingPlanListElement_arn' - The pricing plan Amazon Resource Names (ARN). This can be used to
-- uniquely identify a pricing plan.
--
-- 'size', 'pricingPlanListElement_size' - The pricing rules count currently associated with this pricing plan list
-- element.
--
-- 'description', 'pricingPlanListElement_description' - The pricing plan description.
--
-- 'lastModifiedTime', 'pricingPlanListElement_lastModifiedTime' - The most recent time the pricing plan was modified.
--
-- 'creationTime', 'pricingPlanListElement_creationTime' - The time the pricing plan was created.
newPricingPlanListElement ::
  PricingPlanListElement
newPricingPlanListElement =
  PricingPlanListElement'
    { name = Prelude.Nothing,
      arn = Prelude.Nothing,
      size = Prelude.Nothing,
      description = Prelude.Nothing,
      lastModifiedTime = Prelude.Nothing,
      creationTime = Prelude.Nothing
    }

-- | The name of a pricing plan.
pricingPlanListElement_name :: Lens.Lens' PricingPlanListElement (Prelude.Maybe Prelude.Text)
pricingPlanListElement_name = Lens.lens (\PricingPlanListElement' {name} -> name) (\s@PricingPlanListElement' {} a -> s {name = a} :: PricingPlanListElement) Prelude.. Lens.mapping Core._Sensitive

-- | The pricing plan Amazon Resource Names (ARN). This can be used to
-- uniquely identify a pricing plan.
pricingPlanListElement_arn :: Lens.Lens' PricingPlanListElement (Prelude.Maybe Prelude.Text)
pricingPlanListElement_arn = Lens.lens (\PricingPlanListElement' {arn} -> arn) (\s@PricingPlanListElement' {} a -> s {arn = a} :: PricingPlanListElement)

-- | The pricing rules count currently associated with this pricing plan list
-- element.
pricingPlanListElement_size :: Lens.Lens' PricingPlanListElement (Prelude.Maybe Prelude.Natural)
pricingPlanListElement_size = Lens.lens (\PricingPlanListElement' {size} -> size) (\s@PricingPlanListElement' {} a -> s {size = a} :: PricingPlanListElement)

-- | The pricing plan description.
pricingPlanListElement_description :: Lens.Lens' PricingPlanListElement (Prelude.Maybe Prelude.Text)
pricingPlanListElement_description = Lens.lens (\PricingPlanListElement' {description} -> description) (\s@PricingPlanListElement' {} a -> s {description = a} :: PricingPlanListElement) Prelude.. Lens.mapping Core._Sensitive

-- | The most recent time the pricing plan was modified.
pricingPlanListElement_lastModifiedTime :: Lens.Lens' PricingPlanListElement (Prelude.Maybe Prelude.Integer)
pricingPlanListElement_lastModifiedTime = Lens.lens (\PricingPlanListElement' {lastModifiedTime} -> lastModifiedTime) (\s@PricingPlanListElement' {} a -> s {lastModifiedTime = a} :: PricingPlanListElement)

-- | The time the pricing plan was created.
pricingPlanListElement_creationTime :: Lens.Lens' PricingPlanListElement (Prelude.Maybe Prelude.Integer)
pricingPlanListElement_creationTime = Lens.lens (\PricingPlanListElement' {creationTime} -> creationTime) (\s@PricingPlanListElement' {} a -> s {creationTime = a} :: PricingPlanListElement)

instance Core.FromJSON PricingPlanListElement where
  parseJSON =
    Core.withObject
      "PricingPlanListElement"
      ( \x ->
          PricingPlanListElement'
            Prelude.<$> (x Core..:? "Name")
            Prelude.<*> (x Core..:? "Arn")
            Prelude.<*> (x Core..:? "Size")
            Prelude.<*> (x Core..:? "Description")
            Prelude.<*> (x Core..:? "LastModifiedTime")
            Prelude.<*> (x Core..:? "CreationTime")
      )

instance Prelude.Hashable PricingPlanListElement where
  hashWithSalt _salt PricingPlanListElement' {..} =
    _salt `Prelude.hashWithSalt` name
      `Prelude.hashWithSalt` arn
      `Prelude.hashWithSalt` size
      `Prelude.hashWithSalt` description
      `Prelude.hashWithSalt` lastModifiedTime
      `Prelude.hashWithSalt` creationTime

instance Prelude.NFData PricingPlanListElement where
  rnf PricingPlanListElement' {..} =
    Prelude.rnf name
      `Prelude.seq` Prelude.rnf arn
      `Prelude.seq` Prelude.rnf size
      `Prelude.seq` Prelude.rnf description
      `Prelude.seq` Prelude.rnf lastModifiedTime
      `Prelude.seq` Prelude.rnf creationTime
