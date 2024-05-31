args(lm)
function (formula, data, subset, weights, na.action,
          method = "qr", model = TRUE, x = FALSE,
          y = FALSE, qr = TRUE, singular.ok = TRUE,
          contrasts = NULL, offset, ...)
  
  
lm(data = yourdata, y ~ x, model = FALSE, 1:100)
lm(y ~ x, yourdata, 1:100, model = FALSE)