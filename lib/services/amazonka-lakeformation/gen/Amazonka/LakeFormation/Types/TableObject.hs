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
-- Module      : Amazonka.LakeFormation.Types.TableObject
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.LakeFormation.Types.TableObject where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | Specifies the details of a governed table.
--
-- /See:/ 'newTableObject' smart constructor.
data TableObject = TableObject'
  { -- | The size of the Amazon S3 object in bytes.
    size :: Prelude.Maybe Prelude.Integer,
    -- | The Amazon S3 location of the object.
    uri :: Prelude.Maybe Prelude.Text,
    -- | The Amazon S3 ETag of the object. Returned by @GetTableObjects@ for
    -- validation and used to identify changes to the underlying data.
    eTag :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'TableObject' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'size', 'tableObject_size' - The size of the Amazon S3 object in bytes.
--
-- 'uri', 'tableObject_uri' - The Amazon S3 location of the object.
--
-- 'eTag', 'tableObject_eTag' - The Amazon S3 ETag of the object. Returned by @GetTableObjects@ for
-- validation and used to identify changes to the underlying data.
newTableObject ::
  TableObject
newTableObject =
  TableObject'
    { size = Prelude.Nothing,
      uri = Prelude.Nothing,
      eTag = Prelude.Nothing
    }

-- | The size of the Amazon S3 object in bytes.
tableObject_size :: Lens.Lens' TableObject (Prelude.Maybe Prelude.Integer)
tableObject_size = Lens.lens (\TableObject' {size} -> size) (\s@TableObject' {} a -> s {size = a} :: TableObject)

-- | The Amazon S3 location of the object.
tableObject_uri :: Lens.Lens' TableObject (Prelude.Maybe Prelude.Text)
tableObject_uri = Lens.lens (\TableObject' {uri} -> uri) (\s@TableObject' {} a -> s {uri = a} :: TableObject)

-- | The Amazon S3 ETag of the object. Returned by @GetTableObjects@ for
-- validation and used to identify changes to the underlying data.
tableObject_eTag :: Lens.Lens' TableObject (Prelude.Maybe Prelude.Text)
tableObject_eTag = Lens.lens (\TableObject' {eTag} -> eTag) (\s@TableObject' {} a -> s {eTag = a} :: TableObject)

instance Core.FromJSON TableObject where
  parseJSON =
    Core.withObject
      "TableObject"
      ( \x ->
          TableObject'
            Prelude.<$> (x Core..:? "Size")
            Prelude.<*> (x Core..:? "Uri")
            Prelude.<*> (x Core..:? "ETag")
      )

instance Prelude.Hashable TableObject where
  hashWithSalt _salt TableObject' {..} =
    _salt `Prelude.hashWithSalt` size
      `Prelude.hashWithSalt` uri
      `Prelude.hashWithSalt` eTag

instance Prelude.NFData TableObject where
  rnf TableObject' {..} =
    Prelude.rnf size
      `Prelude.seq` Prelude.rnf uri
      `Prelude.seq` Prelude.rnf eTag
