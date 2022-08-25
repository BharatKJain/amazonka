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
-- Module      : Amazonka.Glue.Types.S3JsonSource
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.Glue.Types.S3JsonSource where

import qualified Amazonka.Core as Core
import Amazonka.Glue.Types.CompressionType
import Amazonka.Glue.Types.GlueSchema
import Amazonka.Glue.Types.S3DirectSourceAdditionalOptions
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | Specifies a JSON data store stored in Amazon S3.
--
-- /See:/ 'newS3JsonSource' smart constructor.
data S3JsonSource = S3JsonSource'
  { -- | Specifies the data schema for the S3 JSON source.
    outputSchemas :: Prelude.Maybe [GlueSchema],
    -- | Grouping files is turned on by default when the input contains more than
    -- 50,000 files. To turn on grouping with fewer than 50,000 files, set this
    -- parameter to \"inPartition\". To disable grouping when there are more
    -- than 50,000 files, set this parameter to @\"none\"@.
    groupFiles :: Prelude.Maybe Prelude.Text,
    -- | This option controls the duration in milliseconds after which the s3
    -- listing is likely to be consistent. Files with modification timestamps
    -- falling within the last maxBand milliseconds are tracked specially when
    -- using JobBookmarks to account for Amazon S3 eventual consistency. Most
    -- users don\'t need to set this option. The default is 900000
    -- milliseconds, or 15 minutes.
    maxBand :: Prelude.Maybe Prelude.Natural,
    -- | This option specifies the maximum number of files to save from the last
    -- maxBand seconds. If this number is exceeded, extra files are skipped and
    -- only processed in the next job run.
    maxFilesInBand :: Prelude.Maybe Prelude.Natural,
    -- | If set to true, recursively reads files in all subdirectories under the
    -- specified paths.
    recurse :: Prelude.Maybe Prelude.Bool,
    -- | A JsonPath string defining the JSON data.
    jsonPath :: Prelude.Maybe Prelude.Text,
    -- | Specifies additional connection options.
    additionalOptions :: Prelude.Maybe S3DirectSourceAdditionalOptions,
    -- | Specifies how the data is compressed. This is generally not necessary if
    -- the data has a standard file extension. Possible values are @\"gzip\"@
    -- and @\"bzip\"@).
    compressionType :: Prelude.Maybe CompressionType,
    -- | A Boolean value that specifies whether a single record can span multiple
    -- lines. This can occur when a field contains a quoted new-line character.
    -- You must set this option to True if any record spans multiple lines. The
    -- default value is @False@, which allows for more aggressive
    -- file-splitting during parsing.
    multiline :: Prelude.Maybe Prelude.Bool,
    -- | A string containing a JSON list of Unix-style glob patterns to exclude.
    -- For example, \"[\\\"**.pdf\\\"]\" excludes all PDF files.
    exclusions :: Prelude.Maybe [Prelude.Text],
    -- | The target group size in bytes. The default is computed based on the
    -- input data size and the size of your cluster. When there are fewer than
    -- 50,000 input files, @\"groupFiles\"@ must be set to @\"inPartition\"@
    -- for this to take effect.
    groupSize :: Prelude.Maybe Prelude.Text,
    -- | The name of the data store.
    name :: Prelude.Text,
    -- | A list of the Amazon S3 paths to read from.
    paths :: [Prelude.Text]
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'S3JsonSource' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'outputSchemas', 's3JsonSource_outputSchemas' - Specifies the data schema for the S3 JSON source.
--
-- 'groupFiles', 's3JsonSource_groupFiles' - Grouping files is turned on by default when the input contains more than
-- 50,000 files. To turn on grouping with fewer than 50,000 files, set this
-- parameter to \"inPartition\". To disable grouping when there are more
-- than 50,000 files, set this parameter to @\"none\"@.
--
-- 'maxBand', 's3JsonSource_maxBand' - This option controls the duration in milliseconds after which the s3
-- listing is likely to be consistent. Files with modification timestamps
-- falling within the last maxBand milliseconds are tracked specially when
-- using JobBookmarks to account for Amazon S3 eventual consistency. Most
-- users don\'t need to set this option. The default is 900000
-- milliseconds, or 15 minutes.
--
-- 'maxFilesInBand', 's3JsonSource_maxFilesInBand' - This option specifies the maximum number of files to save from the last
-- maxBand seconds. If this number is exceeded, extra files are skipped and
-- only processed in the next job run.
--
-- 'recurse', 's3JsonSource_recurse' - If set to true, recursively reads files in all subdirectories under the
-- specified paths.
--
-- 'jsonPath', 's3JsonSource_jsonPath' - A JsonPath string defining the JSON data.
--
-- 'additionalOptions', 's3JsonSource_additionalOptions' - Specifies additional connection options.
--
-- 'compressionType', 's3JsonSource_compressionType' - Specifies how the data is compressed. This is generally not necessary if
-- the data has a standard file extension. Possible values are @\"gzip\"@
-- and @\"bzip\"@).
--
-- 'multiline', 's3JsonSource_multiline' - A Boolean value that specifies whether a single record can span multiple
-- lines. This can occur when a field contains a quoted new-line character.
-- You must set this option to True if any record spans multiple lines. The
-- default value is @False@, which allows for more aggressive
-- file-splitting during parsing.
--
-- 'exclusions', 's3JsonSource_exclusions' - A string containing a JSON list of Unix-style glob patterns to exclude.
-- For example, \"[\\\"**.pdf\\\"]\" excludes all PDF files.
--
-- 'groupSize', 's3JsonSource_groupSize' - The target group size in bytes. The default is computed based on the
-- input data size and the size of your cluster. When there are fewer than
-- 50,000 input files, @\"groupFiles\"@ must be set to @\"inPartition\"@
-- for this to take effect.
--
-- 'name', 's3JsonSource_name' - The name of the data store.
--
-- 'paths', 's3JsonSource_paths' - A list of the Amazon S3 paths to read from.
newS3JsonSource ::
  -- | 'name'
  Prelude.Text ->
  S3JsonSource
newS3JsonSource pName_ =
  S3JsonSource'
    { outputSchemas = Prelude.Nothing,
      groupFiles = Prelude.Nothing,
      maxBand = Prelude.Nothing,
      maxFilesInBand = Prelude.Nothing,
      recurse = Prelude.Nothing,
      jsonPath = Prelude.Nothing,
      additionalOptions = Prelude.Nothing,
      compressionType = Prelude.Nothing,
      multiline = Prelude.Nothing,
      exclusions = Prelude.Nothing,
      groupSize = Prelude.Nothing,
      name = pName_,
      paths = Prelude.mempty
    }

-- | Specifies the data schema for the S3 JSON source.
s3JsonSource_outputSchemas :: Lens.Lens' S3JsonSource (Prelude.Maybe [GlueSchema])
s3JsonSource_outputSchemas = Lens.lens (\S3JsonSource' {outputSchemas} -> outputSchemas) (\s@S3JsonSource' {} a -> s {outputSchemas = a} :: S3JsonSource) Prelude.. Lens.mapping Lens.coerced

-- | Grouping files is turned on by default when the input contains more than
-- 50,000 files. To turn on grouping with fewer than 50,000 files, set this
-- parameter to \"inPartition\". To disable grouping when there are more
-- than 50,000 files, set this parameter to @\"none\"@.
s3JsonSource_groupFiles :: Lens.Lens' S3JsonSource (Prelude.Maybe Prelude.Text)
s3JsonSource_groupFiles = Lens.lens (\S3JsonSource' {groupFiles} -> groupFiles) (\s@S3JsonSource' {} a -> s {groupFiles = a} :: S3JsonSource)

-- | This option controls the duration in milliseconds after which the s3
-- listing is likely to be consistent. Files with modification timestamps
-- falling within the last maxBand milliseconds are tracked specially when
-- using JobBookmarks to account for Amazon S3 eventual consistency. Most
-- users don\'t need to set this option. The default is 900000
-- milliseconds, or 15 minutes.
s3JsonSource_maxBand :: Lens.Lens' S3JsonSource (Prelude.Maybe Prelude.Natural)
s3JsonSource_maxBand = Lens.lens (\S3JsonSource' {maxBand} -> maxBand) (\s@S3JsonSource' {} a -> s {maxBand = a} :: S3JsonSource)

-- | This option specifies the maximum number of files to save from the last
-- maxBand seconds. If this number is exceeded, extra files are skipped and
-- only processed in the next job run.
s3JsonSource_maxFilesInBand :: Lens.Lens' S3JsonSource (Prelude.Maybe Prelude.Natural)
s3JsonSource_maxFilesInBand = Lens.lens (\S3JsonSource' {maxFilesInBand} -> maxFilesInBand) (\s@S3JsonSource' {} a -> s {maxFilesInBand = a} :: S3JsonSource)

-- | If set to true, recursively reads files in all subdirectories under the
-- specified paths.
s3JsonSource_recurse :: Lens.Lens' S3JsonSource (Prelude.Maybe Prelude.Bool)
s3JsonSource_recurse = Lens.lens (\S3JsonSource' {recurse} -> recurse) (\s@S3JsonSource' {} a -> s {recurse = a} :: S3JsonSource)

-- | A JsonPath string defining the JSON data.
s3JsonSource_jsonPath :: Lens.Lens' S3JsonSource (Prelude.Maybe Prelude.Text)
s3JsonSource_jsonPath = Lens.lens (\S3JsonSource' {jsonPath} -> jsonPath) (\s@S3JsonSource' {} a -> s {jsonPath = a} :: S3JsonSource)

-- | Specifies additional connection options.
s3JsonSource_additionalOptions :: Lens.Lens' S3JsonSource (Prelude.Maybe S3DirectSourceAdditionalOptions)
s3JsonSource_additionalOptions = Lens.lens (\S3JsonSource' {additionalOptions} -> additionalOptions) (\s@S3JsonSource' {} a -> s {additionalOptions = a} :: S3JsonSource)

-- | Specifies how the data is compressed. This is generally not necessary if
-- the data has a standard file extension. Possible values are @\"gzip\"@
-- and @\"bzip\"@).
s3JsonSource_compressionType :: Lens.Lens' S3JsonSource (Prelude.Maybe CompressionType)
s3JsonSource_compressionType = Lens.lens (\S3JsonSource' {compressionType} -> compressionType) (\s@S3JsonSource' {} a -> s {compressionType = a} :: S3JsonSource)

-- | A Boolean value that specifies whether a single record can span multiple
-- lines. This can occur when a field contains a quoted new-line character.
-- You must set this option to True if any record spans multiple lines. The
-- default value is @False@, which allows for more aggressive
-- file-splitting during parsing.
s3JsonSource_multiline :: Lens.Lens' S3JsonSource (Prelude.Maybe Prelude.Bool)
s3JsonSource_multiline = Lens.lens (\S3JsonSource' {multiline} -> multiline) (\s@S3JsonSource' {} a -> s {multiline = a} :: S3JsonSource)

-- | A string containing a JSON list of Unix-style glob patterns to exclude.
-- For example, \"[\\\"**.pdf\\\"]\" excludes all PDF files.
s3JsonSource_exclusions :: Lens.Lens' S3JsonSource (Prelude.Maybe [Prelude.Text])
s3JsonSource_exclusions = Lens.lens (\S3JsonSource' {exclusions} -> exclusions) (\s@S3JsonSource' {} a -> s {exclusions = a} :: S3JsonSource) Prelude.. Lens.mapping Lens.coerced

-- | The target group size in bytes. The default is computed based on the
-- input data size and the size of your cluster. When there are fewer than
-- 50,000 input files, @\"groupFiles\"@ must be set to @\"inPartition\"@
-- for this to take effect.
s3JsonSource_groupSize :: Lens.Lens' S3JsonSource (Prelude.Maybe Prelude.Text)
s3JsonSource_groupSize = Lens.lens (\S3JsonSource' {groupSize} -> groupSize) (\s@S3JsonSource' {} a -> s {groupSize = a} :: S3JsonSource)

-- | The name of the data store.
s3JsonSource_name :: Lens.Lens' S3JsonSource Prelude.Text
s3JsonSource_name = Lens.lens (\S3JsonSource' {name} -> name) (\s@S3JsonSource' {} a -> s {name = a} :: S3JsonSource)

-- | A list of the Amazon S3 paths to read from.
s3JsonSource_paths :: Lens.Lens' S3JsonSource [Prelude.Text]
s3JsonSource_paths = Lens.lens (\S3JsonSource' {paths} -> paths) (\s@S3JsonSource' {} a -> s {paths = a} :: S3JsonSource) Prelude.. Lens.coerced

instance Core.FromJSON S3JsonSource where
  parseJSON =
    Core.withObject
      "S3JsonSource"
      ( \x ->
          S3JsonSource'
            Prelude.<$> (x Core..:? "OutputSchemas" Core..!= Prelude.mempty)
            Prelude.<*> (x Core..:? "GroupFiles")
            Prelude.<*> (x Core..:? "MaxBand")
            Prelude.<*> (x Core..:? "MaxFilesInBand")
            Prelude.<*> (x Core..:? "Recurse")
            Prelude.<*> (x Core..:? "JsonPath")
            Prelude.<*> (x Core..:? "AdditionalOptions")
            Prelude.<*> (x Core..:? "CompressionType")
            Prelude.<*> (x Core..:? "Multiline")
            Prelude.<*> (x Core..:? "Exclusions" Core..!= Prelude.mempty)
            Prelude.<*> (x Core..:? "GroupSize")
            Prelude.<*> (x Core..: "Name")
            Prelude.<*> (x Core..:? "Paths" Core..!= Prelude.mempty)
      )

instance Prelude.Hashable S3JsonSource where
  hashWithSalt _salt S3JsonSource' {..} =
    _salt `Prelude.hashWithSalt` outputSchemas
      `Prelude.hashWithSalt` groupFiles
      `Prelude.hashWithSalt` maxBand
      `Prelude.hashWithSalt` maxFilesInBand
      `Prelude.hashWithSalt` recurse
      `Prelude.hashWithSalt` jsonPath
      `Prelude.hashWithSalt` additionalOptions
      `Prelude.hashWithSalt` compressionType
      `Prelude.hashWithSalt` multiline
      `Prelude.hashWithSalt` exclusions
      `Prelude.hashWithSalt` groupSize
      `Prelude.hashWithSalt` name
      `Prelude.hashWithSalt` paths

instance Prelude.NFData S3JsonSource where
  rnf S3JsonSource' {..} =
    Prelude.rnf outputSchemas
      `Prelude.seq` Prelude.rnf groupFiles
      `Prelude.seq` Prelude.rnf maxBand
      `Prelude.seq` Prelude.rnf maxFilesInBand
      `Prelude.seq` Prelude.rnf recurse
      `Prelude.seq` Prelude.rnf jsonPath
      `Prelude.seq` Prelude.rnf additionalOptions
      `Prelude.seq` Prelude.rnf compressionType
      `Prelude.seq` Prelude.rnf multiline
      `Prelude.seq` Prelude.rnf exclusions
      `Prelude.seq` Prelude.rnf groupSize
      `Prelude.seq` Prelude.rnf name
      `Prelude.seq` Prelude.rnf paths

instance Core.ToJSON S3JsonSource where
  toJSON S3JsonSource' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("OutputSchemas" Core..=) Prelude.<$> outputSchemas,
            ("GroupFiles" Core..=) Prelude.<$> groupFiles,
            ("MaxBand" Core..=) Prelude.<$> maxBand,
            ("MaxFilesInBand" Core..=)
              Prelude.<$> maxFilesInBand,
            ("Recurse" Core..=) Prelude.<$> recurse,
            ("JsonPath" Core..=) Prelude.<$> jsonPath,
            ("AdditionalOptions" Core..=)
              Prelude.<$> additionalOptions,
            ("CompressionType" Core..=)
              Prelude.<$> compressionType,
            ("Multiline" Core..=) Prelude.<$> multiline,
            ("Exclusions" Core..=) Prelude.<$> exclusions,
            ("GroupSize" Core..=) Prelude.<$> groupSize,
            Prelude.Just ("Name" Core..= name),
            Prelude.Just ("Paths" Core..= paths)
          ]
      )
