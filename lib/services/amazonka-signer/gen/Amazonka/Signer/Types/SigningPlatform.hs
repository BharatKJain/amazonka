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
-- Module      : Amazonka.Signer.Types.SigningPlatform
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.Signer.Types.SigningPlatform where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import Amazonka.Signer.Types.Category
import Amazonka.Signer.Types.SigningConfiguration
import Amazonka.Signer.Types.SigningImageFormat

-- | Contains information about the signing configurations and parameters
-- that are used to perform a code signing job.
--
-- /See:/ 'newSigningPlatform' smart constructor.
data SigningPlatform = SigningPlatform'
  { signingImageFormat :: Prelude.Maybe SigningImageFormat,
    -- | Any partner entities linked to a code signing platform.
    partner :: Prelude.Maybe Prelude.Text,
    -- | The configuration of a code signing platform. This includes the
    -- designated hash algorithm and encryption algorithm of a signing
    -- platform.
    signingConfiguration :: Prelude.Maybe SigningConfiguration,
    -- | The display name of a code signing platform.
    displayName :: Prelude.Maybe Prelude.Text,
    -- | The types of targets that can be signed by a code signing platform.
    target :: Prelude.Maybe Prelude.Text,
    -- | The category of a code signing platform.
    category :: Prelude.Maybe Category,
    -- | Indicates whether revocation is supported for the platform.
    revocationSupported :: Prelude.Maybe Prelude.Bool,
    -- | The ID of a code signing; platform.
    platformId :: Prelude.Maybe Prelude.Text,
    -- | The maximum size (in MB) of code that can be signed by a code signing
    -- platform.
    maxSizeInMB :: Prelude.Maybe Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'SigningPlatform' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'signingImageFormat', 'signingPlatform_signingImageFormat' - Undocumented member.
--
-- 'partner', 'signingPlatform_partner' - Any partner entities linked to a code signing platform.
--
-- 'signingConfiguration', 'signingPlatform_signingConfiguration' - The configuration of a code signing platform. This includes the
-- designated hash algorithm and encryption algorithm of a signing
-- platform.
--
-- 'displayName', 'signingPlatform_displayName' - The display name of a code signing platform.
--
-- 'target', 'signingPlatform_target' - The types of targets that can be signed by a code signing platform.
--
-- 'category', 'signingPlatform_category' - The category of a code signing platform.
--
-- 'revocationSupported', 'signingPlatform_revocationSupported' - Indicates whether revocation is supported for the platform.
--
-- 'platformId', 'signingPlatform_platformId' - The ID of a code signing; platform.
--
-- 'maxSizeInMB', 'signingPlatform_maxSizeInMB' - The maximum size (in MB) of code that can be signed by a code signing
-- platform.
newSigningPlatform ::
  SigningPlatform
newSigningPlatform =
  SigningPlatform'
    { signingImageFormat =
        Prelude.Nothing,
      partner = Prelude.Nothing,
      signingConfiguration = Prelude.Nothing,
      displayName = Prelude.Nothing,
      target = Prelude.Nothing,
      category = Prelude.Nothing,
      revocationSupported = Prelude.Nothing,
      platformId = Prelude.Nothing,
      maxSizeInMB = Prelude.Nothing
    }

-- | Undocumented member.
signingPlatform_signingImageFormat :: Lens.Lens' SigningPlatform (Prelude.Maybe SigningImageFormat)
signingPlatform_signingImageFormat = Lens.lens (\SigningPlatform' {signingImageFormat} -> signingImageFormat) (\s@SigningPlatform' {} a -> s {signingImageFormat = a} :: SigningPlatform)

-- | Any partner entities linked to a code signing platform.
signingPlatform_partner :: Lens.Lens' SigningPlatform (Prelude.Maybe Prelude.Text)
signingPlatform_partner = Lens.lens (\SigningPlatform' {partner} -> partner) (\s@SigningPlatform' {} a -> s {partner = a} :: SigningPlatform)

-- | The configuration of a code signing platform. This includes the
-- designated hash algorithm and encryption algorithm of a signing
-- platform.
signingPlatform_signingConfiguration :: Lens.Lens' SigningPlatform (Prelude.Maybe SigningConfiguration)
signingPlatform_signingConfiguration = Lens.lens (\SigningPlatform' {signingConfiguration} -> signingConfiguration) (\s@SigningPlatform' {} a -> s {signingConfiguration = a} :: SigningPlatform)

-- | The display name of a code signing platform.
signingPlatform_displayName :: Lens.Lens' SigningPlatform (Prelude.Maybe Prelude.Text)
signingPlatform_displayName = Lens.lens (\SigningPlatform' {displayName} -> displayName) (\s@SigningPlatform' {} a -> s {displayName = a} :: SigningPlatform)

-- | The types of targets that can be signed by a code signing platform.
signingPlatform_target :: Lens.Lens' SigningPlatform (Prelude.Maybe Prelude.Text)
signingPlatform_target = Lens.lens (\SigningPlatform' {target} -> target) (\s@SigningPlatform' {} a -> s {target = a} :: SigningPlatform)

-- | The category of a code signing platform.
signingPlatform_category :: Lens.Lens' SigningPlatform (Prelude.Maybe Category)
signingPlatform_category = Lens.lens (\SigningPlatform' {category} -> category) (\s@SigningPlatform' {} a -> s {category = a} :: SigningPlatform)

-- | Indicates whether revocation is supported for the platform.
signingPlatform_revocationSupported :: Lens.Lens' SigningPlatform (Prelude.Maybe Prelude.Bool)
signingPlatform_revocationSupported = Lens.lens (\SigningPlatform' {revocationSupported} -> revocationSupported) (\s@SigningPlatform' {} a -> s {revocationSupported = a} :: SigningPlatform)

-- | The ID of a code signing; platform.
signingPlatform_platformId :: Lens.Lens' SigningPlatform (Prelude.Maybe Prelude.Text)
signingPlatform_platformId = Lens.lens (\SigningPlatform' {platformId} -> platformId) (\s@SigningPlatform' {} a -> s {platformId = a} :: SigningPlatform)

-- | The maximum size (in MB) of code that can be signed by a code signing
-- platform.
signingPlatform_maxSizeInMB :: Lens.Lens' SigningPlatform (Prelude.Maybe Prelude.Int)
signingPlatform_maxSizeInMB = Lens.lens (\SigningPlatform' {maxSizeInMB} -> maxSizeInMB) (\s@SigningPlatform' {} a -> s {maxSizeInMB = a} :: SigningPlatform)

instance Core.FromJSON SigningPlatform where
  parseJSON =
    Core.withObject
      "SigningPlatform"
      ( \x ->
          SigningPlatform'
            Prelude.<$> (x Core..:? "signingImageFormat")
            Prelude.<*> (x Core..:? "partner")
            Prelude.<*> (x Core..:? "signingConfiguration")
            Prelude.<*> (x Core..:? "displayName")
            Prelude.<*> (x Core..:? "target")
            Prelude.<*> (x Core..:? "category")
            Prelude.<*> (x Core..:? "revocationSupported")
            Prelude.<*> (x Core..:? "platformId")
            Prelude.<*> (x Core..:? "maxSizeInMB")
      )

instance Prelude.Hashable SigningPlatform where
  hashWithSalt _salt SigningPlatform' {..} =
    _salt `Prelude.hashWithSalt` signingImageFormat
      `Prelude.hashWithSalt` partner
      `Prelude.hashWithSalt` signingConfiguration
      `Prelude.hashWithSalt` displayName
      `Prelude.hashWithSalt` target
      `Prelude.hashWithSalt` category
      `Prelude.hashWithSalt` revocationSupported
      `Prelude.hashWithSalt` platformId
      `Prelude.hashWithSalt` maxSizeInMB

instance Prelude.NFData SigningPlatform where
  rnf SigningPlatform' {..} =
    Prelude.rnf signingImageFormat
      `Prelude.seq` Prelude.rnf partner
      `Prelude.seq` Prelude.rnf signingConfiguration
      `Prelude.seq` Prelude.rnf displayName
      `Prelude.seq` Prelude.rnf target
      `Prelude.seq` Prelude.rnf category
      `Prelude.seq` Prelude.rnf revocationSupported
      `Prelude.seq` Prelude.rnf platformId
      `Prelude.seq` Prelude.rnf maxSizeInMB
