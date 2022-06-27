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
-- Module      : Amazonka.AppFlow.Types.ConnectorEntity
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.AppFlow.Types.ConnectorEntity where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | The high-level entity that can be queried in Amazon AppFlow. For
-- example, a Salesforce entity might be an /Account/ or /Opportunity/,
-- whereas a ServiceNow entity might be an /Incident/.
--
-- /See:/ 'newConnectorEntity' smart constructor.
data ConnectorEntity = ConnectorEntity'
  { -- | The label applied to the connector entity.
    label :: Prelude.Maybe Prelude.Text,
    -- | Specifies whether the connector entity is a parent or a category and has
    -- more entities nested underneath it. If another call is made with
    -- @entitiesPath = \"the_current_entity_name_with_hasNestedEntities_true\"@,
    -- then it returns the nested entities underneath it. This provides a way
    -- to retrieve all supported entities in a recursive fashion.
    hasNestedEntities :: Prelude.Maybe Prelude.Bool,
    -- | The name of the connector entity.
    name :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ConnectorEntity' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'label', 'connectorEntity_label' - The label applied to the connector entity.
--
-- 'hasNestedEntities', 'connectorEntity_hasNestedEntities' - Specifies whether the connector entity is a parent or a category and has
-- more entities nested underneath it. If another call is made with
-- @entitiesPath = \"the_current_entity_name_with_hasNestedEntities_true\"@,
-- then it returns the nested entities underneath it. This provides a way
-- to retrieve all supported entities in a recursive fashion.
--
-- 'name', 'connectorEntity_name' - The name of the connector entity.
newConnectorEntity ::
  -- | 'name'
  Prelude.Text ->
  ConnectorEntity
newConnectorEntity pName_ =
  ConnectorEntity'
    { label = Prelude.Nothing,
      hasNestedEntities = Prelude.Nothing,
      name = pName_
    }

-- | The label applied to the connector entity.
connectorEntity_label :: Lens.Lens' ConnectorEntity (Prelude.Maybe Prelude.Text)
connectorEntity_label = Lens.lens (\ConnectorEntity' {label} -> label) (\s@ConnectorEntity' {} a -> s {label = a} :: ConnectorEntity)

-- | Specifies whether the connector entity is a parent or a category and has
-- more entities nested underneath it. If another call is made with
-- @entitiesPath = \"the_current_entity_name_with_hasNestedEntities_true\"@,
-- then it returns the nested entities underneath it. This provides a way
-- to retrieve all supported entities in a recursive fashion.
connectorEntity_hasNestedEntities :: Lens.Lens' ConnectorEntity (Prelude.Maybe Prelude.Bool)
connectorEntity_hasNestedEntities = Lens.lens (\ConnectorEntity' {hasNestedEntities} -> hasNestedEntities) (\s@ConnectorEntity' {} a -> s {hasNestedEntities = a} :: ConnectorEntity)

-- | The name of the connector entity.
connectorEntity_name :: Lens.Lens' ConnectorEntity Prelude.Text
connectorEntity_name = Lens.lens (\ConnectorEntity' {name} -> name) (\s@ConnectorEntity' {} a -> s {name = a} :: ConnectorEntity)

instance Core.FromJSON ConnectorEntity where
  parseJSON =
    Core.withObject
      "ConnectorEntity"
      ( \x ->
          ConnectorEntity'
            Prelude.<$> (x Core..:? "label")
            Prelude.<*> (x Core..:? "hasNestedEntities")
            Prelude.<*> (x Core..: "name")
      )

instance Prelude.Hashable ConnectorEntity where
  hashWithSalt _salt ConnectorEntity' {..} =
    _salt `Prelude.hashWithSalt` label
      `Prelude.hashWithSalt` hasNestedEntities
      `Prelude.hashWithSalt` name

instance Prelude.NFData ConnectorEntity where
  rnf ConnectorEntity' {..} =
    Prelude.rnf label
      `Prelude.seq` Prelude.rnf hasNestedEntities
      `Prelude.seq` Prelude.rnf name
