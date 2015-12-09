import System.Plugins
import Kfsch.SiteApi
import Control.Monad

main :: IO ()
main = do
        putStrLn "loading..." -- This needs to be called from main or it is not available in plugins later o_O

        let plist = ["Kfsch/Cstc.o", "Kfsch/Test.o"]
        sites <- mapM (\p -> load_ p ["."] "resource") plist

        doSiteFunc login  sites 
        doSiteFunc logout sites 

        where
                doSiteFunc f p = mapM_ (\(l, s) -> l s) $ map (liftM2 (,) f site . fromLoadSuc) p
                fromLoadSuc (LoadFailure _)   = error "load failed"
                fromLoadSuc (LoadSuccess _ v) = v
