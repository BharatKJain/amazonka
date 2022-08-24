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
-- Module      : Amazonka.MediaConvert.Types.AllowedRenditionSize
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.MediaConvert.Types.AllowedRenditionSize where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import Amazonka.MediaConvert.Types.RequiredFlag
import qualified Amazonka.Prelude as Prelude

-- | Use Allowed renditions to specify a list of possible resolutions in your
-- ABR stack. * MediaConvert will create an ABR stack exclusively from the
-- list of resolutions that you specify. * Some resolutions in the Allowed
-- renditions list may not be included, however you can force a resolution
-- to be included by setting Required to ENABLED. * You must specify at
-- least one resolution that is greater than or equal to any resolutions
-- that you specify in Min top rendition size or Min bottom rendition size.
-- * If you specify Allowed renditions, you must not specify a separate
-- rule for Force include renditions.
--
-- /See:/ 'newAllowedRenditionSize' smart constructor.
data AllowedRenditionSize = AllowedRenditionSize'
  { -- | Set to ENABLED to force a rendition to be included.
    required :: Prelude.Maybe RequiredFlag,
    -- | Use Width to define the video resolution width, in pixels, for this
    -- rule.
    width :: Prelude.Maybe Prelude.Natural,
    -- | Use Height to define the video resolution height, in pixels, for this
    -- rule.
    height :: Prelude.Maybe Prelude.Natural
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'AllowedRenditionSize' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'required', 'allowedRenditionSize_required' - Set to ENABLED to force a rendition to be included.
--
-- 'width', 'allowedRenditionSize_width' - Use Width to define the video resolution width, in pixels, for this
-- rule.
--
-- 'height', 'allowedRenditionSize_height' - Use Height to define the video resolution height, in pixels, for this
-- rule.
newAllowedRenditionSize ::
  AllowedRenditionSize
newAllowedRenditionSize =
  AllowedRenditionSize'
    { required = Prelude.Nothing,
      width = Prelude.Nothing,
      height = Prelude.Nothing
    }

-- | Set to ENABLED to force a rendition to be included.
allowedRenditionSize_required :: Lens.Lens' AllowedRenditionSize (Prelude.Maybe RequiredFlag)
allowedRenditionSize_required = Lens.lens (\AllowedRenditionSize' {required} -> required) (\s@AllowedRenditionSize' {} a -> s {required = a} :: AllowedRenditionSize)

-- | Use Width to define the video resolution width, in pixels, for this
-- rule.
allowedRenditionSize_width :: Lens.Lens' AllowedRenditionSize (Prelude.Maybe Prelude.Natural)
allowedRenditionSize_width = Lens.lens (\AllowedRenditionSize' {width} -> width) (\s@AllowedRenditionSize' {} a -> s {width = a} :: AllowedRenditionSize)

-- | Use Height to define the video resolution height, in pixels, for this
-- rule.
allowedRenditionSize_height :: Lens.Lens' AllowedRenditionSize (Prelude.Maybe Prelude.Natural)
allowedRenditionSize_height = Lens.lens (\AllowedRenditionSize' {height} -> height) (\s@AllowedRenditionSize' {} a -> s {height = a} :: AllowedRenditionSize)

instance Core.FromJSON AllowedRenditionSize where
  parseJSON =
    Core.withObject
      "AllowedRenditionSize"
      ( \x ->
          AllowedRenditionSize'
            Prelude.<$> (x Core..:? "required")
            Prelude.<*> (x Core..:? "width")
            Prelude.<*> (x Core..:? "height")
      )

instance Prelude.Hashable AllowedRenditionSize where
  hashWithSalt _salt AllowedRenditionSize' {..} =
    _salt `Prelude.hashWithSalt` required
      `Prelude.hashWithSalt` width
      `Prelude.hashWithSalt` height

instance Prelude.NFData AllowedRenditionSize where
  rnf AllowedRenditionSize' {..} =
    Prelude.rnf required
      `Prelude.seq` Prelude.rnf width
      `Prelude.seq` Prelude.rnf height

instance Core.ToJSON AllowedRenditionSize where
  toJSON AllowedRenditionSize' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("required" Core..=) Prelude.<$> required,
            ("width" Core..=) Prelude.<$> width,
            ("height" Core..=) Prelude.<$> height
          ]
      )
