# 2.2 Cubic splines -------------------------------------------------------
#todo
# 2.3 Bezier splines ------------------------------------------------------
#' Calculates Bezier coefficients from a shape
#' #todo
#' @param coo a matrix or a list of (x; y) coordinates
#' @param n the degree
#' @return a list with J and B
#' @keywords morphoCore
#' @export
bezier <- function(coo, n){
  coo <- coo.check(coo)
  if (missing(n)) n <- nrow(coo)
  p <- nrow(coo)
  if (n != p) { n <- n + 1 }
  coo1 <- coo / coo.perim.cum(coo)[p]
  t1   <- 1 - coo.perim.cum(coo1)
  J <- matrix(NA, p, p)
  for (i in 1:p){
    for (j in 1:p){
      J[i, j] <- (factorial(p-1) / (factorial(j-1) * factorial(p-j))) *
        (((1-t1[i])^(j-1)) * t1[i]^(p-j))}}
  B <- ginv(t(J[, 1:n]) %*% J[,1:n])%*%(t(J[,1:n])) %*% coo
  coo <- J[, 1:n] %*% B
  B <- ginv(t(J[,1:n])%*%J[,1:n])%*%(t(J[,1:n])) %*% coo
  list(J=J, B=B)}

#' Calculates a shape from Bezier coefficients
#' 
#' todo
#' @param B a matrix
#' @param nb.pts the number of points to return for drawing he shape
#' @return a matrix of (x; y) coordinates
#' @keywords morphoCore
#' @export
bezier.i <-function(B, nb.pts=120){
  x   <- y <- numeric(nb.pts)
  n    <- nrow(B)-1
  t1   <- seq(0, 1, length=nb.pts)
  coef <- choose(n, k=0:n)
  b1   <- 0:n
  b2   <- n:0
  for (j in 1:nb.pts){
    vectx <- vecty <- NA
    for (i in 1:(n+1)){
      vectx[i] <- B[i,1] * coef[i]*t1[j]^b1[i]*(1-t1[j])^b2[i]
      vecty[i] <- B[i,2] * coef[i]*t1[j]^b1[i]*(1-t1[j])^b2[i] }
    x[j] <- sum(vectx)
    y[j] <- sum(vecty)}
  coo <- cbind(x, y)
  return(coo)}