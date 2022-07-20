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
-- Module      : Amazonka.Firehose.Types.Serializer
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.Firehose.Types.Serializer where

import qualified Amazonka.Core as Core
import Amazonka.Firehose.Types.OrcSerDe
import Amazonka.Firehose.Types.ParquetSerDe
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | The serializer that you want Kinesis Data Firehose to use to convert
-- data to the target format before writing it to Amazon S3. Kinesis Data
-- Firehose supports two types of serializers: the
-- <https://hive.apache.org/javadocs/r1.2.2/api/org/apache/hadoop/hive/ql/io/orc/OrcSerde.html ORC SerDe>
-- and the
-- <https://hive.apache.org/javadocs/r1.2.2/api/org/apache/hadoop/hive/ql/io/parquet/serde/ParquetHiveSerDe.html Parquet SerDe>.
--
-- /See:/ 'newSerializer' smart constructor.
data Serializer = Serializer'
  { -- | A serializer to use for converting data to the Parquet format before
    -- storing it in Amazon S3. For more information, see
    -- <https://parquet.apache.org/documentation/latest/ Apache Parquet>.
    parquetSerDe :: Prelude.Maybe ParquetSerDe,
    -- | A serializer to use for converting data to the ORC format before storing
    -- it in Amazon S3. For more information, see
    -- <https://orc.apache.org/docs/ Apache ORC>.
    orcSerDe :: Prelude.Maybe OrcSerDe
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'Serializer' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'parquetSerDe', 'serializer_parquetSerDe' - A serializer to use for converting data to the Parquet format before
-- storing it in Amazon S3. For more information, see
-- <https://parquet.apache.org/documentation/latest/ Apache Parquet>.
--
-- 'orcSerDe', 'serializer_orcSerDe' - A serializer to use for converting data to the ORC format before storing
-- it in Amazon S3. For more information, see
-- <https://orc.apache.org/docs/ Apache ORC>.
newSerializer ::
  Serializer
newSerializer =
  Serializer'
    { parquetSerDe = Prelude.Nothing,
      orcSerDe = Prelude.Nothing
    }

-- | A serializer to use for converting data to the Parquet format before
-- storing it in Amazon S3. For more information, see
-- <https://parquet.apache.org/documentation/latest/ Apache Parquet>.
serializer_parquetSerDe :: Lens.Lens' Serializer (Prelude.Maybe ParquetSerDe)
serializer_parquetSerDe = Lens.lens (\Serializer' {parquetSerDe} -> parquetSerDe) (\s@Serializer' {} a -> s {parquetSerDe = a} :: Serializer)

-- | A serializer to use for converting data to the ORC format before storing
-- it in Amazon S3. For more information, see
-- <https://orc.apache.org/docs/ Apache ORC>.
serializer_orcSerDe :: Lens.Lens' Serializer (Prelude.Maybe OrcSerDe)
serializer_orcSerDe = Lens.lens (\Serializer' {orcSerDe} -> orcSerDe) (\s@Serializer' {} a -> s {orcSerDe = a} :: Serializer)

instance Core.FromJSON Serializer where
  parseJSON =
    Core.withObject
      "Serializer"
      ( \x ->
          Serializer'
            Prelude.<$> (x Core..:? "ParquetSerDe")
            Prelude.<*> (x Core..:? "OrcSerDe")
      )

instance Prelude.Hashable Serializer where
  hashWithSalt _salt Serializer' {..} =
    _salt `Prelude.hashWithSalt` parquetSerDe
      `Prelude.hashWithSalt` orcSerDe

instance Prelude.NFData Serializer where
  rnf Serializer' {..} =
    Prelude.rnf parquetSerDe
      `Prelude.seq` Prelude.rnf orcSerDe

instance Core.ToJSON Serializer where
  toJSON Serializer' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("ParquetSerDe" Core..=) Prelude.<$> parquetSerDe,
            ("OrcSerDe" Core..=) Prelude.<$> orcSerDe
          ]
      )
