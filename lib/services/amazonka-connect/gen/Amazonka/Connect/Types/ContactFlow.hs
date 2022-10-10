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
-- Module      : Amazonka.Connect.Types.ContactFlow
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.Connect.Types.ContactFlow where

import Amazonka.Connect.Types.ContactFlowState
import Amazonka.Connect.Types.ContactFlowType
import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | Contains information about a flow.
--
-- /See:/ 'newContactFlow' smart constructor.
data ContactFlow = ContactFlow'
  { -- | The tags used to organize, track, or control access for this resource.
    -- For example, { \"tags\": {\"key1\":\"value1\", \"key2\":\"value2\"} }.
    tags :: Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text),
    -- | The name of the flow.
    name :: Prelude.Maybe Prelude.Text,
    -- | The type of the flow. For descriptions of the available types, see
    -- <https://docs.aws.amazon.com/connect/latest/adminguide/create-contact-flow.html#contact-flow-types Choose a flow type>
    -- in the /Amazon Connect Administrator Guide/.
    type' :: Prelude.Maybe ContactFlowType,
    -- | The Amazon Resource Name (ARN) of the flow.
    arn :: Prelude.Maybe Prelude.Text,
    -- | The type of flow.
    state :: Prelude.Maybe ContactFlowState,
    -- | The identifier of the flow.
    id :: Prelude.Maybe Prelude.Text,
    -- | The description of the flow.
    description :: Prelude.Maybe Prelude.Text,
    -- | The content of the flow.
    content :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ContactFlow' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'tags', 'contactFlow_tags' - The tags used to organize, track, or control access for this resource.
-- For example, { \"tags\": {\"key1\":\"value1\", \"key2\":\"value2\"} }.
--
-- 'name', 'contactFlow_name' - The name of the flow.
--
-- 'type'', 'contactFlow_type' - The type of the flow. For descriptions of the available types, see
-- <https://docs.aws.amazon.com/connect/latest/adminguide/create-contact-flow.html#contact-flow-types Choose a flow type>
-- in the /Amazon Connect Administrator Guide/.
--
-- 'arn', 'contactFlow_arn' - The Amazon Resource Name (ARN) of the flow.
--
-- 'state', 'contactFlow_state' - The type of flow.
--
-- 'id', 'contactFlow_id' - The identifier of the flow.
--
-- 'description', 'contactFlow_description' - The description of the flow.
--
-- 'content', 'contactFlow_content' - The content of the flow.
newContactFlow ::
  ContactFlow
newContactFlow =
  ContactFlow'
    { tags = Prelude.Nothing,
      name = Prelude.Nothing,
      type' = Prelude.Nothing,
      arn = Prelude.Nothing,
      state = Prelude.Nothing,
      id = Prelude.Nothing,
      description = Prelude.Nothing,
      content = Prelude.Nothing
    }

-- | The tags used to organize, track, or control access for this resource.
-- For example, { \"tags\": {\"key1\":\"value1\", \"key2\":\"value2\"} }.
contactFlow_tags :: Lens.Lens' ContactFlow (Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text))
contactFlow_tags = Lens.lens (\ContactFlow' {tags} -> tags) (\s@ContactFlow' {} a -> s {tags = a} :: ContactFlow) Prelude.. Lens.mapping Lens.coerced

-- | The name of the flow.
contactFlow_name :: Lens.Lens' ContactFlow (Prelude.Maybe Prelude.Text)
contactFlow_name = Lens.lens (\ContactFlow' {name} -> name) (\s@ContactFlow' {} a -> s {name = a} :: ContactFlow)

-- | The type of the flow. For descriptions of the available types, see
-- <https://docs.aws.amazon.com/connect/latest/adminguide/create-contact-flow.html#contact-flow-types Choose a flow type>
-- in the /Amazon Connect Administrator Guide/.
contactFlow_type :: Lens.Lens' ContactFlow (Prelude.Maybe ContactFlowType)
contactFlow_type = Lens.lens (\ContactFlow' {type'} -> type') (\s@ContactFlow' {} a -> s {type' = a} :: ContactFlow)

-- | The Amazon Resource Name (ARN) of the flow.
contactFlow_arn :: Lens.Lens' ContactFlow (Prelude.Maybe Prelude.Text)
contactFlow_arn = Lens.lens (\ContactFlow' {arn} -> arn) (\s@ContactFlow' {} a -> s {arn = a} :: ContactFlow)

-- | The type of flow.
contactFlow_state :: Lens.Lens' ContactFlow (Prelude.Maybe ContactFlowState)
contactFlow_state = Lens.lens (\ContactFlow' {state} -> state) (\s@ContactFlow' {} a -> s {state = a} :: ContactFlow)

-- | The identifier of the flow.
contactFlow_id :: Lens.Lens' ContactFlow (Prelude.Maybe Prelude.Text)
contactFlow_id = Lens.lens (\ContactFlow' {id} -> id) (\s@ContactFlow' {} a -> s {id = a} :: ContactFlow)

-- | The description of the flow.
contactFlow_description :: Lens.Lens' ContactFlow (Prelude.Maybe Prelude.Text)
contactFlow_description = Lens.lens (\ContactFlow' {description} -> description) (\s@ContactFlow' {} a -> s {description = a} :: ContactFlow)

-- | The content of the flow.
contactFlow_content :: Lens.Lens' ContactFlow (Prelude.Maybe Prelude.Text)
contactFlow_content = Lens.lens (\ContactFlow' {content} -> content) (\s@ContactFlow' {} a -> s {content = a} :: ContactFlow)

instance Core.FromJSON ContactFlow where
  parseJSON =
    Core.withObject
      "ContactFlow"
      ( \x ->
          ContactFlow'
            Prelude.<$> (x Core..:? "Tags" Core..!= Prelude.mempty)
            Prelude.<*> (x Core..:? "Name")
            Prelude.<*> (x Core..:? "Type")
            Prelude.<*> (x Core..:? "Arn")
            Prelude.<*> (x Core..:? "State")
            Prelude.<*> (x Core..:? "Id")
            Prelude.<*> (x Core..:? "Description")
            Prelude.<*> (x Core..:? "Content")
      )

instance Prelude.Hashable ContactFlow where
  hashWithSalt _salt ContactFlow' {..} =
    _salt `Prelude.hashWithSalt` tags
      `Prelude.hashWithSalt` name
      `Prelude.hashWithSalt` type'
      `Prelude.hashWithSalt` arn
      `Prelude.hashWithSalt` state
      `Prelude.hashWithSalt` id
      `Prelude.hashWithSalt` description
      `Prelude.hashWithSalt` content

instance Prelude.NFData ContactFlow where
  rnf ContactFlow' {..} =
    Prelude.rnf tags
      `Prelude.seq` Prelude.rnf name
      `Prelude.seq` Prelude.rnf type'
      `Prelude.seq` Prelude.rnf arn
      `Prelude.seq` Prelude.rnf state
      `Prelude.seq` Prelude.rnf id
      `Prelude.seq` Prelude.rnf description
      `Prelude.seq` Prelude.rnf content
