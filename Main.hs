import Kfsch.Cstc

main :: IO ()
main = do
        a <- login site
        case a of
                Just x -> putStrLn x
                Nothing -> return ()

        a <- logout site
        case a of
                Just x -> putStrLn x
                Nothing -> return ()
        return ()
