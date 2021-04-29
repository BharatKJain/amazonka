{-# LANGUAGE DeriveDataTypeable #-}
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
-- Module      : Network.AWS.SageMaker.Types.MetadataProperties
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.MetadataProperties where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Metadata properties of the tracking entity, trial, or trial component.
--
-- /See:/ 'newMetadataProperties' smart constructor.
data MetadataProperties = MetadataProperties'
  { -- | The entity this entity was generated by.
    generatedBy :: Prelude.Maybe Prelude.Text,
    -- | The commit ID.
    commitId :: Prelude.Maybe Prelude.Text,
    -- | The project ID.
    projectId :: Prelude.Maybe Prelude.Text,
    -- | The repository.
    repository :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'MetadataProperties' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'generatedBy', 'metadataProperties_generatedBy' - The entity this entity was generated by.
--
-- 'commitId', 'metadataProperties_commitId' - The commit ID.
--
-- 'projectId', 'metadataProperties_projectId' - The project ID.
--
-- 'repository', 'metadataProperties_repository' - The repository.
newMetadataProperties ::
  MetadataProperties
newMetadataProperties =
  MetadataProperties'
    { generatedBy = Prelude.Nothing,
      commitId = Prelude.Nothing,
      projectId = Prelude.Nothing,
      repository = Prelude.Nothing
    }

-- | The entity this entity was generated by.
metadataProperties_generatedBy :: Lens.Lens' MetadataProperties (Prelude.Maybe Prelude.Text)
metadataProperties_generatedBy = Lens.lens (\MetadataProperties' {generatedBy} -> generatedBy) (\s@MetadataProperties' {} a -> s {generatedBy = a} :: MetadataProperties)

-- | The commit ID.
metadataProperties_commitId :: Lens.Lens' MetadataProperties (Prelude.Maybe Prelude.Text)
metadataProperties_commitId = Lens.lens (\MetadataProperties' {commitId} -> commitId) (\s@MetadataProperties' {} a -> s {commitId = a} :: MetadataProperties)

-- | The project ID.
metadataProperties_projectId :: Lens.Lens' MetadataProperties (Prelude.Maybe Prelude.Text)
metadataProperties_projectId = Lens.lens (\MetadataProperties' {projectId} -> projectId) (\s@MetadataProperties' {} a -> s {projectId = a} :: MetadataProperties)

-- | The repository.
metadataProperties_repository :: Lens.Lens' MetadataProperties (Prelude.Maybe Prelude.Text)
metadataProperties_repository = Lens.lens (\MetadataProperties' {repository} -> repository) (\s@MetadataProperties' {} a -> s {repository = a} :: MetadataProperties)

instance Prelude.FromJSON MetadataProperties where
  parseJSON =
    Prelude.withObject
      "MetadataProperties"
      ( \x ->
          MetadataProperties'
            Prelude.<$> (x Prelude..:? "GeneratedBy")
            Prelude.<*> (x Prelude..:? "CommitId")
            Prelude.<*> (x Prelude..:? "ProjectId")
            Prelude.<*> (x Prelude..:? "Repository")
      )

instance Prelude.Hashable MetadataProperties

instance Prelude.NFData MetadataProperties

instance Prelude.ToJSON MetadataProperties where
  toJSON MetadataProperties' {..} =
    Prelude.object
      ( Prelude.catMaybes
          [ ("GeneratedBy" Prelude..=) Prelude.<$> generatedBy,
            ("CommitId" Prelude..=) Prelude.<$> commitId,
            ("ProjectId" Prelude..=) Prelude.<$> projectId,
            ("Repository" Prelude..=) Prelude.<$> repository
          ]
      )
