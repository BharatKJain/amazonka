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
-- Module      : Amazonka.FinSpaceData.Types.PermissionGroupByUser
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.FinSpaceData.Types.PermissionGroupByUser where

import qualified Amazonka.Core as Core
import Amazonka.FinSpaceData.Types.PermissionGroupMembershipStatus
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | The structure of a permission group associated with a user account.
--
-- /See:/ 'newPermissionGroupByUser' smart constructor.
data PermissionGroupByUser = PermissionGroupByUser'
  { -- | The name of the permission group.
    name :: Prelude.Maybe (Core.Sensitive Prelude.Text),
    -- | The unique identifier for the permission group.
    permissionGroupId :: Prelude.Maybe Prelude.Text,
    -- | Indicates the status of the user account within a permission group.
    --
    -- -   @ADDITION_IN_PROGRESS@ – The user account is currently being added
    --     to the permission group.
    --
    -- -   @ADDITION_SUCCESS@ – The user account is successfully added to the
    --     permission group.
    --
    -- -   @REMOVAL_IN_PROGRESS@ – The user is currently being removed from the
    --     permission group.
    membershipStatus :: Prelude.Maybe PermissionGroupMembershipStatus
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'PermissionGroupByUser' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'name', 'permissionGroupByUser_name' - The name of the permission group.
--
-- 'permissionGroupId', 'permissionGroupByUser_permissionGroupId' - The unique identifier for the permission group.
--
-- 'membershipStatus', 'permissionGroupByUser_membershipStatus' - Indicates the status of the user account within a permission group.
--
-- -   @ADDITION_IN_PROGRESS@ – The user account is currently being added
--     to the permission group.
--
-- -   @ADDITION_SUCCESS@ – The user account is successfully added to the
--     permission group.
--
-- -   @REMOVAL_IN_PROGRESS@ – The user is currently being removed from the
--     permission group.
newPermissionGroupByUser ::
  PermissionGroupByUser
newPermissionGroupByUser =
  PermissionGroupByUser'
    { name = Prelude.Nothing,
      permissionGroupId = Prelude.Nothing,
      membershipStatus = Prelude.Nothing
    }

-- | The name of the permission group.
permissionGroupByUser_name :: Lens.Lens' PermissionGroupByUser (Prelude.Maybe Prelude.Text)
permissionGroupByUser_name = Lens.lens (\PermissionGroupByUser' {name} -> name) (\s@PermissionGroupByUser' {} a -> s {name = a} :: PermissionGroupByUser) Prelude.. Lens.mapping Core._Sensitive

-- | The unique identifier for the permission group.
permissionGroupByUser_permissionGroupId :: Lens.Lens' PermissionGroupByUser (Prelude.Maybe Prelude.Text)
permissionGroupByUser_permissionGroupId = Lens.lens (\PermissionGroupByUser' {permissionGroupId} -> permissionGroupId) (\s@PermissionGroupByUser' {} a -> s {permissionGroupId = a} :: PermissionGroupByUser)

-- | Indicates the status of the user account within a permission group.
--
-- -   @ADDITION_IN_PROGRESS@ – The user account is currently being added
--     to the permission group.
--
-- -   @ADDITION_SUCCESS@ – The user account is successfully added to the
--     permission group.
--
-- -   @REMOVAL_IN_PROGRESS@ – The user is currently being removed from the
--     permission group.
permissionGroupByUser_membershipStatus :: Lens.Lens' PermissionGroupByUser (Prelude.Maybe PermissionGroupMembershipStatus)
permissionGroupByUser_membershipStatus = Lens.lens (\PermissionGroupByUser' {membershipStatus} -> membershipStatus) (\s@PermissionGroupByUser' {} a -> s {membershipStatus = a} :: PermissionGroupByUser)

instance Core.FromJSON PermissionGroupByUser where
  parseJSON =
    Core.withObject
      "PermissionGroupByUser"
      ( \x ->
          PermissionGroupByUser'
            Prelude.<$> (x Core..:? "name")
            Prelude.<*> (x Core..:? "permissionGroupId")
            Prelude.<*> (x Core..:? "membershipStatus")
      )

instance Prelude.Hashable PermissionGroupByUser where
  hashWithSalt _salt PermissionGroupByUser' {..} =
    _salt `Prelude.hashWithSalt` name
      `Prelude.hashWithSalt` permissionGroupId
      `Prelude.hashWithSalt` membershipStatus

instance Prelude.NFData PermissionGroupByUser where
  rnf PermissionGroupByUser' {..} =
    Prelude.rnf name
      `Prelude.seq` Prelude.rnf permissionGroupId
      `Prelude.seq` Prelude.rnf membershipStatus
