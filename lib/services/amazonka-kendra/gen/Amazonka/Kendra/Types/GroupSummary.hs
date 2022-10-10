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
-- Module      : Amazonka.Kendra.Types.GroupSummary
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.Kendra.Types.GroupSummary where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | Summary information for groups.
--
-- /See:/ 'newGroupSummary' smart constructor.
data GroupSummary = GroupSummary'
  { -- | The timestamp identifier used for the latest @PUT@ or @DELETE@ action.
    orderingId :: Prelude.Maybe Prelude.Natural,
    -- | The identifier of the group you want group summary information on.
    groupId :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GroupSummary' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'orderingId', 'groupSummary_orderingId' - The timestamp identifier used for the latest @PUT@ or @DELETE@ action.
--
-- 'groupId', 'groupSummary_groupId' - The identifier of the group you want group summary information on.
newGroupSummary ::
  GroupSummary
newGroupSummary =
  GroupSummary'
    { orderingId = Prelude.Nothing,
      groupId = Prelude.Nothing
    }

-- | The timestamp identifier used for the latest @PUT@ or @DELETE@ action.
groupSummary_orderingId :: Lens.Lens' GroupSummary (Prelude.Maybe Prelude.Natural)
groupSummary_orderingId = Lens.lens (\GroupSummary' {orderingId} -> orderingId) (\s@GroupSummary' {} a -> s {orderingId = a} :: GroupSummary)

-- | The identifier of the group you want group summary information on.
groupSummary_groupId :: Lens.Lens' GroupSummary (Prelude.Maybe Prelude.Text)
groupSummary_groupId = Lens.lens (\GroupSummary' {groupId} -> groupId) (\s@GroupSummary' {} a -> s {groupId = a} :: GroupSummary)

instance Core.FromJSON GroupSummary where
  parseJSON =
    Core.withObject
      "GroupSummary"
      ( \x ->
          GroupSummary'
            Prelude.<$> (x Core..:? "OrderingId")
            Prelude.<*> (x Core..:? "GroupId")
      )

instance Prelude.Hashable GroupSummary where
  hashWithSalt _salt GroupSummary' {..} =
    _salt `Prelude.hashWithSalt` orderingId
      `Prelude.hashWithSalt` groupId

instance Prelude.NFData GroupSummary where
  rnf GroupSummary' {..} =
    Prelude.rnf orderingId
      `Prelude.seq` Prelude.rnf groupId
