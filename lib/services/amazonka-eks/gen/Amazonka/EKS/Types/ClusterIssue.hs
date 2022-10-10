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
-- Module      : Amazonka.EKS.Types.ClusterIssue
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.EKS.Types.ClusterIssue where

import qualified Amazonka.Core as Core
import Amazonka.EKS.Types.ClusterIssueCode
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | An issue with your local Amazon EKS cluster on an Amazon Web Services
-- Outpost. You can\'t use this API with an Amazon EKS cluster on the
-- Amazon Web Services cloud.
--
-- /See:/ 'newClusterIssue' smart constructor.
data ClusterIssue = ClusterIssue'
  { -- | A description of the issue.
    message :: Prelude.Maybe Prelude.Text,
    -- | The error code of the issue.
    code :: Prelude.Maybe ClusterIssueCode,
    -- | The resource IDs that the issue relates to.
    resourceIds :: Prelude.Maybe [Prelude.Text]
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ClusterIssue' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'message', 'clusterIssue_message' - A description of the issue.
--
-- 'code', 'clusterIssue_code' - The error code of the issue.
--
-- 'resourceIds', 'clusterIssue_resourceIds' - The resource IDs that the issue relates to.
newClusterIssue ::
  ClusterIssue
newClusterIssue =
  ClusterIssue'
    { message = Prelude.Nothing,
      code = Prelude.Nothing,
      resourceIds = Prelude.Nothing
    }

-- | A description of the issue.
clusterIssue_message :: Lens.Lens' ClusterIssue (Prelude.Maybe Prelude.Text)
clusterIssue_message = Lens.lens (\ClusterIssue' {message} -> message) (\s@ClusterIssue' {} a -> s {message = a} :: ClusterIssue)

-- | The error code of the issue.
clusterIssue_code :: Lens.Lens' ClusterIssue (Prelude.Maybe ClusterIssueCode)
clusterIssue_code = Lens.lens (\ClusterIssue' {code} -> code) (\s@ClusterIssue' {} a -> s {code = a} :: ClusterIssue)

-- | The resource IDs that the issue relates to.
clusterIssue_resourceIds :: Lens.Lens' ClusterIssue (Prelude.Maybe [Prelude.Text])
clusterIssue_resourceIds = Lens.lens (\ClusterIssue' {resourceIds} -> resourceIds) (\s@ClusterIssue' {} a -> s {resourceIds = a} :: ClusterIssue) Prelude.. Lens.mapping Lens.coerced

instance Core.FromJSON ClusterIssue where
  parseJSON =
    Core.withObject
      "ClusterIssue"
      ( \x ->
          ClusterIssue'
            Prelude.<$> (x Core..:? "message")
            Prelude.<*> (x Core..:? "code")
            Prelude.<*> (x Core..:? "resourceIds" Core..!= Prelude.mempty)
      )

instance Prelude.Hashable ClusterIssue where
  hashWithSalt _salt ClusterIssue' {..} =
    _salt `Prelude.hashWithSalt` message
      `Prelude.hashWithSalt` code
      `Prelude.hashWithSalt` resourceIds

instance Prelude.NFData ClusterIssue where
  rnf ClusterIssue' {..} =
    Prelude.rnf message
      `Prelude.seq` Prelude.rnf code
      `Prelude.seq` Prelude.rnf resourceIds
