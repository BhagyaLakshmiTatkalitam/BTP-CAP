using com.cy.college as college from '../db/college';
service collSRV{
    entity Colleges as projection on college.Colleges;
    entity Courses as projection on college.Courses;
    entity Departments as projection on college.Departments;
    entity Professors as projection on college.Professors;
    entity Students as projection on college.Students
    
}