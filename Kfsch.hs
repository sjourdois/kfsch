module Kfsch
( SiteParameters(..)
, ChallengeWebSite(..)
, loadPlugins
) where

import System.Plugins
import Kfsch.SiteApi

loadPlugins :: IO ()
loadPlugins = do
        let plist = ["Kfsch/Cstc.o"]
        plugins <- mapM (\p -> load_ p ["."] "resource") plist
        let functions = map (valueOf . fromLoadSuc) plugins

        -- apply the function from each plugin in turn
        mapM_ (\f -> putStrLn $ f "haskell is for hackers") functions

fromLoadSuc (LoadFailure errors) = (error . concat) errors
fromLoadSuc (LoadSuccess _ v) = v
