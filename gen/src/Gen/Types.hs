{-# LANGUAGE DeriveFoldable             #-}
{-# LANGUAGE DeriveFunctor              #-}
{-# LANGUAGE DeriveTraversable          #-}
{-# LANGUAGE ExtendedDefaultRules       #-}
{-# LANGUAGE FlexibleContexts           #-}
{-# LANGUAGE FlexibleInstances          #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase                 #-}
{-# LANGUAGE OverloadedStrings          #-}
{-# LANGUAGE TemplateHaskell            #-}
{-# LANGUAGE TupleSections              #-}
{-# LANGUAGE UndecidableInstances       #-}
{-# LANGUAGE ViewPatterns               #-}

{-# OPTIONS_GHC -fno-warn-type-defaults #-}

-- Module      : Gen.Types
-- Copyright   : (c) 2013-2014 Brendan Hay <brendan.g.hay@gmail.com>
-- License     : This Source Code Form is subject to the terms of
--               the Mozilla Public License, v. 2.0.
--               A copy of the MPL can be found in the LICENSE file or
--               you can obtain it at http://mozilla.org/MPL/2.0/.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : experimental
-- Portability : non-portable (GHC extensions)

module Gen.Types where

import           Control.Applicative
import           Control.Lens         ((&), (.~), Traversal', makeLenses)
import           Control.Monad
import qualified Data.Aeson           as A
import           Data.Attoparsec.Text (Parser, parseOnly)
import qualified Data.Attoparsec.Text as AText
import           Data.Bifunctor
import           Data.CaseInsensitive (CI)
import           Data.Char
import           Data.Foldable        (Foldable)
import           Data.HashMap.Strict  (HashMap)
import qualified Data.HashMap.Strict  as Map
import           Data.HashSet         (HashSet)
import           Data.Jason.Types     hiding (Parser)
import           Data.Maybe
import           Data.Monoid
import           Data.Ord
import           Data.SemVer
import           Data.Text            (Text)
import qualified Data.Text            as Text
import           Data.Traversable     (Traversable, traverse)
import           Gen.Names
import           Gen.Orphans          ()
import           Gen.TH
import           System.FilePath
import           Text.EDE             (Template)

default (Text)

currentLibraryVersion :: Version
currentLibraryVersion = initial & patch .~ 7

class ToFilePath a where
    toFilePath :: a -> FilePath

instance ToFilePath FilePath where
    toFilePath = id

instance ToFilePath Text where
    toFilePath = Text.unpack

data OrdMap a = OrdMap { ordMap :: [(Text, a)] }
    deriving (Eq, Show, Functor, Foldable, Traversable)

makeLenses ''OrdMap

instance FromJSON a => FromJSON (OrdMap a) where
    parseJSON = withObject "ordered_map" $ \(unObject -> o) ->
        OrdMap <$> traverse (\(k, v) -> (k,) <$> parseJSON v) o

instance ToJSON a => ToJSON (OrdMap a) where
    toJSON = Object . mkObject . map (second toJSON) . ordMap

data Signature
    = V2
    | V3
    | V4
      deriving (Eq, Show)

instance FromJSON Signature where
    parseJSON = withText "signature" $ \case
        "v2"      -> pure V2
        "v3"      -> pure V3
        "v3https" -> pure V3
        "v4"      -> pure V4
        "s3"      -> pure V4
        e         -> fail ("Unknown Signature: " ++ Text.unpack e)

instance A.ToJSON Signature where
    toJSON = A.toJSON . show

data Protocol
    = Json
    | RestJson
    | Xml
    | RestXml
    | Query
    | Ec2
      deriving (Eq, Show)

nullary input ''Protocol
nullary output ''Protocol

data Timestamp
    = RFC822
    | ISO8601
    | POSIX
      deriving (Eq, Ord, Show)

instance FromJSON Timestamp where
    parseJSON = withText "timestamp" $ \case
        "rfc822"        -> pure RFC822
        "iso8601"       -> pure ISO8601
        "unixTimestamp" -> pure POSIX
        e               -> fail ("Unknown Timestamp: " ++ Text.unpack e)

timestamp :: Timestamp -> Text
timestamp = Text.pack . show

defaultTS :: Maybe Timestamp -> Timestamp
defaultTS = fromMaybe ISO8601

data Checksum
    = MD5
    | SHA256
      deriving (Eq, Show)

nullary input ''Checksum
nullary output ''Checksum

data Method
    = GET
    | POST
    | HEAD
    | PUT
    | DELETE
      deriving (Eq, Show)

instance FromJSON Method where
    parseJSON = withText "method" $ \case
        "GET"    -> pure GET
        "POST"   -> pure POST
        "HEAD"   -> pure HEAD
        "PUT"    -> pure PUT
        "DELETE" -> pure DELETE
        e        -> fail ("Unknown Method: " ++ Text.unpack e)

nullary output ''Method

data Location
    = Headers
    | Header
    | Uri
    | Querystring
    | StatusCode
    | Body
      deriving (Eq, Ord, Show)

instance FromJSON Location where
    parseJSON = withText "location" $ \case
        "headers"     -> pure Headers
        "header"      -> pure Header
        "uri"         -> pure Uri
        "querystring" -> pure Querystring
        "statusCode"  -> pure StatusCode
        e             -> fail ("Unknown Location: " ++ Text.unpack e)

nullary output ''Location

location :: Protocol -> Maybe Bool -> Maybe Location -> Maybe Location
location _ _ (Just l)    = Just l
location _ (Just True) _ = Just Body
location p _ Nothing     =
    case p of
        Query -> Just Querystring
        Ec2   -> Just Querystring
        _     -> Nothing

data Seg
    = Seg Text
    | Var Text
      deriving (Eq, Show)

segParser :: Parser Seg
segParser = Seg <$> AText.takeWhile1 (end '{') <|> Var <$> var
  where
    var = AText.char '{' *> AText.takeWhile1 (end '}') <* AText.char '}'

    end x y | x == y = False
    end _ '?'        = False
    end _ _          = True

instance A.ToJSON Seg where
    toJSON = \case
        Seg t -> A.object ["type" A..= "const", "value" A..= t]
        Var t -> A.object ["type" A..= "var",   "value" A..= name t]
      where
        name = fieldName . Text.replace "+" ""

segVars :: Traversal' Seg Text
segVars f = \case
    Seg x -> pure (Seg x)
    Var x -> Var <$> f x

data URI = URI
    { _uriPath  :: [Seg]
    , _uriQuery :: [Seg]
    } deriving (Eq, Show)

uriParser :: Parser URI
uriParser = URI
    <$> some segParser
    <*> AText.option [] (AText.char '?' *> some segParser)
    <*  AText.endOfInput

instance FromJSON URI where
    parseJSON = withText "uri" (either fail return . parseOnly uriParser)

record output ''URI

uriSegments :: Traversal' URI Seg
uriSegments f x = URI <$> traverse f (_uriPath x) <*> traverse f (_uriQuery x)

newtype Abbrev = Abbrev { unAbbrev :: Text }
    deriving (Eq, Show, A.ToJSON)

instance FromJSON Abbrev where
    parseJSON = withText "service_abbreviation" (pure . mkAbbrev)

mkAbbrev :: Text -> Abbrev
mkAbbrev = Abbrev . Text.replace "/" "" . Text.replace " " "" . stripAWS

maybeAbbrev :: Text -> Maybe Abbrev -> Abbrev
maybeAbbrev t = fromMaybe (mkAbbrev t)

newtype Library = Library Text
    deriving (Eq, Show, A.ToJSON, FromJSON)

instance ToFilePath Library where
    toFilePath (Library t) = Text.unpack t

newtype NS = NS [Text]
    deriving (Eq, Ord, Show)

instance A.ToJSON NS where
    toJSON (NS xs) = A.toJSON (Text.intercalate "." xs)

instance FromJSON NS where
    parseJSON = withText "namespace" (pure . NS . Text.split (== '.'))

instance ToFilePath NS where
    toFilePath (NS xs) = Text.unpack (Text.intercalate "/" xs) <.> "hs"

namespace :: [Text] -> NS
namespace = NS . ("Network":) . ("AWS":)

typesNS :: Abbrev -> NS
typesNS (Abbrev a) = namespace [a, "Types"]

operationNS :: Abbrev -> Text -> NS
operationNS (Abbrev a) o = namespace [a, Text.dropWhileEnd (not . isAlpha) o]

requestNS :: Abbrev -> Protocol -> NS
requestNS (Abbrev "S3") _ = namespace ["Request", "S3"]
requestNS _             p = namespace ["Request", s]
  where
    s = case p of
        Json     -> "JSON"
        RestJson -> "RestJSON"
        Xml      -> "RestXML"
        RestXml  -> "RestXML"
        Query    -> "Query"
        Ec2      -> "Query"

data Key
    = NoKey
    | Key    Text
    | Index  Text Key
    | Apply  Text Key
    | Choice Key  Key
      deriving (Eq, Show)

keyNames :: Traversal' Key Text
keyNames f = \case
    NoKey      -> pure NoKey
    Key    n   -> Key    <$> f n
    Index  n k -> Index  <$> f n <*> keyNames f k
    Apply  n k -> Apply  <$> f n <*> keyNames f k
    Choice a b -> Choice <$> keyNames f a <*> keyNames f b

instance FromJSON Key where
    parseJSON = withText "key" $ \t ->
        either (fail . mappend (msg t)) return (AText.parseOnly syntax t)
      where
        msg t = "Failed parsing index notation: "
            ++ Text.unpack t
            ++ ", with: "

        syntax = index <|> apply <|> keyed <|> choice

        choice = Choice
            <$> syntax
             <* AText.string "||"
            <*> syntax

        keyed = Key <$> label

        index = Index
            <$> label
             <* AText.string "[-1]"
            <*> (AText.char '.' *> syntax <|> return NoKey)

        apply = Apply
            <$> label
            <* AText.char '.'
            <*> syntax

        label = clean (AText.takeWhile1 (not . delim))

        delim c = c == '.'
               || c == '['
               || c == '|'

        clean = fmap Text.strip

instance A.ToJSON Key where
    toJSON = A.toJSON . go
      where
        go = \case
            NoKey                -> "(to id)"
            Key    n             -> n
            Index  n k           -> "index "   <> n <> " " <> go k
            Apply  n (Index a b) -> "index ("  <> go (Apply n (Key a)) <> ") " <> go b
            Apply  n k           -> n <> " . " <> go k
            Choice n k           -> "choice (" <> go n <> ") (" <> go k <> ")"

data Token a = Token
    { _tokInputAnn  :: !a
    , _tokOutputAnn :: !a
    , _tokInput     :: !Key
    , _tokOutput    :: !Key
    } deriving (Eq, Show)

makeLenses ''Token

tokenKeys :: Traversal' (Token a) Key
tokenKeys f (Token ar br a b) = Token ar br <$> f a <*> f b

data Pager a
    = More !Key [Token a]
    | Next !Key !(Token a)
      deriving (Eq, Show)

pagerKeys :: Traversal' (Pager a) Key
pagerKeys f = \case
    More k ts -> More <$> f k <*> traverse (tokenKeys f) ts
    Next k t  -> Next <$> f k <*> tokenKeys f t

instance FromJSON (Pager ()) where
    parseJSON = withObject "pager" $ \o -> more o <|> next o
      where
        more o = do
            xs <- f "input_token"
            ys <- f "output_token"

            unless (length xs == length ys) $
                fail "input_token and output_token don't contain same number of keys."

            More <$> o .: "more_results"
                 <*> pure (zipWith (Token () ()) xs ys)
          where
            f k = o .: k <|> (:[]) <$> o .: k

        next o = Next
            <$> o .: "result_key"
            <*> (Token () () <$> o .: "input_token" <*> o .: "output_token")

instance A.ToJSON (Token a) => A.ToJSON (Pager a) where
    toJSON = A.object . \case
        Next rk t ->
            [ "type"      A..= "next"
            , "resultKey" A..= rk
            , "token"     A..= t
            ]

        More k [t] ->
            [ "type"      A..= "one"
            , "more"      A..= k
            , "token"     A..= t
            ]

        More k ts ->
            [ "type"      A..= "many"
            , "more"      A..= k
            , "tokens"    A..= m
            , "negate"    A..= pre
            ]
          where
            f x = (Text.pack ('p' : show x),)
            m   = Map.fromList (zipWith f [1..length ts] ts)
            pre = "isNothing " <> Text.intercalate " && isNothing " (Map.keys m)

data Override = Override
    { _oRenameTo   :: Maybe Text             -- ^ Rename type
    , _oReplacedBy :: Maybe Text             -- ^ Existing type that supplants this type
    , _oSumPrefix  :: Maybe Text             -- ^ Sum constructor prefix
    , _oRequired   :: HashSet (CI Text)      -- ^ Required fields
    , _oRenamed    :: HashMap (CI Text) Text -- ^ Rename fields
    } deriving (Eq, Show)

makeLenses ''Override

instance FromJSON Override where
    parseJSON = withObject "override" $ \o -> Override
        <$> o .:? "rename_to"
        <*> o .:? "replaced_by"
        <*> o .:? "sum_prefix"
        <*> o .:? "required" .!= mempty
        <*> o .:? "renamed"  .!= mempty

data Overrides = Overrides
    { _oLibrary           :: !Library
    , _oVersion           :: !Version
    , _oUrl               :: !Text
    , _oOperationUrl      :: !Text
    , _oOperationsModules :: [NS]
    , _oTypesModules      :: [NS]
    , _oOverrides         :: HashMap Text Override
    } deriving (Eq, Show)

makeLenses ''Overrides

instance FromJSON Overrides where
    parseJSON = withObject "overrides" $ \o -> Overrides
        <$> o .:  "library"
        <*> o .:? "version"          .!= currentLibraryVersion
        <*> o .:  "url"
        <*> o .:  "operationUrl"
        <*> o .:? "operationModules" .!= mempty
        <*> o .:? "typeModules"      .!= mempty
        <*> o .:? "overrides"        .!= mempty

data Model = Model
    { _mName          :: String
    , _mVersion       :: String
    , _mPath          :: FilePath
    , _mModel         :: Object
    , _mOverrides     :: Overrides
    } deriving (Show, Eq)

makeLenses ''Model

instance Ord Model where
    compare a b = comparing _mName a b <> comparing _mVersion a b

data Templates = Templates
    { _tCabal      :: Template
    , _tService    :: Template
    , _tReadme     :: Template
    , _tExCabal    :: Template
    , _tExMakefile :: Template
    , _tProtocol   :: Protocol -> (Template, Template)
    }