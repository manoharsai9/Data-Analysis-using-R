### Visual examination of the skew

sk1 <- read_csv("skew-1.csv")
sk2 <- read_csv("skew-2.csv")

skew1 <- ggplot(data = sk1, aes(x = `Dataset 1`))
skew1 + geom_histogram(binwidth = 100,
                       color = "darkslategray",
                       fill = "darkslategray4",
                       alpha = 0.5) +
  theme_light()

# The skew of this dataset is positive


skew2 <- ggplot(data = sk2, aes(x = `Dataset 2`))
skew2 + geom_histogram(binwidth = 100,
                       color = "darkslategray",
                       fill = "darkslategray4",
                       alpha = 0.5) +
  theme_light()

# The skew of this dataset is negative

### Numerical examination of the skew

library(psych)

describe(sk1)
describe(sk2)
