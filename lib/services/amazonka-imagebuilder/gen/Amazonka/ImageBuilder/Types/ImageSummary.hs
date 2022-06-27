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
-- Module      : Amazonka.ImageBuilder.Types.ImageSummary
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.ImageBuilder.Types.ImageSummary where

import qualified Amazonka.Core as Core
import Amazonka.ImageBuilder.Types.ImageState
import Amazonka.ImageBuilder.Types.ImageType
import Amazonka.ImageBuilder.Types.OutputResources
import Amazonka.ImageBuilder.Types.Platform
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | An image summary.
--
-- /See:/ 'newImageSummary' smart constructor.
data ImageSummary = ImageSummary'
  { -- | The tags of the image.
    tags :: Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text),
    -- | The name of the image.
    name :: Prelude.Maybe Prelude.Text,
    -- | Specifies whether this is an AMI or container image.
    type' :: Prelude.Maybe ImageType,
    -- | The Amazon Resource Name (ARN) of the image.
    arn :: Prelude.Maybe Prelude.Text,
    -- | The state of the image.
    state :: Prelude.Maybe ImageState,
    -- | The operating system version of the instance. For example, Amazon Linux
    -- 2, Ubuntu 18, or Microsoft Windows Server 2019.
    osVersion :: Prelude.Maybe Prelude.Text,
    -- | The owner of the image.
    owner :: Prelude.Maybe Prelude.Text,
    -- | The platform of the image.
    platform :: Prelude.Maybe Platform,
    -- | The output resources produced when creating this image.
    outputResources :: Prelude.Maybe OutputResources,
    -- | The date on which this image was created.
    dateCreated :: Prelude.Maybe Prelude.Text,
    -- | The version of the image.
    version :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ImageSummary' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'tags', 'imageSummary_tags' - The tags of the image.
--
-- 'name', 'imageSummary_name' - The name of the image.
--
-- 'type'', 'imageSummary_type' - Specifies whether this is an AMI or container image.
--
-- 'arn', 'imageSummary_arn' - The Amazon Resource Name (ARN) of the image.
--
-- 'state', 'imageSummary_state' - The state of the image.
--
-- 'osVersion', 'imageSummary_osVersion' - The operating system version of the instance. For example, Amazon Linux
-- 2, Ubuntu 18, or Microsoft Windows Server 2019.
--
-- 'owner', 'imageSummary_owner' - The owner of the image.
--
-- 'platform', 'imageSummary_platform' - The platform of the image.
--
-- 'outputResources', 'imageSummary_outputResources' - The output resources produced when creating this image.
--
-- 'dateCreated', 'imageSummary_dateCreated' - The date on which this image was created.
--
-- 'version', 'imageSummary_version' - The version of the image.
newImageSummary ::
  ImageSummary
newImageSummary =
  ImageSummary'
    { tags = Prelude.Nothing,
      name = Prelude.Nothing,
      type' = Prelude.Nothing,
      arn = Prelude.Nothing,
      state = Prelude.Nothing,
      osVersion = Prelude.Nothing,
      owner = Prelude.Nothing,
      platform = Prelude.Nothing,
      outputResources = Prelude.Nothing,
      dateCreated = Prelude.Nothing,
      version = Prelude.Nothing
    }

-- | The tags of the image.
imageSummary_tags :: Lens.Lens' ImageSummary (Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text))
imageSummary_tags = Lens.lens (\ImageSummary' {tags} -> tags) (\s@ImageSummary' {} a -> s {tags = a} :: ImageSummary) Prelude.. Lens.mapping Lens.coerced

-- | The name of the image.
imageSummary_name :: Lens.Lens' ImageSummary (Prelude.Maybe Prelude.Text)
imageSummary_name = Lens.lens (\ImageSummary' {name} -> name) (\s@ImageSummary' {} a -> s {name = a} :: ImageSummary)

-- | Specifies whether this is an AMI or container image.
imageSummary_type :: Lens.Lens' ImageSummary (Prelude.Maybe ImageType)
imageSummary_type = Lens.lens (\ImageSummary' {type'} -> type') (\s@ImageSummary' {} a -> s {type' = a} :: ImageSummary)

-- | The Amazon Resource Name (ARN) of the image.
imageSummary_arn :: Lens.Lens' ImageSummary (Prelude.Maybe Prelude.Text)
imageSummary_arn = Lens.lens (\ImageSummary' {arn} -> arn) (\s@ImageSummary' {} a -> s {arn = a} :: ImageSummary)

-- | The state of the image.
imageSummary_state :: Lens.Lens' ImageSummary (Prelude.Maybe ImageState)
imageSummary_state = Lens.lens (\ImageSummary' {state} -> state) (\s@ImageSummary' {} a -> s {state = a} :: ImageSummary)

-- | The operating system version of the instance. For example, Amazon Linux
-- 2, Ubuntu 18, or Microsoft Windows Server 2019.
imageSummary_osVersion :: Lens.Lens' ImageSummary (Prelude.Maybe Prelude.Text)
imageSummary_osVersion = Lens.lens (\ImageSummary' {osVersion} -> osVersion) (\s@ImageSummary' {} a -> s {osVersion = a} :: ImageSummary)

-- | The owner of the image.
imageSummary_owner :: Lens.Lens' ImageSummary (Prelude.Maybe Prelude.Text)
imageSummary_owner = Lens.lens (\ImageSummary' {owner} -> owner) (\s@ImageSummary' {} a -> s {owner = a} :: ImageSummary)

-- | The platform of the image.
imageSummary_platform :: Lens.Lens' ImageSummary (Prelude.Maybe Platform)
imageSummary_platform = Lens.lens (\ImageSummary' {platform} -> platform) (\s@ImageSummary' {} a -> s {platform = a} :: ImageSummary)

-- | The output resources produced when creating this image.
imageSummary_outputResources :: Lens.Lens' ImageSummary (Prelude.Maybe OutputResources)
imageSummary_outputResources = Lens.lens (\ImageSummary' {outputResources} -> outputResources) (\s@ImageSummary' {} a -> s {outputResources = a} :: ImageSummary)

-- | The date on which this image was created.
imageSummary_dateCreated :: Lens.Lens' ImageSummary (Prelude.Maybe Prelude.Text)
imageSummary_dateCreated = Lens.lens (\ImageSummary' {dateCreated} -> dateCreated) (\s@ImageSummary' {} a -> s {dateCreated = a} :: ImageSummary)

-- | The version of the image.
imageSummary_version :: Lens.Lens' ImageSummary (Prelude.Maybe Prelude.Text)
imageSummary_version = Lens.lens (\ImageSummary' {version} -> version) (\s@ImageSummary' {} a -> s {version = a} :: ImageSummary)

instance Core.FromJSON ImageSummary where
  parseJSON =
    Core.withObject
      "ImageSummary"
      ( \x ->
          ImageSummary'
            Prelude.<$> (x Core..:? "tags" Core..!= Prelude.mempty)
            Prelude.<*> (x Core..:? "name")
            Prelude.<*> (x Core..:? "type")
            Prelude.<*> (x Core..:? "arn")
            Prelude.<*> (x Core..:? "state")
            Prelude.<*> (x Core..:? "osVersion")
            Prelude.<*> (x Core..:? "owner")
            Prelude.<*> (x Core..:? "platform")
            Prelude.<*> (x Core..:? "outputResources")
            Prelude.<*> (x Core..:? "dateCreated")
            Prelude.<*> (x Core..:? "version")
      )

instance Prelude.Hashable ImageSummary where
  hashWithSalt _salt ImageSummary' {..} =
    _salt `Prelude.hashWithSalt` tags
      `Prelude.hashWithSalt` name
      `Prelude.hashWithSalt` type'
      `Prelude.hashWithSalt` arn
      `Prelude.hashWithSalt` state
      `Prelude.hashWithSalt` osVersion
      `Prelude.hashWithSalt` owner
      `Prelude.hashWithSalt` platform
      `Prelude.hashWithSalt` outputResources
      `Prelude.hashWithSalt` dateCreated
      `Prelude.hashWithSalt` version

instance Prelude.NFData ImageSummary where
  rnf ImageSummary' {..} =
    Prelude.rnf tags
      `Prelude.seq` Prelude.rnf name
      `Prelude.seq` Prelude.rnf type'
      `Prelude.seq` Prelude.rnf arn
      `Prelude.seq` Prelude.rnf state
      `Prelude.seq` Prelude.rnf osVersion
      `Prelude.seq` Prelude.rnf owner
      `Prelude.seq` Prelude.rnf platform
      `Prelude.seq` Prelude.rnf outputResources
      `Prelude.seq` Prelude.rnf dateCreated
      `Prelude.seq` Prelude.rnf version
