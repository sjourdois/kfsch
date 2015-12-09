module Kfsch.Cstc where

import Kfsch.SiteApi

resource :: Interface
resource = plugin {
        site = SiteParameters { siteId = "cstc"
                              , mainUrl = "https://www.cstutoringcenter.com"
                              , loginUrl = "https://www.cstutoringcenter.com/?login"
                              , logoutUrl = "https://www.cstutoringcenter.com/?logout"
                              , challengesUrl = "https://www.cstutoringcenter.com/challenges"
                              }
        , login = \x -> do
                putStrLn $ "Logging (1) in to " ++ siteId x ++ " using " ++ loginUrl x
                return Nothing

        , logout = \x -> do
                putStrLn $ "Logging (1) out from " ++ siteId x ++ " using " ++ logoutUrl x
                return Nothing
}
