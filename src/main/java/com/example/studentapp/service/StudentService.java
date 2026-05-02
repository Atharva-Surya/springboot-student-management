package com.example.studentapp.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.List;

import com.example.studentapp.entity.Student;
import com.example.studentapp.repository.StudentRepository;

@Service
public class StudentService {

    @Autowired
    private StudentRepository repo;

    // CREATE (Save student)
    public Student saveStudent(Student s) {
        return repo.save(s);
    }

    // READ (Get all students)
    public List<Student> getAllStudents() {
        return repo.findAll();
    }
    public List<Object[]> getStudentCourseData() {
        return repo.getStudentCourseData();
    }
    public Student updateStudent(Long id, Student newData) {
        Student s = repo.findById(id).orElseThrow();

        s.setName(newData.getName());
        s.setEmail(newData.getEmail());

        return repo.save(s);
    }
    public void deleteStudent(Long id) {
        repo.deleteById(id);
    }
}