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
-- Module      : Amazonka.CodeCommit.Types.ApprovalStateChangedEventMetadata
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.CodeCommit.Types.ApprovalStateChangedEventMetadata where

import Amazonka.CodeCommit.Types.ApprovalState
import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | Returns information about a change in the approval state for a pull
-- request.
--
-- /See:/ 'newApprovalStateChangedEventMetadata' smart constructor.
data ApprovalStateChangedEventMetadata = ApprovalStateChangedEventMetadata'
  { -- | The approval status for the pull request.
    approvalStatus :: Prelude.Maybe ApprovalState,
    -- | The revision ID of the pull request when the approval state changed.
    revisionId :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ApprovalStateChangedEventMetadata' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'approvalStatus', 'approvalStateChangedEventMetadata_approvalStatus' - The approval status for the pull request.
--
-- 'revisionId', 'approvalStateChangedEventMetadata_revisionId' - The revision ID of the pull request when the approval state changed.
newApprovalStateChangedEventMetadata ::
  ApprovalStateChangedEventMetadata
newApprovalStateChangedEventMetadata =
  ApprovalStateChangedEventMetadata'
    { approvalStatus =
        Prelude.Nothing,
      revisionId = Prelude.Nothing
    }

-- | The approval status for the pull request.
approvalStateChangedEventMetadata_approvalStatus :: Lens.Lens' ApprovalStateChangedEventMetadata (Prelude.Maybe ApprovalState)
approvalStateChangedEventMetadata_approvalStatus = Lens.lens (\ApprovalStateChangedEventMetadata' {approvalStatus} -> approvalStatus) (\s@ApprovalStateChangedEventMetadata' {} a -> s {approvalStatus = a} :: ApprovalStateChangedEventMetadata)

-- | The revision ID of the pull request when the approval state changed.
approvalStateChangedEventMetadata_revisionId :: Lens.Lens' ApprovalStateChangedEventMetadata (Prelude.Maybe Prelude.Text)
approvalStateChangedEventMetadata_revisionId = Lens.lens (\ApprovalStateChangedEventMetadata' {revisionId} -> revisionId) (\s@ApprovalStateChangedEventMetadata' {} a -> s {revisionId = a} :: ApprovalStateChangedEventMetadata)

instance
  Core.FromJSON
    ApprovalStateChangedEventMetadata
  where
  parseJSON =
    Core.withObject
      "ApprovalStateChangedEventMetadata"
      ( \x ->
          ApprovalStateChangedEventMetadata'
            Prelude.<$> (x Core..:? "approvalStatus")
            Prelude.<*> (x Core..:? "revisionId")
      )

instance
  Prelude.Hashable
    ApprovalStateChangedEventMetadata

instance
  Prelude.NFData
    ApprovalStateChangedEventMetadata