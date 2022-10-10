{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Amazonka.Textract.Types.BlockType
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.Textract.Types.BlockType
  ( BlockType
      ( ..,
        BlockType_CELL,
        BlockType_KEY_VALUE_SET,
        BlockType_LINE,
        BlockType_MERGED_CELL,
        BlockType_PAGE,
        BlockType_QUERY,
        BlockType_QUERY_RESULT,
        BlockType_SELECTION_ELEMENT,
        BlockType_TABLE,
        BlockType_TITLE,
        BlockType_WORD
      ),
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Prelude as Prelude

newtype BlockType = BlockType'
  { fromBlockType ::
      Core.Text
  }
  deriving stock
    ( Prelude.Show,
      Prelude.Read,
      Prelude.Eq,
      Prelude.Ord,
      Prelude.Generic
    )
  deriving newtype
    ( Prelude.Hashable,
      Prelude.NFData,
      Core.FromText,
      Core.ToText,
      Core.ToByteString,
      Core.ToLog,
      Core.ToHeader,
      Core.ToQuery,
      Core.FromJSON,
      Core.FromJSONKey,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromXML,
      Core.ToXML
    )

pattern BlockType_CELL :: BlockType
pattern BlockType_CELL = BlockType' "CELL"

pattern BlockType_KEY_VALUE_SET :: BlockType
pattern BlockType_KEY_VALUE_SET = BlockType' "KEY_VALUE_SET"

pattern BlockType_LINE :: BlockType
pattern BlockType_LINE = BlockType' "LINE"

pattern BlockType_MERGED_CELL :: BlockType
pattern BlockType_MERGED_CELL = BlockType' "MERGED_CELL"

pattern BlockType_PAGE :: BlockType
pattern BlockType_PAGE = BlockType' "PAGE"

pattern BlockType_QUERY :: BlockType
pattern BlockType_QUERY = BlockType' "QUERY"

pattern BlockType_QUERY_RESULT :: BlockType
pattern BlockType_QUERY_RESULT = BlockType' "QUERY_RESULT"

pattern BlockType_SELECTION_ELEMENT :: BlockType
pattern BlockType_SELECTION_ELEMENT = BlockType' "SELECTION_ELEMENT"

pattern BlockType_TABLE :: BlockType
pattern BlockType_TABLE = BlockType' "TABLE"

pattern BlockType_TITLE :: BlockType
pattern BlockType_TITLE = BlockType' "TITLE"

pattern BlockType_WORD :: BlockType
pattern BlockType_WORD = BlockType' "WORD"

{-# COMPLETE
  BlockType_CELL,
  BlockType_KEY_VALUE_SET,
  BlockType_LINE,
  BlockType_MERGED_CELL,
  BlockType_PAGE,
  BlockType_QUERY,
  BlockType_QUERY_RESULT,
  BlockType_SELECTION_ELEMENT,
  BlockType_TABLE,
  BlockType_TITLE,
  BlockType_WORD,
  BlockType'
  #-}
