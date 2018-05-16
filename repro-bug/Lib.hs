{-# LANGUAGE TemplateHaskell #-}
module Lib where

import qualified HSLib as HSLib

f = HSLib.f
g = $(HSLib.curryN 3)
