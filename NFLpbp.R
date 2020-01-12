#install.packages("tidyverse")
#install.packages("dplyr")
#install.packages("na.tools")
#install.packages("ggimage")

library(tidyverse)
library(dplyr)
library(na.tools)
library(ggimage)

pbp <- read_csv(url("https://github.com/ryurko/nflscrapR-data/raw/master/play_by_play_data/regular_season/reg_pbp_2018.csv"))

pbp_rp <- pbp %>% 
  filter(!is_na(epa), play_type=="no_play" | play_type=="pass" | play_type=="run")
