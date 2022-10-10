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
-- Module      : Amazonka.AutoScaling.Types.LaunchTemplate
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.AutoScaling.Types.LaunchTemplate where

import Amazonka.AutoScaling.Types.LaunchTemplateOverrides
import Amazonka.AutoScaling.Types.LaunchTemplateSpecification
import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | Describes a launch template and overrides. You specify these properties
-- as part of a mixed instances policy.
--
-- /See:/ 'newLaunchTemplate' smart constructor.
data LaunchTemplate = LaunchTemplate'
  { -- | The launch template to use.
    launchTemplateSpecification :: Prelude.Maybe LaunchTemplateSpecification,
    -- | Any properties that you specify override the same properties in the
    -- launch template. If not provided, Amazon EC2 Auto Scaling uses the
    -- instance type or instance type requirements specified in the launch
    -- template when it launches an instance.
    --
    -- The overrides can include either one or more instance types or a set of
    -- instance requirements, but not both.
    overrides :: Prelude.Maybe [LaunchTemplateOverrides]
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'LaunchTemplate' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'launchTemplateSpecification', 'launchTemplate_launchTemplateSpecification' - The launch template to use.
--
-- 'overrides', 'launchTemplate_overrides' - Any properties that you specify override the same properties in the
-- launch template. If not provided, Amazon EC2 Auto Scaling uses the
-- instance type or instance type requirements specified in the launch
-- template when it launches an instance.
--
-- The overrides can include either one or more instance types or a set of
-- instance requirements, but not both.
newLaunchTemplate ::
  LaunchTemplate
newLaunchTemplate =
  LaunchTemplate'
    { launchTemplateSpecification =
        Prelude.Nothing,
      overrides = Prelude.Nothing
    }

-- | The launch template to use.
launchTemplate_launchTemplateSpecification :: Lens.Lens' LaunchTemplate (Prelude.Maybe LaunchTemplateSpecification)
launchTemplate_launchTemplateSpecification = Lens.lens (\LaunchTemplate' {launchTemplateSpecification} -> launchTemplateSpecification) (\s@LaunchTemplate' {} a -> s {launchTemplateSpecification = a} :: LaunchTemplate)

-- | Any properties that you specify override the same properties in the
-- launch template. If not provided, Amazon EC2 Auto Scaling uses the
-- instance type or instance type requirements specified in the launch
-- template when it launches an instance.
--
-- The overrides can include either one or more instance types or a set of
-- instance requirements, but not both.
launchTemplate_overrides :: Lens.Lens' LaunchTemplate (Prelude.Maybe [LaunchTemplateOverrides])
launchTemplate_overrides = Lens.lens (\LaunchTemplate' {overrides} -> overrides) (\s@LaunchTemplate' {} a -> s {overrides = a} :: LaunchTemplate) Prelude.. Lens.mapping Lens.coerced

instance Core.FromXML LaunchTemplate where
  parseXML x =
    LaunchTemplate'
      Prelude.<$> (x Core..@? "LaunchTemplateSpecification")
      Prelude.<*> ( x Core..@? "Overrides" Core..!@ Prelude.mempty
                      Prelude.>>= Core.may (Core.parseXMLList "member")
                  )

instance Prelude.Hashable LaunchTemplate where
  hashWithSalt _salt LaunchTemplate' {..} =
    _salt
      `Prelude.hashWithSalt` launchTemplateSpecification
      `Prelude.hashWithSalt` overrides

instance Prelude.NFData LaunchTemplate where
  rnf LaunchTemplate' {..} =
    Prelude.rnf launchTemplateSpecification
      `Prelude.seq` Prelude.rnf overrides

instance Core.ToQuery LaunchTemplate where
  toQuery LaunchTemplate' {..} =
    Prelude.mconcat
      [ "LaunchTemplateSpecification"
          Core.=: launchTemplateSpecification,
        "Overrides"
          Core.=: Core.toQuery
            (Core.toQueryList "member" Prelude.<$> overrides)
      ]
