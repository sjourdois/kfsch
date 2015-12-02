module Kfsch.Cstc
( site
, ChallengeWebSite(..)
) where

import Kfsch

site = SiteParameters { siteId = "cstc"
                      , mainUrl = "https://www.cstutoringcenter.com"
                      , loginUrl = "https://www.cstutoringcenter.com/?login"
                      , logoutUrl = "https://www.cstutoringcenter.com/?logout"
                      , challengesUrl = "https://www.cstutoringcenter.com/challenges"
                      }

instance ChallengeWebSite SiteParameters where
        login x = do
                putStrLn ("Logging in to " ++ siteId x ++ " using " ++ loginUrl x)
                return Nothing

        logout x = do
                putStrLn ("Logging out from " ++ siteId x ++ " using " ++ logoutUrl x)
                return Nothing
