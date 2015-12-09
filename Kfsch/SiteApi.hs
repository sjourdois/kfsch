module Kfsch.SiteApi where

data SiteParameters = SiteParameters {
                            siteId :: String,
                            mainUrl :: String,
                            loginUrl :: String,
                            logoutUrl :: String,
                            challengesUrl :: String
                      } deriving (Eq, Show)

data Interface = Interface { 
        site :: SiteParameters,
        login :: SiteParameters -> IO (Maybe String),
        logout :: SiteParameters -> IO (Maybe String)
}

plugin :: Interface 
plugin = Interface {
        site = SiteParameters { siteId = "dummy"
                                , mainUrl = "dummy"
                                , loginUrl = "dummy"
                                , logoutUrl = "dummy"
                                , challengesUrl = "dummy"
                                },
        login = \_ -> return (Just "Error: login is unimplemented."),
        logout = \_ -> return (Just "Error: logout is unimplemented.")
}
