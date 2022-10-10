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
-- Module      : Amazonka.Connect.Types.QuickConnectConfig
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.Connect.Types.QuickConnectConfig where

import Amazonka.Connect.Types.PhoneNumberQuickConnectConfig
import Amazonka.Connect.Types.QueueQuickConnectConfig
import Amazonka.Connect.Types.QuickConnectType
import Amazonka.Connect.Types.UserQuickConnectConfig
import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | Contains configuration settings for a quick connect.
--
-- /See:/ 'newQuickConnectConfig' smart constructor.
data QuickConnectConfig = QuickConnectConfig'
  { -- | The queue configuration. This is required only if QuickConnectType is
    -- QUEUE.
    queueConfig :: Prelude.Maybe QueueQuickConnectConfig,
    -- | The phone configuration. This is required only if QuickConnectType is
    -- PHONE_NUMBER.
    phoneConfig :: Prelude.Maybe PhoneNumberQuickConnectConfig,
    -- | The user configuration. This is required only if QuickConnectType is
    -- USER.
    userConfig :: Prelude.Maybe UserQuickConnectConfig,
    -- | The type of quick connect. In the Amazon Connect console, when you
    -- create a quick connect, you are prompted to assign one of the following
    -- types: Agent (USER), External (PHONE_NUMBER), or Queue (QUEUE).
    quickConnectType :: QuickConnectType
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'QuickConnectConfig' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'queueConfig', 'quickConnectConfig_queueConfig' - The queue configuration. This is required only if QuickConnectType is
-- QUEUE.
--
-- 'phoneConfig', 'quickConnectConfig_phoneConfig' - The phone configuration. This is required only if QuickConnectType is
-- PHONE_NUMBER.
--
-- 'userConfig', 'quickConnectConfig_userConfig' - The user configuration. This is required only if QuickConnectType is
-- USER.
--
-- 'quickConnectType', 'quickConnectConfig_quickConnectType' - The type of quick connect. In the Amazon Connect console, when you
-- create a quick connect, you are prompted to assign one of the following
-- types: Agent (USER), External (PHONE_NUMBER), or Queue (QUEUE).
newQuickConnectConfig ::
  -- | 'quickConnectType'
  QuickConnectType ->
  QuickConnectConfig
newQuickConnectConfig pQuickConnectType_ =
  QuickConnectConfig'
    { queueConfig = Prelude.Nothing,
      phoneConfig = Prelude.Nothing,
      userConfig = Prelude.Nothing,
      quickConnectType = pQuickConnectType_
    }

-- | The queue configuration. This is required only if QuickConnectType is
-- QUEUE.
quickConnectConfig_queueConfig :: Lens.Lens' QuickConnectConfig (Prelude.Maybe QueueQuickConnectConfig)
quickConnectConfig_queueConfig = Lens.lens (\QuickConnectConfig' {queueConfig} -> queueConfig) (\s@QuickConnectConfig' {} a -> s {queueConfig = a} :: QuickConnectConfig)

-- | The phone configuration. This is required only if QuickConnectType is
-- PHONE_NUMBER.
quickConnectConfig_phoneConfig :: Lens.Lens' QuickConnectConfig (Prelude.Maybe PhoneNumberQuickConnectConfig)
quickConnectConfig_phoneConfig = Lens.lens (\QuickConnectConfig' {phoneConfig} -> phoneConfig) (\s@QuickConnectConfig' {} a -> s {phoneConfig = a} :: QuickConnectConfig)

-- | The user configuration. This is required only if QuickConnectType is
-- USER.
quickConnectConfig_userConfig :: Lens.Lens' QuickConnectConfig (Prelude.Maybe UserQuickConnectConfig)
quickConnectConfig_userConfig = Lens.lens (\QuickConnectConfig' {userConfig} -> userConfig) (\s@QuickConnectConfig' {} a -> s {userConfig = a} :: QuickConnectConfig)

-- | The type of quick connect. In the Amazon Connect console, when you
-- create a quick connect, you are prompted to assign one of the following
-- types: Agent (USER), External (PHONE_NUMBER), or Queue (QUEUE).
quickConnectConfig_quickConnectType :: Lens.Lens' QuickConnectConfig QuickConnectType
quickConnectConfig_quickConnectType = Lens.lens (\QuickConnectConfig' {quickConnectType} -> quickConnectType) (\s@QuickConnectConfig' {} a -> s {quickConnectType = a} :: QuickConnectConfig)

instance Core.FromJSON QuickConnectConfig where
  parseJSON =
    Core.withObject
      "QuickConnectConfig"
      ( \x ->
          QuickConnectConfig'
            Prelude.<$> (x Core..:? "QueueConfig")
            Prelude.<*> (x Core..:? "PhoneConfig")
            Prelude.<*> (x Core..:? "UserConfig")
            Prelude.<*> (x Core..: "QuickConnectType")
      )

instance Prelude.Hashable QuickConnectConfig where
  hashWithSalt _salt QuickConnectConfig' {..} =
    _salt `Prelude.hashWithSalt` queueConfig
      `Prelude.hashWithSalt` phoneConfig
      `Prelude.hashWithSalt` userConfig
      `Prelude.hashWithSalt` quickConnectType

instance Prelude.NFData QuickConnectConfig where
  rnf QuickConnectConfig' {..} =
    Prelude.rnf queueConfig
      `Prelude.seq` Prelude.rnf phoneConfig
      `Prelude.seq` Prelude.rnf userConfig
      `Prelude.seq` Prelude.rnf quickConnectType

instance Core.ToJSON QuickConnectConfig where
  toJSON QuickConnectConfig' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("QueueConfig" Core..=) Prelude.<$> queueConfig,
            ("PhoneConfig" Core..=) Prelude.<$> phoneConfig,
            ("UserConfig" Core..=) Prelude.<$> userConfig,
            Prelude.Just
              ("QuickConnectType" Core..= quickConnectType)
          ]
      )
