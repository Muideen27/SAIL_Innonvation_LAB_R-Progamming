# Mapply

# The mapply() function is similar to lapply(), but it allows us to pass 
# multiple arguments to our function(s)

x <- list(c(1:10))

y <- lapply(x, function(n) n^2)

y

z <- mapply(function(a, b) a * b, x, y)

z