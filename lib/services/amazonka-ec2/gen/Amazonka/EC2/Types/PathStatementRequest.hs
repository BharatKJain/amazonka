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
-- Module      : Amazonka.EC2.Types.PathStatementRequest
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.EC2.Types.PathStatementRequest where

import qualified Amazonka.Core as Core
import Amazonka.EC2.Internal
import Amazonka.EC2.Types.PacketHeaderStatementRequest
import Amazonka.EC2.Types.ResourceStatementRequest
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | Describes a path statement.
--
-- /See:/ 'newPathStatementRequest' smart constructor.
data PathStatementRequest = PathStatementRequest'
  { -- | The resource statement.
    resourceStatement :: Prelude.Maybe ResourceStatementRequest,
    -- | The packet header statement.
    packetHeaderStatement :: Prelude.Maybe PacketHeaderStatementRequest
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'PathStatementRequest' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'resourceStatement', 'pathStatementRequest_resourceStatement' - The resource statement.
--
-- 'packetHeaderStatement', 'pathStatementRequest_packetHeaderStatement' - The packet header statement.
newPathStatementRequest ::
  PathStatementRequest
newPathStatementRequest =
  PathStatementRequest'
    { resourceStatement =
        Prelude.Nothing,
      packetHeaderStatement = Prelude.Nothing
    }

-- | The resource statement.
pathStatementRequest_resourceStatement :: Lens.Lens' PathStatementRequest (Prelude.Maybe ResourceStatementRequest)
pathStatementRequest_resourceStatement = Lens.lens (\PathStatementRequest' {resourceStatement} -> resourceStatement) (\s@PathStatementRequest' {} a -> s {resourceStatement = a} :: PathStatementRequest)

-- | The packet header statement.
pathStatementRequest_packetHeaderStatement :: Lens.Lens' PathStatementRequest (Prelude.Maybe PacketHeaderStatementRequest)
pathStatementRequest_packetHeaderStatement = Lens.lens (\PathStatementRequest' {packetHeaderStatement} -> packetHeaderStatement) (\s@PathStatementRequest' {} a -> s {packetHeaderStatement = a} :: PathStatementRequest)

instance Prelude.Hashable PathStatementRequest where
  hashWithSalt _salt PathStatementRequest' {..} =
    _salt `Prelude.hashWithSalt` resourceStatement
      `Prelude.hashWithSalt` packetHeaderStatement

instance Prelude.NFData PathStatementRequest where
  rnf PathStatementRequest' {..} =
    Prelude.rnf resourceStatement
      `Prelude.seq` Prelude.rnf packetHeaderStatement

instance Core.ToQuery PathStatementRequest where
  toQuery PathStatementRequest' {..} =
    Prelude.mconcat
      [ "ResourceStatement" Core.=: resourceStatement,
        "PacketHeaderStatement"
          Core.=: packetHeaderStatement
      ]
