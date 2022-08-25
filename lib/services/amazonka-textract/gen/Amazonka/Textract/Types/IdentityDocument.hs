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
-- Module      : Amazonka.Textract.Types.IdentityDocument
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.Textract.Types.IdentityDocument where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import Amazonka.Textract.Types.IdentityDocumentField

-- | The structure that lists each document processed in an AnalyzeID
-- operation.
--
-- /See:/ 'newIdentityDocument' smart constructor.
data IdentityDocument = IdentityDocument'
  { -- | Denotes the placement of a document in the IdentityDocument list. The
    -- first document is marked 1, the second 2 and so on.
    documentIndex :: Prelude.Maybe Prelude.Natural,
    -- | The structure used to record information extracted from identity
    -- documents. Contains both normalized field and value of the extracted
    -- text.
    identityDocumentFields :: Prelude.Maybe [IdentityDocumentField]
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'IdentityDocument' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'documentIndex', 'identityDocument_documentIndex' - Denotes the placement of a document in the IdentityDocument list. The
-- first document is marked 1, the second 2 and so on.
--
-- 'identityDocumentFields', 'identityDocument_identityDocumentFields' - The structure used to record information extracted from identity
-- documents. Contains both normalized field and value of the extracted
-- text.
newIdentityDocument ::
  IdentityDocument
newIdentityDocument =
  IdentityDocument'
    { documentIndex = Prelude.Nothing,
      identityDocumentFields = Prelude.Nothing
    }

-- | Denotes the placement of a document in the IdentityDocument list. The
-- first document is marked 1, the second 2 and so on.
identityDocument_documentIndex :: Lens.Lens' IdentityDocument (Prelude.Maybe Prelude.Natural)
identityDocument_documentIndex = Lens.lens (\IdentityDocument' {documentIndex} -> documentIndex) (\s@IdentityDocument' {} a -> s {documentIndex = a} :: IdentityDocument)

-- | The structure used to record information extracted from identity
-- documents. Contains both normalized field and value of the extracted
-- text.
identityDocument_identityDocumentFields :: Lens.Lens' IdentityDocument (Prelude.Maybe [IdentityDocumentField])
identityDocument_identityDocumentFields = Lens.lens (\IdentityDocument' {identityDocumentFields} -> identityDocumentFields) (\s@IdentityDocument' {} a -> s {identityDocumentFields = a} :: IdentityDocument) Prelude.. Lens.mapping Lens.coerced

instance Core.FromJSON IdentityDocument where
  parseJSON =
    Core.withObject
      "IdentityDocument"
      ( \x ->
          IdentityDocument'
            Prelude.<$> (x Core..:? "DocumentIndex")
            Prelude.<*> ( x Core..:? "IdentityDocumentFields"
                            Core..!= Prelude.mempty
                        )
      )

instance Prelude.Hashable IdentityDocument where
  hashWithSalt _salt IdentityDocument' {..} =
    _salt `Prelude.hashWithSalt` documentIndex
      `Prelude.hashWithSalt` identityDocumentFields

instance Prelude.NFData IdentityDocument where
  rnf IdentityDocument' {..} =
    Prelude.rnf documentIndex
      `Prelude.seq` Prelude.rnf identityDocumentFields
