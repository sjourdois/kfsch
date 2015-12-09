module Kfsch.SiteApi where

class ChallengeWebSite a where
                login :: a -> IO (Maybe String)
                login _ = return (Just "Error: login is unimplemented.")
                logout :: a -> IO (Maybe String)
                logout _ = return (Just "Error: logout is unimplemented.")

data SiteParameters = SiteParameters { siteId :: String
                                     , mainUrl :: String 
                                     , loginUrl :: String
                                     , logoutUrl :: String
                                     , challengesUrl :: String
                                     } deriving (Eq, Show)

data Interface = Interface { 
        valueOf :: String -> String 
}

plugin :: Interface 
plugin = Interface { valueOf = id }
