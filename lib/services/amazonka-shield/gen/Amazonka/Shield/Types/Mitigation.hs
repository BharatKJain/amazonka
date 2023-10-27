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
-- Module      : Amazonka.Shield.Types.Mitigation
-- Copyright   : (c) 2013-2023 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.Shield.Types.Mitigation where

import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude

-- | The mitigation applied to a DDoS attack.
--
-- /See:/ 'newMitigation' smart constructor.
data Mitigation = Mitigation'
  { -- | The name of the mitigation taken for this attack.
    mitigationName :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'Mitigation' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'mitigationName', 'mitigation_mitigationName' - The name of the mitigation taken for this attack.
newMitigation ::
  Mitigation
newMitigation =
  Mitigation' {mitigationName = Prelude.Nothing}

-- | The name of the mitigation taken for this attack.
mitigation_mitigationName :: Lens.Lens' Mitigation (Prelude.Maybe Prelude.Text)
mitigation_mitigationName = Lens.lens (\Mitigation' {mitigationName} -> mitigationName) (\s@Mitigation' {} a -> s {mitigationName = a} :: Mitigation)

instance Data.FromJSON Mitigation where
  parseJSON =
    Data.withObject
      "Mitigation"
      ( \x ->
          Mitigation'
            Prelude.<$> (x Data..:? "MitigationName")
      )

instance Prelude.Hashable Mitigation where
  hashWithSalt _salt Mitigation' {..} =
    _salt `Prelude.hashWithSalt` mitigationName

instance Prelude.NFData Mitigation where
  rnf Mitigation' {..} = Prelude.rnf mitigationName
