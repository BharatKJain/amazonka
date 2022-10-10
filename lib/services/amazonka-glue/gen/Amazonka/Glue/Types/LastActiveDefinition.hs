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
-- Module      : Amazonka.Glue.Types.LastActiveDefinition
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.Glue.Types.LastActiveDefinition where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | When there are multiple versions of a blueprint and the latest version
-- has some errors, this attribute indicates the last successful blueprint
-- definition that is available with the service.
--
-- /See:/ 'newLastActiveDefinition' smart constructor.
data LastActiveDefinition = LastActiveDefinition'
  { -- | The date and time the blueprint was last modified.
    lastModifiedOn :: Prelude.Maybe Core.POSIX,
    -- | A JSON string specifying the parameters for the blueprint.
    parameterSpec :: Prelude.Maybe Prelude.Text,
    -- | The description of the blueprint.
    description :: Prelude.Maybe Prelude.Text,
    -- | Specifies a path in Amazon S3 where the blueprint is published by the
    -- Glue developer.
    blueprintLocation :: Prelude.Maybe Prelude.Text,
    -- | Specifies a path in Amazon S3 where the blueprint is copied when you
    -- create or update the blueprint.
    blueprintServiceLocation :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'LastActiveDefinition' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'lastModifiedOn', 'lastActiveDefinition_lastModifiedOn' - The date and time the blueprint was last modified.
--
-- 'parameterSpec', 'lastActiveDefinition_parameterSpec' - A JSON string specifying the parameters for the blueprint.
--
-- 'description', 'lastActiveDefinition_description' - The description of the blueprint.
--
-- 'blueprintLocation', 'lastActiveDefinition_blueprintLocation' - Specifies a path in Amazon S3 where the blueprint is published by the
-- Glue developer.
--
-- 'blueprintServiceLocation', 'lastActiveDefinition_blueprintServiceLocation' - Specifies a path in Amazon S3 where the blueprint is copied when you
-- create or update the blueprint.
newLastActiveDefinition ::
  LastActiveDefinition
newLastActiveDefinition =
  LastActiveDefinition'
    { lastModifiedOn =
        Prelude.Nothing,
      parameterSpec = Prelude.Nothing,
      description = Prelude.Nothing,
      blueprintLocation = Prelude.Nothing,
      blueprintServiceLocation = Prelude.Nothing
    }

-- | The date and time the blueprint was last modified.
lastActiveDefinition_lastModifiedOn :: Lens.Lens' LastActiveDefinition (Prelude.Maybe Prelude.UTCTime)
lastActiveDefinition_lastModifiedOn = Lens.lens (\LastActiveDefinition' {lastModifiedOn} -> lastModifiedOn) (\s@LastActiveDefinition' {} a -> s {lastModifiedOn = a} :: LastActiveDefinition) Prelude.. Lens.mapping Core._Time

-- | A JSON string specifying the parameters for the blueprint.
lastActiveDefinition_parameterSpec :: Lens.Lens' LastActiveDefinition (Prelude.Maybe Prelude.Text)
lastActiveDefinition_parameterSpec = Lens.lens (\LastActiveDefinition' {parameterSpec} -> parameterSpec) (\s@LastActiveDefinition' {} a -> s {parameterSpec = a} :: LastActiveDefinition)

-- | The description of the blueprint.
lastActiveDefinition_description :: Lens.Lens' LastActiveDefinition (Prelude.Maybe Prelude.Text)
lastActiveDefinition_description = Lens.lens (\LastActiveDefinition' {description} -> description) (\s@LastActiveDefinition' {} a -> s {description = a} :: LastActiveDefinition)

-- | Specifies a path in Amazon S3 where the blueprint is published by the
-- Glue developer.
lastActiveDefinition_blueprintLocation :: Lens.Lens' LastActiveDefinition (Prelude.Maybe Prelude.Text)
lastActiveDefinition_blueprintLocation = Lens.lens (\LastActiveDefinition' {blueprintLocation} -> blueprintLocation) (\s@LastActiveDefinition' {} a -> s {blueprintLocation = a} :: LastActiveDefinition)

-- | Specifies a path in Amazon S3 where the blueprint is copied when you
-- create or update the blueprint.
lastActiveDefinition_blueprintServiceLocation :: Lens.Lens' LastActiveDefinition (Prelude.Maybe Prelude.Text)
lastActiveDefinition_blueprintServiceLocation = Lens.lens (\LastActiveDefinition' {blueprintServiceLocation} -> blueprintServiceLocation) (\s@LastActiveDefinition' {} a -> s {blueprintServiceLocation = a} :: LastActiveDefinition)

instance Core.FromJSON LastActiveDefinition where
  parseJSON =
    Core.withObject
      "LastActiveDefinition"
      ( \x ->
          LastActiveDefinition'
            Prelude.<$> (x Core..:? "LastModifiedOn")
            Prelude.<*> (x Core..:? "ParameterSpec")
            Prelude.<*> (x Core..:? "Description")
            Prelude.<*> (x Core..:? "BlueprintLocation")
            Prelude.<*> (x Core..:? "BlueprintServiceLocation")
      )

instance Prelude.Hashable LastActiveDefinition where
  hashWithSalt _salt LastActiveDefinition' {..} =
    _salt `Prelude.hashWithSalt` lastModifiedOn
      `Prelude.hashWithSalt` parameterSpec
      `Prelude.hashWithSalt` description
      `Prelude.hashWithSalt` blueprintLocation
      `Prelude.hashWithSalt` blueprintServiceLocation

instance Prelude.NFData LastActiveDefinition where
  rnf LastActiveDefinition' {..} =
    Prelude.rnf lastModifiedOn
      `Prelude.seq` Prelude.rnf parameterSpec
      `Prelude.seq` Prelude.rnf description
      `Prelude.seq` Prelude.rnf blueprintLocation
      `Prelude.seq` Prelude.rnf blueprintServiceLocation
