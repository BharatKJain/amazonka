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
-- Module      : Amazonka.IoTWireless.Types.SidewalkSendDataToDevice
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.IoTWireless.Types.SidewalkSendDataToDevice where

import qualified Amazonka.Core as Core
import Amazonka.IoTWireless.Types.MessageType
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | Information about a Sidewalk router.
--
-- /See:/ 'newSidewalkSendDataToDevice' smart constructor.
data SidewalkSendDataToDevice = SidewalkSendDataToDevice'
  { -- | The sequence number.
    seq :: Prelude.Maybe Prelude.Natural,
    messageType :: Prelude.Maybe MessageType
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'SidewalkSendDataToDevice' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'seq', 'sidewalkSendDataToDevice_seq' - The sequence number.
--
-- 'messageType', 'sidewalkSendDataToDevice_messageType' - Undocumented member.
newSidewalkSendDataToDevice ::
  SidewalkSendDataToDevice
newSidewalkSendDataToDevice =
  SidewalkSendDataToDevice'
    { seq = Prelude.Nothing,
      messageType = Prelude.Nothing
    }

-- | The sequence number.
sidewalkSendDataToDevice_seq :: Lens.Lens' SidewalkSendDataToDevice (Prelude.Maybe Prelude.Natural)
sidewalkSendDataToDevice_seq = Lens.lens (\SidewalkSendDataToDevice' {seq} -> seq) (\s@SidewalkSendDataToDevice' {} a -> s {seq = a} :: SidewalkSendDataToDevice)

-- | Undocumented member.
sidewalkSendDataToDevice_messageType :: Lens.Lens' SidewalkSendDataToDevice (Prelude.Maybe MessageType)
sidewalkSendDataToDevice_messageType = Lens.lens (\SidewalkSendDataToDevice' {messageType} -> messageType) (\s@SidewalkSendDataToDevice' {} a -> s {messageType = a} :: SidewalkSendDataToDevice)

instance Prelude.Hashable SidewalkSendDataToDevice where
  hashWithSalt _salt SidewalkSendDataToDevice' {..} =
    _salt `Prelude.hashWithSalt` seq
      `Prelude.hashWithSalt` messageType

instance Prelude.NFData SidewalkSendDataToDevice where
  rnf SidewalkSendDataToDevice' {..} =
    Prelude.rnf seq
      `Prelude.seq` Prelude.rnf messageType

instance Core.ToJSON SidewalkSendDataToDevice where
  toJSON SidewalkSendDataToDevice' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("Seq" Core..=) Prelude.<$> seq,
            ("MessageType" Core..=) Prelude.<$> messageType
          ]
      )
