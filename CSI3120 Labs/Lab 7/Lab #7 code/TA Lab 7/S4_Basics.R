create_s4_class <- function(){
  #Always has global scope unless otherwise specified
  setClass("uOttawa", 
           representation(course_name = "character", 
                          course_code = "character"),
           prototype(course_name= NA_character_, 
                     course_code=NA_character_))
}

inherit_s4_class <- function(){
  setClass("Student", 
           representation(student_name="character",
                          student_id="numeric",
                          student_grades="list"),
           contains = "uOttawa")
}


create_uottawa_db <- function(name, code){
  new("uOttawa", 
      course_name=name,
      course_code=code)
}

create_student_db <- function(name, id, grades){
  new("Student",
      student_name=name,
      student_id = id,
      student_grades = grades
      )
}
