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
-- Module      : Amazonka.RedshiftServerLess.Types.ConfigParameter
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.RedshiftServerLess.Types.ConfigParameter where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | An array of key-value pairs to set for advanced control over Amazon
-- Redshift Serverless.
--
-- /See:/ 'newConfigParameter' smart constructor.
data ConfigParameter = ConfigParameter'
  { -- | The value of the parameter to set.
    parameterValue :: Prelude.Maybe Prelude.Text,
    -- | The key of the parameter. The options are @datestyle@,
    -- @enable_user_activity_logging@, @query_group@, @search_path@, and
    -- @max_query_execution_time@.
    parameterKey :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ConfigParameter' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'parameterValue', 'configParameter_parameterValue' - The value of the parameter to set.
--
-- 'parameterKey', 'configParameter_parameterKey' - The key of the parameter. The options are @datestyle@,
-- @enable_user_activity_logging@, @query_group@, @search_path@, and
-- @max_query_execution_time@.
newConfigParameter ::
  ConfigParameter
newConfigParameter =
  ConfigParameter'
    { parameterValue = Prelude.Nothing,
      parameterKey = Prelude.Nothing
    }

-- | The value of the parameter to set.
configParameter_parameterValue :: Lens.Lens' ConfigParameter (Prelude.Maybe Prelude.Text)
configParameter_parameterValue = Lens.lens (\ConfigParameter' {parameterValue} -> parameterValue) (\s@ConfigParameter' {} a -> s {parameterValue = a} :: ConfigParameter)

-- | The key of the parameter. The options are @datestyle@,
-- @enable_user_activity_logging@, @query_group@, @search_path@, and
-- @max_query_execution_time@.
configParameter_parameterKey :: Lens.Lens' ConfigParameter (Prelude.Maybe Prelude.Text)
configParameter_parameterKey = Lens.lens (\ConfigParameter' {parameterKey} -> parameterKey) (\s@ConfigParameter' {} a -> s {parameterKey = a} :: ConfigParameter)

instance Core.FromJSON ConfigParameter where
  parseJSON =
    Core.withObject
      "ConfigParameter"
      ( \x ->
          ConfigParameter'
            Prelude.<$> (x Core..:? "parameterValue")
            Prelude.<*> (x Core..:? "parameterKey")
      )

instance Prelude.Hashable ConfigParameter where
  hashWithSalt _salt ConfigParameter' {..} =
    _salt `Prelude.hashWithSalt` parameterValue
      `Prelude.hashWithSalt` parameterKey

instance Prelude.NFData ConfigParameter where
  rnf ConfigParameter' {..} =
    Prelude.rnf parameterValue
      `Prelude.seq` Prelude.rnf parameterKey

instance Core.ToJSON ConfigParameter where
  toJSON ConfigParameter' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("parameterValue" Core..=)
              Prelude.<$> parameterValue,
            ("parameterKey" Core..=) Prelude.<$> parameterKey
          ]
      )
