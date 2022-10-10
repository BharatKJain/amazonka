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
-- Module      : Amazonka.Connect.Types.RoutingProfileSearchCriteria
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.Connect.Types.RoutingProfileSearchCriteria where

import Amazonka.Connect.Types.StringCondition
import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | The search criteria to be used to return routing profiles.
--
-- /See:/ 'newRoutingProfileSearchCriteria' smart constructor.
data RoutingProfileSearchCriteria = RoutingProfileSearchCriteria'
  { stringCondition :: Prelude.Maybe StringCondition,
    -- | A list of conditions which would be applied together with an OR
    -- condition.
    orConditions :: Prelude.Maybe [RoutingProfileSearchCriteria],
    -- | A list of conditions which would be applied together with an AND
    -- condition.
    andConditions :: Prelude.Maybe [RoutingProfileSearchCriteria]
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'RoutingProfileSearchCriteria' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'stringCondition', 'routingProfileSearchCriteria_stringCondition' - Undocumented member.
--
-- 'orConditions', 'routingProfileSearchCriteria_orConditions' - A list of conditions which would be applied together with an OR
-- condition.
--
-- 'andConditions', 'routingProfileSearchCriteria_andConditions' - A list of conditions which would be applied together with an AND
-- condition.
newRoutingProfileSearchCriteria ::
  RoutingProfileSearchCriteria
newRoutingProfileSearchCriteria =
  RoutingProfileSearchCriteria'
    { stringCondition =
        Prelude.Nothing,
      orConditions = Prelude.Nothing,
      andConditions = Prelude.Nothing
    }

-- | Undocumented member.
routingProfileSearchCriteria_stringCondition :: Lens.Lens' RoutingProfileSearchCriteria (Prelude.Maybe StringCondition)
routingProfileSearchCriteria_stringCondition = Lens.lens (\RoutingProfileSearchCriteria' {stringCondition} -> stringCondition) (\s@RoutingProfileSearchCriteria' {} a -> s {stringCondition = a} :: RoutingProfileSearchCriteria)

-- | A list of conditions which would be applied together with an OR
-- condition.
routingProfileSearchCriteria_orConditions :: Lens.Lens' RoutingProfileSearchCriteria (Prelude.Maybe [RoutingProfileSearchCriteria])
routingProfileSearchCriteria_orConditions = Lens.lens (\RoutingProfileSearchCriteria' {orConditions} -> orConditions) (\s@RoutingProfileSearchCriteria' {} a -> s {orConditions = a} :: RoutingProfileSearchCriteria) Prelude.. Lens.mapping Lens.coerced

-- | A list of conditions which would be applied together with an AND
-- condition.
routingProfileSearchCriteria_andConditions :: Lens.Lens' RoutingProfileSearchCriteria (Prelude.Maybe [RoutingProfileSearchCriteria])
routingProfileSearchCriteria_andConditions = Lens.lens (\RoutingProfileSearchCriteria' {andConditions} -> andConditions) (\s@RoutingProfileSearchCriteria' {} a -> s {andConditions = a} :: RoutingProfileSearchCriteria) Prelude.. Lens.mapping Lens.coerced

instance
  Prelude.Hashable
    RoutingProfileSearchCriteria
  where
  hashWithSalt _salt RoutingProfileSearchCriteria' {..} =
    _salt `Prelude.hashWithSalt` stringCondition
      `Prelude.hashWithSalt` orConditions
      `Prelude.hashWithSalt` andConditions

instance Prelude.NFData RoutingProfileSearchCriteria where
  rnf RoutingProfileSearchCriteria' {..} =
    Prelude.rnf stringCondition
      `Prelude.seq` Prelude.rnf orConditions
      `Prelude.seq` Prelude.rnf andConditions

instance Core.ToJSON RoutingProfileSearchCriteria where
  toJSON RoutingProfileSearchCriteria' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("StringCondition" Core..=)
              Prelude.<$> stringCondition,
            ("OrConditions" Core..=) Prelude.<$> orConditions,
            ("AndConditions" Core..=) Prelude.<$> andConditions
          ]
      )
