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
-- Module      : Amazonka.Glue.Types.UpdateXMLClassifierRequest
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.Glue.Types.UpdateXMLClassifierRequest where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | Specifies an XML classifier to be updated.
--
-- /See:/ 'newUpdateXMLClassifierRequest' smart constructor.
data UpdateXMLClassifierRequest = UpdateXMLClassifierRequest'
  { -- | The XML tag designating the element that contains each record in an XML
    -- document being parsed. This cannot identify a self-closing element
    -- (closed by @\/>@). An empty row element that contains only attributes
    -- can be parsed as long as it ends with a closing tag (for example,
    -- @\<row item_a=\"A\" item_b=\"B\">\<\/row>@ is okay, but
    -- @\<row item_a=\"A\" item_b=\"B\" \/>@ is not).
    rowTag :: Prelude.Maybe Prelude.Text,
    -- | An identifier of the data format that the classifier matches.
    classification :: Prelude.Maybe Prelude.Text,
    -- | The name of the classifier.
    name :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateXMLClassifierRequest' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'rowTag', 'updateXMLClassifierRequest_rowTag' - The XML tag designating the element that contains each record in an XML
-- document being parsed. This cannot identify a self-closing element
-- (closed by @\/>@). An empty row element that contains only attributes
-- can be parsed as long as it ends with a closing tag (for example,
-- @\<row item_a=\"A\" item_b=\"B\">\<\/row>@ is okay, but
-- @\<row item_a=\"A\" item_b=\"B\" \/>@ is not).
--
-- 'classification', 'updateXMLClassifierRequest_classification' - An identifier of the data format that the classifier matches.
--
-- 'name', 'updateXMLClassifierRequest_name' - The name of the classifier.
newUpdateXMLClassifierRequest ::
  -- | 'name'
  Prelude.Text ->
  UpdateXMLClassifierRequest
newUpdateXMLClassifierRequest pName_ =
  UpdateXMLClassifierRequest'
    { rowTag =
        Prelude.Nothing,
      classification = Prelude.Nothing,
      name = pName_
    }

-- | The XML tag designating the element that contains each record in an XML
-- document being parsed. This cannot identify a self-closing element
-- (closed by @\/>@). An empty row element that contains only attributes
-- can be parsed as long as it ends with a closing tag (for example,
-- @\<row item_a=\"A\" item_b=\"B\">\<\/row>@ is okay, but
-- @\<row item_a=\"A\" item_b=\"B\" \/>@ is not).
updateXMLClassifierRequest_rowTag :: Lens.Lens' UpdateXMLClassifierRequest (Prelude.Maybe Prelude.Text)
updateXMLClassifierRequest_rowTag = Lens.lens (\UpdateXMLClassifierRequest' {rowTag} -> rowTag) (\s@UpdateXMLClassifierRequest' {} a -> s {rowTag = a} :: UpdateXMLClassifierRequest)

-- | An identifier of the data format that the classifier matches.
updateXMLClassifierRequest_classification :: Lens.Lens' UpdateXMLClassifierRequest (Prelude.Maybe Prelude.Text)
updateXMLClassifierRequest_classification = Lens.lens (\UpdateXMLClassifierRequest' {classification} -> classification) (\s@UpdateXMLClassifierRequest' {} a -> s {classification = a} :: UpdateXMLClassifierRequest)

-- | The name of the classifier.
updateXMLClassifierRequest_name :: Lens.Lens' UpdateXMLClassifierRequest Prelude.Text
updateXMLClassifierRequest_name = Lens.lens (\UpdateXMLClassifierRequest' {name} -> name) (\s@UpdateXMLClassifierRequest' {} a -> s {name = a} :: UpdateXMLClassifierRequest)

instance Prelude.Hashable UpdateXMLClassifierRequest where
  hashWithSalt _salt UpdateXMLClassifierRequest' {..} =
    _salt `Prelude.hashWithSalt` rowTag
      `Prelude.hashWithSalt` classification
      `Prelude.hashWithSalt` name

instance Prelude.NFData UpdateXMLClassifierRequest where
  rnf UpdateXMLClassifierRequest' {..} =
    Prelude.rnf rowTag
      `Prelude.seq` Prelude.rnf classification
      `Prelude.seq` Prelude.rnf name

instance Core.ToJSON UpdateXMLClassifierRequest where
  toJSON UpdateXMLClassifierRequest' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("RowTag" Core..=) Prelude.<$> rowTag,
            ("Classification" Core..=)
              Prelude.<$> classification,
            Prelude.Just ("Name" Core..= name)
          ]
      )
