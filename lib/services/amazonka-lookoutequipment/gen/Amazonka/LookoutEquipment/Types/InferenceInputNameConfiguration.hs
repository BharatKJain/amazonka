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
-- Module      : Amazonka.LookoutEquipment.Types.InferenceInputNameConfiguration
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.LookoutEquipment.Types.InferenceInputNameConfiguration where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | Specifies configuration information for the input data for the
-- inference, including timestamp format and delimiter.
--
-- /See:/ 'newInferenceInputNameConfiguration' smart constructor.
data InferenceInputNameConfiguration = InferenceInputNameConfiguration'
  { -- | Indicates the delimiter character used between items in the data.
    componentTimestampDelimiter :: Prelude.Maybe Prelude.Text,
    -- | The format of the timestamp, whether Epoch time, or standard, with or
    -- without hyphens (-).
    timestampFormat :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'InferenceInputNameConfiguration' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'componentTimestampDelimiter', 'inferenceInputNameConfiguration_componentTimestampDelimiter' - Indicates the delimiter character used between items in the data.
--
-- 'timestampFormat', 'inferenceInputNameConfiguration_timestampFormat' - The format of the timestamp, whether Epoch time, or standard, with or
-- without hyphens (-).
newInferenceInputNameConfiguration ::
  InferenceInputNameConfiguration
newInferenceInputNameConfiguration =
  InferenceInputNameConfiguration'
    { componentTimestampDelimiter =
        Prelude.Nothing,
      timestampFormat = Prelude.Nothing
    }

-- | Indicates the delimiter character used between items in the data.
inferenceInputNameConfiguration_componentTimestampDelimiter :: Lens.Lens' InferenceInputNameConfiguration (Prelude.Maybe Prelude.Text)
inferenceInputNameConfiguration_componentTimestampDelimiter = Lens.lens (\InferenceInputNameConfiguration' {componentTimestampDelimiter} -> componentTimestampDelimiter) (\s@InferenceInputNameConfiguration' {} a -> s {componentTimestampDelimiter = a} :: InferenceInputNameConfiguration)

-- | The format of the timestamp, whether Epoch time, or standard, with or
-- without hyphens (-).
inferenceInputNameConfiguration_timestampFormat :: Lens.Lens' InferenceInputNameConfiguration (Prelude.Maybe Prelude.Text)
inferenceInputNameConfiguration_timestampFormat = Lens.lens (\InferenceInputNameConfiguration' {timestampFormat} -> timestampFormat) (\s@InferenceInputNameConfiguration' {} a -> s {timestampFormat = a} :: InferenceInputNameConfiguration)

instance
  Core.FromJSON
    InferenceInputNameConfiguration
  where
  parseJSON =
    Core.withObject
      "InferenceInputNameConfiguration"
      ( \x ->
          InferenceInputNameConfiguration'
            Prelude.<$> (x Core..:? "ComponentTimestampDelimiter")
            Prelude.<*> (x Core..:? "TimestampFormat")
      )

instance
  Prelude.Hashable
    InferenceInputNameConfiguration
  where
  hashWithSalt
    _salt
    InferenceInputNameConfiguration' {..} =
      _salt
        `Prelude.hashWithSalt` componentTimestampDelimiter
        `Prelude.hashWithSalt` timestampFormat

instance
  Prelude.NFData
    InferenceInputNameConfiguration
  where
  rnf InferenceInputNameConfiguration' {..} =
    Prelude.rnf componentTimestampDelimiter
      `Prelude.seq` Prelude.rnf timestampFormat

instance Core.ToJSON InferenceInputNameConfiguration where
  toJSON InferenceInputNameConfiguration' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("ComponentTimestampDelimiter" Core..=)
              Prelude.<$> componentTimestampDelimiter,
            ("TimestampFormat" Core..=)
              Prelude.<$> timestampFormat
          ]
      )
