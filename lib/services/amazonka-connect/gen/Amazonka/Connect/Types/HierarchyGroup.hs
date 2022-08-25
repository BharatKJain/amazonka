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
-- Module      : Amazonka.Connect.Types.HierarchyGroup
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.Connect.Types.HierarchyGroup where

import Amazonka.Connect.Types.HierarchyPath
import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | Contains information about a hierarchy group.
--
-- /See:/ 'newHierarchyGroup' smart constructor.
data HierarchyGroup = HierarchyGroup'
  { -- | The tags used to organize, track, or control access for this resource.
    -- For example, { \"tags\": {\"key1\":\"value1\", \"key2\":\"value2\"} }.
    tags :: Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text),
    -- | The name of the hierarchy group.
    name :: Prelude.Maybe Prelude.Text,
    -- | The Amazon Resource Name (ARN) of the hierarchy group.
    arn :: Prelude.Maybe Prelude.Text,
    -- | Information about the levels in the hierarchy group.
    hierarchyPath :: Prelude.Maybe HierarchyPath,
    -- | The identifier of the hierarchy group.
    id :: Prelude.Maybe Prelude.Text,
    -- | The identifier of the level in the hierarchy group.
    levelId :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'HierarchyGroup' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'tags', 'hierarchyGroup_tags' - The tags used to organize, track, or control access for this resource.
-- For example, { \"tags\": {\"key1\":\"value1\", \"key2\":\"value2\"} }.
--
-- 'name', 'hierarchyGroup_name' - The name of the hierarchy group.
--
-- 'arn', 'hierarchyGroup_arn' - The Amazon Resource Name (ARN) of the hierarchy group.
--
-- 'hierarchyPath', 'hierarchyGroup_hierarchyPath' - Information about the levels in the hierarchy group.
--
-- 'id', 'hierarchyGroup_id' - The identifier of the hierarchy group.
--
-- 'levelId', 'hierarchyGroup_levelId' - The identifier of the level in the hierarchy group.
newHierarchyGroup ::
  HierarchyGroup
newHierarchyGroup =
  HierarchyGroup'
    { tags = Prelude.Nothing,
      name = Prelude.Nothing,
      arn = Prelude.Nothing,
      hierarchyPath = Prelude.Nothing,
      id = Prelude.Nothing,
      levelId = Prelude.Nothing
    }

-- | The tags used to organize, track, or control access for this resource.
-- For example, { \"tags\": {\"key1\":\"value1\", \"key2\":\"value2\"} }.
hierarchyGroup_tags :: Lens.Lens' HierarchyGroup (Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text))
hierarchyGroup_tags = Lens.lens (\HierarchyGroup' {tags} -> tags) (\s@HierarchyGroup' {} a -> s {tags = a} :: HierarchyGroup) Prelude.. Lens.mapping Lens.coerced

-- | The name of the hierarchy group.
hierarchyGroup_name :: Lens.Lens' HierarchyGroup (Prelude.Maybe Prelude.Text)
hierarchyGroup_name = Lens.lens (\HierarchyGroup' {name} -> name) (\s@HierarchyGroup' {} a -> s {name = a} :: HierarchyGroup)

-- | The Amazon Resource Name (ARN) of the hierarchy group.
hierarchyGroup_arn :: Lens.Lens' HierarchyGroup (Prelude.Maybe Prelude.Text)
hierarchyGroup_arn = Lens.lens (\HierarchyGroup' {arn} -> arn) (\s@HierarchyGroup' {} a -> s {arn = a} :: HierarchyGroup)

-- | Information about the levels in the hierarchy group.
hierarchyGroup_hierarchyPath :: Lens.Lens' HierarchyGroup (Prelude.Maybe HierarchyPath)
hierarchyGroup_hierarchyPath = Lens.lens (\HierarchyGroup' {hierarchyPath} -> hierarchyPath) (\s@HierarchyGroup' {} a -> s {hierarchyPath = a} :: HierarchyGroup)

-- | The identifier of the hierarchy group.
hierarchyGroup_id :: Lens.Lens' HierarchyGroup (Prelude.Maybe Prelude.Text)
hierarchyGroup_id = Lens.lens (\HierarchyGroup' {id} -> id) (\s@HierarchyGroup' {} a -> s {id = a} :: HierarchyGroup)

-- | The identifier of the level in the hierarchy group.
hierarchyGroup_levelId :: Lens.Lens' HierarchyGroup (Prelude.Maybe Prelude.Text)
hierarchyGroup_levelId = Lens.lens (\HierarchyGroup' {levelId} -> levelId) (\s@HierarchyGroup' {} a -> s {levelId = a} :: HierarchyGroup)

instance Core.FromJSON HierarchyGroup where
  parseJSON =
    Core.withObject
      "HierarchyGroup"
      ( \x ->
          HierarchyGroup'
            Prelude.<$> (x Core..:? "Tags" Core..!= Prelude.mempty)
            Prelude.<*> (x Core..:? "Name")
            Prelude.<*> (x Core..:? "Arn")
            Prelude.<*> (x Core..:? "HierarchyPath")
            Prelude.<*> (x Core..:? "Id")
            Prelude.<*> (x Core..:? "LevelId")
      )

instance Prelude.Hashable HierarchyGroup where
  hashWithSalt _salt HierarchyGroup' {..} =
    _salt `Prelude.hashWithSalt` tags
      `Prelude.hashWithSalt` name
      `Prelude.hashWithSalt` arn
      `Prelude.hashWithSalt` hierarchyPath
      `Prelude.hashWithSalt` id
      `Prelude.hashWithSalt` levelId

instance Prelude.NFData HierarchyGroup where
  rnf HierarchyGroup' {..} =
    Prelude.rnf tags
      `Prelude.seq` Prelude.rnf name
      `Prelude.seq` Prelude.rnf arn
      `Prelude.seq` Prelude.rnf hierarchyPath
      `Prelude.seq` Prelude.rnf id
      `Prelude.seq` Prelude.rnf levelId
