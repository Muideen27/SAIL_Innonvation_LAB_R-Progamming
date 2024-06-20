# Subsetting - lists

eloho <- list(
  letters = c("Serious", "Studious", "Stable", "Others"), # A character vector named letters
  numbers = 1:6, # A numeric vector named numbers
  matrix(1:12, ncol = 3) # An unnamed matrix with 12 elements and 3 columns 
  )

# The 'head' function typically returns the first 6 elements of an object.
# However, 'eloho' is a list with only 3 elements, so 'head' will return the entire list.
head(eloho)

# Access the first element of the list 'eloho', which is the 'letters' vector.
# Since 'eloho' is a list, using single brackets returns a sublist containing the 'letters' vector.
eloho[1]

# Access the 'letters' element of the list 'eloho' using the '$' operator.
# This returns the actual 'letters' vector, not a sublist.
eloho$letter

# Access the first element of the list 'eloho' using double brackets.
# This returns the actual 'letters' vector, similar to 'eloho$letters'.
eloho[[1]]