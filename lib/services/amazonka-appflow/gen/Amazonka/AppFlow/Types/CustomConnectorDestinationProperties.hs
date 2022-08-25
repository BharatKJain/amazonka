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
-- Module      : Amazonka.AppFlow.Types.CustomConnectorDestinationProperties
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.AppFlow.Types.CustomConnectorDestinationProperties where

import Amazonka.AppFlow.Types.ErrorHandlingConfig
import Amazonka.AppFlow.Types.WriteOperationType
import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | The properties that are applied when the custom connector is being used
-- as a destination.
--
-- /See:/ 'newCustomConnectorDestinationProperties' smart constructor.
data CustomConnectorDestinationProperties = CustomConnectorDestinationProperties'
  { -- | The settings that determine how Amazon AppFlow handles an error when
    -- placing data in the custom connector as destination.
    errorHandlingConfig :: Prelude.Maybe ErrorHandlingConfig,
    -- | The custom properties that are specific to the connector when it\'s used
    -- as a destination in the flow.
    customProperties :: Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text),
    -- | The name of the field that Amazon AppFlow uses as an ID when performing
    -- a write operation such as update, delete, or upsert.
    idFieldNames :: Prelude.Maybe [Prelude.Text],
    -- | Specifies the type of write operation to be performed in the custom
    -- connector when it\'s used as destination.
    writeOperationType :: Prelude.Maybe WriteOperationType,
    -- | The entity specified in the custom connector as a destination in the
    -- flow.
    entityName :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CustomConnectorDestinationProperties' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'errorHandlingConfig', 'customConnectorDestinationProperties_errorHandlingConfig' - The settings that determine how Amazon AppFlow handles an error when
-- placing data in the custom connector as destination.
--
-- 'customProperties', 'customConnectorDestinationProperties_customProperties' - The custom properties that are specific to the connector when it\'s used
-- as a destination in the flow.
--
-- 'idFieldNames', 'customConnectorDestinationProperties_idFieldNames' - The name of the field that Amazon AppFlow uses as an ID when performing
-- a write operation such as update, delete, or upsert.
--
-- 'writeOperationType', 'customConnectorDestinationProperties_writeOperationType' - Specifies the type of write operation to be performed in the custom
-- connector when it\'s used as destination.
--
-- 'entityName', 'customConnectorDestinationProperties_entityName' - The entity specified in the custom connector as a destination in the
-- flow.
newCustomConnectorDestinationProperties ::
  -- | 'entityName'
  Prelude.Text ->
  CustomConnectorDestinationProperties
newCustomConnectorDestinationProperties pEntityName_ =
  CustomConnectorDestinationProperties'
    { errorHandlingConfig =
        Prelude.Nothing,
      customProperties = Prelude.Nothing,
      idFieldNames = Prelude.Nothing,
      writeOperationType = Prelude.Nothing,
      entityName = pEntityName_
    }

-- | The settings that determine how Amazon AppFlow handles an error when
-- placing data in the custom connector as destination.
customConnectorDestinationProperties_errorHandlingConfig :: Lens.Lens' CustomConnectorDestinationProperties (Prelude.Maybe ErrorHandlingConfig)
customConnectorDestinationProperties_errorHandlingConfig = Lens.lens (\CustomConnectorDestinationProperties' {errorHandlingConfig} -> errorHandlingConfig) (\s@CustomConnectorDestinationProperties' {} a -> s {errorHandlingConfig = a} :: CustomConnectorDestinationProperties)

-- | The custom properties that are specific to the connector when it\'s used
-- as a destination in the flow.
customConnectorDestinationProperties_customProperties :: Lens.Lens' CustomConnectorDestinationProperties (Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text))
customConnectorDestinationProperties_customProperties = Lens.lens (\CustomConnectorDestinationProperties' {customProperties} -> customProperties) (\s@CustomConnectorDestinationProperties' {} a -> s {customProperties = a} :: CustomConnectorDestinationProperties) Prelude.. Lens.mapping Lens.coerced

-- | The name of the field that Amazon AppFlow uses as an ID when performing
-- a write operation such as update, delete, or upsert.
customConnectorDestinationProperties_idFieldNames :: Lens.Lens' CustomConnectorDestinationProperties (Prelude.Maybe [Prelude.Text])
customConnectorDestinationProperties_idFieldNames = Lens.lens (\CustomConnectorDestinationProperties' {idFieldNames} -> idFieldNames) (\s@CustomConnectorDestinationProperties' {} a -> s {idFieldNames = a} :: CustomConnectorDestinationProperties) Prelude.. Lens.mapping Lens.coerced

-- | Specifies the type of write operation to be performed in the custom
-- connector when it\'s used as destination.
customConnectorDestinationProperties_writeOperationType :: Lens.Lens' CustomConnectorDestinationProperties (Prelude.Maybe WriteOperationType)
customConnectorDestinationProperties_writeOperationType = Lens.lens (\CustomConnectorDestinationProperties' {writeOperationType} -> writeOperationType) (\s@CustomConnectorDestinationProperties' {} a -> s {writeOperationType = a} :: CustomConnectorDestinationProperties)

-- | The entity specified in the custom connector as a destination in the
-- flow.
customConnectorDestinationProperties_entityName :: Lens.Lens' CustomConnectorDestinationProperties Prelude.Text
customConnectorDestinationProperties_entityName = Lens.lens (\CustomConnectorDestinationProperties' {entityName} -> entityName) (\s@CustomConnectorDestinationProperties' {} a -> s {entityName = a} :: CustomConnectorDestinationProperties)

instance
  Core.FromJSON
    CustomConnectorDestinationProperties
  where
  parseJSON =
    Core.withObject
      "CustomConnectorDestinationProperties"
      ( \x ->
          CustomConnectorDestinationProperties'
            Prelude.<$> (x Core..:? "errorHandlingConfig")
            Prelude.<*> ( x Core..:? "customProperties"
                            Core..!= Prelude.mempty
                        )
            Prelude.<*> (x Core..:? "idFieldNames" Core..!= Prelude.mempty)
            Prelude.<*> (x Core..:? "writeOperationType")
            Prelude.<*> (x Core..: "entityName")
      )

instance
  Prelude.Hashable
    CustomConnectorDestinationProperties
  where
  hashWithSalt
    _salt
    CustomConnectorDestinationProperties' {..} =
      _salt `Prelude.hashWithSalt` errorHandlingConfig
        `Prelude.hashWithSalt` customProperties
        `Prelude.hashWithSalt` idFieldNames
        `Prelude.hashWithSalt` writeOperationType
        `Prelude.hashWithSalt` entityName

instance
  Prelude.NFData
    CustomConnectorDestinationProperties
  where
  rnf CustomConnectorDestinationProperties' {..} =
    Prelude.rnf errorHandlingConfig
      `Prelude.seq` Prelude.rnf customProperties
      `Prelude.seq` Prelude.rnf idFieldNames
      `Prelude.seq` Prelude.rnf writeOperationType
      `Prelude.seq` Prelude.rnf entityName

instance
  Core.ToJSON
    CustomConnectorDestinationProperties
  where
  toJSON CustomConnectorDestinationProperties' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("errorHandlingConfig" Core..=)
              Prelude.<$> errorHandlingConfig,
            ("customProperties" Core..=)
              Prelude.<$> customProperties,
            ("idFieldNames" Core..=) Prelude.<$> idFieldNames,
            ("writeOperationType" Core..=)
              Prelude.<$> writeOperationType,
            Prelude.Just ("entityName" Core..= entityName)
          ]
      )
