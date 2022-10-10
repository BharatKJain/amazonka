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
-- Module      : Amazonka.EC2.Types.LoadPermission
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.EC2.Types.LoadPermission where

import qualified Amazonka.Core as Core
import Amazonka.EC2.Internal
import Amazonka.EC2.Types.PermissionGroup
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | Describes a load permission.
--
-- /See:/ 'newLoadPermission' smart constructor.
data LoadPermission = LoadPermission'
  { -- | The Amazon Web Services account ID.
    userId :: Prelude.Maybe Prelude.Text,
    -- | The name of the group.
    group' :: Prelude.Maybe PermissionGroup
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'LoadPermission' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'userId', 'loadPermission_userId' - The Amazon Web Services account ID.
--
-- 'group'', 'loadPermission_group' - The name of the group.
newLoadPermission ::
  LoadPermission
newLoadPermission =
  LoadPermission'
    { userId = Prelude.Nothing,
      group' = Prelude.Nothing
    }

-- | The Amazon Web Services account ID.
loadPermission_userId :: Lens.Lens' LoadPermission (Prelude.Maybe Prelude.Text)
loadPermission_userId = Lens.lens (\LoadPermission' {userId} -> userId) (\s@LoadPermission' {} a -> s {userId = a} :: LoadPermission)

-- | The name of the group.
loadPermission_group :: Lens.Lens' LoadPermission (Prelude.Maybe PermissionGroup)
loadPermission_group = Lens.lens (\LoadPermission' {group'} -> group') (\s@LoadPermission' {} a -> s {group' = a} :: LoadPermission)

instance Core.FromXML LoadPermission where
  parseXML x =
    LoadPermission'
      Prelude.<$> (x Core..@? "userId")
      Prelude.<*> (x Core..@? "group")

instance Prelude.Hashable LoadPermission where
  hashWithSalt _salt LoadPermission' {..} =
    _salt `Prelude.hashWithSalt` userId
      `Prelude.hashWithSalt` group'

instance Prelude.NFData LoadPermission where
  rnf LoadPermission' {..} =
    Prelude.rnf userId `Prelude.seq` Prelude.rnf group'
