module Kfsch
( SiteParameters(..)
, ChallengeWebSite(..)
) where

import System.IO

class ChallengeWebSite a where
                login :: a -> IO (Maybe String)
                login _ = do
                        return (Just "Error: login is unimplemented.")
                logout :: a -> IO (Maybe String)
                logout _ = do
                        return (Just "Error: logout is unimplemented.")

data SiteParameters = SiteParameters { siteId :: String
                                     , mainUrl :: String 
                                     , loginUrl :: String
                                     , logoutUrl :: String
                                     , challengesUrl :: String
                                     } deriving (Eq, Show)
