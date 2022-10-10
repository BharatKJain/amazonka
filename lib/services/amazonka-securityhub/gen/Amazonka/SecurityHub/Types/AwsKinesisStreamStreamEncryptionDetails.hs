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
-- Module      : Amazonka.SecurityHub.Types.AwsKinesisStreamStreamEncryptionDetails
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.SecurityHub.Types.AwsKinesisStreamStreamEncryptionDetails where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | Provides information about stream encryption.
--
-- /See:/ 'newAwsKinesisStreamStreamEncryptionDetails' smart constructor.
data AwsKinesisStreamStreamEncryptionDetails = AwsKinesisStreamStreamEncryptionDetails'
  { -- | The encryption type to use.
    encryptionType :: Prelude.Maybe Prelude.Text,
    -- | The globally unique identifier for the customer-managed KMS key to use
    -- for encryption.
    keyId :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'AwsKinesisStreamStreamEncryptionDetails' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'encryptionType', 'awsKinesisStreamStreamEncryptionDetails_encryptionType' - The encryption type to use.
--
-- 'keyId', 'awsKinesisStreamStreamEncryptionDetails_keyId' - The globally unique identifier for the customer-managed KMS key to use
-- for encryption.
newAwsKinesisStreamStreamEncryptionDetails ::
  AwsKinesisStreamStreamEncryptionDetails
newAwsKinesisStreamStreamEncryptionDetails =
  AwsKinesisStreamStreamEncryptionDetails'
    { encryptionType =
        Prelude.Nothing,
      keyId = Prelude.Nothing
    }

-- | The encryption type to use.
awsKinesisStreamStreamEncryptionDetails_encryptionType :: Lens.Lens' AwsKinesisStreamStreamEncryptionDetails (Prelude.Maybe Prelude.Text)
awsKinesisStreamStreamEncryptionDetails_encryptionType = Lens.lens (\AwsKinesisStreamStreamEncryptionDetails' {encryptionType} -> encryptionType) (\s@AwsKinesisStreamStreamEncryptionDetails' {} a -> s {encryptionType = a} :: AwsKinesisStreamStreamEncryptionDetails)

-- | The globally unique identifier for the customer-managed KMS key to use
-- for encryption.
awsKinesisStreamStreamEncryptionDetails_keyId :: Lens.Lens' AwsKinesisStreamStreamEncryptionDetails (Prelude.Maybe Prelude.Text)
awsKinesisStreamStreamEncryptionDetails_keyId = Lens.lens (\AwsKinesisStreamStreamEncryptionDetails' {keyId} -> keyId) (\s@AwsKinesisStreamStreamEncryptionDetails' {} a -> s {keyId = a} :: AwsKinesisStreamStreamEncryptionDetails)

instance
  Core.FromJSON
    AwsKinesisStreamStreamEncryptionDetails
  where
  parseJSON =
    Core.withObject
      "AwsKinesisStreamStreamEncryptionDetails"
      ( \x ->
          AwsKinesisStreamStreamEncryptionDetails'
            Prelude.<$> (x Core..:? "EncryptionType")
            Prelude.<*> (x Core..:? "KeyId")
      )

instance
  Prelude.Hashable
    AwsKinesisStreamStreamEncryptionDetails
  where
  hashWithSalt
    _salt
    AwsKinesisStreamStreamEncryptionDetails' {..} =
      _salt `Prelude.hashWithSalt` encryptionType
        `Prelude.hashWithSalt` keyId

instance
  Prelude.NFData
    AwsKinesisStreamStreamEncryptionDetails
  where
  rnf AwsKinesisStreamStreamEncryptionDetails' {..} =
    Prelude.rnf encryptionType
      `Prelude.seq` Prelude.rnf keyId

instance
  Core.ToJSON
    AwsKinesisStreamStreamEncryptionDetails
  where
  toJSON AwsKinesisStreamStreamEncryptionDetails' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("EncryptionType" Core..=)
              Prelude.<$> encryptionType,
            ("KeyId" Core..=) Prelude.<$> keyId
          ]
      )
