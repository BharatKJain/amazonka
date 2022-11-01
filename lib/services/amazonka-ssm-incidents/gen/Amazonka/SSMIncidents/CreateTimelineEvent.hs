{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE NamedFieldPuns #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Amazonka.SSMIncidents.CreateTimelineEvent
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a custom timeline event on the incident details page of an
-- incident record. Timeline events are automatically created by Incident
-- Manager, marking key moment during an incident. You can create custom
-- timeline events to mark important events that are automatically detected
-- by Incident Manager.
module Amazonka.SSMIncidents.CreateTimelineEvent
  ( -- * Creating a Request
    CreateTimelineEvent (..),
    newCreateTimelineEvent,

    -- * Request Lenses
    createTimelineEvent_clientToken,
    createTimelineEvent_eventData,
    createTimelineEvent_eventTime,
    createTimelineEvent_eventType,
    createTimelineEvent_incidentRecordArn,

    -- * Destructuring the Response
    CreateTimelineEventResponse (..),
    newCreateTimelineEventResponse,

    -- * Response Lenses
    createTimelineEventResponse_httpStatus,
    createTimelineEventResponse_eventId,
    createTimelineEventResponse_incidentRecordArn,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response
import Amazonka.SSMIncidents.Types

-- | /See:/ 'newCreateTimelineEvent' smart constructor.
data CreateTimelineEvent = CreateTimelineEvent'
  { -- | A token ensuring that the action is called only once with the specified
    -- details.
    clientToken :: Prelude.Maybe Prelude.Text,
    -- | A short description of the event.
    eventData :: Prelude.Text,
    -- | The time that the event occurred.
    eventTime :: Core.POSIX,
    -- | The type of the event. You can create timeline events of type
    -- @Custom Event@.
    eventType :: Prelude.Text,
    -- | The Amazon Resource Name (ARN) of the incident record to which the event
    -- will be added.
    incidentRecordArn :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateTimelineEvent' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'clientToken', 'createTimelineEvent_clientToken' - A token ensuring that the action is called only once with the specified
-- details.
--
-- 'eventData', 'createTimelineEvent_eventData' - A short description of the event.
--
-- 'eventTime', 'createTimelineEvent_eventTime' - The time that the event occurred.
--
-- 'eventType', 'createTimelineEvent_eventType' - The type of the event. You can create timeline events of type
-- @Custom Event@.
--
-- 'incidentRecordArn', 'createTimelineEvent_incidentRecordArn' - The Amazon Resource Name (ARN) of the incident record to which the event
-- will be added.
newCreateTimelineEvent ::
  -- | 'eventData'
  Prelude.Text ->
  -- | 'eventTime'
  Prelude.UTCTime ->
  -- | 'eventType'
  Prelude.Text ->
  -- | 'incidentRecordArn'
  Prelude.Text ->
  CreateTimelineEvent
newCreateTimelineEvent
  pEventData_
  pEventTime_
  pEventType_
  pIncidentRecordArn_ =
    CreateTimelineEvent'
      { clientToken = Prelude.Nothing,
        eventData = pEventData_,
        eventTime = Core._Time Lens.# pEventTime_,
        eventType = pEventType_,
        incidentRecordArn = pIncidentRecordArn_
      }

-- | A token ensuring that the action is called only once with the specified
-- details.
createTimelineEvent_clientToken :: Lens.Lens' CreateTimelineEvent (Prelude.Maybe Prelude.Text)
createTimelineEvent_clientToken = Lens.lens (\CreateTimelineEvent' {clientToken} -> clientToken) (\s@CreateTimelineEvent' {} a -> s {clientToken = a} :: CreateTimelineEvent)

-- | A short description of the event.
createTimelineEvent_eventData :: Lens.Lens' CreateTimelineEvent Prelude.Text
createTimelineEvent_eventData = Lens.lens (\CreateTimelineEvent' {eventData} -> eventData) (\s@CreateTimelineEvent' {} a -> s {eventData = a} :: CreateTimelineEvent)

-- | The time that the event occurred.
createTimelineEvent_eventTime :: Lens.Lens' CreateTimelineEvent Prelude.UTCTime
createTimelineEvent_eventTime = Lens.lens (\CreateTimelineEvent' {eventTime} -> eventTime) (\s@CreateTimelineEvent' {} a -> s {eventTime = a} :: CreateTimelineEvent) Prelude.. Core._Time

-- | The type of the event. You can create timeline events of type
-- @Custom Event@.
createTimelineEvent_eventType :: Lens.Lens' CreateTimelineEvent Prelude.Text
createTimelineEvent_eventType = Lens.lens (\CreateTimelineEvent' {eventType} -> eventType) (\s@CreateTimelineEvent' {} a -> s {eventType = a} :: CreateTimelineEvent)

-- | The Amazon Resource Name (ARN) of the incident record to which the event
-- will be added.
createTimelineEvent_incidentRecordArn :: Lens.Lens' CreateTimelineEvent Prelude.Text
createTimelineEvent_incidentRecordArn = Lens.lens (\CreateTimelineEvent' {incidentRecordArn} -> incidentRecordArn) (\s@CreateTimelineEvent' {} a -> s {incidentRecordArn = a} :: CreateTimelineEvent)

instance Core.AWSRequest CreateTimelineEvent where
  type
    AWSResponse CreateTimelineEvent =
      CreateTimelineEventResponse
  service _ = defaultService
  request srv = Request.postJSON srv
  response =
    Response.receiveJSON
      ( \s h x ->
          CreateTimelineEventResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
            Prelude.<*> (x Core..:> "eventId")
            Prelude.<*> (x Core..:> "incidentRecordArn")
      )

instance Prelude.Hashable CreateTimelineEvent where
  hashWithSalt _salt CreateTimelineEvent' {..} =
    _salt `Prelude.hashWithSalt` clientToken
      `Prelude.hashWithSalt` eventData
      `Prelude.hashWithSalt` eventTime
      `Prelude.hashWithSalt` eventType
      `Prelude.hashWithSalt` incidentRecordArn

instance Prelude.NFData CreateTimelineEvent where
  rnf CreateTimelineEvent' {..} =
    Prelude.rnf clientToken
      `Prelude.seq` Prelude.rnf eventData
      `Prelude.seq` Prelude.rnf eventTime
      `Prelude.seq` Prelude.rnf eventType
      `Prelude.seq` Prelude.rnf incidentRecordArn

instance Core.ToHeaders CreateTimelineEvent where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON CreateTimelineEvent where
  toJSON CreateTimelineEvent' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("clientToken" Core..=) Prelude.<$> clientToken,
            Prelude.Just ("eventData" Core..= eventData),
            Prelude.Just ("eventTime" Core..= eventTime),
            Prelude.Just ("eventType" Core..= eventType),
            Prelude.Just
              ("incidentRecordArn" Core..= incidentRecordArn)
          ]
      )

instance Core.ToPath CreateTimelineEvent where
  toPath = Prelude.const "/createTimelineEvent"

instance Core.ToQuery CreateTimelineEvent where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newCreateTimelineEventResponse' smart constructor.
data CreateTimelineEventResponse = CreateTimelineEventResponse'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int,
    -- | The ID of the event for easy reference later.
    eventId :: Prelude.Text,
    -- | The ARN of the incident record that you added the event to.
    incidentRecordArn :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateTimelineEventResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'createTimelineEventResponse_httpStatus' - The response's http status code.
--
-- 'eventId', 'createTimelineEventResponse_eventId' - The ID of the event for easy reference later.
--
-- 'incidentRecordArn', 'createTimelineEventResponse_incidentRecordArn' - The ARN of the incident record that you added the event to.
newCreateTimelineEventResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  -- | 'eventId'
  Prelude.Text ->
  -- | 'incidentRecordArn'
  Prelude.Text ->
  CreateTimelineEventResponse
newCreateTimelineEventResponse
  pHttpStatus_
  pEventId_
  pIncidentRecordArn_ =
    CreateTimelineEventResponse'
      { httpStatus =
          pHttpStatus_,
        eventId = pEventId_,
        incidentRecordArn = pIncidentRecordArn_
      }

-- | The response's http status code.
createTimelineEventResponse_httpStatus :: Lens.Lens' CreateTimelineEventResponse Prelude.Int
createTimelineEventResponse_httpStatus = Lens.lens (\CreateTimelineEventResponse' {httpStatus} -> httpStatus) (\s@CreateTimelineEventResponse' {} a -> s {httpStatus = a} :: CreateTimelineEventResponse)

-- | The ID of the event for easy reference later.
createTimelineEventResponse_eventId :: Lens.Lens' CreateTimelineEventResponse Prelude.Text
createTimelineEventResponse_eventId = Lens.lens (\CreateTimelineEventResponse' {eventId} -> eventId) (\s@CreateTimelineEventResponse' {} a -> s {eventId = a} :: CreateTimelineEventResponse)

-- | The ARN of the incident record that you added the event to.
createTimelineEventResponse_incidentRecordArn :: Lens.Lens' CreateTimelineEventResponse Prelude.Text
createTimelineEventResponse_incidentRecordArn = Lens.lens (\CreateTimelineEventResponse' {incidentRecordArn} -> incidentRecordArn) (\s@CreateTimelineEventResponse' {} a -> s {incidentRecordArn = a} :: CreateTimelineEventResponse)

instance Prelude.NFData CreateTimelineEventResponse where
  rnf CreateTimelineEventResponse' {..} =
    Prelude.rnf httpStatus
      `Prelude.seq` Prelude.rnf eventId
      `Prelude.seq` Prelude.rnf incidentRecordArn
