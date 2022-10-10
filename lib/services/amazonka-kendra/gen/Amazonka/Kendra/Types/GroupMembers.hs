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
-- Module      : Amazonka.Kendra.Types.GroupMembers
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.Kendra.Types.GroupMembers where

import qualified Amazonka.Core as Core
import Amazonka.Kendra.Types.MemberGroup
import Amazonka.Kendra.Types.MemberUser
import Amazonka.Kendra.Types.S3Path
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | A list of users or sub groups that belong to a group. This is useful for
-- user context filtering, where search results are filtered based on the
-- user or their group access to documents.
--
-- /See:/ 'newGroupMembers' smart constructor.
data GroupMembers = GroupMembers'
  { -- | A list of users that belong to a group. For example, a list of interns
    -- all belong to the \"Interns\" group.
    memberUsers :: Prelude.Maybe (Prelude.NonEmpty MemberUser),
    -- | A list of sub groups that belong to a group. For example, the sub groups
    -- \"Research\", \"Engineering\", and \"Sales and Marketing\" all belong to
    -- the group \"Company\".
    memberGroups :: Prelude.Maybe (Prelude.NonEmpty MemberGroup),
    -- | If you have more than 1000 users and\/or sub groups for a single group,
    -- you need to provide the path to the S3 file that lists your users and
    -- sub groups for a group. Your sub groups can contain more than 1000
    -- users, but the list of sub groups that belong to a group (and\/or users)
    -- must be no more than 1000.
    --
    -- You can download this
    -- <https://docs.aws.amazon.com/kendra/latest/dg/samples/group_members.zip example S3 file>
    -- that uses the correct format for listing group members. Note,
    -- @dataSourceId@ is optional. The value of @type@ for a group is always
    -- @GROUP@ and for a user it is always @USER@.
    s3PathforGroupMembers :: Prelude.Maybe S3Path
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GroupMembers' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'memberUsers', 'groupMembers_memberUsers' - A list of users that belong to a group. For example, a list of interns
-- all belong to the \"Interns\" group.
--
-- 'memberGroups', 'groupMembers_memberGroups' - A list of sub groups that belong to a group. For example, the sub groups
-- \"Research\", \"Engineering\", and \"Sales and Marketing\" all belong to
-- the group \"Company\".
--
-- 's3PathforGroupMembers', 'groupMembers_s3PathforGroupMembers' - If you have more than 1000 users and\/or sub groups for a single group,
-- you need to provide the path to the S3 file that lists your users and
-- sub groups for a group. Your sub groups can contain more than 1000
-- users, but the list of sub groups that belong to a group (and\/or users)
-- must be no more than 1000.
--
-- You can download this
-- <https://docs.aws.amazon.com/kendra/latest/dg/samples/group_members.zip example S3 file>
-- that uses the correct format for listing group members. Note,
-- @dataSourceId@ is optional. The value of @type@ for a group is always
-- @GROUP@ and for a user it is always @USER@.
newGroupMembers ::
  GroupMembers
newGroupMembers =
  GroupMembers'
    { memberUsers = Prelude.Nothing,
      memberGroups = Prelude.Nothing,
      s3PathforGroupMembers = Prelude.Nothing
    }

-- | A list of users that belong to a group. For example, a list of interns
-- all belong to the \"Interns\" group.
groupMembers_memberUsers :: Lens.Lens' GroupMembers (Prelude.Maybe (Prelude.NonEmpty MemberUser))
groupMembers_memberUsers = Lens.lens (\GroupMembers' {memberUsers} -> memberUsers) (\s@GroupMembers' {} a -> s {memberUsers = a} :: GroupMembers) Prelude.. Lens.mapping Lens.coerced

-- | A list of sub groups that belong to a group. For example, the sub groups
-- \"Research\", \"Engineering\", and \"Sales and Marketing\" all belong to
-- the group \"Company\".
groupMembers_memberGroups :: Lens.Lens' GroupMembers (Prelude.Maybe (Prelude.NonEmpty MemberGroup))
groupMembers_memberGroups = Lens.lens (\GroupMembers' {memberGroups} -> memberGroups) (\s@GroupMembers' {} a -> s {memberGroups = a} :: GroupMembers) Prelude.. Lens.mapping Lens.coerced

-- | If you have more than 1000 users and\/or sub groups for a single group,
-- you need to provide the path to the S3 file that lists your users and
-- sub groups for a group. Your sub groups can contain more than 1000
-- users, but the list of sub groups that belong to a group (and\/or users)
-- must be no more than 1000.
--
-- You can download this
-- <https://docs.aws.amazon.com/kendra/latest/dg/samples/group_members.zip example S3 file>
-- that uses the correct format for listing group members. Note,
-- @dataSourceId@ is optional. The value of @type@ for a group is always
-- @GROUP@ and for a user it is always @USER@.
groupMembers_s3PathforGroupMembers :: Lens.Lens' GroupMembers (Prelude.Maybe S3Path)
groupMembers_s3PathforGroupMembers = Lens.lens (\GroupMembers' {s3PathforGroupMembers} -> s3PathforGroupMembers) (\s@GroupMembers' {} a -> s {s3PathforGroupMembers = a} :: GroupMembers)

instance Prelude.Hashable GroupMembers where
  hashWithSalt _salt GroupMembers' {..} =
    _salt `Prelude.hashWithSalt` memberUsers
      `Prelude.hashWithSalt` memberGroups
      `Prelude.hashWithSalt` s3PathforGroupMembers

instance Prelude.NFData GroupMembers where
  rnf GroupMembers' {..} =
    Prelude.rnf memberUsers
      `Prelude.seq` Prelude.rnf memberGroups
      `Prelude.seq` Prelude.rnf s3PathforGroupMembers

instance Core.ToJSON GroupMembers where
  toJSON GroupMembers' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("MemberUsers" Core..=) Prelude.<$> memberUsers,
            ("MemberGroups" Core..=) Prelude.<$> memberGroups,
            ("S3PathforGroupMembers" Core..=)
              Prelude.<$> s3PathforGroupMembers
          ]
      )
