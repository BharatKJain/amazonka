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
-- Module      : Amazonka.QuickSight.Types.AnalysisError
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.QuickSight.Types.AnalysisError where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import Amazonka.QuickSight.Types.AnalysisErrorType

-- | Analysis error.
--
-- /See:/ 'newAnalysisError' smart constructor.
data AnalysisError = AnalysisError'
  { -- | The message associated with the analysis error.
    message :: Prelude.Maybe Prelude.Text,
    -- | The type of the analysis error.
    type' :: Prelude.Maybe AnalysisErrorType
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'AnalysisError' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'message', 'analysisError_message' - The message associated with the analysis error.
--
-- 'type'', 'analysisError_type' - The type of the analysis error.
newAnalysisError ::
  AnalysisError
newAnalysisError =
  AnalysisError'
    { message = Prelude.Nothing,
      type' = Prelude.Nothing
    }

-- | The message associated with the analysis error.
analysisError_message :: Lens.Lens' AnalysisError (Prelude.Maybe Prelude.Text)
analysisError_message = Lens.lens (\AnalysisError' {message} -> message) (\s@AnalysisError' {} a -> s {message = a} :: AnalysisError)

-- | The type of the analysis error.
analysisError_type :: Lens.Lens' AnalysisError (Prelude.Maybe AnalysisErrorType)
analysisError_type = Lens.lens (\AnalysisError' {type'} -> type') (\s@AnalysisError' {} a -> s {type' = a} :: AnalysisError)

instance Core.FromJSON AnalysisError where
  parseJSON =
    Core.withObject
      "AnalysisError"
      ( \x ->
          AnalysisError'
            Prelude.<$> (x Core..:? "Message")
            Prelude.<*> (x Core..:? "Type")
      )

instance Prelude.Hashable AnalysisError where
  hashWithSalt _salt AnalysisError' {..} =
    _salt `Prelude.hashWithSalt` message
      `Prelude.hashWithSalt` type'

instance Prelude.NFData AnalysisError where
  rnf AnalysisError' {..} =
    Prelude.rnf message `Prelude.seq` Prelude.rnf type'
