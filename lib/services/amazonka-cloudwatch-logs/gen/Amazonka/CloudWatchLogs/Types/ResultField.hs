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
-- Module      : Amazonka.CloudWatchLogs.Types.ResultField
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.CloudWatchLogs.Types.ResultField where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | Contains one field from one log event returned by a CloudWatch Logs
-- Insights query, along with the value of that field.
--
-- For more information about the fields that are generated by CloudWatch
-- logs, see
-- <https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/CWL_AnalyzeLogData-discoverable-fields.html Supported Logs and Discovered Fields>.
--
-- /See:/ 'newResultField' smart constructor.
data ResultField = ResultField'
  { -- | The log event field.
    field :: Prelude.Maybe Prelude.Text,
    -- | The value of this field.
    value :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ResultField' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'field', 'resultField_field' - The log event field.
--
-- 'value', 'resultField_value' - The value of this field.
newResultField ::
  ResultField
newResultField =
  ResultField'
    { field = Prelude.Nothing,
      value = Prelude.Nothing
    }

-- | The log event field.
resultField_field :: Lens.Lens' ResultField (Prelude.Maybe Prelude.Text)
resultField_field = Lens.lens (\ResultField' {field} -> field) (\s@ResultField' {} a -> s {field = a} :: ResultField)

-- | The value of this field.
resultField_value :: Lens.Lens' ResultField (Prelude.Maybe Prelude.Text)
resultField_value = Lens.lens (\ResultField' {value} -> value) (\s@ResultField' {} a -> s {value = a} :: ResultField)

instance Core.FromJSON ResultField where
  parseJSON =
    Core.withObject
      "ResultField"
      ( \x ->
          ResultField'
            Prelude.<$> (x Core..:? "field")
            Prelude.<*> (x Core..:? "value")
      )

instance Prelude.Hashable ResultField

instance Prelude.NFData ResultField