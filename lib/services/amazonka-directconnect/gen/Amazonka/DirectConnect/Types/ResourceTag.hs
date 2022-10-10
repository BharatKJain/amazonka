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
-- Module      : Amazonka.DirectConnect.Types.ResourceTag
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.DirectConnect.Types.ResourceTag where

import qualified Amazonka.Core as Core
import Amazonka.DirectConnect.Types.Tag
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | Information about a tag associated with an Direct Connect resource.
--
-- /See:/ 'newResourceTag' smart constructor.
data ResourceTag = ResourceTag'
  { -- | The tags.
    tags :: Prelude.Maybe (Prelude.NonEmpty Tag),
    -- | The Amazon Resource Name (ARN) of the resource.
    resourceArn :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ResourceTag' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'tags', 'resourceTag_tags' - The tags.
--
-- 'resourceArn', 'resourceTag_resourceArn' - The Amazon Resource Name (ARN) of the resource.
newResourceTag ::
  ResourceTag
newResourceTag =
  ResourceTag'
    { tags = Prelude.Nothing,
      resourceArn = Prelude.Nothing
    }

-- | The tags.
resourceTag_tags :: Lens.Lens' ResourceTag (Prelude.Maybe (Prelude.NonEmpty Tag))
resourceTag_tags = Lens.lens (\ResourceTag' {tags} -> tags) (\s@ResourceTag' {} a -> s {tags = a} :: ResourceTag) Prelude.. Lens.mapping Lens.coerced

-- | The Amazon Resource Name (ARN) of the resource.
resourceTag_resourceArn :: Lens.Lens' ResourceTag (Prelude.Maybe Prelude.Text)
resourceTag_resourceArn = Lens.lens (\ResourceTag' {resourceArn} -> resourceArn) (\s@ResourceTag' {} a -> s {resourceArn = a} :: ResourceTag)

instance Core.FromJSON ResourceTag where
  parseJSON =
    Core.withObject
      "ResourceTag"
      ( \x ->
          ResourceTag'
            Prelude.<$> (x Core..:? "tags")
            Prelude.<*> (x Core..:? "resourceArn")
      )

instance Prelude.Hashable ResourceTag where
  hashWithSalt _salt ResourceTag' {..} =
    _salt `Prelude.hashWithSalt` tags
      `Prelude.hashWithSalt` resourceArn

instance Prelude.NFData ResourceTag where
  rnf ResourceTag' {..} =
    Prelude.rnf tags
      `Prelude.seq` Prelude.rnf resourceArn
