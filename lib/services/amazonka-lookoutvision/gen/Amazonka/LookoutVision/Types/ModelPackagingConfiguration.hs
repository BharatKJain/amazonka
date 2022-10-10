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
-- Module      : Amazonka.LookoutVision.Types.ModelPackagingConfiguration
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.LookoutVision.Types.ModelPackagingConfiguration where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import Amazonka.LookoutVision.Types.GreengrassConfiguration
import qualified Amazonka.Prelude as Prelude

-- | Configuration information for a Amazon Lookout for Vision model
-- packaging job. For more information, see StartModelPackagingJob.
--
-- /See:/ 'newModelPackagingConfiguration' smart constructor.
data ModelPackagingConfiguration = ModelPackagingConfiguration'
  { -- | Configuration information for the AWS IoT Greengrass component in a
    -- model packaging job.
    greengrass :: GreengrassConfiguration
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ModelPackagingConfiguration' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'greengrass', 'modelPackagingConfiguration_greengrass' - Configuration information for the AWS IoT Greengrass component in a
-- model packaging job.
newModelPackagingConfiguration ::
  -- | 'greengrass'
  GreengrassConfiguration ->
  ModelPackagingConfiguration
newModelPackagingConfiguration pGreengrass_ =
  ModelPackagingConfiguration'
    { greengrass =
        pGreengrass_
    }

-- | Configuration information for the AWS IoT Greengrass component in a
-- model packaging job.
modelPackagingConfiguration_greengrass :: Lens.Lens' ModelPackagingConfiguration GreengrassConfiguration
modelPackagingConfiguration_greengrass = Lens.lens (\ModelPackagingConfiguration' {greengrass} -> greengrass) (\s@ModelPackagingConfiguration' {} a -> s {greengrass = a} :: ModelPackagingConfiguration)

instance Core.FromJSON ModelPackagingConfiguration where
  parseJSON =
    Core.withObject
      "ModelPackagingConfiguration"
      ( \x ->
          ModelPackagingConfiguration'
            Prelude.<$> (x Core..: "Greengrass")
      )

instance Prelude.Hashable ModelPackagingConfiguration where
  hashWithSalt _salt ModelPackagingConfiguration' {..} =
    _salt `Prelude.hashWithSalt` greengrass

instance Prelude.NFData ModelPackagingConfiguration where
  rnf ModelPackagingConfiguration' {..} =
    Prelude.rnf greengrass

instance Core.ToJSON ModelPackagingConfiguration where
  toJSON ModelPackagingConfiguration' {..} =
    Core.object
      ( Prelude.catMaybes
          [Prelude.Just ("Greengrass" Core..= greengrass)]
      )
