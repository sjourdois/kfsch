module Kfsch.Test where

import Kfsch.SiteApi

resource :: Interface
resource = plugin {
        site = SiteParameters { siteId = "test"
                              , mainUrl = "https://www.test.com"
                              , loginUrl = "https://www.test.com/?login"
                              , logoutUrl = "https://www.test.com/?logout"
                              , challengesUrl = "https://www.test.com/challenges"
                              }
        , login = \x -> do
                putStrLn $ "Logging (2) in to " ++ siteId x ++ " using " ++ loginUrl x
                return Nothing

        , logout = \x -> do
                putStrLn $ "Logging (2) out from " ++ siteId x ++ " using " ++ logoutUrl x
                return Nothing
}
