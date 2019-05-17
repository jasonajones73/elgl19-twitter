## Purpose: Retrieve and save tweets for #ELGL19
## Author: Jason Jones
## Date: 2019-05-16

# Load package ----
library(rtweet)
library(tidyverse)

# Retrieve tweets ----
tweets <- search_tweets(q = "#elgl19",
                        n = 4000,
                        include_rts = TRUE,
                        retryonratelimit = TRUE,
                        verbose = TRUE)

# Save tweet data ----
saveRDS(tweets, file = here::here("data/tweets.rds"))
rtweet::write_as_csv(tweets, here::here("data/tweets.csv"))
jsonlite::write_json(tweets, here::here("data/tweets.json"))
