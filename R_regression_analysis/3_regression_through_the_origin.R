lm(I(child - mean(child))~ I(parent - mean(parent)) - 1, data = galton)
