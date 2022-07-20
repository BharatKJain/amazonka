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
-- Module      : Amazonka.Glue.Types.CloudWatchEncryption
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.Glue.Types.CloudWatchEncryption where

import qualified Amazonka.Core as Core
import Amazonka.Glue.Types.CloudWatchEncryptionMode
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | Specifies how Amazon CloudWatch data should be encrypted.
--
-- /See:/ 'newCloudWatchEncryption' smart constructor.
data CloudWatchEncryption = CloudWatchEncryption'
  { -- | The Amazon Resource Name (ARN) of the KMS key to be used to encrypt the
    -- data.
    kmsKeyArn :: Prelude.Maybe Prelude.Text,
    -- | The encryption mode to use for CloudWatch data.
    cloudWatchEncryptionMode :: Prelude.Maybe CloudWatchEncryptionMode
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CloudWatchEncryption' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'kmsKeyArn', 'cloudWatchEncryption_kmsKeyArn' - The Amazon Resource Name (ARN) of the KMS key to be used to encrypt the
-- data.
--
-- 'cloudWatchEncryptionMode', 'cloudWatchEncryption_cloudWatchEncryptionMode' - The encryption mode to use for CloudWatch data.
newCloudWatchEncryption ::
  CloudWatchEncryption
newCloudWatchEncryption =
  CloudWatchEncryption'
    { kmsKeyArn = Prelude.Nothing,
      cloudWatchEncryptionMode = Prelude.Nothing
    }

-- | The Amazon Resource Name (ARN) of the KMS key to be used to encrypt the
-- data.
cloudWatchEncryption_kmsKeyArn :: Lens.Lens' CloudWatchEncryption (Prelude.Maybe Prelude.Text)
cloudWatchEncryption_kmsKeyArn = Lens.lens (\CloudWatchEncryption' {kmsKeyArn} -> kmsKeyArn) (\s@CloudWatchEncryption' {} a -> s {kmsKeyArn = a} :: CloudWatchEncryption)

-- | The encryption mode to use for CloudWatch data.
cloudWatchEncryption_cloudWatchEncryptionMode :: Lens.Lens' CloudWatchEncryption (Prelude.Maybe CloudWatchEncryptionMode)
cloudWatchEncryption_cloudWatchEncryptionMode = Lens.lens (\CloudWatchEncryption' {cloudWatchEncryptionMode} -> cloudWatchEncryptionMode) (\s@CloudWatchEncryption' {} a -> s {cloudWatchEncryptionMode = a} :: CloudWatchEncryption)

instance Core.FromJSON CloudWatchEncryption where
  parseJSON =
    Core.withObject
      "CloudWatchEncryption"
      ( \x ->
          CloudWatchEncryption'
            Prelude.<$> (x Core..:? "KmsKeyArn")
            Prelude.<*> (x Core..:? "CloudWatchEncryptionMode")
      )

instance Prelude.Hashable CloudWatchEncryption where
  hashWithSalt _salt CloudWatchEncryption' {..} =
    _salt `Prelude.hashWithSalt` kmsKeyArn
      `Prelude.hashWithSalt` cloudWatchEncryptionMode

instance Prelude.NFData CloudWatchEncryption where
  rnf CloudWatchEncryption' {..} =
    Prelude.rnf kmsKeyArn
      `Prelude.seq` Prelude.rnf cloudWatchEncryptionMode

instance Core.ToJSON CloudWatchEncryption where
  toJSON CloudWatchEncryption' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("KmsKeyArn" Core..=) Prelude.<$> kmsKeyArn,
            ("CloudWatchEncryptionMode" Core..=)
              Prelude.<$> cloudWatchEncryptionMode
          ]
      )
