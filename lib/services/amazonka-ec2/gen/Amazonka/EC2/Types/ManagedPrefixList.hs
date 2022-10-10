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
-- Module      : Amazonka.EC2.Types.ManagedPrefixList
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.EC2.Types.ManagedPrefixList where

import qualified Amazonka.Core as Core
import Amazonka.EC2.Internal
import Amazonka.EC2.Types.PrefixListState
import Amazonka.EC2.Types.Tag
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | Describes a managed prefix list.
--
-- /See:/ 'newManagedPrefixList' smart constructor.
data ManagedPrefixList = ManagedPrefixList'
  { -- | The tags for the prefix list.
    tags :: Prelude.Maybe [Tag],
    -- | The IP address version.
    addressFamily :: Prelude.Maybe Prelude.Text,
    -- | The ID of the owner of the prefix list.
    ownerId :: Prelude.Maybe Prelude.Text,
    -- | The ID of the prefix list.
    prefixListId :: Prelude.Maybe Prelude.Text,
    -- | The current state of the prefix list.
    state :: Prelude.Maybe PrefixListState,
    -- | The maximum number of entries for the prefix list.
    maxEntries :: Prelude.Maybe Prelude.Int,
    -- | The Amazon Resource Name (ARN) for the prefix list.
    prefixListArn :: Prelude.Maybe Prelude.Text,
    -- | The state message.
    stateMessage :: Prelude.Maybe Prelude.Text,
    -- | The name of the prefix list.
    prefixListName :: Prelude.Maybe Prelude.Text,
    -- | The version of the prefix list.
    version :: Prelude.Maybe Prelude.Integer
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ManagedPrefixList' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'tags', 'managedPrefixList_tags' - The tags for the prefix list.
--
-- 'addressFamily', 'managedPrefixList_addressFamily' - The IP address version.
--
-- 'ownerId', 'managedPrefixList_ownerId' - The ID of the owner of the prefix list.
--
-- 'prefixListId', 'managedPrefixList_prefixListId' - The ID of the prefix list.
--
-- 'state', 'managedPrefixList_state' - The current state of the prefix list.
--
-- 'maxEntries', 'managedPrefixList_maxEntries' - The maximum number of entries for the prefix list.
--
-- 'prefixListArn', 'managedPrefixList_prefixListArn' - The Amazon Resource Name (ARN) for the prefix list.
--
-- 'stateMessage', 'managedPrefixList_stateMessage' - The state message.
--
-- 'prefixListName', 'managedPrefixList_prefixListName' - The name of the prefix list.
--
-- 'version', 'managedPrefixList_version' - The version of the prefix list.
newManagedPrefixList ::
  ManagedPrefixList
newManagedPrefixList =
  ManagedPrefixList'
    { tags = Prelude.Nothing,
      addressFamily = Prelude.Nothing,
      ownerId = Prelude.Nothing,
      prefixListId = Prelude.Nothing,
      state = Prelude.Nothing,
      maxEntries = Prelude.Nothing,
      prefixListArn = Prelude.Nothing,
      stateMessage = Prelude.Nothing,
      prefixListName = Prelude.Nothing,
      version = Prelude.Nothing
    }

-- | The tags for the prefix list.
managedPrefixList_tags :: Lens.Lens' ManagedPrefixList (Prelude.Maybe [Tag])
managedPrefixList_tags = Lens.lens (\ManagedPrefixList' {tags} -> tags) (\s@ManagedPrefixList' {} a -> s {tags = a} :: ManagedPrefixList) Prelude.. Lens.mapping Lens.coerced

-- | The IP address version.
managedPrefixList_addressFamily :: Lens.Lens' ManagedPrefixList (Prelude.Maybe Prelude.Text)
managedPrefixList_addressFamily = Lens.lens (\ManagedPrefixList' {addressFamily} -> addressFamily) (\s@ManagedPrefixList' {} a -> s {addressFamily = a} :: ManagedPrefixList)

-- | The ID of the owner of the prefix list.
managedPrefixList_ownerId :: Lens.Lens' ManagedPrefixList (Prelude.Maybe Prelude.Text)
managedPrefixList_ownerId = Lens.lens (\ManagedPrefixList' {ownerId} -> ownerId) (\s@ManagedPrefixList' {} a -> s {ownerId = a} :: ManagedPrefixList)

-- | The ID of the prefix list.
managedPrefixList_prefixListId :: Lens.Lens' ManagedPrefixList (Prelude.Maybe Prelude.Text)
managedPrefixList_prefixListId = Lens.lens (\ManagedPrefixList' {prefixListId} -> prefixListId) (\s@ManagedPrefixList' {} a -> s {prefixListId = a} :: ManagedPrefixList)

-- | The current state of the prefix list.
managedPrefixList_state :: Lens.Lens' ManagedPrefixList (Prelude.Maybe PrefixListState)
managedPrefixList_state = Lens.lens (\ManagedPrefixList' {state} -> state) (\s@ManagedPrefixList' {} a -> s {state = a} :: ManagedPrefixList)

-- | The maximum number of entries for the prefix list.
managedPrefixList_maxEntries :: Lens.Lens' ManagedPrefixList (Prelude.Maybe Prelude.Int)
managedPrefixList_maxEntries = Lens.lens (\ManagedPrefixList' {maxEntries} -> maxEntries) (\s@ManagedPrefixList' {} a -> s {maxEntries = a} :: ManagedPrefixList)

-- | The Amazon Resource Name (ARN) for the prefix list.
managedPrefixList_prefixListArn :: Lens.Lens' ManagedPrefixList (Prelude.Maybe Prelude.Text)
managedPrefixList_prefixListArn = Lens.lens (\ManagedPrefixList' {prefixListArn} -> prefixListArn) (\s@ManagedPrefixList' {} a -> s {prefixListArn = a} :: ManagedPrefixList)

-- | The state message.
managedPrefixList_stateMessage :: Lens.Lens' ManagedPrefixList (Prelude.Maybe Prelude.Text)
managedPrefixList_stateMessage = Lens.lens (\ManagedPrefixList' {stateMessage} -> stateMessage) (\s@ManagedPrefixList' {} a -> s {stateMessage = a} :: ManagedPrefixList)

-- | The name of the prefix list.
managedPrefixList_prefixListName :: Lens.Lens' ManagedPrefixList (Prelude.Maybe Prelude.Text)
managedPrefixList_prefixListName = Lens.lens (\ManagedPrefixList' {prefixListName} -> prefixListName) (\s@ManagedPrefixList' {} a -> s {prefixListName = a} :: ManagedPrefixList)

-- | The version of the prefix list.
managedPrefixList_version :: Lens.Lens' ManagedPrefixList (Prelude.Maybe Prelude.Integer)
managedPrefixList_version = Lens.lens (\ManagedPrefixList' {version} -> version) (\s@ManagedPrefixList' {} a -> s {version = a} :: ManagedPrefixList)

instance Core.FromXML ManagedPrefixList where
  parseXML x =
    ManagedPrefixList'
      Prelude.<$> ( x Core..@? "tagSet" Core..!@ Prelude.mempty
                      Prelude.>>= Core.may (Core.parseXMLList "item")
                  )
      Prelude.<*> (x Core..@? "addressFamily")
      Prelude.<*> (x Core..@? "ownerId")
      Prelude.<*> (x Core..@? "prefixListId")
      Prelude.<*> (x Core..@? "state")
      Prelude.<*> (x Core..@? "maxEntries")
      Prelude.<*> (x Core..@? "prefixListArn")
      Prelude.<*> (x Core..@? "stateMessage")
      Prelude.<*> (x Core..@? "prefixListName")
      Prelude.<*> (x Core..@? "version")

instance Prelude.Hashable ManagedPrefixList where
  hashWithSalt _salt ManagedPrefixList' {..} =
    _salt `Prelude.hashWithSalt` tags
      `Prelude.hashWithSalt` addressFamily
      `Prelude.hashWithSalt` ownerId
      `Prelude.hashWithSalt` prefixListId
      `Prelude.hashWithSalt` state
      `Prelude.hashWithSalt` maxEntries
      `Prelude.hashWithSalt` prefixListArn
      `Prelude.hashWithSalt` stateMessage
      `Prelude.hashWithSalt` prefixListName
      `Prelude.hashWithSalt` version

instance Prelude.NFData ManagedPrefixList where
  rnf ManagedPrefixList' {..} =
    Prelude.rnf tags
      `Prelude.seq` Prelude.rnf addressFamily
      `Prelude.seq` Prelude.rnf ownerId
      `Prelude.seq` Prelude.rnf prefixListId
      `Prelude.seq` Prelude.rnf state
      `Prelude.seq` Prelude.rnf maxEntries
      `Prelude.seq` Prelude.rnf prefixListArn
      `Prelude.seq` Prelude.rnf stateMessage
      `Prelude.seq` Prelude.rnf prefixListName
      `Prelude.seq` Prelude.rnf version
