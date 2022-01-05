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
-- Module      : Amazonka.ResourceGroupsTagging.Types.TagFilter
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.ResourceGroupsTagging.Types.TagFilter where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | A list of tags (keys and values) that are used to specify the associated
-- resources.
--
-- /See:/ 'newTagFilter' smart constructor.
data TagFilter = TagFilter'
  { -- | One part of a key-value pair that make up a tag. A value acts as a
    -- descriptor within a tag category (key). The value can be empty or null.
    values :: Prelude.Maybe [Prelude.Text],
    -- | One part of a key-value pair that makes up a tag. A key is a general
    -- label that acts like a category for more specific tag values.
    key :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'TagFilter' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'values', 'tagFilter_values' - One part of a key-value pair that make up a tag. A value acts as a
-- descriptor within a tag category (key). The value can be empty or null.
--
-- 'key', 'tagFilter_key' - One part of a key-value pair that makes up a tag. A key is a general
-- label that acts like a category for more specific tag values.
newTagFilter ::
  TagFilter
newTagFilter =
  TagFilter'
    { values = Prelude.Nothing,
      key = Prelude.Nothing
    }

-- | One part of a key-value pair that make up a tag. A value acts as a
-- descriptor within a tag category (key). The value can be empty or null.
tagFilter_values :: Lens.Lens' TagFilter (Prelude.Maybe [Prelude.Text])
tagFilter_values = Lens.lens (\TagFilter' {values} -> values) (\s@TagFilter' {} a -> s {values = a} :: TagFilter) Prelude.. Lens.mapping Lens.coerced

-- | One part of a key-value pair that makes up a tag. A key is a general
-- label that acts like a category for more specific tag values.
tagFilter_key :: Lens.Lens' TagFilter (Prelude.Maybe Prelude.Text)
tagFilter_key = Lens.lens (\TagFilter' {key} -> key) (\s@TagFilter' {} a -> s {key = a} :: TagFilter)

instance Prelude.Hashable TagFilter where
  hashWithSalt _salt TagFilter' {..} =
    _salt `Prelude.hashWithSalt` values
      `Prelude.hashWithSalt` key

instance Prelude.NFData TagFilter where
  rnf TagFilter' {..} =
    Prelude.rnf values `Prelude.seq` Prelude.rnf key

instance Core.ToJSON TagFilter where
  toJSON TagFilter' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("Values" Core..=) Prelude.<$> values,
            ("Key" Core..=) Prelude.<$> key
          ]
      )
