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
-- Module      : Amazonka.Personalize.Types.Campaign
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.Personalize.Types.Campaign where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import Amazonka.Personalize.Types.CampaignConfig
import Amazonka.Personalize.Types.CampaignUpdateSummary
import qualified Amazonka.Prelude as Prelude

-- | An object that describes the deployment of a solution version. For more
-- information on campaigns, see
-- <https://docs.aws.amazon.com/personalize/latest/dg/API_CreateCampaign.html CreateCampaign>.
--
-- /See:/ 'newCampaign' smart constructor.
data Campaign = Campaign'
  { -- | The name of the campaign.
    name :: Prelude.Maybe Prelude.Text,
    -- | The date and time (in Unix format) that the campaign was created.
    creationDateTime :: Prelude.Maybe Core.POSIX,
    latestCampaignUpdate :: Prelude.Maybe CampaignUpdateSummary,
    -- | The configuration details of a campaign.
    campaignConfig :: Prelude.Maybe CampaignConfig,
    -- | The status of the campaign.
    --
    -- A campaign can be in one of the following states:
    --
    -- -   CREATE PENDING > CREATE IN_PROGRESS > ACTIVE -or- CREATE FAILED
    --
    -- -   DELETE PENDING > DELETE IN_PROGRESS
    status :: Prelude.Maybe Prelude.Text,
    -- | Specifies the requested minimum provisioned transactions
    -- (recommendations) per second.
    minProvisionedTPS :: Prelude.Maybe Prelude.Natural,
    -- | The Amazon Resource Name (ARN) of a specific version of the solution.
    solutionVersionArn :: Prelude.Maybe Prelude.Text,
    -- | The Amazon Resource Name (ARN) of the campaign.
    campaignArn :: Prelude.Maybe Prelude.Text,
    -- | The date and time (in Unix format) that the campaign was last updated.
    lastUpdatedDateTime :: Prelude.Maybe Core.POSIX,
    -- | If a campaign fails, the reason behind the failure.
    failureReason :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'Campaign' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'name', 'campaign_name' - The name of the campaign.
--
-- 'creationDateTime', 'campaign_creationDateTime' - The date and time (in Unix format) that the campaign was created.
--
-- 'latestCampaignUpdate', 'campaign_latestCampaignUpdate' - Undocumented member.
--
-- 'campaignConfig', 'campaign_campaignConfig' - The configuration details of a campaign.
--
-- 'status', 'campaign_status' - The status of the campaign.
--
-- A campaign can be in one of the following states:
--
-- -   CREATE PENDING > CREATE IN_PROGRESS > ACTIVE -or- CREATE FAILED
--
-- -   DELETE PENDING > DELETE IN_PROGRESS
--
-- 'minProvisionedTPS', 'campaign_minProvisionedTPS' - Specifies the requested minimum provisioned transactions
-- (recommendations) per second.
--
-- 'solutionVersionArn', 'campaign_solutionVersionArn' - The Amazon Resource Name (ARN) of a specific version of the solution.
--
-- 'campaignArn', 'campaign_campaignArn' - The Amazon Resource Name (ARN) of the campaign.
--
-- 'lastUpdatedDateTime', 'campaign_lastUpdatedDateTime' - The date and time (in Unix format) that the campaign was last updated.
--
-- 'failureReason', 'campaign_failureReason' - If a campaign fails, the reason behind the failure.
newCampaign ::
  Campaign
newCampaign =
  Campaign'
    { name = Prelude.Nothing,
      creationDateTime = Prelude.Nothing,
      latestCampaignUpdate = Prelude.Nothing,
      campaignConfig = Prelude.Nothing,
      status = Prelude.Nothing,
      minProvisionedTPS = Prelude.Nothing,
      solutionVersionArn = Prelude.Nothing,
      campaignArn = Prelude.Nothing,
      lastUpdatedDateTime = Prelude.Nothing,
      failureReason = Prelude.Nothing
    }

-- | The name of the campaign.
campaign_name :: Lens.Lens' Campaign (Prelude.Maybe Prelude.Text)
campaign_name = Lens.lens (\Campaign' {name} -> name) (\s@Campaign' {} a -> s {name = a} :: Campaign)

-- | The date and time (in Unix format) that the campaign was created.
campaign_creationDateTime :: Lens.Lens' Campaign (Prelude.Maybe Prelude.UTCTime)
campaign_creationDateTime = Lens.lens (\Campaign' {creationDateTime} -> creationDateTime) (\s@Campaign' {} a -> s {creationDateTime = a} :: Campaign) Prelude.. Lens.mapping Core._Time

-- | Undocumented member.
campaign_latestCampaignUpdate :: Lens.Lens' Campaign (Prelude.Maybe CampaignUpdateSummary)
campaign_latestCampaignUpdate = Lens.lens (\Campaign' {latestCampaignUpdate} -> latestCampaignUpdate) (\s@Campaign' {} a -> s {latestCampaignUpdate = a} :: Campaign)

-- | The configuration details of a campaign.
campaign_campaignConfig :: Lens.Lens' Campaign (Prelude.Maybe CampaignConfig)
campaign_campaignConfig = Lens.lens (\Campaign' {campaignConfig} -> campaignConfig) (\s@Campaign' {} a -> s {campaignConfig = a} :: Campaign)

-- | The status of the campaign.
--
-- A campaign can be in one of the following states:
--
-- -   CREATE PENDING > CREATE IN_PROGRESS > ACTIVE -or- CREATE FAILED
--
-- -   DELETE PENDING > DELETE IN_PROGRESS
campaign_status :: Lens.Lens' Campaign (Prelude.Maybe Prelude.Text)
campaign_status = Lens.lens (\Campaign' {status} -> status) (\s@Campaign' {} a -> s {status = a} :: Campaign)

-- | Specifies the requested minimum provisioned transactions
-- (recommendations) per second.
campaign_minProvisionedTPS :: Lens.Lens' Campaign (Prelude.Maybe Prelude.Natural)
campaign_minProvisionedTPS = Lens.lens (\Campaign' {minProvisionedTPS} -> minProvisionedTPS) (\s@Campaign' {} a -> s {minProvisionedTPS = a} :: Campaign)

-- | The Amazon Resource Name (ARN) of a specific version of the solution.
campaign_solutionVersionArn :: Lens.Lens' Campaign (Prelude.Maybe Prelude.Text)
campaign_solutionVersionArn = Lens.lens (\Campaign' {solutionVersionArn} -> solutionVersionArn) (\s@Campaign' {} a -> s {solutionVersionArn = a} :: Campaign)

-- | The Amazon Resource Name (ARN) of the campaign.
campaign_campaignArn :: Lens.Lens' Campaign (Prelude.Maybe Prelude.Text)
campaign_campaignArn = Lens.lens (\Campaign' {campaignArn} -> campaignArn) (\s@Campaign' {} a -> s {campaignArn = a} :: Campaign)

-- | The date and time (in Unix format) that the campaign was last updated.
campaign_lastUpdatedDateTime :: Lens.Lens' Campaign (Prelude.Maybe Prelude.UTCTime)
campaign_lastUpdatedDateTime = Lens.lens (\Campaign' {lastUpdatedDateTime} -> lastUpdatedDateTime) (\s@Campaign' {} a -> s {lastUpdatedDateTime = a} :: Campaign) Prelude.. Lens.mapping Core._Time

-- | If a campaign fails, the reason behind the failure.
campaign_failureReason :: Lens.Lens' Campaign (Prelude.Maybe Prelude.Text)
campaign_failureReason = Lens.lens (\Campaign' {failureReason} -> failureReason) (\s@Campaign' {} a -> s {failureReason = a} :: Campaign)

instance Core.FromJSON Campaign where
  parseJSON =
    Core.withObject
      "Campaign"
      ( \x ->
          Campaign'
            Prelude.<$> (x Core..:? "name")
            Prelude.<*> (x Core..:? "creationDateTime")
            Prelude.<*> (x Core..:? "latestCampaignUpdate")
            Prelude.<*> (x Core..:? "campaignConfig")
            Prelude.<*> (x Core..:? "status")
            Prelude.<*> (x Core..:? "minProvisionedTPS")
            Prelude.<*> (x Core..:? "solutionVersionArn")
            Prelude.<*> (x Core..:? "campaignArn")
            Prelude.<*> (x Core..:? "lastUpdatedDateTime")
            Prelude.<*> (x Core..:? "failureReason")
      )

instance Prelude.Hashable Campaign where
  hashWithSalt _salt Campaign' {..} =
    _salt `Prelude.hashWithSalt` name
      `Prelude.hashWithSalt` creationDateTime
      `Prelude.hashWithSalt` latestCampaignUpdate
      `Prelude.hashWithSalt` campaignConfig
      `Prelude.hashWithSalt` status
      `Prelude.hashWithSalt` minProvisionedTPS
      `Prelude.hashWithSalt` solutionVersionArn
      `Prelude.hashWithSalt` campaignArn
      `Prelude.hashWithSalt` lastUpdatedDateTime
      `Prelude.hashWithSalt` failureReason

instance Prelude.NFData Campaign where
  rnf Campaign' {..} =
    Prelude.rnf name
      `Prelude.seq` Prelude.rnf creationDateTime
      `Prelude.seq` Prelude.rnf latestCampaignUpdate
      `Prelude.seq` Prelude.rnf campaignConfig
      `Prelude.seq` Prelude.rnf status
      `Prelude.seq` Prelude.rnf minProvisionedTPS
      `Prelude.seq` Prelude.rnf solutionVersionArn
      `Prelude.seq` Prelude.rnf campaignArn
      `Prelude.seq` Prelude.rnf lastUpdatedDateTime
      `Prelude.seq` Prelude.rnf failureReason
