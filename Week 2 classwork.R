library("vcd")
data("Arthritis")
head(Arthritis, 5)
as.data.frame(xtabs(~Treatment+Sex+Improved, data=Arthritis))
(HairEye = margin.table(HairEyeColor, c(1, 2)))
assocstats(HairEye)

mosaic(HairEye, shade = T, legend = T)
assoc(HairEyeColor, shade =  TRUE)
