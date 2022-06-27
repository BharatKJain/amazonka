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
-- Module      : Amazonka.RAM.Types.ResourceSharePermissionSummary
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.RAM.Types.ResourceSharePermissionSummary where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | Information about a permission that is associated with a resource share.
--
-- /See:/ 'newResourceSharePermissionSummary' smart constructor.
data ResourceSharePermissionSummary = ResourceSharePermissionSummary'
  { -- | The type of resource to which the permission applies.
    resourceType :: Prelude.Maybe Prelude.Text,
    -- | The name of the permission.
    name :: Prelude.Maybe Prelude.Text,
    -- | The Amazon Resource Name (ARN) of the permission.
    arn :: Prelude.Maybe Prelude.Text,
    -- | The current status of the permission.
    status :: Prelude.Maybe Prelude.Text,
    -- | The date and time when the permission was last updated.
    lastUpdatedTime :: Prelude.Maybe Core.POSIX,
    -- | Specifies whether the version of the permission is set to the default
    -- version for this permission.
    defaultVersion :: Prelude.Maybe Prelude.Bool,
    -- | The date and time when the permission was created.
    creationTime :: Prelude.Maybe Core.POSIX,
    -- | Specifies whether the version of the permission is set to the default
    -- version for this resource type.
    isResourceTypeDefault :: Prelude.Maybe Prelude.Bool,
    -- | The identifier for the version of the permission.
    version :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ResourceSharePermissionSummary' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'resourceType', 'resourceSharePermissionSummary_resourceType' - The type of resource to which the permission applies.
--
-- 'name', 'resourceSharePermissionSummary_name' - The name of the permission.
--
-- 'arn', 'resourceSharePermissionSummary_arn' - The Amazon Resource Name (ARN) of the permission.
--
-- 'status', 'resourceSharePermissionSummary_status' - The current status of the permission.
--
-- 'lastUpdatedTime', 'resourceSharePermissionSummary_lastUpdatedTime' - The date and time when the permission was last updated.
--
-- 'defaultVersion', 'resourceSharePermissionSummary_defaultVersion' - Specifies whether the version of the permission is set to the default
-- version for this permission.
--
-- 'creationTime', 'resourceSharePermissionSummary_creationTime' - The date and time when the permission was created.
--
-- 'isResourceTypeDefault', 'resourceSharePermissionSummary_isResourceTypeDefault' - Specifies whether the version of the permission is set to the default
-- version for this resource type.
--
-- 'version', 'resourceSharePermissionSummary_version' - The identifier for the version of the permission.
newResourceSharePermissionSummary ::
  ResourceSharePermissionSummary
newResourceSharePermissionSummary =
  ResourceSharePermissionSummary'
    { resourceType =
        Prelude.Nothing,
      name = Prelude.Nothing,
      arn = Prelude.Nothing,
      status = Prelude.Nothing,
      lastUpdatedTime = Prelude.Nothing,
      defaultVersion = Prelude.Nothing,
      creationTime = Prelude.Nothing,
      isResourceTypeDefault = Prelude.Nothing,
      version = Prelude.Nothing
    }

-- | The type of resource to which the permission applies.
resourceSharePermissionSummary_resourceType :: Lens.Lens' ResourceSharePermissionSummary (Prelude.Maybe Prelude.Text)
resourceSharePermissionSummary_resourceType = Lens.lens (\ResourceSharePermissionSummary' {resourceType} -> resourceType) (\s@ResourceSharePermissionSummary' {} a -> s {resourceType = a} :: ResourceSharePermissionSummary)

-- | The name of the permission.
resourceSharePermissionSummary_name :: Lens.Lens' ResourceSharePermissionSummary (Prelude.Maybe Prelude.Text)
resourceSharePermissionSummary_name = Lens.lens (\ResourceSharePermissionSummary' {name} -> name) (\s@ResourceSharePermissionSummary' {} a -> s {name = a} :: ResourceSharePermissionSummary)

-- | The Amazon Resource Name (ARN) of the permission.
resourceSharePermissionSummary_arn :: Lens.Lens' ResourceSharePermissionSummary (Prelude.Maybe Prelude.Text)
resourceSharePermissionSummary_arn = Lens.lens (\ResourceSharePermissionSummary' {arn} -> arn) (\s@ResourceSharePermissionSummary' {} a -> s {arn = a} :: ResourceSharePermissionSummary)

-- | The current status of the permission.
resourceSharePermissionSummary_status :: Lens.Lens' ResourceSharePermissionSummary (Prelude.Maybe Prelude.Text)
resourceSharePermissionSummary_status = Lens.lens (\ResourceSharePermissionSummary' {status} -> status) (\s@ResourceSharePermissionSummary' {} a -> s {status = a} :: ResourceSharePermissionSummary)

-- | The date and time when the permission was last updated.
resourceSharePermissionSummary_lastUpdatedTime :: Lens.Lens' ResourceSharePermissionSummary (Prelude.Maybe Prelude.UTCTime)
resourceSharePermissionSummary_lastUpdatedTime = Lens.lens (\ResourceSharePermissionSummary' {lastUpdatedTime} -> lastUpdatedTime) (\s@ResourceSharePermissionSummary' {} a -> s {lastUpdatedTime = a} :: ResourceSharePermissionSummary) Prelude.. Lens.mapping Core._Time

-- | Specifies whether the version of the permission is set to the default
-- version for this permission.
resourceSharePermissionSummary_defaultVersion :: Lens.Lens' ResourceSharePermissionSummary (Prelude.Maybe Prelude.Bool)
resourceSharePermissionSummary_defaultVersion = Lens.lens (\ResourceSharePermissionSummary' {defaultVersion} -> defaultVersion) (\s@ResourceSharePermissionSummary' {} a -> s {defaultVersion = a} :: ResourceSharePermissionSummary)

-- | The date and time when the permission was created.
resourceSharePermissionSummary_creationTime :: Lens.Lens' ResourceSharePermissionSummary (Prelude.Maybe Prelude.UTCTime)
resourceSharePermissionSummary_creationTime = Lens.lens (\ResourceSharePermissionSummary' {creationTime} -> creationTime) (\s@ResourceSharePermissionSummary' {} a -> s {creationTime = a} :: ResourceSharePermissionSummary) Prelude.. Lens.mapping Core._Time

-- | Specifies whether the version of the permission is set to the default
-- version for this resource type.
resourceSharePermissionSummary_isResourceTypeDefault :: Lens.Lens' ResourceSharePermissionSummary (Prelude.Maybe Prelude.Bool)
resourceSharePermissionSummary_isResourceTypeDefault = Lens.lens (\ResourceSharePermissionSummary' {isResourceTypeDefault} -> isResourceTypeDefault) (\s@ResourceSharePermissionSummary' {} a -> s {isResourceTypeDefault = a} :: ResourceSharePermissionSummary)

-- | The identifier for the version of the permission.
resourceSharePermissionSummary_version :: Lens.Lens' ResourceSharePermissionSummary (Prelude.Maybe Prelude.Text)
resourceSharePermissionSummary_version = Lens.lens (\ResourceSharePermissionSummary' {version} -> version) (\s@ResourceSharePermissionSummary' {} a -> s {version = a} :: ResourceSharePermissionSummary)

instance Core.FromJSON ResourceSharePermissionSummary where
  parseJSON =
    Core.withObject
      "ResourceSharePermissionSummary"
      ( \x ->
          ResourceSharePermissionSummary'
            Prelude.<$> (x Core..:? "resourceType")
            Prelude.<*> (x Core..:? "name")
            Prelude.<*> (x Core..:? "arn")
            Prelude.<*> (x Core..:? "status")
            Prelude.<*> (x Core..:? "lastUpdatedTime")
            Prelude.<*> (x Core..:? "defaultVersion")
            Prelude.<*> (x Core..:? "creationTime")
            Prelude.<*> (x Core..:? "isResourceTypeDefault")
            Prelude.<*> (x Core..:? "version")
      )

instance
  Prelude.Hashable
    ResourceSharePermissionSummary
  where
  hashWithSalt
    _salt
    ResourceSharePermissionSummary' {..} =
      _salt `Prelude.hashWithSalt` resourceType
        `Prelude.hashWithSalt` name
        `Prelude.hashWithSalt` arn
        `Prelude.hashWithSalt` status
        `Prelude.hashWithSalt` lastUpdatedTime
        `Prelude.hashWithSalt` defaultVersion
        `Prelude.hashWithSalt` creationTime
        `Prelude.hashWithSalt` isResourceTypeDefault
        `Prelude.hashWithSalt` version

instance
  Prelude.NFData
    ResourceSharePermissionSummary
  where
  rnf ResourceSharePermissionSummary' {..} =
    Prelude.rnf resourceType
      `Prelude.seq` Prelude.rnf name
      `Prelude.seq` Prelude.rnf arn
      `Prelude.seq` Prelude.rnf status
      `Prelude.seq` Prelude.rnf lastUpdatedTime
      `Prelude.seq` Prelude.rnf defaultVersion
      `Prelude.seq` Prelude.rnf creationTime
      `Prelude.seq` Prelude.rnf isResourceTypeDefault
      `Prelude.seq` Prelude.rnf version
