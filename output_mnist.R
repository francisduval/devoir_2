library(tidyverse)

# ===============================================================================================================================

mnist <- 
  read_csv("mnist.csv") %>% 
  filter(label %in% c(0, 1)) %>% 
  mutate(label = factor(label, levels = c("1", "0")))

# ---------------------

ind_train <- 1:600
ind_valid <- 601:800
ind_test <- 801:1000

# ---------------------

mnist_train <- mnist %>% slice(ind_train) 
mnist_valid <- mnist %>% slice(ind_valid) 
mnist_test <- mnist %>% slice(ind_test) 

# ===============================================================================================================================

write_csv(mnist_train, file = "mnist_train.csv")
write_csv(mnist_valid, file = "mnist_valid.csv")
write_csv(mnist_test, file = "mnist_test.csv")
