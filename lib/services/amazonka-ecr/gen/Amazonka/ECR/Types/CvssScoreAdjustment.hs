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
-- Module      : Amazonka.ECR.Types.CvssScoreAdjustment
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.ECR.Types.CvssScoreAdjustment where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | Details on adjustments Amazon Inspector made to the CVSS score for a
-- finding.
--
-- /See:/ 'newCvssScoreAdjustment' smart constructor.
data CvssScoreAdjustment = CvssScoreAdjustment'
  { -- | The reason the CVSS score has been adjustment.
    reason :: Prelude.Maybe Prelude.Text,
    -- | The metric used to adjust the CVSS score.
    metric :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CvssScoreAdjustment' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'reason', 'cvssScoreAdjustment_reason' - The reason the CVSS score has been adjustment.
--
-- 'metric', 'cvssScoreAdjustment_metric' - The metric used to adjust the CVSS score.
newCvssScoreAdjustment ::
  CvssScoreAdjustment
newCvssScoreAdjustment =
  CvssScoreAdjustment'
    { reason = Prelude.Nothing,
      metric = Prelude.Nothing
    }

-- | The reason the CVSS score has been adjustment.
cvssScoreAdjustment_reason :: Lens.Lens' CvssScoreAdjustment (Prelude.Maybe Prelude.Text)
cvssScoreAdjustment_reason = Lens.lens (\CvssScoreAdjustment' {reason} -> reason) (\s@CvssScoreAdjustment' {} a -> s {reason = a} :: CvssScoreAdjustment)

-- | The metric used to adjust the CVSS score.
cvssScoreAdjustment_metric :: Lens.Lens' CvssScoreAdjustment (Prelude.Maybe Prelude.Text)
cvssScoreAdjustment_metric = Lens.lens (\CvssScoreAdjustment' {metric} -> metric) (\s@CvssScoreAdjustment' {} a -> s {metric = a} :: CvssScoreAdjustment)

instance Core.FromJSON CvssScoreAdjustment where
  parseJSON =
    Core.withObject
      "CvssScoreAdjustment"
      ( \x ->
          CvssScoreAdjustment'
            Prelude.<$> (x Core..:? "reason")
            Prelude.<*> (x Core..:? "metric")
      )

instance Prelude.Hashable CvssScoreAdjustment where
  hashWithSalt _salt CvssScoreAdjustment' {..} =
    _salt `Prelude.hashWithSalt` reason
      `Prelude.hashWithSalt` metric

instance Prelude.NFData CvssScoreAdjustment where
  rnf CvssScoreAdjustment' {..} =
    Prelude.rnf reason `Prelude.seq` Prelude.rnf metric
