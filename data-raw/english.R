
## colin fay it's your fault
#plot(1, pch = 19, col = "#39ff14", cex = 5)



d <- expand.grid(0:255, 0:255, 0:255)
hex <- rgb(d[[1]], d[[2]], d[[3]], max = 255)
hex <- gsub("^#", "", hex)

bad <- grep("[0-9]", hex)
hex <- hex[-bad]
#install.packages("words")
library(words)

idx <- match(tolower(hex), words$word)
english_hex <- words$word[na.omit(idx)]
usethis::use_data(english_hex)
