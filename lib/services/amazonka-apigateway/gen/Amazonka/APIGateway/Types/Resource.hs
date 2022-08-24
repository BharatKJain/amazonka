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
-- Module      : Amazonka.APIGateway.Types.Resource
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.APIGateway.Types.Resource where

import Amazonka.APIGateway.Types.Method
import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | Represents an API resource.
--
-- /See:/ 'newResource' smart constructor.
data Resource = Resource'
  { -- | The last path segment for this resource.
    pathPart :: Prelude.Maybe Prelude.Text,
    -- | The full path for this resource.
    path :: Prelude.Maybe Prelude.Text,
    -- | The parent resource\'s identifier.
    parentId :: Prelude.Maybe Prelude.Text,
    -- | The resource\'s identifier.
    id :: Prelude.Maybe Prelude.Text,
    -- | Gets an API resource\'s method of a given HTTP verb.
    resourceMethods :: Prelude.Maybe (Prelude.HashMap Prelude.Text Method)
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'Resource' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'pathPart', 'resource_pathPart' - The last path segment for this resource.
--
-- 'path', 'resource_path' - The full path for this resource.
--
-- 'parentId', 'resource_parentId' - The parent resource\'s identifier.
--
-- 'id', 'resource_id' - The resource\'s identifier.
--
-- 'resourceMethods', 'resource_resourceMethods' - Gets an API resource\'s method of a given HTTP verb.
newResource ::
  Resource
newResource =
  Resource'
    { pathPart = Prelude.Nothing,
      path = Prelude.Nothing,
      parentId = Prelude.Nothing,
      id = Prelude.Nothing,
      resourceMethods = Prelude.Nothing
    }

-- | The last path segment for this resource.
resource_pathPart :: Lens.Lens' Resource (Prelude.Maybe Prelude.Text)
resource_pathPart = Lens.lens (\Resource' {pathPart} -> pathPart) (\s@Resource' {} a -> s {pathPart = a} :: Resource)

-- | The full path for this resource.
resource_path :: Lens.Lens' Resource (Prelude.Maybe Prelude.Text)
resource_path = Lens.lens (\Resource' {path} -> path) (\s@Resource' {} a -> s {path = a} :: Resource)

-- | The parent resource\'s identifier.
resource_parentId :: Lens.Lens' Resource (Prelude.Maybe Prelude.Text)
resource_parentId = Lens.lens (\Resource' {parentId} -> parentId) (\s@Resource' {} a -> s {parentId = a} :: Resource)

-- | The resource\'s identifier.
resource_id :: Lens.Lens' Resource (Prelude.Maybe Prelude.Text)
resource_id = Lens.lens (\Resource' {id} -> id) (\s@Resource' {} a -> s {id = a} :: Resource)

-- | Gets an API resource\'s method of a given HTTP verb.
resource_resourceMethods :: Lens.Lens' Resource (Prelude.Maybe (Prelude.HashMap Prelude.Text Method))
resource_resourceMethods = Lens.lens (\Resource' {resourceMethods} -> resourceMethods) (\s@Resource' {} a -> s {resourceMethods = a} :: Resource) Prelude.. Lens.mapping Lens.coerced

instance Core.FromJSON Resource where
  parseJSON =
    Core.withObject
      "Resource"
      ( \x ->
          Resource'
            Prelude.<$> (x Core..:? "pathPart")
            Prelude.<*> (x Core..:? "path")
            Prelude.<*> (x Core..:? "parentId")
            Prelude.<*> (x Core..:? "id")
            Prelude.<*> ( x Core..:? "resourceMethods"
                            Core..!= Prelude.mempty
                        )
      )

instance Prelude.Hashable Resource where
  hashWithSalt _salt Resource' {..} =
    _salt `Prelude.hashWithSalt` pathPart
      `Prelude.hashWithSalt` path
      `Prelude.hashWithSalt` parentId
      `Prelude.hashWithSalt` id
      `Prelude.hashWithSalt` resourceMethods

instance Prelude.NFData Resource where
  rnf Resource' {..} =
    Prelude.rnf pathPart
      `Prelude.seq` Prelude.rnf path
      `Prelude.seq` Prelude.rnf parentId
      `Prelude.seq` Prelude.rnf id
      `Prelude.seq` Prelude.rnf resourceMethods
