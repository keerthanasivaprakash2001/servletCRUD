package Dao;

import entity.Student;

public interface StudentImpl {
    void addStudent(Student std);
    Student getAllStudent(Integer id);
    void updateStudent(Student std);
    void deleteStudent(Integer id);
}
