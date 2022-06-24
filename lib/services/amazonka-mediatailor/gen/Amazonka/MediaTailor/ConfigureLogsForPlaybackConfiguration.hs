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
-- Module      : Amazonka.MediaTailor.ConfigureLogsForPlaybackConfiguration
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Configures Amazon CloudWatch log settings for a playback configuration.
module Amazonka.MediaTailor.ConfigureLogsForPlaybackConfiguration
  ( -- * Creating a Request
    ConfigureLogsForPlaybackConfiguration (..),
    newConfigureLogsForPlaybackConfiguration,

    -- * Request Lenses
    configureLogsForPlaybackConfiguration_percentEnabled,
    configureLogsForPlaybackConfiguration_playbackConfigurationName,

    -- * Destructuring the Response
    ConfigureLogsForPlaybackConfigurationResponse (..),
    newConfigureLogsForPlaybackConfigurationResponse,

    -- * Response Lenses
    configureLogsForPlaybackConfigurationResponse_percentEnabled,
    configureLogsForPlaybackConfigurationResponse_playbackConfigurationName,
    configureLogsForPlaybackConfigurationResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import Amazonka.MediaTailor.Types
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | Configures Amazon CloudWatch log settings for a playback configuration.
--
-- /See:/ 'newConfigureLogsForPlaybackConfiguration' smart constructor.
data ConfigureLogsForPlaybackConfiguration = ConfigureLogsForPlaybackConfiguration'
  { -- | The percentage of session logs that MediaTailor sends to your Cloudwatch
    -- Logs account. For example, if your playback configuration has 1000
    -- sessions and percentEnabled is set to 60, MediaTailor sends logs for 600
    -- of the sessions to CloudWatch Logs. MediaTailor decides at random which
    -- of the playback configuration sessions to send logs for. If you want to
    -- view logs for a specific session, you can use the
    -- <https://docs.aws.amazon.com/mediatailor/latest/ug/debug-log-mode.html debug log mode>.
    --
    -- Valid values: 0 - 100
    percentEnabled :: Prelude.Int,
    -- | The name of the playback configuration.
    playbackConfigurationName :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ConfigureLogsForPlaybackConfiguration' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'percentEnabled', 'configureLogsForPlaybackConfiguration_percentEnabled' - The percentage of session logs that MediaTailor sends to your Cloudwatch
-- Logs account. For example, if your playback configuration has 1000
-- sessions and percentEnabled is set to 60, MediaTailor sends logs for 600
-- of the sessions to CloudWatch Logs. MediaTailor decides at random which
-- of the playback configuration sessions to send logs for. If you want to
-- view logs for a specific session, you can use the
-- <https://docs.aws.amazon.com/mediatailor/latest/ug/debug-log-mode.html debug log mode>.
--
-- Valid values: 0 - 100
--
-- 'playbackConfigurationName', 'configureLogsForPlaybackConfiguration_playbackConfigurationName' - The name of the playback configuration.
newConfigureLogsForPlaybackConfiguration ::
  -- | 'percentEnabled'
  Prelude.Int ->
  -- | 'playbackConfigurationName'
  Prelude.Text ->
  ConfigureLogsForPlaybackConfiguration
newConfigureLogsForPlaybackConfiguration
  pPercentEnabled_
  pPlaybackConfigurationName_ =
    ConfigureLogsForPlaybackConfiguration'
      { percentEnabled =
          pPercentEnabled_,
        playbackConfigurationName =
          pPlaybackConfigurationName_
      }

-- | The percentage of session logs that MediaTailor sends to your Cloudwatch
-- Logs account. For example, if your playback configuration has 1000
-- sessions and percentEnabled is set to 60, MediaTailor sends logs for 600
-- of the sessions to CloudWatch Logs. MediaTailor decides at random which
-- of the playback configuration sessions to send logs for. If you want to
-- view logs for a specific session, you can use the
-- <https://docs.aws.amazon.com/mediatailor/latest/ug/debug-log-mode.html debug log mode>.
--
-- Valid values: 0 - 100
configureLogsForPlaybackConfiguration_percentEnabled :: Lens.Lens' ConfigureLogsForPlaybackConfiguration Prelude.Int
configureLogsForPlaybackConfiguration_percentEnabled = Lens.lens (\ConfigureLogsForPlaybackConfiguration' {percentEnabled} -> percentEnabled) (\s@ConfigureLogsForPlaybackConfiguration' {} a -> s {percentEnabled = a} :: ConfigureLogsForPlaybackConfiguration)

-- | The name of the playback configuration.
configureLogsForPlaybackConfiguration_playbackConfigurationName :: Lens.Lens' ConfigureLogsForPlaybackConfiguration Prelude.Text
configureLogsForPlaybackConfiguration_playbackConfigurationName = Lens.lens (\ConfigureLogsForPlaybackConfiguration' {playbackConfigurationName} -> playbackConfigurationName) (\s@ConfigureLogsForPlaybackConfiguration' {} a -> s {playbackConfigurationName = a} :: ConfigureLogsForPlaybackConfiguration)

instance
  Core.AWSRequest
    ConfigureLogsForPlaybackConfiguration
  where
  type
    AWSResponse
      ConfigureLogsForPlaybackConfiguration =
      ConfigureLogsForPlaybackConfigurationResponse
  request = Request.putJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          ConfigureLogsForPlaybackConfigurationResponse'
            Prelude.<$> (x Core..?> "PercentEnabled")
              Prelude.<*> (x Core..?> "PlaybackConfigurationName")
              Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance
  Prelude.Hashable
    ConfigureLogsForPlaybackConfiguration
  where
  hashWithSalt
    _salt
    ConfigureLogsForPlaybackConfiguration' {..} =
      _salt `Prelude.hashWithSalt` percentEnabled
        `Prelude.hashWithSalt` playbackConfigurationName

instance
  Prelude.NFData
    ConfigureLogsForPlaybackConfiguration
  where
  rnf ConfigureLogsForPlaybackConfiguration' {..} =
    Prelude.rnf percentEnabled
      `Prelude.seq` Prelude.rnf playbackConfigurationName

instance
  Core.ToHeaders
    ConfigureLogsForPlaybackConfiguration
  where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance
  Core.ToJSON
    ConfigureLogsForPlaybackConfiguration
  where
  toJSON ConfigureLogsForPlaybackConfiguration' {..} =
    Core.object
      ( Prelude.catMaybes
          [ Prelude.Just
              ("PercentEnabled" Core..= percentEnabled),
            Prelude.Just
              ( "PlaybackConfigurationName"
                  Core..= playbackConfigurationName
              )
          ]
      )

instance
  Core.ToPath
    ConfigureLogsForPlaybackConfiguration
  where
  toPath =
    Prelude.const
      "/configureLogs/playbackConfiguration"

instance
  Core.ToQuery
    ConfigureLogsForPlaybackConfiguration
  where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newConfigureLogsForPlaybackConfigurationResponse' smart constructor.
data ConfigureLogsForPlaybackConfigurationResponse = ConfigureLogsForPlaybackConfigurationResponse'
  { -- | The percentage of session logs that MediaTailor sends to your Cloudwatch
    -- Logs account.
    percentEnabled :: Prelude.Maybe Prelude.Int,
    -- | The name of the playback configuration.
    playbackConfigurationName :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ConfigureLogsForPlaybackConfigurationResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'percentEnabled', 'configureLogsForPlaybackConfigurationResponse_percentEnabled' - The percentage of session logs that MediaTailor sends to your Cloudwatch
-- Logs account.
--
-- 'playbackConfigurationName', 'configureLogsForPlaybackConfigurationResponse_playbackConfigurationName' - The name of the playback configuration.
--
-- 'httpStatus', 'configureLogsForPlaybackConfigurationResponse_httpStatus' - The response's http status code.
newConfigureLogsForPlaybackConfigurationResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  ConfigureLogsForPlaybackConfigurationResponse
newConfigureLogsForPlaybackConfigurationResponse
  pHttpStatus_ =
    ConfigureLogsForPlaybackConfigurationResponse'
      { percentEnabled =
          Prelude.Nothing,
        playbackConfigurationName =
          Prelude.Nothing,
        httpStatus = pHttpStatus_
      }

-- | The percentage of session logs that MediaTailor sends to your Cloudwatch
-- Logs account.
configureLogsForPlaybackConfigurationResponse_percentEnabled :: Lens.Lens' ConfigureLogsForPlaybackConfigurationResponse (Prelude.Maybe Prelude.Int)
configureLogsForPlaybackConfigurationResponse_percentEnabled = Lens.lens (\ConfigureLogsForPlaybackConfigurationResponse' {percentEnabled} -> percentEnabled) (\s@ConfigureLogsForPlaybackConfigurationResponse' {} a -> s {percentEnabled = a} :: ConfigureLogsForPlaybackConfigurationResponse)

-- | The name of the playback configuration.
configureLogsForPlaybackConfigurationResponse_playbackConfigurationName :: Lens.Lens' ConfigureLogsForPlaybackConfigurationResponse (Prelude.Maybe Prelude.Text)
configureLogsForPlaybackConfigurationResponse_playbackConfigurationName = Lens.lens (\ConfigureLogsForPlaybackConfigurationResponse' {playbackConfigurationName} -> playbackConfigurationName) (\s@ConfigureLogsForPlaybackConfigurationResponse' {} a -> s {playbackConfigurationName = a} :: ConfigureLogsForPlaybackConfigurationResponse)

-- | The response's http status code.
configureLogsForPlaybackConfigurationResponse_httpStatus :: Lens.Lens' ConfigureLogsForPlaybackConfigurationResponse Prelude.Int
configureLogsForPlaybackConfigurationResponse_httpStatus = Lens.lens (\ConfigureLogsForPlaybackConfigurationResponse' {httpStatus} -> httpStatus) (\s@ConfigureLogsForPlaybackConfigurationResponse' {} a -> s {httpStatus = a} :: ConfigureLogsForPlaybackConfigurationResponse)

instance
  Prelude.NFData
    ConfigureLogsForPlaybackConfigurationResponse
  where
  rnf
    ConfigureLogsForPlaybackConfigurationResponse' {..} =
      Prelude.rnf percentEnabled
        `Prelude.seq` Prelude.rnf playbackConfigurationName
        `Prelude.seq` Prelude.rnf httpStatus
