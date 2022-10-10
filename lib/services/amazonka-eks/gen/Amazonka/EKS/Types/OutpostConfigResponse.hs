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
-- Module      : Amazonka.EKS.Types.OutpostConfigResponse
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.EKS.Types.OutpostConfigResponse where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | An object representing the configuration of your local Amazon EKS
-- cluster on an Amazon Web Services Outpost. This API isn\'t available for
-- Amazon EKS clusters on the Amazon Web Services cloud.
--
-- /See:/ 'newOutpostConfigResponse' smart constructor.
data OutpostConfigResponse = OutpostConfigResponse'
  { -- | The ARN of the Outpost that you specified for use with your local Amazon
    -- EKS cluster on Outposts.
    outpostArns :: [Prelude.Text],
    -- | The Amazon EC2 instance type used for the control plane. The instance
    -- type is the same for all control plane instances.
    controlPlaneInstanceType :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'OutpostConfigResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'outpostArns', 'outpostConfigResponse_outpostArns' - The ARN of the Outpost that you specified for use with your local Amazon
-- EKS cluster on Outposts.
--
-- 'controlPlaneInstanceType', 'outpostConfigResponse_controlPlaneInstanceType' - The Amazon EC2 instance type used for the control plane. The instance
-- type is the same for all control plane instances.
newOutpostConfigResponse ::
  -- | 'controlPlaneInstanceType'
  Prelude.Text ->
  OutpostConfigResponse
newOutpostConfigResponse pControlPlaneInstanceType_ =
  OutpostConfigResponse'
    { outpostArns =
        Prelude.mempty,
      controlPlaneInstanceType =
        pControlPlaneInstanceType_
    }

-- | The ARN of the Outpost that you specified for use with your local Amazon
-- EKS cluster on Outposts.
outpostConfigResponse_outpostArns :: Lens.Lens' OutpostConfigResponse [Prelude.Text]
outpostConfigResponse_outpostArns = Lens.lens (\OutpostConfigResponse' {outpostArns} -> outpostArns) (\s@OutpostConfigResponse' {} a -> s {outpostArns = a} :: OutpostConfigResponse) Prelude.. Lens.coerced

-- | The Amazon EC2 instance type used for the control plane. The instance
-- type is the same for all control plane instances.
outpostConfigResponse_controlPlaneInstanceType :: Lens.Lens' OutpostConfigResponse Prelude.Text
outpostConfigResponse_controlPlaneInstanceType = Lens.lens (\OutpostConfigResponse' {controlPlaneInstanceType} -> controlPlaneInstanceType) (\s@OutpostConfigResponse' {} a -> s {controlPlaneInstanceType = a} :: OutpostConfigResponse)

instance Core.FromJSON OutpostConfigResponse where
  parseJSON =
    Core.withObject
      "OutpostConfigResponse"
      ( \x ->
          OutpostConfigResponse'
            Prelude.<$> (x Core..:? "outpostArns" Core..!= Prelude.mempty)
            Prelude.<*> (x Core..: "controlPlaneInstanceType")
      )

instance Prelude.Hashable OutpostConfigResponse where
  hashWithSalt _salt OutpostConfigResponse' {..} =
    _salt `Prelude.hashWithSalt` outpostArns
      `Prelude.hashWithSalt` controlPlaneInstanceType

instance Prelude.NFData OutpostConfigResponse where
  rnf OutpostConfigResponse' {..} =
    Prelude.rnf outpostArns
      `Prelude.seq` Prelude.rnf controlPlaneInstanceType
