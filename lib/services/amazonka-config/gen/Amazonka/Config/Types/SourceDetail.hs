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
-- Module      : Amazonka.Config.Types.SourceDetail
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.Config.Types.SourceDetail where

import Amazonka.Config.Types.EventSource
import Amazonka.Config.Types.MaximumExecutionFrequency
import Amazonka.Config.Types.MessageType
import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | Provides the source and the message types that trigger Config to
-- evaluate your Amazon Web Services resources against a rule. It also
-- provides the frequency with which you want Config to run evaluations for
-- the rule if the trigger type is periodic. You can specify the parameter
-- values for @SourceDetail@ only for custom rules.
--
-- /See:/ 'newSourceDetail' smart constructor.
data SourceDetail = SourceDetail'
  { -- | The frequency at which you want Config to run evaluations for a custom
    -- rule with a periodic trigger. If you specify a value for
    -- @MaximumExecutionFrequency@, then @MessageType@ must use the
    -- @ScheduledNotification@ value.
    --
    -- By default, rules with a periodic trigger are evaluated every 24 hours.
    -- To change the frequency, specify a valid value for the
    -- @MaximumExecutionFrequency@ parameter.
    --
    -- Based on the valid value you choose, Config runs evaluations once for
    -- each valid value. For example, if you choose @Three_Hours@, Config runs
    -- evaluations once every three hours. In this case, @Three_Hours@ is the
    -- frequency of this rule.
    maximumExecutionFrequency :: Prelude.Maybe MaximumExecutionFrequency,
    -- | The type of notification that triggers Config to run an evaluation for a
    -- rule. You can specify the following notification types:
    --
    -- -   @ConfigurationItemChangeNotification@ - Triggers an evaluation when
    --     Config delivers a configuration item as a result of a resource
    --     change.
    --
    -- -   @OversizedConfigurationItemChangeNotification@ - Triggers an
    --     evaluation when Config delivers an oversized configuration item.
    --     Config may generate this notification type when a resource changes
    --     and the notification exceeds the maximum size allowed by Amazon SNS.
    --
    -- -   @ScheduledNotification@ - Triggers a periodic evaluation at the
    --     frequency specified for @MaximumExecutionFrequency@.
    --
    -- -   @ConfigurationSnapshotDeliveryCompleted@ - Triggers a periodic
    --     evaluation when Config delivers a configuration snapshot.
    --
    -- If you want your custom rule to be triggered by configuration changes,
    -- specify two SourceDetail objects, one for
    -- @ConfigurationItemChangeNotification@ and one for
    -- @OversizedConfigurationItemChangeNotification@.
    messageType :: Prelude.Maybe MessageType,
    -- | The source of the event, such as an Amazon Web Services service, that
    -- triggers Config to evaluate your Amazon Web Services resources.
    eventSource :: Prelude.Maybe EventSource
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'SourceDetail' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'maximumExecutionFrequency', 'sourceDetail_maximumExecutionFrequency' - The frequency at which you want Config to run evaluations for a custom
-- rule with a periodic trigger. If you specify a value for
-- @MaximumExecutionFrequency@, then @MessageType@ must use the
-- @ScheduledNotification@ value.
--
-- By default, rules with a periodic trigger are evaluated every 24 hours.
-- To change the frequency, specify a valid value for the
-- @MaximumExecutionFrequency@ parameter.
--
-- Based on the valid value you choose, Config runs evaluations once for
-- each valid value. For example, if you choose @Three_Hours@, Config runs
-- evaluations once every three hours. In this case, @Three_Hours@ is the
-- frequency of this rule.
--
-- 'messageType', 'sourceDetail_messageType' - The type of notification that triggers Config to run an evaluation for a
-- rule. You can specify the following notification types:
--
-- -   @ConfigurationItemChangeNotification@ - Triggers an evaluation when
--     Config delivers a configuration item as a result of a resource
--     change.
--
-- -   @OversizedConfigurationItemChangeNotification@ - Triggers an
--     evaluation when Config delivers an oversized configuration item.
--     Config may generate this notification type when a resource changes
--     and the notification exceeds the maximum size allowed by Amazon SNS.
--
-- -   @ScheduledNotification@ - Triggers a periodic evaluation at the
--     frequency specified for @MaximumExecutionFrequency@.
--
-- -   @ConfigurationSnapshotDeliveryCompleted@ - Triggers a periodic
--     evaluation when Config delivers a configuration snapshot.
--
-- If you want your custom rule to be triggered by configuration changes,
-- specify two SourceDetail objects, one for
-- @ConfigurationItemChangeNotification@ and one for
-- @OversizedConfigurationItemChangeNotification@.
--
-- 'eventSource', 'sourceDetail_eventSource' - The source of the event, such as an Amazon Web Services service, that
-- triggers Config to evaluate your Amazon Web Services resources.
newSourceDetail ::
  SourceDetail
newSourceDetail =
  SourceDetail'
    { maximumExecutionFrequency =
        Prelude.Nothing,
      messageType = Prelude.Nothing,
      eventSource = Prelude.Nothing
    }

-- | The frequency at which you want Config to run evaluations for a custom
-- rule with a periodic trigger. If you specify a value for
-- @MaximumExecutionFrequency@, then @MessageType@ must use the
-- @ScheduledNotification@ value.
--
-- By default, rules with a periodic trigger are evaluated every 24 hours.
-- To change the frequency, specify a valid value for the
-- @MaximumExecutionFrequency@ parameter.
--
-- Based on the valid value you choose, Config runs evaluations once for
-- each valid value. For example, if you choose @Three_Hours@, Config runs
-- evaluations once every three hours. In this case, @Three_Hours@ is the
-- frequency of this rule.
sourceDetail_maximumExecutionFrequency :: Lens.Lens' SourceDetail (Prelude.Maybe MaximumExecutionFrequency)
sourceDetail_maximumExecutionFrequency = Lens.lens (\SourceDetail' {maximumExecutionFrequency} -> maximumExecutionFrequency) (\s@SourceDetail' {} a -> s {maximumExecutionFrequency = a} :: SourceDetail)

-- | The type of notification that triggers Config to run an evaluation for a
-- rule. You can specify the following notification types:
--
-- -   @ConfigurationItemChangeNotification@ - Triggers an evaluation when
--     Config delivers a configuration item as a result of a resource
--     change.
--
-- -   @OversizedConfigurationItemChangeNotification@ - Triggers an
--     evaluation when Config delivers an oversized configuration item.
--     Config may generate this notification type when a resource changes
--     and the notification exceeds the maximum size allowed by Amazon SNS.
--
-- -   @ScheduledNotification@ - Triggers a periodic evaluation at the
--     frequency specified for @MaximumExecutionFrequency@.
--
-- -   @ConfigurationSnapshotDeliveryCompleted@ - Triggers a periodic
--     evaluation when Config delivers a configuration snapshot.
--
-- If you want your custom rule to be triggered by configuration changes,
-- specify two SourceDetail objects, one for
-- @ConfigurationItemChangeNotification@ and one for
-- @OversizedConfigurationItemChangeNotification@.
sourceDetail_messageType :: Lens.Lens' SourceDetail (Prelude.Maybe MessageType)
sourceDetail_messageType = Lens.lens (\SourceDetail' {messageType} -> messageType) (\s@SourceDetail' {} a -> s {messageType = a} :: SourceDetail)

-- | The source of the event, such as an Amazon Web Services service, that
-- triggers Config to evaluate your Amazon Web Services resources.
sourceDetail_eventSource :: Lens.Lens' SourceDetail (Prelude.Maybe EventSource)
sourceDetail_eventSource = Lens.lens (\SourceDetail' {eventSource} -> eventSource) (\s@SourceDetail' {} a -> s {eventSource = a} :: SourceDetail)

instance Core.FromJSON SourceDetail where
  parseJSON =
    Core.withObject
      "SourceDetail"
      ( \x ->
          SourceDetail'
            Prelude.<$> (x Core..:? "MaximumExecutionFrequency")
            Prelude.<*> (x Core..:? "MessageType")
            Prelude.<*> (x Core..:? "EventSource")
      )

instance Prelude.Hashable SourceDetail where
  hashWithSalt _salt SourceDetail' {..} =
    _salt
      `Prelude.hashWithSalt` maximumExecutionFrequency
      `Prelude.hashWithSalt` messageType
      `Prelude.hashWithSalt` eventSource

instance Prelude.NFData SourceDetail where
  rnf SourceDetail' {..} =
    Prelude.rnf maximumExecutionFrequency
      `Prelude.seq` Prelude.rnf messageType
      `Prelude.seq` Prelude.rnf eventSource

instance Core.ToJSON SourceDetail where
  toJSON SourceDetail' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("MaximumExecutionFrequency" Core..=)
              Prelude.<$> maximumExecutionFrequency,
            ("MessageType" Core..=) Prelude.<$> messageType,
            ("EventSource" Core..=) Prelude.<$> eventSource
          ]
      )
