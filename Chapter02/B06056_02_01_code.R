############################################################################
# Chapter      :   2 
# Description  :   Connect to Twitter app and extract sample tweets
############################################################################

# load the package
library(twitteR)
# set keys
consumerKey <- "B6jGdNNl1a9upp41TDJeKdLvL"
consumerSecret <- "6d3Rt3TBxQRNf1EjlVfOJ5MxEyb93xPOAI2rpecPSH8RWwMG52"
accessToken <- "1088135928-8J59y93EWJquXGJbrTewGmi5XqnkAoCw28kX5e7"
accessTokenSecret <- "HjkY7bxeFBFlZwddGkTiNcXZ5ixCxDL9nu2wmEFBgnwz1"
# connect to api
setup_twitter_oauth(consumerKey, consumerSecret,accessToken, accessTokenSecret)

# set twitter user
twitterUser <- getUser("TataSky")

# extract a few sample tweets from this user's timeline
tweets <- userTimeline(twitterUser, n = 10)

# display attributes and function of tweet object
tweets[[1]]$getClass()

# display favorite count
tweets[[1]]$favoriteCount



