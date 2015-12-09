import Kfsch

main :: IO ()
main = do
        -- a <- login site
        -- case a of
        --         Just x -> putStrLn x
        --         Nothing -> return ()

        -- b <- logout site
        -- case b of
        --         Just x -> putStrLn x
        --         Nothing -> return ()
        a <- loadPlugins
        return ()
