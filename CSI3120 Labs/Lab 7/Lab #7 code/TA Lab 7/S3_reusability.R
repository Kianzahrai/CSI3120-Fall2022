create_student <- function(name, id){
  student_list <- list(student_name=name , student_id = id)
  attr(student_list, "class") <- "student_class"
  print(student_list)
}

#student1 <- create_student("abc","123")
#student2 <- create_student("def", "456")