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
-- Module      : Amazonka.EC2.Types.ClientData
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.EC2.Types.ClientData where

import qualified Amazonka.Core as Core
import Amazonka.EC2.Internal
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | Describes the client-specific data.
--
-- /See:/ 'newClientData' smart constructor.
data ClientData = ClientData'
  { -- | The time that the disk upload ends.
    uploadEnd :: Prelude.Maybe Core.ISO8601,
    -- | The time that the disk upload starts.
    uploadStart :: Prelude.Maybe Core.ISO8601,
    -- | The size of the uploaded disk image, in GiB.
    uploadSize :: Prelude.Maybe Prelude.Double,
    -- | A user-defined comment about the disk upload.
    comment :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ClientData' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'uploadEnd', 'clientData_uploadEnd' - The time that the disk upload ends.
--
-- 'uploadStart', 'clientData_uploadStart' - The time that the disk upload starts.
--
-- 'uploadSize', 'clientData_uploadSize' - The size of the uploaded disk image, in GiB.
--
-- 'comment', 'clientData_comment' - A user-defined comment about the disk upload.
newClientData ::
  ClientData
newClientData =
  ClientData'
    { uploadEnd = Prelude.Nothing,
      uploadStart = Prelude.Nothing,
      uploadSize = Prelude.Nothing,
      comment = Prelude.Nothing
    }

-- | The time that the disk upload ends.
clientData_uploadEnd :: Lens.Lens' ClientData (Prelude.Maybe Prelude.UTCTime)
clientData_uploadEnd = Lens.lens (\ClientData' {uploadEnd} -> uploadEnd) (\s@ClientData' {} a -> s {uploadEnd = a} :: ClientData) Prelude.. Lens.mapping Core._Time

-- | The time that the disk upload starts.
clientData_uploadStart :: Lens.Lens' ClientData (Prelude.Maybe Prelude.UTCTime)
clientData_uploadStart = Lens.lens (\ClientData' {uploadStart} -> uploadStart) (\s@ClientData' {} a -> s {uploadStart = a} :: ClientData) Prelude.. Lens.mapping Core._Time

-- | The size of the uploaded disk image, in GiB.
clientData_uploadSize :: Lens.Lens' ClientData (Prelude.Maybe Prelude.Double)
clientData_uploadSize = Lens.lens (\ClientData' {uploadSize} -> uploadSize) (\s@ClientData' {} a -> s {uploadSize = a} :: ClientData)

-- | A user-defined comment about the disk upload.
clientData_comment :: Lens.Lens' ClientData (Prelude.Maybe Prelude.Text)
clientData_comment = Lens.lens (\ClientData' {comment} -> comment) (\s@ClientData' {} a -> s {comment = a} :: ClientData)

instance Prelude.Hashable ClientData where
  hashWithSalt _salt ClientData' {..} =
    _salt `Prelude.hashWithSalt` uploadEnd
      `Prelude.hashWithSalt` uploadStart
      `Prelude.hashWithSalt` uploadSize
      `Prelude.hashWithSalt` comment

instance Prelude.NFData ClientData where
  rnf ClientData' {..} =
    Prelude.rnf uploadEnd
      `Prelude.seq` Prelude.rnf uploadStart
      `Prelude.seq` Prelude.rnf uploadSize
      `Prelude.seq` Prelude.rnf comment

instance Core.ToQuery ClientData where
  toQuery ClientData' {..} =
    Prelude.mconcat
      [ "UploadEnd" Core.=: uploadEnd,
        "UploadStart" Core.=: uploadStart,
        "UploadSize" Core.=: uploadSize,
        "Comment" Core.=: comment
      ]
