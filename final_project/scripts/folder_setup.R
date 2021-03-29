#Setting up folders
#The initial R project was made with the buttons in R because I wasn't sure how else to do it

dir.create(here::here("data","raw"), recursive = TRUE)
dir.create(here::here("data","clean"), recursive = TRUE)
dir.create(here::here("markdown"), recursive = TRUE)
dir.create(here::here("output", "figures"), recursive = TRUE)
dir.create(here::here("scripts"), recursive = TRUE)