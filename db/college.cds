namespace com.cy.college;

entity Colleges{
    key collegeId : Integer;
        collegeName : String;
        course : Composition of many Courses on course.college = $self

}

entity Departments{
    key departmentId : UUID;
        departmentName : String;
        course : Association to Courses;
        professor:Association to many Professors on professor.department=$self
}

entity Professors{
    key professorId : UUID;
        professorName : String;
        department : Association to Departments;
        
}

entity Courses{
    key courseId : UUID;
        courseName : String;
        college : Association to Colleges;
        department : Composition of many Departments on department.course = $self;
}

entity Students{
    key studentId : UUID;
        studentName : String;
        studentAge : Integer;
        studentGender : String;
        studentPhone : Integer;
        studentEmail :String;
        studentAddress : String;
        department : Association to Departments;

}
