data()

head(mtcars)

rownum <- nrow(mtcars)
colnum <- ncol(mtcars)

Find <- data.frame(mtcars)
auto <- 0
manu <- 0

for (i in 1:rownum) {
  ifelse(Find[i, 9] == 1, auto <- auto + 1, manu <- manu + 1)

}
ifelse(auto > manu,
        print("There are more auto transmission type"),
        print("There are more manu transmission type"))

HorsePower <- Find[, 4]
Weight <- Find[, 6]
scatter.smooth(HorsePower, Weight, span = 2 / 3, degree = 1, family = c("symmetric", "gaussian"))

Mpg <- Find[, 1]
scatter.smooth(Mpg, breaks = 12, col = "lightblue", border = "pink")

Find[, 2] <- as.integer(Find[, 2])
Find[, 8] <- as.integer(Find[, 8])
Find[, 9] <- as.integer(Find[, 9])
Find[, 2] <= 5
