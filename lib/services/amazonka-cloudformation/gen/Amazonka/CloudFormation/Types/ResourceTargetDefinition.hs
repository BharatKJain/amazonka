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
-- Module      : Amazonka.CloudFormation.Types.ResourceTargetDefinition
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.CloudFormation.Types.ResourceTargetDefinition where

import Amazonka.CloudFormation.Types.RequiresRecreation
import Amazonka.CloudFormation.Types.ResourceAttribute
import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | The field that CloudFormation will change, such as the name of a
-- resource\'s property, and whether the resource will be recreated.
--
-- /See:/ 'newResourceTargetDefinition' smart constructor.
data ResourceTargetDefinition = ResourceTargetDefinition'
  { -- | If the @Attribute@ value is @Properties@, the name of the property. For
    -- all other attributes, the value is null.
    name :: Prelude.Maybe Prelude.Text,
    -- | Indicates which resource attribute is triggering this update, such as a
    -- change in the resource attribute\'s @Metadata@, @Properties@, or @Tags@.
    attribute :: Prelude.Maybe ResourceAttribute,
    -- | If the @Attribute@ value is @Properties@, indicates whether a change to
    -- this property causes the resource to be recreated. The value can be
    -- @Never@, @Always@, or @Conditionally@. To determine the conditions for a
    -- @Conditionally@ recreation, see the update behavior for that
    -- <https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-template-resource-type-ref.html property>
    -- in the CloudFormation User Guide.
    requiresRecreation :: Prelude.Maybe RequiresRecreation
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ResourceTargetDefinition' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'name', 'resourceTargetDefinition_name' - If the @Attribute@ value is @Properties@, the name of the property. For
-- all other attributes, the value is null.
--
-- 'attribute', 'resourceTargetDefinition_attribute' - Indicates which resource attribute is triggering this update, such as a
-- change in the resource attribute\'s @Metadata@, @Properties@, or @Tags@.
--
-- 'requiresRecreation', 'resourceTargetDefinition_requiresRecreation' - If the @Attribute@ value is @Properties@, indicates whether a change to
-- this property causes the resource to be recreated. The value can be
-- @Never@, @Always@, or @Conditionally@. To determine the conditions for a
-- @Conditionally@ recreation, see the update behavior for that
-- <https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-template-resource-type-ref.html property>
-- in the CloudFormation User Guide.
newResourceTargetDefinition ::
  ResourceTargetDefinition
newResourceTargetDefinition =
  ResourceTargetDefinition'
    { name = Prelude.Nothing,
      attribute = Prelude.Nothing,
      requiresRecreation = Prelude.Nothing
    }

-- | If the @Attribute@ value is @Properties@, the name of the property. For
-- all other attributes, the value is null.
resourceTargetDefinition_name :: Lens.Lens' ResourceTargetDefinition (Prelude.Maybe Prelude.Text)
resourceTargetDefinition_name = Lens.lens (\ResourceTargetDefinition' {name} -> name) (\s@ResourceTargetDefinition' {} a -> s {name = a} :: ResourceTargetDefinition)

-- | Indicates which resource attribute is triggering this update, such as a
-- change in the resource attribute\'s @Metadata@, @Properties@, or @Tags@.
resourceTargetDefinition_attribute :: Lens.Lens' ResourceTargetDefinition (Prelude.Maybe ResourceAttribute)
resourceTargetDefinition_attribute = Lens.lens (\ResourceTargetDefinition' {attribute} -> attribute) (\s@ResourceTargetDefinition' {} a -> s {attribute = a} :: ResourceTargetDefinition)

-- | If the @Attribute@ value is @Properties@, indicates whether a change to
-- this property causes the resource to be recreated. The value can be
-- @Never@, @Always@, or @Conditionally@. To determine the conditions for a
-- @Conditionally@ recreation, see the update behavior for that
-- <https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-template-resource-type-ref.html property>
-- in the CloudFormation User Guide.
resourceTargetDefinition_requiresRecreation :: Lens.Lens' ResourceTargetDefinition (Prelude.Maybe RequiresRecreation)
resourceTargetDefinition_requiresRecreation = Lens.lens (\ResourceTargetDefinition' {requiresRecreation} -> requiresRecreation) (\s@ResourceTargetDefinition' {} a -> s {requiresRecreation = a} :: ResourceTargetDefinition)

instance Core.FromXML ResourceTargetDefinition where
  parseXML x =
    ResourceTargetDefinition'
      Prelude.<$> (x Core..@? "Name")
      Prelude.<*> (x Core..@? "Attribute")
      Prelude.<*> (x Core..@? "RequiresRecreation")

instance Prelude.Hashable ResourceTargetDefinition where
  hashWithSalt _salt ResourceTargetDefinition' {..} =
    _salt `Prelude.hashWithSalt` name
      `Prelude.hashWithSalt` attribute
      `Prelude.hashWithSalt` requiresRecreation

instance Prelude.NFData ResourceTargetDefinition where
  rnf ResourceTargetDefinition' {..} =
    Prelude.rnf name
      `Prelude.seq` Prelude.rnf attribute
      `Prelude.seq` Prelude.rnf requiresRecreation
