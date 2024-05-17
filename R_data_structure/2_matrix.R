# Matrix
# Matrix has both row and column i.e two-dimentional homogeneous data structure
# basic data_structure of matrix is matric(data, nrow, ncol, byrow, dimnames)

#Matrix arguements:
  
# data is the input values given as a vector,

# nrow is the number of rows,

# ncol is the number of columns,

# byrow (logical) which tells the function to arrange the matrix row-wise. It is by default set to FALSE,

# dimnames is a list of the names of the rows/columns created.

# We will create a 4 X 4 order matrix with values from 1 to 16 (column-wise order).

matrix_1 <- matrix(c(1:16), ncol = 4)
matrix_1
