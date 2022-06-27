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
-- Module      : Amazonka.EC2.Types.EgressOnlyInternetGateway
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.EC2.Types.EgressOnlyInternetGateway where

import qualified Amazonka.Core as Core
import Amazonka.EC2.Internal
import Amazonka.EC2.Types.InternetGatewayAttachment
import Amazonka.EC2.Types.Tag
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | Describes an egress-only internet gateway.
--
-- /See:/ 'newEgressOnlyInternetGateway' smart constructor.
data EgressOnlyInternetGateway = EgressOnlyInternetGateway'
  { -- | The tags assigned to the egress-only internet gateway.
    tags :: Prelude.Maybe [Tag],
    -- | The ID of the egress-only internet gateway.
    egressOnlyInternetGatewayId :: Prelude.Maybe Prelude.Text,
    -- | Information about the attachment of the egress-only internet gateway.
    attachments :: Prelude.Maybe [InternetGatewayAttachment]
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'EgressOnlyInternetGateway' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'tags', 'egressOnlyInternetGateway_tags' - The tags assigned to the egress-only internet gateway.
--
-- 'egressOnlyInternetGatewayId', 'egressOnlyInternetGateway_egressOnlyInternetGatewayId' - The ID of the egress-only internet gateway.
--
-- 'attachments', 'egressOnlyInternetGateway_attachments' - Information about the attachment of the egress-only internet gateway.
newEgressOnlyInternetGateway ::
  EgressOnlyInternetGateway
newEgressOnlyInternetGateway =
  EgressOnlyInternetGateway'
    { tags = Prelude.Nothing,
      egressOnlyInternetGatewayId = Prelude.Nothing,
      attachments = Prelude.Nothing
    }

-- | The tags assigned to the egress-only internet gateway.
egressOnlyInternetGateway_tags :: Lens.Lens' EgressOnlyInternetGateway (Prelude.Maybe [Tag])
egressOnlyInternetGateway_tags = Lens.lens (\EgressOnlyInternetGateway' {tags} -> tags) (\s@EgressOnlyInternetGateway' {} a -> s {tags = a} :: EgressOnlyInternetGateway) Prelude.. Lens.mapping Lens.coerced

-- | The ID of the egress-only internet gateway.
egressOnlyInternetGateway_egressOnlyInternetGatewayId :: Lens.Lens' EgressOnlyInternetGateway (Prelude.Maybe Prelude.Text)
egressOnlyInternetGateway_egressOnlyInternetGatewayId = Lens.lens (\EgressOnlyInternetGateway' {egressOnlyInternetGatewayId} -> egressOnlyInternetGatewayId) (\s@EgressOnlyInternetGateway' {} a -> s {egressOnlyInternetGatewayId = a} :: EgressOnlyInternetGateway)

-- | Information about the attachment of the egress-only internet gateway.
egressOnlyInternetGateway_attachments :: Lens.Lens' EgressOnlyInternetGateway (Prelude.Maybe [InternetGatewayAttachment])
egressOnlyInternetGateway_attachments = Lens.lens (\EgressOnlyInternetGateway' {attachments} -> attachments) (\s@EgressOnlyInternetGateway' {} a -> s {attachments = a} :: EgressOnlyInternetGateway) Prelude.. Lens.mapping Lens.coerced

instance Core.FromXML EgressOnlyInternetGateway where
  parseXML x =
    EgressOnlyInternetGateway'
      Prelude.<$> ( x Core..@? "tagSet" Core..!@ Prelude.mempty
                      Prelude.>>= Core.may (Core.parseXMLList "item")
                  )
      Prelude.<*> (x Core..@? "egressOnlyInternetGatewayId")
      Prelude.<*> ( x Core..@? "attachmentSet" Core..!@ Prelude.mempty
                      Prelude.>>= Core.may (Core.parseXMLList "item")
                  )

instance Prelude.Hashable EgressOnlyInternetGateway where
  hashWithSalt _salt EgressOnlyInternetGateway' {..} =
    _salt `Prelude.hashWithSalt` tags
      `Prelude.hashWithSalt` egressOnlyInternetGatewayId
      `Prelude.hashWithSalt` attachments

instance Prelude.NFData EgressOnlyInternetGateway where
  rnf EgressOnlyInternetGateway' {..} =
    Prelude.rnf tags
      `Prelude.seq` Prelude.rnf egressOnlyInternetGatewayId
      `Prelude.seq` Prelude.rnf attachments
