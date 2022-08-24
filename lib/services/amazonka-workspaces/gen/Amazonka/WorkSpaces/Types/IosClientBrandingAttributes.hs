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
-- Module      : Amazonka.WorkSpaces.Types.IosClientBrandingAttributes
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.WorkSpaces.Types.IosClientBrandingAttributes where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | The client branding attributes for iOS device types. These attributes
-- are displayed on the iOS client login screen only.
--
-- Client branding attributes are public facing. Ensure you do not include
-- sensitive information.
--
-- /See:/ 'newIosClientBrandingAttributes' smart constructor.
data IosClientBrandingAttributes = IosClientBrandingAttributes'
  { -- | The support link. The link for the company\'s customer support page for
    -- their WorkSpace.
    --
    -- -   In each platform type, the @SupportEmail@ and @SupportLink@
    --     parameters are mutually exclusive. You can specify one parameter for
    --     each platform type, but not both.
    --
    -- -   The default support link is @workspaces-feedback\@amazon.com@.
    supportLink :: Prelude.Maybe Prelude.Text,
    -- | The support email. The company\'s customer support email address.
    --
    -- -   In each platform type, the @SupportEmail@ and @SupportLink@
    --     parameters are mutually exclusive. You can specify one parameter for
    --     each platform type, but not both.
    --
    -- -   The default email is @workspaces-feedback\@amazon.com@.
    supportEmail :: Prelude.Maybe Prelude.Text,
    -- | The \@2x version of the logo. This is the higher resolution display that
    -- offers a scale factor of 2.0 (or \@2x). The only image format accepted
    -- is a binary data object that is converted from a @.png@ file.
    --
    -- For more information about iOS image size and resolution, see
    -- <https://developer.apple.com/design/human-interface-guidelines/ios/icons-and-images/image-size-and-resolution/ Image Size and Resolution>
    -- in the /Apple Human Interface Guidelines/.
    logo2xUrl :: Prelude.Maybe Prelude.Text,
    -- | The logo. This is the standard-resolution display that has a 1:1 pixel
    -- density (or \@1x), where one pixel is equal to one point. The only image
    -- format accepted is a binary data object that is converted from a @.png@
    -- file.
    logoUrl :: Prelude.Maybe Prelude.Text,
    -- | The \@3x version of the logo. This is the higher resolution display that
    -- offers a scale factor of 3.0 (or \@3x).The only image format accepted is
    -- a binary data object that is converted from a @.png@ file.
    --
    -- For more information about iOS image size and resolution, see
    -- <https://developer.apple.com/design/human-interface-guidelines/ios/icons-and-images/image-size-and-resolution/ Image Size and Resolution>
    -- in the /Apple Human Interface Guidelines/.
    logo3xUrl :: Prelude.Maybe Prelude.Text,
    -- | The login message. Specified as a key value pair, in which the key is a
    -- locale and the value is the localized message for that locale. The only
    -- key supported is @en_US@. The HTML tags supported include the following:
    -- @a, b, blockquote, br, cite, code, dd, dl, dt, div, em, i, li, ol, p, pre, q, small, span, strike, strong, sub, sup, u, ul@.
    loginMessage :: Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text),
    -- | The forgotten password link. This is the web address that users can go
    -- to if they forget the password for their WorkSpace.
    forgotPasswordLink :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'IosClientBrandingAttributes' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'supportLink', 'iosClientBrandingAttributes_supportLink' - The support link. The link for the company\'s customer support page for
-- their WorkSpace.
--
-- -   In each platform type, the @SupportEmail@ and @SupportLink@
--     parameters are mutually exclusive. You can specify one parameter for
--     each platform type, but not both.
--
-- -   The default support link is @workspaces-feedback\@amazon.com@.
--
-- 'supportEmail', 'iosClientBrandingAttributes_supportEmail' - The support email. The company\'s customer support email address.
--
-- -   In each platform type, the @SupportEmail@ and @SupportLink@
--     parameters are mutually exclusive. You can specify one parameter for
--     each platform type, but not both.
--
-- -   The default email is @workspaces-feedback\@amazon.com@.
--
-- 'logo2xUrl', 'iosClientBrandingAttributes_logo2xUrl' - The \@2x version of the logo. This is the higher resolution display that
-- offers a scale factor of 2.0 (or \@2x). The only image format accepted
-- is a binary data object that is converted from a @.png@ file.
--
-- For more information about iOS image size and resolution, see
-- <https://developer.apple.com/design/human-interface-guidelines/ios/icons-and-images/image-size-and-resolution/ Image Size and Resolution>
-- in the /Apple Human Interface Guidelines/.
--
-- 'logoUrl', 'iosClientBrandingAttributes_logoUrl' - The logo. This is the standard-resolution display that has a 1:1 pixel
-- density (or \@1x), where one pixel is equal to one point. The only image
-- format accepted is a binary data object that is converted from a @.png@
-- file.
--
-- 'logo3xUrl', 'iosClientBrandingAttributes_logo3xUrl' - The \@3x version of the logo. This is the higher resolution display that
-- offers a scale factor of 3.0 (or \@3x).The only image format accepted is
-- a binary data object that is converted from a @.png@ file.
--
-- For more information about iOS image size and resolution, see
-- <https://developer.apple.com/design/human-interface-guidelines/ios/icons-and-images/image-size-and-resolution/ Image Size and Resolution>
-- in the /Apple Human Interface Guidelines/.
--
-- 'loginMessage', 'iosClientBrandingAttributes_loginMessage' - The login message. Specified as a key value pair, in which the key is a
-- locale and the value is the localized message for that locale. The only
-- key supported is @en_US@. The HTML tags supported include the following:
-- @a, b, blockquote, br, cite, code, dd, dl, dt, div, em, i, li, ol, p, pre, q, small, span, strike, strong, sub, sup, u, ul@.
--
-- 'forgotPasswordLink', 'iosClientBrandingAttributes_forgotPasswordLink' - The forgotten password link. This is the web address that users can go
-- to if they forget the password for their WorkSpace.
newIosClientBrandingAttributes ::
  IosClientBrandingAttributes
newIosClientBrandingAttributes =
  IosClientBrandingAttributes'
    { supportLink =
        Prelude.Nothing,
      supportEmail = Prelude.Nothing,
      logo2xUrl = Prelude.Nothing,
      logoUrl = Prelude.Nothing,
      logo3xUrl = Prelude.Nothing,
      loginMessage = Prelude.Nothing,
      forgotPasswordLink = Prelude.Nothing
    }

-- | The support link. The link for the company\'s customer support page for
-- their WorkSpace.
--
-- -   In each platform type, the @SupportEmail@ and @SupportLink@
--     parameters are mutually exclusive. You can specify one parameter for
--     each platform type, but not both.
--
-- -   The default support link is @workspaces-feedback\@amazon.com@.
iosClientBrandingAttributes_supportLink :: Lens.Lens' IosClientBrandingAttributes (Prelude.Maybe Prelude.Text)
iosClientBrandingAttributes_supportLink = Lens.lens (\IosClientBrandingAttributes' {supportLink} -> supportLink) (\s@IosClientBrandingAttributes' {} a -> s {supportLink = a} :: IosClientBrandingAttributes)

-- | The support email. The company\'s customer support email address.
--
-- -   In each platform type, the @SupportEmail@ and @SupportLink@
--     parameters are mutually exclusive. You can specify one parameter for
--     each platform type, but not both.
--
-- -   The default email is @workspaces-feedback\@amazon.com@.
iosClientBrandingAttributes_supportEmail :: Lens.Lens' IosClientBrandingAttributes (Prelude.Maybe Prelude.Text)
iosClientBrandingAttributes_supportEmail = Lens.lens (\IosClientBrandingAttributes' {supportEmail} -> supportEmail) (\s@IosClientBrandingAttributes' {} a -> s {supportEmail = a} :: IosClientBrandingAttributes)

-- | The \@2x version of the logo. This is the higher resolution display that
-- offers a scale factor of 2.0 (or \@2x). The only image format accepted
-- is a binary data object that is converted from a @.png@ file.
--
-- For more information about iOS image size and resolution, see
-- <https://developer.apple.com/design/human-interface-guidelines/ios/icons-and-images/image-size-and-resolution/ Image Size and Resolution>
-- in the /Apple Human Interface Guidelines/.
iosClientBrandingAttributes_logo2xUrl :: Lens.Lens' IosClientBrandingAttributes (Prelude.Maybe Prelude.Text)
iosClientBrandingAttributes_logo2xUrl = Lens.lens (\IosClientBrandingAttributes' {logo2xUrl} -> logo2xUrl) (\s@IosClientBrandingAttributes' {} a -> s {logo2xUrl = a} :: IosClientBrandingAttributes)

-- | The logo. This is the standard-resolution display that has a 1:1 pixel
-- density (or \@1x), where one pixel is equal to one point. The only image
-- format accepted is a binary data object that is converted from a @.png@
-- file.
iosClientBrandingAttributes_logoUrl :: Lens.Lens' IosClientBrandingAttributes (Prelude.Maybe Prelude.Text)
iosClientBrandingAttributes_logoUrl = Lens.lens (\IosClientBrandingAttributes' {logoUrl} -> logoUrl) (\s@IosClientBrandingAttributes' {} a -> s {logoUrl = a} :: IosClientBrandingAttributes)

-- | The \@3x version of the logo. This is the higher resolution display that
-- offers a scale factor of 3.0 (or \@3x).The only image format accepted is
-- a binary data object that is converted from a @.png@ file.
--
-- For more information about iOS image size and resolution, see
-- <https://developer.apple.com/design/human-interface-guidelines/ios/icons-and-images/image-size-and-resolution/ Image Size and Resolution>
-- in the /Apple Human Interface Guidelines/.
iosClientBrandingAttributes_logo3xUrl :: Lens.Lens' IosClientBrandingAttributes (Prelude.Maybe Prelude.Text)
iosClientBrandingAttributes_logo3xUrl = Lens.lens (\IosClientBrandingAttributes' {logo3xUrl} -> logo3xUrl) (\s@IosClientBrandingAttributes' {} a -> s {logo3xUrl = a} :: IosClientBrandingAttributes)

-- | The login message. Specified as a key value pair, in which the key is a
-- locale and the value is the localized message for that locale. The only
-- key supported is @en_US@. The HTML tags supported include the following:
-- @a, b, blockquote, br, cite, code, dd, dl, dt, div, em, i, li, ol, p, pre, q, small, span, strike, strong, sub, sup, u, ul@.
iosClientBrandingAttributes_loginMessage :: Lens.Lens' IosClientBrandingAttributes (Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text))
iosClientBrandingAttributes_loginMessage = Lens.lens (\IosClientBrandingAttributes' {loginMessage} -> loginMessage) (\s@IosClientBrandingAttributes' {} a -> s {loginMessage = a} :: IosClientBrandingAttributes) Prelude.. Lens.mapping Lens.coerced

-- | The forgotten password link. This is the web address that users can go
-- to if they forget the password for their WorkSpace.
iosClientBrandingAttributes_forgotPasswordLink :: Lens.Lens' IosClientBrandingAttributes (Prelude.Maybe Prelude.Text)
iosClientBrandingAttributes_forgotPasswordLink = Lens.lens (\IosClientBrandingAttributes' {forgotPasswordLink} -> forgotPasswordLink) (\s@IosClientBrandingAttributes' {} a -> s {forgotPasswordLink = a} :: IosClientBrandingAttributes)

instance Core.FromJSON IosClientBrandingAttributes where
  parseJSON =
    Core.withObject
      "IosClientBrandingAttributes"
      ( \x ->
          IosClientBrandingAttributes'
            Prelude.<$> (x Core..:? "SupportLink")
            Prelude.<*> (x Core..:? "SupportEmail")
            Prelude.<*> (x Core..:? "Logo2xUrl")
            Prelude.<*> (x Core..:? "LogoUrl")
            Prelude.<*> (x Core..:? "Logo3xUrl")
            Prelude.<*> (x Core..:? "LoginMessage" Core..!= Prelude.mempty)
            Prelude.<*> (x Core..:? "ForgotPasswordLink")
      )

instance Prelude.Hashable IosClientBrandingAttributes where
  hashWithSalt _salt IosClientBrandingAttributes' {..} =
    _salt `Prelude.hashWithSalt` supportLink
      `Prelude.hashWithSalt` supportEmail
      `Prelude.hashWithSalt` logo2xUrl
      `Prelude.hashWithSalt` logoUrl
      `Prelude.hashWithSalt` logo3xUrl
      `Prelude.hashWithSalt` loginMessage
      `Prelude.hashWithSalt` forgotPasswordLink

instance Prelude.NFData IosClientBrandingAttributes where
  rnf IosClientBrandingAttributes' {..} =
    Prelude.rnf supportLink
      `Prelude.seq` Prelude.rnf supportEmail
      `Prelude.seq` Prelude.rnf logo2xUrl
      `Prelude.seq` Prelude.rnf logoUrl
      `Prelude.seq` Prelude.rnf logo3xUrl
      `Prelude.seq` Prelude.rnf loginMessage
      `Prelude.seq` Prelude.rnf forgotPasswordLink
