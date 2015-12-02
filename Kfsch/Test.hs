module Kfsch.Test
( site
, ChallengeWebSite(..)
) where

import Kfsch

site = SiteParameters { siteId = "test"
                      , mainUrl = "https://www.test.com"
                      , loginUrl = "https://www.test.com/?login"
                      , logoutUrl = "https://www.test.com/?logout"
                      , challengesUrl = "https://www.test.com/challenges"
                      }

instance ChallengeWebSite SiteParameters where
        login x = do
                putStrLn ("Logging in to " ++ siteId x ++ " using " ++ loginUrl x)
                return Nothing

        logout x = do
                putStrLn ("Logging out from " ++ siteId x ++ " using " ++ logoutUrl x)
                return Nothing
