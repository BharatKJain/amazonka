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
-- Module      : Amazonka.EC2.Types.Phase2IntegrityAlgorithmsListValue
-- Copyright   : (c) 2013-2023 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.EC2.Types.Phase2IntegrityAlgorithmsListValue where

import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import qualified Amazonka.Data as Data
import Amazonka.EC2.Internal
import qualified Amazonka.Prelude as Prelude

-- | The integrity algorithm for phase 2 IKE negotiations.
--
-- /See:/ 'newPhase2IntegrityAlgorithmsListValue' smart constructor.
data Phase2IntegrityAlgorithmsListValue = Phase2IntegrityAlgorithmsListValue'
  { -- | The integrity algorithm.
    value :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'Phase2IntegrityAlgorithmsListValue' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'value', 'phase2IntegrityAlgorithmsListValue_value' - The integrity algorithm.
newPhase2IntegrityAlgorithmsListValue ::
  Phase2IntegrityAlgorithmsListValue
newPhase2IntegrityAlgorithmsListValue =
  Phase2IntegrityAlgorithmsListValue'
    { value =
        Prelude.Nothing
    }

-- | The integrity algorithm.
phase2IntegrityAlgorithmsListValue_value :: Lens.Lens' Phase2IntegrityAlgorithmsListValue (Prelude.Maybe Prelude.Text)
phase2IntegrityAlgorithmsListValue_value = Lens.lens (\Phase2IntegrityAlgorithmsListValue' {value} -> value) (\s@Phase2IntegrityAlgorithmsListValue' {} a -> s {value = a} :: Phase2IntegrityAlgorithmsListValue)

instance
  Data.FromXML
    Phase2IntegrityAlgorithmsListValue
  where
  parseXML x =
    Phase2IntegrityAlgorithmsListValue'
      Prelude.<$> (x Data..@? "value")

instance
  Prelude.Hashable
    Phase2IntegrityAlgorithmsListValue
  where
  hashWithSalt
    _salt
    Phase2IntegrityAlgorithmsListValue' {..} =
      _salt `Prelude.hashWithSalt` value

instance
  Prelude.NFData
    Phase2IntegrityAlgorithmsListValue
  where
  rnf Phase2IntegrityAlgorithmsListValue' {..} =
    Prelude.rnf value
