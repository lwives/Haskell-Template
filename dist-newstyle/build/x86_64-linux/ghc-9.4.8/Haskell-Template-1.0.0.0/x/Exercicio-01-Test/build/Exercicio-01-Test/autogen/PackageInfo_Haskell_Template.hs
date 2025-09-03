{-# LANGUAGE NoRebindableSyntax #-}
{-# OPTIONS_GHC -fno-warn-missing-import-lists #-}
{-# OPTIONS_GHC -w #-}
module PackageInfo_Haskell_Template (
    name,
    version,
    synopsis,
    copyright,
    homepage,
  ) where

import Data.Version (Version(..))
import Prelude

name :: String
name = "Haskell_Template"
version :: Version
version = Version [1,0,0,0] []

synopsis :: String
synopsis = "Reposit\243rio modelo para exerc\237cios de Haskell."
copyright :: String
copyright = ""
homepage :: String
homepage = "https://github.com/lwives/Haskell-Template"
