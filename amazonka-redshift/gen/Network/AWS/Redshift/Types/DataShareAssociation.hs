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
-- Module      : Network.AWS.Redshift.Types.DataShareAssociation
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Redshift.Types.DataShareAssociation where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import Network.AWS.Redshift.Internal
import Network.AWS.Redshift.Types.DataShareStatus

-- | The association of a datashare from a producer account with a data
-- consumer.
--
-- /See:/ 'newDataShareAssociation' smart constructor.
data DataShareAssociation = DataShareAssociation'
  { -- | The creation date of the datashare that is associated.
    createdDate :: Prelude.Maybe Core.ISO8601,
    -- | The status of the datashare that is associated.
    status :: Prelude.Maybe DataShareStatus,
    -- | The status change data of the datashare that is associated.
    statusChangeDate :: Prelude.Maybe Core.ISO8601,
    -- | The name of the consumer accounts that have an association with a
    -- producer datashare.
    consumerIdentifier :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DataShareAssociation' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'createdDate', 'dataShareAssociation_createdDate' - The creation date of the datashare that is associated.
--
-- 'status', 'dataShareAssociation_status' - The status of the datashare that is associated.
--
-- 'statusChangeDate', 'dataShareAssociation_statusChangeDate' - The status change data of the datashare that is associated.
--
-- 'consumerIdentifier', 'dataShareAssociation_consumerIdentifier' - The name of the consumer accounts that have an association with a
-- producer datashare.
newDataShareAssociation ::
  DataShareAssociation
newDataShareAssociation =
  DataShareAssociation'
    { createdDate =
        Prelude.Nothing,
      status = Prelude.Nothing,
      statusChangeDate = Prelude.Nothing,
      consumerIdentifier = Prelude.Nothing
    }

-- | The creation date of the datashare that is associated.
dataShareAssociation_createdDate :: Lens.Lens' DataShareAssociation (Prelude.Maybe Prelude.UTCTime)
dataShareAssociation_createdDate = Lens.lens (\DataShareAssociation' {createdDate} -> createdDate) (\s@DataShareAssociation' {} a -> s {createdDate = a} :: DataShareAssociation) Prelude.. Lens.mapping Core._Time

-- | The status of the datashare that is associated.
dataShareAssociation_status :: Lens.Lens' DataShareAssociation (Prelude.Maybe DataShareStatus)
dataShareAssociation_status = Lens.lens (\DataShareAssociation' {status} -> status) (\s@DataShareAssociation' {} a -> s {status = a} :: DataShareAssociation)

-- | The status change data of the datashare that is associated.
dataShareAssociation_statusChangeDate :: Lens.Lens' DataShareAssociation (Prelude.Maybe Prelude.UTCTime)
dataShareAssociation_statusChangeDate = Lens.lens (\DataShareAssociation' {statusChangeDate} -> statusChangeDate) (\s@DataShareAssociation' {} a -> s {statusChangeDate = a} :: DataShareAssociation) Prelude.. Lens.mapping Core._Time

-- | The name of the consumer accounts that have an association with a
-- producer datashare.
dataShareAssociation_consumerIdentifier :: Lens.Lens' DataShareAssociation (Prelude.Maybe Prelude.Text)
dataShareAssociation_consumerIdentifier = Lens.lens (\DataShareAssociation' {consumerIdentifier} -> consumerIdentifier) (\s@DataShareAssociation' {} a -> s {consumerIdentifier = a} :: DataShareAssociation)

instance Core.FromXML DataShareAssociation where
  parseXML x =
    DataShareAssociation'
      Prelude.<$> (x Core..@? "CreatedDate")
      Prelude.<*> (x Core..@? "Status")
      Prelude.<*> (x Core..@? "StatusChangeDate")
      Prelude.<*> (x Core..@? "ConsumerIdentifier")

instance Prelude.Hashable DataShareAssociation

instance Prelude.NFData DataShareAssociation