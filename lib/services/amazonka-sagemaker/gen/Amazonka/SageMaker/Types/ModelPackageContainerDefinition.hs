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
-- Module      : Amazonka.SageMaker.Types.ModelPackageContainerDefinition
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.SageMaker.Types.ModelPackageContainerDefinition where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | Describes the Docker container for the model package.
--
-- /See:/ 'newModelPackageContainerDefinition' smart constructor.
data ModelPackageContainerDefinition = ModelPackageContainerDefinition'
  { -- | The environment variables to set in the Docker container. Each key and
    -- value in the @Environment@ string to string map can have length of up to
    -- 1024. We support up to 16 entries in the map.
    environment :: Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text),
    -- | The DNS host name for the Docker container.
    containerHostname :: Prelude.Maybe Prelude.Text,
    -- | The Amazon S3 path where the model artifacts, which result from model
    -- training, are stored. This path must point to a single @gzip@ compressed
    -- tar archive (@.tar.gz@ suffix).
    --
    -- The model artifacts must be in an S3 bucket that is in the same region
    -- as the model package.
    modelDataUrl :: Prelude.Maybe Prelude.Text,
    -- | The Amazon Web Services Marketplace product ID of the model package.
    productId :: Prelude.Maybe Prelude.Text,
    -- | An MD5 hash of the training algorithm that identifies the Docker image
    -- used for training.
    imageDigest :: Prelude.Maybe Prelude.Text,
    -- | The Amazon EC2 Container Registry (Amazon ECR) path where inference code
    -- is stored.
    --
    -- If you are using your own custom algorithm instead of an algorithm
    -- provided by Amazon SageMaker, the inference code must meet Amazon
    -- SageMaker requirements. Amazon SageMaker supports both
    -- @registry\/repository[:tag]@ and @registry\/repository[\@digest]@ image
    -- path formats. For more information, see
    -- <https://docs.aws.amazon.com/sagemaker/latest/dg/your-algorithms.html Using Your Own Algorithms with Amazon SageMaker>.
    image :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ModelPackageContainerDefinition' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'environment', 'modelPackageContainerDefinition_environment' - The environment variables to set in the Docker container. Each key and
-- value in the @Environment@ string to string map can have length of up to
-- 1024. We support up to 16 entries in the map.
--
-- 'containerHostname', 'modelPackageContainerDefinition_containerHostname' - The DNS host name for the Docker container.
--
-- 'modelDataUrl', 'modelPackageContainerDefinition_modelDataUrl' - The Amazon S3 path where the model artifacts, which result from model
-- training, are stored. This path must point to a single @gzip@ compressed
-- tar archive (@.tar.gz@ suffix).
--
-- The model artifacts must be in an S3 bucket that is in the same region
-- as the model package.
--
-- 'productId', 'modelPackageContainerDefinition_productId' - The Amazon Web Services Marketplace product ID of the model package.
--
-- 'imageDigest', 'modelPackageContainerDefinition_imageDigest' - An MD5 hash of the training algorithm that identifies the Docker image
-- used for training.
--
-- 'image', 'modelPackageContainerDefinition_image' - The Amazon EC2 Container Registry (Amazon ECR) path where inference code
-- is stored.
--
-- If you are using your own custom algorithm instead of an algorithm
-- provided by Amazon SageMaker, the inference code must meet Amazon
-- SageMaker requirements. Amazon SageMaker supports both
-- @registry\/repository[:tag]@ and @registry\/repository[\@digest]@ image
-- path formats. For more information, see
-- <https://docs.aws.amazon.com/sagemaker/latest/dg/your-algorithms.html Using Your Own Algorithms with Amazon SageMaker>.
newModelPackageContainerDefinition ::
  -- | 'image'
  Prelude.Text ->
  ModelPackageContainerDefinition
newModelPackageContainerDefinition pImage_ =
  ModelPackageContainerDefinition'
    { environment =
        Prelude.Nothing,
      containerHostname = Prelude.Nothing,
      modelDataUrl = Prelude.Nothing,
      productId = Prelude.Nothing,
      imageDigest = Prelude.Nothing,
      image = pImage_
    }

-- | The environment variables to set in the Docker container. Each key and
-- value in the @Environment@ string to string map can have length of up to
-- 1024. We support up to 16 entries in the map.
modelPackageContainerDefinition_environment :: Lens.Lens' ModelPackageContainerDefinition (Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text))
modelPackageContainerDefinition_environment = Lens.lens (\ModelPackageContainerDefinition' {environment} -> environment) (\s@ModelPackageContainerDefinition' {} a -> s {environment = a} :: ModelPackageContainerDefinition) Prelude.. Lens.mapping Lens.coerced

-- | The DNS host name for the Docker container.
modelPackageContainerDefinition_containerHostname :: Lens.Lens' ModelPackageContainerDefinition (Prelude.Maybe Prelude.Text)
modelPackageContainerDefinition_containerHostname = Lens.lens (\ModelPackageContainerDefinition' {containerHostname} -> containerHostname) (\s@ModelPackageContainerDefinition' {} a -> s {containerHostname = a} :: ModelPackageContainerDefinition)

-- | The Amazon S3 path where the model artifacts, which result from model
-- training, are stored. This path must point to a single @gzip@ compressed
-- tar archive (@.tar.gz@ suffix).
--
-- The model artifacts must be in an S3 bucket that is in the same region
-- as the model package.
modelPackageContainerDefinition_modelDataUrl :: Lens.Lens' ModelPackageContainerDefinition (Prelude.Maybe Prelude.Text)
modelPackageContainerDefinition_modelDataUrl = Lens.lens (\ModelPackageContainerDefinition' {modelDataUrl} -> modelDataUrl) (\s@ModelPackageContainerDefinition' {} a -> s {modelDataUrl = a} :: ModelPackageContainerDefinition)

-- | The Amazon Web Services Marketplace product ID of the model package.
modelPackageContainerDefinition_productId :: Lens.Lens' ModelPackageContainerDefinition (Prelude.Maybe Prelude.Text)
modelPackageContainerDefinition_productId = Lens.lens (\ModelPackageContainerDefinition' {productId} -> productId) (\s@ModelPackageContainerDefinition' {} a -> s {productId = a} :: ModelPackageContainerDefinition)

-- | An MD5 hash of the training algorithm that identifies the Docker image
-- used for training.
modelPackageContainerDefinition_imageDigest :: Lens.Lens' ModelPackageContainerDefinition (Prelude.Maybe Prelude.Text)
modelPackageContainerDefinition_imageDigest = Lens.lens (\ModelPackageContainerDefinition' {imageDigest} -> imageDigest) (\s@ModelPackageContainerDefinition' {} a -> s {imageDigest = a} :: ModelPackageContainerDefinition)

-- | The Amazon EC2 Container Registry (Amazon ECR) path where inference code
-- is stored.
--
-- If you are using your own custom algorithm instead of an algorithm
-- provided by Amazon SageMaker, the inference code must meet Amazon
-- SageMaker requirements. Amazon SageMaker supports both
-- @registry\/repository[:tag]@ and @registry\/repository[\@digest]@ image
-- path formats. For more information, see
-- <https://docs.aws.amazon.com/sagemaker/latest/dg/your-algorithms.html Using Your Own Algorithms with Amazon SageMaker>.
modelPackageContainerDefinition_image :: Lens.Lens' ModelPackageContainerDefinition Prelude.Text
modelPackageContainerDefinition_image = Lens.lens (\ModelPackageContainerDefinition' {image} -> image) (\s@ModelPackageContainerDefinition' {} a -> s {image = a} :: ModelPackageContainerDefinition)

instance
  Core.FromJSON
    ModelPackageContainerDefinition
  where
  parseJSON =
    Core.withObject
      "ModelPackageContainerDefinition"
      ( \x ->
          ModelPackageContainerDefinition'
            Prelude.<$> (x Core..:? "Environment" Core..!= Prelude.mempty)
            Prelude.<*> (x Core..:? "ContainerHostname")
            Prelude.<*> (x Core..:? "ModelDataUrl")
            Prelude.<*> (x Core..:? "ProductId")
            Prelude.<*> (x Core..:? "ImageDigest")
            Prelude.<*> (x Core..: "Image")
      )

instance
  Prelude.Hashable
    ModelPackageContainerDefinition
  where
  hashWithSalt
    _salt
    ModelPackageContainerDefinition' {..} =
      _salt `Prelude.hashWithSalt` environment
        `Prelude.hashWithSalt` containerHostname
        `Prelude.hashWithSalt` modelDataUrl
        `Prelude.hashWithSalt` productId
        `Prelude.hashWithSalt` imageDigest
        `Prelude.hashWithSalt` image

instance
  Prelude.NFData
    ModelPackageContainerDefinition
  where
  rnf ModelPackageContainerDefinition' {..} =
    Prelude.rnf environment
      `Prelude.seq` Prelude.rnf containerHostname
      `Prelude.seq` Prelude.rnf modelDataUrl
      `Prelude.seq` Prelude.rnf productId
      `Prelude.seq` Prelude.rnf imageDigest
      `Prelude.seq` Prelude.rnf image

instance Core.ToJSON ModelPackageContainerDefinition where
  toJSON ModelPackageContainerDefinition' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("Environment" Core..=) Prelude.<$> environment,
            ("ContainerHostname" Core..=)
              Prelude.<$> containerHostname,
            ("ModelDataUrl" Core..=) Prelude.<$> modelDataUrl,
            ("ProductId" Core..=) Prelude.<$> productId,
            ("ImageDigest" Core..=) Prelude.<$> imageDigest,
            Prelude.Just ("Image" Core..= image)
          ]
      )
