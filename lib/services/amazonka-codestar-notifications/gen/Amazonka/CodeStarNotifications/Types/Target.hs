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
-- Module      : Amazonka.CodeStarNotifications.Types.Target
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.CodeStarNotifications.Types.Target where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | Information about the SNS topics associated with a notification rule.
--
-- /See:/ 'newTarget' smart constructor.
data Target = Target'
  { -- | The Amazon Resource Name (ARN) of the SNS topic.
    targetAddress :: Prelude.Maybe (Core.Sensitive Prelude.Text),
    -- | The target type. Can be an Amazon SNS topic.
    targetType :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'Target' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'targetAddress', 'target_targetAddress' - The Amazon Resource Name (ARN) of the SNS topic.
--
-- 'targetType', 'target_targetType' - The target type. Can be an Amazon SNS topic.
newTarget ::
  Target
newTarget =
  Target'
    { targetAddress = Prelude.Nothing,
      targetType = Prelude.Nothing
    }

-- | The Amazon Resource Name (ARN) of the SNS topic.
target_targetAddress :: Lens.Lens' Target (Prelude.Maybe Prelude.Text)
target_targetAddress = Lens.lens (\Target' {targetAddress} -> targetAddress) (\s@Target' {} a -> s {targetAddress = a} :: Target) Prelude.. Lens.mapping Core._Sensitive

-- | The target type. Can be an Amazon SNS topic.
target_targetType :: Lens.Lens' Target (Prelude.Maybe Prelude.Text)
target_targetType = Lens.lens (\Target' {targetType} -> targetType) (\s@Target' {} a -> s {targetType = a} :: Target)

instance Prelude.Hashable Target where
  hashWithSalt _salt Target' {..} =
    _salt `Prelude.hashWithSalt` targetAddress
      `Prelude.hashWithSalt` targetType

instance Prelude.NFData Target where
  rnf Target' {..} =
    Prelude.rnf targetAddress
      `Prelude.seq` Prelude.rnf targetType

instance Core.ToJSON Target where
  toJSON Target' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("TargetAddress" Core..=) Prelude.<$> targetAddress,
            ("TargetType" Core..=) Prelude.<$> targetType
          ]
      )
