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
-- Module      : Amazonka.AppMesh.Types.JsonFormatRef
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.AppMesh.Types.JsonFormatRef where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | An object that represents the key value pairs for the JSON.
--
-- /See:/ 'newJsonFormatRef' smart constructor.
data JsonFormatRef = JsonFormatRef'
  { -- | The specified key for the JSON.
    key :: Prelude.Text,
    -- | The specified value for the JSON.
    value :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'JsonFormatRef' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'key', 'jsonFormatRef_key' - The specified key for the JSON.
--
-- 'value', 'jsonFormatRef_value' - The specified value for the JSON.
newJsonFormatRef ::
  -- | 'key'
  Prelude.Text ->
  -- | 'value'
  Prelude.Text ->
  JsonFormatRef
newJsonFormatRef pKey_ pValue_ =
  JsonFormatRef' {key = pKey_, value = pValue_}

-- | The specified key for the JSON.
jsonFormatRef_key :: Lens.Lens' JsonFormatRef Prelude.Text
jsonFormatRef_key = Lens.lens (\JsonFormatRef' {key} -> key) (\s@JsonFormatRef' {} a -> s {key = a} :: JsonFormatRef)

-- | The specified value for the JSON.
jsonFormatRef_value :: Lens.Lens' JsonFormatRef Prelude.Text
jsonFormatRef_value = Lens.lens (\JsonFormatRef' {value} -> value) (\s@JsonFormatRef' {} a -> s {value = a} :: JsonFormatRef)

instance Core.FromJSON JsonFormatRef where
  parseJSON =
    Core.withObject
      "JsonFormatRef"
      ( \x ->
          JsonFormatRef'
            Prelude.<$> (x Core..: "key") Prelude.<*> (x Core..: "value")
      )

instance Prelude.Hashable JsonFormatRef where
  hashWithSalt _salt JsonFormatRef' {..} =
    _salt `Prelude.hashWithSalt` key
      `Prelude.hashWithSalt` value

instance Prelude.NFData JsonFormatRef where
  rnf JsonFormatRef' {..} =
    Prelude.rnf key `Prelude.seq` Prelude.rnf value

instance Core.ToJSON JsonFormatRef where
  toJSON JsonFormatRef' {..} =
    Core.object
      ( Prelude.catMaybes
          [ Prelude.Just ("key" Core..= key),
            Prelude.Just ("value" Core..= value)
          ]
      )
