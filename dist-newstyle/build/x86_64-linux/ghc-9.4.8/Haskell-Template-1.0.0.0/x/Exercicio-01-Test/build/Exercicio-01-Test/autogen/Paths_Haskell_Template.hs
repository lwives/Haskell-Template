{-# LANGUAGE CPP #-}
{-# LANGUAGE NoRebindableSyntax #-}
#if __GLASGOW_HASKELL__ >= 810
{-# OPTIONS_GHC -Wno-prepositive-qualified-module #-}
#endif
{-# OPTIONS_GHC -fno-warn-missing-import-lists #-}
{-# OPTIONS_GHC -w #-}
module Paths_Haskell_Template (
    version,
    getBinDir, getLibDir, getDynLibDir, getDataDir, getLibexecDir,
    getDataFileName, getSysconfDir
  ) where


import qualified Control.Exception as Exception
import qualified Data.List as List
import Data.Version (Version(..))
import System.Environment (getEnv)
import Prelude


#if defined(VERSION_base)

#if MIN_VERSION_base(4,0,0)
catchIO :: IO a -> (Exception.IOException -> IO a) -> IO a
#else
catchIO :: IO a -> (Exception.Exception -> IO a) -> IO a
#endif

#else
catchIO :: IO a -> (Exception.IOException -> IO a) -> IO a
#endif
catchIO = Exception.catch

version :: Version
version = Version [1,0,0,0] []

getDataFileName :: FilePath -> IO FilePath
getDataFileName name = do
  dir <- getDataDir
  return (dir `joinFileName` name)

getBinDir, getLibDir, getDynLibDir, getDataDir, getLibexecDir, getSysconfDir :: IO FilePath




bindir, libdir, dynlibdir, datadir, libexecdir, sysconfdir :: FilePath
bindir     = "/home/lwives/.cabal/bin"
libdir     = "/home/lwives/.cabal/lib/x86_64-linux-ghc-9.4.8/Haskell-Template-1.0.0.0-inplace-Exercicio-01-Test"
dynlibdir  = "/home/lwives/.cabal/lib/x86_64-linux-ghc-9.4.8"
datadir    = "/home/lwives/.cabal/share/x86_64-linux-ghc-9.4.8/Haskell-Template-1.0.0.0"
libexecdir = "/home/lwives/.cabal/libexec/x86_64-linux-ghc-9.4.8/Haskell-Template-1.0.0.0"
sysconfdir = "/home/lwives/.cabal/etc"

getBinDir     = catchIO (getEnv "Haskell_Template_bindir")     (\_ -> return bindir)
getLibDir     = catchIO (getEnv "Haskell_Template_libdir")     (\_ -> return libdir)
getDynLibDir  = catchIO (getEnv "Haskell_Template_dynlibdir")  (\_ -> return dynlibdir)
getDataDir    = catchIO (getEnv "Haskell_Template_datadir")    (\_ -> return datadir)
getLibexecDir = catchIO (getEnv "Haskell_Template_libexecdir") (\_ -> return libexecdir)
getSysconfDir = catchIO (getEnv "Haskell_Template_sysconfdir") (\_ -> return sysconfdir)



joinFileName :: String -> String -> FilePath
joinFileName ""  fname = fname
joinFileName "." fname = fname
joinFileName dir ""    = dir
joinFileName dir fname
  | isPathSeparator (List.last dir) = dir ++ fname
  | otherwise                       = dir ++ pathSeparator : fname

pathSeparator :: Char
pathSeparator = '/'

isPathSeparator :: Char -> Bool
isPathSeparator c = c == '/'
