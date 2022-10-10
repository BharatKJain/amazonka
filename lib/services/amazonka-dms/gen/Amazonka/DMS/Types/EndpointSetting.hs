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
-- Module      : Amazonka.DMS.Types.EndpointSetting
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.DMS.Types.EndpointSetting where

import qualified Amazonka.Core as Core
import Amazonka.DMS.Types.EndpointSettingTypeValue
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | Endpoint settings.
--
-- /See:/ 'newEndpointSetting' smart constructor.
data EndpointSetting = EndpointSetting'
  { -- | The maximum value of an endpoint setting that is of type @int@.
    intValueMax :: Prelude.Maybe Prelude.Int,
    -- | The name that you want to give the endpoint settings.
    name :: Prelude.Maybe Prelude.Text,
    -- | The type of endpoint. Valid values are @source@ and @target@.
    type' :: Prelude.Maybe EndpointSettingTypeValue,
    -- | The default value of the endpoint setting if no value is specified using
    -- @CreateEndpoint@ or @ModifyEndpoint@.
    defaultValue :: Prelude.Maybe Prelude.Text,
    -- | The unit of measure for this endpoint setting.
    units :: Prelude.Maybe Prelude.Text,
    -- | The relevance or validity of an endpoint setting for an engine name and
    -- its endpoint type.
    applicability :: Prelude.Maybe Prelude.Text,
    -- | A value that marks this endpoint setting as sensitive.
    sensitive :: Prelude.Maybe Prelude.Bool,
    -- | The minimum value of an endpoint setting that is of type @int@.
    intValueMin :: Prelude.Maybe Prelude.Int,
    -- | Enumerated values to use for this endpoint.
    enumValues :: Prelude.Maybe [Prelude.Text]
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'EndpointSetting' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'intValueMax', 'endpointSetting_intValueMax' - The maximum value of an endpoint setting that is of type @int@.
--
-- 'name', 'endpointSetting_name' - The name that you want to give the endpoint settings.
--
-- 'type'', 'endpointSetting_type' - The type of endpoint. Valid values are @source@ and @target@.
--
-- 'defaultValue', 'endpointSetting_defaultValue' - The default value of the endpoint setting if no value is specified using
-- @CreateEndpoint@ or @ModifyEndpoint@.
--
-- 'units', 'endpointSetting_units' - The unit of measure for this endpoint setting.
--
-- 'applicability', 'endpointSetting_applicability' - The relevance or validity of an endpoint setting for an engine name and
-- its endpoint type.
--
-- 'sensitive', 'endpointSetting_sensitive' - A value that marks this endpoint setting as sensitive.
--
-- 'intValueMin', 'endpointSetting_intValueMin' - The minimum value of an endpoint setting that is of type @int@.
--
-- 'enumValues', 'endpointSetting_enumValues' - Enumerated values to use for this endpoint.
newEndpointSetting ::
  EndpointSetting
newEndpointSetting =
  EndpointSetting'
    { intValueMax = Prelude.Nothing,
      name = Prelude.Nothing,
      type' = Prelude.Nothing,
      defaultValue = Prelude.Nothing,
      units = Prelude.Nothing,
      applicability = Prelude.Nothing,
      sensitive = Prelude.Nothing,
      intValueMin = Prelude.Nothing,
      enumValues = Prelude.Nothing
    }

-- | The maximum value of an endpoint setting that is of type @int@.
endpointSetting_intValueMax :: Lens.Lens' EndpointSetting (Prelude.Maybe Prelude.Int)
endpointSetting_intValueMax = Lens.lens (\EndpointSetting' {intValueMax} -> intValueMax) (\s@EndpointSetting' {} a -> s {intValueMax = a} :: EndpointSetting)

-- | The name that you want to give the endpoint settings.
endpointSetting_name :: Lens.Lens' EndpointSetting (Prelude.Maybe Prelude.Text)
endpointSetting_name = Lens.lens (\EndpointSetting' {name} -> name) (\s@EndpointSetting' {} a -> s {name = a} :: EndpointSetting)

-- | The type of endpoint. Valid values are @source@ and @target@.
endpointSetting_type :: Lens.Lens' EndpointSetting (Prelude.Maybe EndpointSettingTypeValue)
endpointSetting_type = Lens.lens (\EndpointSetting' {type'} -> type') (\s@EndpointSetting' {} a -> s {type' = a} :: EndpointSetting)

-- | The default value of the endpoint setting if no value is specified using
-- @CreateEndpoint@ or @ModifyEndpoint@.
endpointSetting_defaultValue :: Lens.Lens' EndpointSetting (Prelude.Maybe Prelude.Text)
endpointSetting_defaultValue = Lens.lens (\EndpointSetting' {defaultValue} -> defaultValue) (\s@EndpointSetting' {} a -> s {defaultValue = a} :: EndpointSetting)

-- | The unit of measure for this endpoint setting.
endpointSetting_units :: Lens.Lens' EndpointSetting (Prelude.Maybe Prelude.Text)
endpointSetting_units = Lens.lens (\EndpointSetting' {units} -> units) (\s@EndpointSetting' {} a -> s {units = a} :: EndpointSetting)

-- | The relevance or validity of an endpoint setting for an engine name and
-- its endpoint type.
endpointSetting_applicability :: Lens.Lens' EndpointSetting (Prelude.Maybe Prelude.Text)
endpointSetting_applicability = Lens.lens (\EndpointSetting' {applicability} -> applicability) (\s@EndpointSetting' {} a -> s {applicability = a} :: EndpointSetting)

-- | A value that marks this endpoint setting as sensitive.
endpointSetting_sensitive :: Lens.Lens' EndpointSetting (Prelude.Maybe Prelude.Bool)
endpointSetting_sensitive = Lens.lens (\EndpointSetting' {sensitive} -> sensitive) (\s@EndpointSetting' {} a -> s {sensitive = a} :: EndpointSetting)

-- | The minimum value of an endpoint setting that is of type @int@.
endpointSetting_intValueMin :: Lens.Lens' EndpointSetting (Prelude.Maybe Prelude.Int)
endpointSetting_intValueMin = Lens.lens (\EndpointSetting' {intValueMin} -> intValueMin) (\s@EndpointSetting' {} a -> s {intValueMin = a} :: EndpointSetting)

-- | Enumerated values to use for this endpoint.
endpointSetting_enumValues :: Lens.Lens' EndpointSetting (Prelude.Maybe [Prelude.Text])
endpointSetting_enumValues = Lens.lens (\EndpointSetting' {enumValues} -> enumValues) (\s@EndpointSetting' {} a -> s {enumValues = a} :: EndpointSetting) Prelude.. Lens.mapping Lens.coerced

instance Core.FromJSON EndpointSetting where
  parseJSON =
    Core.withObject
      "EndpointSetting"
      ( \x ->
          EndpointSetting'
            Prelude.<$> (x Core..:? "IntValueMax")
            Prelude.<*> (x Core..:? "Name")
            Prelude.<*> (x Core..:? "Type")
            Prelude.<*> (x Core..:? "DefaultValue")
            Prelude.<*> (x Core..:? "Units")
            Prelude.<*> (x Core..:? "Applicability")
            Prelude.<*> (x Core..:? "Sensitive")
            Prelude.<*> (x Core..:? "IntValueMin")
            Prelude.<*> (x Core..:? "EnumValues" Core..!= Prelude.mempty)
      )

instance Prelude.Hashable EndpointSetting where
  hashWithSalt _salt EndpointSetting' {..} =
    _salt `Prelude.hashWithSalt` intValueMax
      `Prelude.hashWithSalt` name
      `Prelude.hashWithSalt` type'
      `Prelude.hashWithSalt` defaultValue
      `Prelude.hashWithSalt` units
      `Prelude.hashWithSalt` applicability
      `Prelude.hashWithSalt` sensitive
      `Prelude.hashWithSalt` intValueMin
      `Prelude.hashWithSalt` enumValues

instance Prelude.NFData EndpointSetting where
  rnf EndpointSetting' {..} =
    Prelude.rnf intValueMax
      `Prelude.seq` Prelude.rnf name
      `Prelude.seq` Prelude.rnf type'
      `Prelude.seq` Prelude.rnf defaultValue
      `Prelude.seq` Prelude.rnf units
      `Prelude.seq` Prelude.rnf applicability
      `Prelude.seq` Prelude.rnf sensitive
      `Prelude.seq` Prelude.rnf intValueMin
      `Prelude.seq` Prelude.rnf enumValues
