library(Dict)

grammar_dict1 <- Dict$new(
  "A" = "B+C",
  "B" = c("0","1", "2", "3", "4"),
  "C" = c("4", "5", "6", "7", "8", "9")
)

non_terminals1 <- c("A", "B", "C")
terminals1 <- c("0", "1", "2", "3", "4", "5", "6", "7", "8", "9")
start_symbol1 <- "A"
exp_tokens1 <- c("+")

grammar_1 <-  Dict$new(
  "grammar_d" = grammar_dict1,
  "non_terminals" = c("A", "B", "C"),
  "terminals" = c("0", "1", "2", "3", "4", "5", "6", "7", "8", "9"),
  "exp_tokens" = c("+"),
  "start_symbol" = "A"
)

print(grammar_1["grammar_d"]["A"])