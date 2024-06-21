Auto Limitations

## ai_papers_sample %>% explore() ## if you run: This function can only be used in an interactive R session

emmyCool <- ai_papers_sample$abstract %>% 
  str_replace_all("[^A-Za-z]"," ") %>% 
  VectorSource() %>% 
  Corpus() %>% 
  tm_map(tolower) %>% 
  tm_map(removeWords, stopwords("english")) %>% 
  tm_map(stripWhitespace) 

##

set.seed(234)
# w_cloud <- wordcloud(emmyCool, max.words = 250, 
#           colors = brewer.pal(8, "Dark2"), 
#           scale=c(5,1), random.order = FALSE)



dtm <- DocumentTermMatrix(emmyCool)
freq = colSums(as.matrix(dtm))
ord = order(freq, decreasing = TRUE)
plot = data.frame(words = names(freq), count = freq)
plot = subset(plot, plot$count > 150) 
plot <- plot[with(plot, order(-count)), ]

#plot