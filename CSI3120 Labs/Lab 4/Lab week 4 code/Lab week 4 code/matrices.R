create_matrix <- function(){
  my_matrix <- matrix(c(1,2,3,4,5,6), nrow = 3, ncol = 2)
  print(my_matrix)
  print(dim(my_matrix))
  print(length(matrix))
}

create_matrix_strs <- function(){
  my_matrix <- matrix(c("Hello", "there", "my", "world"), nrow = 2, ncol = 2)
  print(my_matrix)
}

access_matrix_elements <- function(){
  my_matrix <- matrix(c("Hello", "there", "my", "world"), nrow = 2, ncol = 2)
  print(my_matrix)
  print(my_matrix[1,2])
  print(my_matrix[1,])
  print(my_matrix[,2])
  my_new_matrix <- matrix(c("apple", "banana", "cherry", "orange","grape",
                         "pineapple", "pear", "melon", "fig"), nrow = 3,
                       ncol = 3)
  #print(my_new_matrix)
  #print(my_new_matrix[c(1,2),])
  #print(my_new_matrix[, c(1,2)])
}

add_rows_cols <- function(){
  my_matrix <- matrix(c("apple", "banana", "cherry", "orange","grape",
                         "pineapple", "pear", "melon", "fig"), nrow = 3,
                       ncol = 3)
  
  #my_new_matrix <- cbind(my_matrix, c("strawberry", "blueberry", "raspberry"))
  #print(my_new_matrix)
  #my_new_matrix <- rbind(my_matrix, c("strawberry", "blueberry", "raspberry"))
  #print(my_new_matrix)
}

delete_rows_cols <- function(){
  my_matrix <- matrix(c("apple", "banana", "cherry", "orange","grape",
                        "pineapple", "pear", "melon", "fig"), nrow = 3,
                      ncol = 3)
  print(my_matrix)
  #Remove the first row and the first column
  my_matrix <- my_matrix[-c(1), -c(1)]
  print(my_matrix)
}

check_for_item <- function(){
  my_matrix <- matrix(c("apple", "banana", "cherry", "orange","grape",
                        "pineapple", "pear", "melon", "fig"), nrow = 3,
                      ncol = 3)
  print("apple" %in% my_matrix)
}

traverse_matrix <- function(){
  my_matrix <- matrix(c("apple", "banana", "cherry", "orange"), nrow = 2, ncol = 2)
  
  for (rows in 1:nrow(my_matrix)) {
    for (columns in 1:ncol(my_matrix)) {
      print(my_matrix[rows, columns])
    }
  }
}

combine_matrices <- function(){
  Matrix1 <- matrix(c("apple", "banana", "cherry", "grape"), nrow = 2, ncol = 2)
  Matrix2 <- matrix(c("orange", "mango", "pineapple", "watermelon"), nrow = 2, ncol = 2)
  
  # Adding it as a rows
  Matrix_Combined <- rbind(Matrix1, Matrix2)
  print(Matrix_Combined)
  
  # Adding it as a columns
  Matrix_Combined <- cbind(Matrix1, Matrix2)
  print(Matrix_Combined)
}

math_matrices <- function(){
  Matrix1 <- matrix(c(1,2,3,4), nrow = 2, ncol = 2)
  Matrix2 <- matrix(c(5,6,7,8), nrow = 2, ncol = 2)
  print(Matrix1 + Matrix2)
  print(Matrix1 * Matrix2)
}
