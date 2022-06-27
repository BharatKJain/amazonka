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
-- Module      : Amazonka.EC2.Types.LaunchTemplateIamInstanceProfileSpecification
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.EC2.Types.LaunchTemplateIamInstanceProfileSpecification where

import qualified Amazonka.Core as Core
import Amazonka.EC2.Internal
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | Describes an IAM instance profile.
--
-- /See:/ 'newLaunchTemplateIamInstanceProfileSpecification' smart constructor.
data LaunchTemplateIamInstanceProfileSpecification = LaunchTemplateIamInstanceProfileSpecification'
  { -- | The name of the instance profile.
    name :: Prelude.Maybe Prelude.Text,
    -- | The Amazon Resource Name (ARN) of the instance profile.
    arn :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'LaunchTemplateIamInstanceProfileSpecification' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'name', 'launchTemplateIamInstanceProfileSpecification_name' - The name of the instance profile.
--
-- 'arn', 'launchTemplateIamInstanceProfileSpecification_arn' - The Amazon Resource Name (ARN) of the instance profile.
newLaunchTemplateIamInstanceProfileSpecification ::
  LaunchTemplateIamInstanceProfileSpecification
newLaunchTemplateIamInstanceProfileSpecification =
  LaunchTemplateIamInstanceProfileSpecification'
    { name =
        Prelude.Nothing,
      arn = Prelude.Nothing
    }

-- | The name of the instance profile.
launchTemplateIamInstanceProfileSpecification_name :: Lens.Lens' LaunchTemplateIamInstanceProfileSpecification (Prelude.Maybe Prelude.Text)
launchTemplateIamInstanceProfileSpecification_name = Lens.lens (\LaunchTemplateIamInstanceProfileSpecification' {name} -> name) (\s@LaunchTemplateIamInstanceProfileSpecification' {} a -> s {name = a} :: LaunchTemplateIamInstanceProfileSpecification)

-- | The Amazon Resource Name (ARN) of the instance profile.
launchTemplateIamInstanceProfileSpecification_arn :: Lens.Lens' LaunchTemplateIamInstanceProfileSpecification (Prelude.Maybe Prelude.Text)
launchTemplateIamInstanceProfileSpecification_arn = Lens.lens (\LaunchTemplateIamInstanceProfileSpecification' {arn} -> arn) (\s@LaunchTemplateIamInstanceProfileSpecification' {} a -> s {arn = a} :: LaunchTemplateIamInstanceProfileSpecification)

instance
  Core.FromXML
    LaunchTemplateIamInstanceProfileSpecification
  where
  parseXML x =
    LaunchTemplateIamInstanceProfileSpecification'
      Prelude.<$> (x Core..@? "name") Prelude.<*> (x Core..@? "arn")

instance
  Prelude.Hashable
    LaunchTemplateIamInstanceProfileSpecification
  where
  hashWithSalt
    _salt
    LaunchTemplateIamInstanceProfileSpecification' {..} =
      _salt `Prelude.hashWithSalt` name
        `Prelude.hashWithSalt` arn

instance
  Prelude.NFData
    LaunchTemplateIamInstanceProfileSpecification
  where
  rnf
    LaunchTemplateIamInstanceProfileSpecification' {..} =
      Prelude.rnf name `Prelude.seq` Prelude.rnf arn
