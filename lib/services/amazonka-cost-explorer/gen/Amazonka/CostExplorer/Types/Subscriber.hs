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
-- Module      : Amazonka.CostExplorer.Types.Subscriber
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.CostExplorer.Types.Subscriber where

import qualified Amazonka.Core as Core
import Amazonka.CostExplorer.Types.SubscriberStatus
import Amazonka.CostExplorer.Types.SubscriberType
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | The recipient of @AnomalySubscription@ notifications.
--
-- /See:/ 'newSubscriber' smart constructor.
data Subscriber = Subscriber'
  { -- | The notification delivery channel.
    type' :: Prelude.Maybe SubscriberType,
    -- | Indicates if the subscriber accepts the notifications.
    status :: Prelude.Maybe SubscriberStatus,
    -- | The email address or SNS Amazon Resource Name (ARN). This depends on the
    -- @Type@.
    address :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'Subscriber' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'type'', 'subscriber_type' - The notification delivery channel.
--
-- 'status', 'subscriber_status' - Indicates if the subscriber accepts the notifications.
--
-- 'address', 'subscriber_address' - The email address or SNS Amazon Resource Name (ARN). This depends on the
-- @Type@.
newSubscriber ::
  Subscriber
newSubscriber =
  Subscriber'
    { type' = Prelude.Nothing,
      status = Prelude.Nothing,
      address = Prelude.Nothing
    }

-- | The notification delivery channel.
subscriber_type :: Lens.Lens' Subscriber (Prelude.Maybe SubscriberType)
subscriber_type = Lens.lens (\Subscriber' {type'} -> type') (\s@Subscriber' {} a -> s {type' = a} :: Subscriber)

-- | Indicates if the subscriber accepts the notifications.
subscriber_status :: Lens.Lens' Subscriber (Prelude.Maybe SubscriberStatus)
subscriber_status = Lens.lens (\Subscriber' {status} -> status) (\s@Subscriber' {} a -> s {status = a} :: Subscriber)

-- | The email address or SNS Amazon Resource Name (ARN). This depends on the
-- @Type@.
subscriber_address :: Lens.Lens' Subscriber (Prelude.Maybe Prelude.Text)
subscriber_address = Lens.lens (\Subscriber' {address} -> address) (\s@Subscriber' {} a -> s {address = a} :: Subscriber)

instance Core.FromJSON Subscriber where
  parseJSON =
    Core.withObject
      "Subscriber"
      ( \x ->
          Subscriber'
            Prelude.<$> (x Core..:? "Type")
            Prelude.<*> (x Core..:? "Status")
            Prelude.<*> (x Core..:? "Address")
      )

instance Prelude.Hashable Subscriber where
  hashWithSalt _salt Subscriber' {..} =
    _salt `Prelude.hashWithSalt` type'
      `Prelude.hashWithSalt` status
      `Prelude.hashWithSalt` address

instance Prelude.NFData Subscriber where
  rnf Subscriber' {..} =
    Prelude.rnf type'
      `Prelude.seq` Prelude.rnf status
      `Prelude.seq` Prelude.rnf address

instance Core.ToJSON Subscriber where
  toJSON Subscriber' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("Type" Core..=) Prelude.<$> type',
            ("Status" Core..=) Prelude.<$> status,
            ("Address" Core..=) Prelude.<$> address
          ]
      )
