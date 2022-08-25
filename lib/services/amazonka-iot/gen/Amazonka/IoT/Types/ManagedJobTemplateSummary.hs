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
-- Module      : Amazonka.IoT.Types.ManagedJobTemplateSummary
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.IoT.Types.ManagedJobTemplateSummary where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | An object that contains information about the managed template.
--
-- /See:/ 'newManagedJobTemplateSummary' smart constructor.
data ManagedJobTemplateSummary = ManagedJobTemplateSummary'
  { -- | The unique Name for a managed template.
    templateName :: Prelude.Maybe Prelude.Text,
    -- | A list of environments that are supported with the managed job template.
    environments :: Prelude.Maybe [Prelude.Text],
    -- | The description for a managed template.
    description :: Prelude.Maybe Prelude.Text,
    -- | The version for a managed template.
    templateVersion :: Prelude.Maybe Prelude.Text,
    -- | The Amazon Resource Name (ARN) for a managed template.
    templateArn :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ManagedJobTemplateSummary' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'templateName', 'managedJobTemplateSummary_templateName' - The unique Name for a managed template.
--
-- 'environments', 'managedJobTemplateSummary_environments' - A list of environments that are supported with the managed job template.
--
-- 'description', 'managedJobTemplateSummary_description' - The description for a managed template.
--
-- 'templateVersion', 'managedJobTemplateSummary_templateVersion' - The version for a managed template.
--
-- 'templateArn', 'managedJobTemplateSummary_templateArn' - The Amazon Resource Name (ARN) for a managed template.
newManagedJobTemplateSummary ::
  ManagedJobTemplateSummary
newManagedJobTemplateSummary =
  ManagedJobTemplateSummary'
    { templateName =
        Prelude.Nothing,
      environments = Prelude.Nothing,
      description = Prelude.Nothing,
      templateVersion = Prelude.Nothing,
      templateArn = Prelude.Nothing
    }

-- | The unique Name for a managed template.
managedJobTemplateSummary_templateName :: Lens.Lens' ManagedJobTemplateSummary (Prelude.Maybe Prelude.Text)
managedJobTemplateSummary_templateName = Lens.lens (\ManagedJobTemplateSummary' {templateName} -> templateName) (\s@ManagedJobTemplateSummary' {} a -> s {templateName = a} :: ManagedJobTemplateSummary)

-- | A list of environments that are supported with the managed job template.
managedJobTemplateSummary_environments :: Lens.Lens' ManagedJobTemplateSummary (Prelude.Maybe [Prelude.Text])
managedJobTemplateSummary_environments = Lens.lens (\ManagedJobTemplateSummary' {environments} -> environments) (\s@ManagedJobTemplateSummary' {} a -> s {environments = a} :: ManagedJobTemplateSummary) Prelude.. Lens.mapping Lens.coerced

-- | The description for a managed template.
managedJobTemplateSummary_description :: Lens.Lens' ManagedJobTemplateSummary (Prelude.Maybe Prelude.Text)
managedJobTemplateSummary_description = Lens.lens (\ManagedJobTemplateSummary' {description} -> description) (\s@ManagedJobTemplateSummary' {} a -> s {description = a} :: ManagedJobTemplateSummary)

-- | The version for a managed template.
managedJobTemplateSummary_templateVersion :: Lens.Lens' ManagedJobTemplateSummary (Prelude.Maybe Prelude.Text)
managedJobTemplateSummary_templateVersion = Lens.lens (\ManagedJobTemplateSummary' {templateVersion} -> templateVersion) (\s@ManagedJobTemplateSummary' {} a -> s {templateVersion = a} :: ManagedJobTemplateSummary)

-- | The Amazon Resource Name (ARN) for a managed template.
managedJobTemplateSummary_templateArn :: Lens.Lens' ManagedJobTemplateSummary (Prelude.Maybe Prelude.Text)
managedJobTemplateSummary_templateArn = Lens.lens (\ManagedJobTemplateSummary' {templateArn} -> templateArn) (\s@ManagedJobTemplateSummary' {} a -> s {templateArn = a} :: ManagedJobTemplateSummary)

instance Core.FromJSON ManagedJobTemplateSummary where
  parseJSON =
    Core.withObject
      "ManagedJobTemplateSummary"
      ( \x ->
          ManagedJobTemplateSummary'
            Prelude.<$> (x Core..:? "templateName")
            Prelude.<*> (x Core..:? "environments" Core..!= Prelude.mempty)
            Prelude.<*> (x Core..:? "description")
            Prelude.<*> (x Core..:? "templateVersion")
            Prelude.<*> (x Core..:? "templateArn")
      )

instance Prelude.Hashable ManagedJobTemplateSummary where
  hashWithSalt _salt ManagedJobTemplateSummary' {..} =
    _salt `Prelude.hashWithSalt` templateName
      `Prelude.hashWithSalt` environments
      `Prelude.hashWithSalt` description
      `Prelude.hashWithSalt` templateVersion
      `Prelude.hashWithSalt` templateArn

instance Prelude.NFData ManagedJobTemplateSummary where
  rnf ManagedJobTemplateSummary' {..} =
    Prelude.rnf templateName
      `Prelude.seq` Prelude.rnf environments
      `Prelude.seq` Prelude.rnf description
      `Prelude.seq` Prelude.rnf templateVersion
      `Prelude.seq` Prelude.rnf templateArn
