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
-- Module      : Amazonka.Inspector2.Types.Resource
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.Inspector2.Types.Resource where

import qualified Amazonka.Core as Core
import Amazonka.Inspector2.Types.ResourceDetails
import Amazonka.Inspector2.Types.ResourceType
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | Details about the resource involved in a finding.
--
-- /See:/ 'newResource' smart constructor.
data Resource = Resource'
  { -- | The tags attached to the resource.
    tags :: Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text),
    -- | An object that contains details about the resource involved in a
    -- finding.
    details :: Prelude.Maybe ResourceDetails,
    -- | The partition of the resource.
    partition :: Prelude.Maybe Prelude.Text,
    -- | The Amazon Web Services Region the impacted resource is located in.
    region :: Prelude.Maybe Prelude.Text,
    -- | The ID of the resource.
    id :: Prelude.Text,
    -- | The type of resource.
    type' :: ResourceType
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
-- 'tags', 'resource_tags' - The tags attached to the resource.
--
-- 'details', 'resource_details' - An object that contains details about the resource involved in a
-- finding.
--
-- 'partition', 'resource_partition' - The partition of the resource.
--
-- 'region', 'resource_region' - The Amazon Web Services Region the impacted resource is located in.
--
-- 'id', 'resource_id' - The ID of the resource.
--
-- 'type'', 'resource_type' - The type of resource.
newResource ::
  -- | 'id'
  Prelude.Text ->
  -- | 'type''
  ResourceType ->
  Resource
newResource pId_ pType_ =
  Resource'
    { tags = Prelude.Nothing,
      details = Prelude.Nothing,
      partition = Prelude.Nothing,
      region = Prelude.Nothing,
      id = pId_,
      type' = pType_
    }

-- | The tags attached to the resource.
resource_tags :: Lens.Lens' Resource (Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text))
resource_tags = Lens.lens (\Resource' {tags} -> tags) (\s@Resource' {} a -> s {tags = a} :: Resource) Prelude.. Lens.mapping Lens.coerced

-- | An object that contains details about the resource involved in a
-- finding.
resource_details :: Lens.Lens' Resource (Prelude.Maybe ResourceDetails)
resource_details = Lens.lens (\Resource' {details} -> details) (\s@Resource' {} a -> s {details = a} :: Resource)

-- | The partition of the resource.
resource_partition :: Lens.Lens' Resource (Prelude.Maybe Prelude.Text)
resource_partition = Lens.lens (\Resource' {partition} -> partition) (\s@Resource' {} a -> s {partition = a} :: Resource)

-- | The Amazon Web Services Region the impacted resource is located in.
resource_region :: Lens.Lens' Resource (Prelude.Maybe Prelude.Text)
resource_region = Lens.lens (\Resource' {region} -> region) (\s@Resource' {} a -> s {region = a} :: Resource)

-- | The ID of the resource.
resource_id :: Lens.Lens' Resource Prelude.Text
resource_id = Lens.lens (\Resource' {id} -> id) (\s@Resource' {} a -> s {id = a} :: Resource)

-- | The type of resource.
resource_type :: Lens.Lens' Resource ResourceType
resource_type = Lens.lens (\Resource' {type'} -> type') (\s@Resource' {} a -> s {type' = a} :: Resource)

instance Core.FromJSON Resource where
  parseJSON =
    Core.withObject
      "Resource"
      ( \x ->
          Resource'
            Prelude.<$> (x Core..:? "tags" Core..!= Prelude.mempty)
            Prelude.<*> (x Core..:? "details")
            Prelude.<*> (x Core..:? "partition")
            Prelude.<*> (x Core..:? "region")
            Prelude.<*> (x Core..: "id")
            Prelude.<*> (x Core..: "type")
      )

instance Prelude.Hashable Resource where
  hashWithSalt _salt Resource' {..} =
    _salt `Prelude.hashWithSalt` tags
      `Prelude.hashWithSalt` details
      `Prelude.hashWithSalt` partition
      `Prelude.hashWithSalt` region
      `Prelude.hashWithSalt` id
      `Prelude.hashWithSalt` type'

instance Prelude.NFData Resource where
  rnf Resource' {..} =
    Prelude.rnf tags
      `Prelude.seq` Prelude.rnf details
      `Prelude.seq` Prelude.rnf partition
      `Prelude.seq` Prelude.rnf region
      `Prelude.seq` Prelude.rnf id
      `Prelude.seq` Prelude.rnf type'
