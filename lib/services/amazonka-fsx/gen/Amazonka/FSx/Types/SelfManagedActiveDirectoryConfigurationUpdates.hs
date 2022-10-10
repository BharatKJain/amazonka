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
-- Module      : Amazonka.FSx.Types.SelfManagedActiveDirectoryConfigurationUpdates
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.FSx.Types.SelfManagedActiveDirectoryConfigurationUpdates where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | The configuration that Amazon FSx uses to join the Windows File Server
-- instance to a self-managed Microsoft Active Directory (AD) directory.
--
-- /See:/ 'newSelfManagedActiveDirectoryConfigurationUpdates' smart constructor.
data SelfManagedActiveDirectoryConfigurationUpdates = SelfManagedActiveDirectoryConfigurationUpdates'
  { -- | The password for the service account on your self-managed AD domain that
    -- Amazon FSx will use to join to your AD domain.
    password :: Prelude.Maybe (Core.Sensitive Prelude.Text),
    -- | A list of up to three IP addresses of DNS servers or domain controllers
    -- in the self-managed AD directory.
    dnsIps :: Prelude.Maybe (Prelude.NonEmpty Prelude.Text),
    -- | The user name for the service account on your self-managed AD domain
    -- that Amazon FSx will use to join to your AD domain. This account must
    -- have the permission to join computers to the domain in the
    -- organizational unit provided in @OrganizationalUnitDistinguishedName@.
    userName :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'SelfManagedActiveDirectoryConfigurationUpdates' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'password', 'selfManagedActiveDirectoryConfigurationUpdates_password' - The password for the service account on your self-managed AD domain that
-- Amazon FSx will use to join to your AD domain.
--
-- 'dnsIps', 'selfManagedActiveDirectoryConfigurationUpdates_dnsIps' - A list of up to three IP addresses of DNS servers or domain controllers
-- in the self-managed AD directory.
--
-- 'userName', 'selfManagedActiveDirectoryConfigurationUpdates_userName' - The user name for the service account on your self-managed AD domain
-- that Amazon FSx will use to join to your AD domain. This account must
-- have the permission to join computers to the domain in the
-- organizational unit provided in @OrganizationalUnitDistinguishedName@.
newSelfManagedActiveDirectoryConfigurationUpdates ::
  SelfManagedActiveDirectoryConfigurationUpdates
newSelfManagedActiveDirectoryConfigurationUpdates =
  SelfManagedActiveDirectoryConfigurationUpdates'
    { password =
        Prelude.Nothing,
      dnsIps = Prelude.Nothing,
      userName = Prelude.Nothing
    }

-- | The password for the service account on your self-managed AD domain that
-- Amazon FSx will use to join to your AD domain.
selfManagedActiveDirectoryConfigurationUpdates_password :: Lens.Lens' SelfManagedActiveDirectoryConfigurationUpdates (Prelude.Maybe Prelude.Text)
selfManagedActiveDirectoryConfigurationUpdates_password = Lens.lens (\SelfManagedActiveDirectoryConfigurationUpdates' {password} -> password) (\s@SelfManagedActiveDirectoryConfigurationUpdates' {} a -> s {password = a} :: SelfManagedActiveDirectoryConfigurationUpdates) Prelude.. Lens.mapping Core._Sensitive

-- | A list of up to three IP addresses of DNS servers or domain controllers
-- in the self-managed AD directory.
selfManagedActiveDirectoryConfigurationUpdates_dnsIps :: Lens.Lens' SelfManagedActiveDirectoryConfigurationUpdates (Prelude.Maybe (Prelude.NonEmpty Prelude.Text))
selfManagedActiveDirectoryConfigurationUpdates_dnsIps = Lens.lens (\SelfManagedActiveDirectoryConfigurationUpdates' {dnsIps} -> dnsIps) (\s@SelfManagedActiveDirectoryConfigurationUpdates' {} a -> s {dnsIps = a} :: SelfManagedActiveDirectoryConfigurationUpdates) Prelude.. Lens.mapping Lens.coerced

-- | The user name for the service account on your self-managed AD domain
-- that Amazon FSx will use to join to your AD domain. This account must
-- have the permission to join computers to the domain in the
-- organizational unit provided in @OrganizationalUnitDistinguishedName@.
selfManagedActiveDirectoryConfigurationUpdates_userName :: Lens.Lens' SelfManagedActiveDirectoryConfigurationUpdates (Prelude.Maybe Prelude.Text)
selfManagedActiveDirectoryConfigurationUpdates_userName = Lens.lens (\SelfManagedActiveDirectoryConfigurationUpdates' {userName} -> userName) (\s@SelfManagedActiveDirectoryConfigurationUpdates' {} a -> s {userName = a} :: SelfManagedActiveDirectoryConfigurationUpdates)

instance
  Prelude.Hashable
    SelfManagedActiveDirectoryConfigurationUpdates
  where
  hashWithSalt
    _salt
    SelfManagedActiveDirectoryConfigurationUpdates' {..} =
      _salt `Prelude.hashWithSalt` password
        `Prelude.hashWithSalt` dnsIps
        `Prelude.hashWithSalt` userName

instance
  Prelude.NFData
    SelfManagedActiveDirectoryConfigurationUpdates
  where
  rnf
    SelfManagedActiveDirectoryConfigurationUpdates' {..} =
      Prelude.rnf password
        `Prelude.seq` Prelude.rnf dnsIps
        `Prelude.seq` Prelude.rnf userName

instance
  Core.ToJSON
    SelfManagedActiveDirectoryConfigurationUpdates
  where
  toJSON
    SelfManagedActiveDirectoryConfigurationUpdates' {..} =
      Core.object
        ( Prelude.catMaybes
            [ ("Password" Core..=) Prelude.<$> password,
              ("DnsIps" Core..=) Prelude.<$> dnsIps,
              ("UserName" Core..=) Prelude.<$> userName
            ]
        )
