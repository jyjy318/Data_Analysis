kmeans(x, centers, iter.max = 10, nstart =1, algorithm =c("Hartigan-Wong", "Lloyd", "Forge", "MacQueen"))
require(graphics)
x <- rbind(matrix(rnorm(100, sd =0.3), ncol =2),
           matrix(rnorn(100, mean=1, sd = 0.3),
                  ncol =2))
colname(x) <- c("x", "y")
cl <- kmenas(x,2)
cl

plot(x, col = cl$cluster)
points(cl$centers, col = 1:2, pch =8, cex=-2)

cl <- kmeans(x,5,start = 25)
plot(x, col = cl$cluster)
points(cl$centers, col = 1:5, pch =8)