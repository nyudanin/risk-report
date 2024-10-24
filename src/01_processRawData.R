library(magrittr)
input <- list.files(path = fs::path_wd("raw_data/"))
cases <- lapply(input, function(file) jsonlite::read_json(path = paste0("raw_data/", file)))

names(cases) <- gsub(".json", "", input)

