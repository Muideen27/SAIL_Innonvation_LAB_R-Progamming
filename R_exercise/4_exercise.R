# Solve the quadratic equation below


quadratic <- function(a, b, c) {
  discriminant <- b^2 - 4 * a * c
  
  if (discriminant < 0) {
    return("The equation has complex roots")
  } else if (discriminant == 0) {
    root <- -b / (2 * a)
    return(root)
  } else {
    root1 <- (-b + sqrt(discriminant)) / (2 * a)
    root2 <- (-b - sqrt(discriminant)) / (2 * a)
    return(c(root1, root2))
  }
}

quadratic(1, 2, 1)
quadratic(1, 3, -10)
quadratic(2, 5, -3)
quadratic(1, -4, 4)
quadratic(1, -6, 9)
quadratic(3, -5, 2)
quadratic(1, 7, 12)
quadratic(4, 9, 2)
quadratic(1, -11, 24)
quadratic(5, -12, 13)
quadratic(1, 8, 15)
quadratic(2, -10, 12)
quadratic(3, 4, 1)
quadratic(4, -10, 5)
quadratic(1, -9, 20)
quadratic(2, -7, 6)
quadratic(1, -3, 2)
quadratic(1, -3, 2)
quadratic(1, 1, 4)
quadratic(2, -7, 5)
quadratic(1, 5, -6)
quadratic(1, 4, -9)
quadratic(3, 1, -2)
quadratic(1, 6, -11)
quadratic(4, 2, -3)
quadratic(1, -8, 16)
quadratic(5, -3, 7)
quadratic(1, 9, -18)
quadratic(2, -6, 8)
quadratic(3, 3, -1)
quadratic(4, -6, 7)
quadratic(1, -7, 14)
quadratic(2, -5, 7)
quadratic(3, -14, 15)
quadratic(1, -9, 21)
quadratic(5, -16, 8)
