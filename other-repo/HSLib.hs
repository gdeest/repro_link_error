{-# LANGUAGE ForeignFunctionInterface #-}

module HSLib where

import Foreign.C.Types
import Control.Monad
import Language.Haskell.TH

--foreign import ccall "f" f :: IO CInt

curryN :: Int -> Q Exp
curryN n = do
  f  <- newName "f"
  xs <- replicateM n (newName "x")
  let args = map VarP (f:xs)
      ntup = TupE (map VarE xs)
  return $ LamE args (AppE (VarE f) ntup)

f = id
