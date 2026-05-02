package com.example.studentapp;

import com.example.studentapp.entity.Student;
import com.example.studentapp.service.StudentService;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import static org.junit.jupiter.api.Assertions.*;

@SpringBootTest
class StudentServiceTest {

    @Autowired
    private StudentService service;

    @Test
    void testSaveStudent() {
        Student s = new Student();
        s.setName("Service Test");
        s.setEmail("service@mail.com");

        Student saved = service.saveStudent(s);

        assertNotNull(saved.getId());
    }

    @Test
    void testGetAllStudents() {
        assertFalse(service.getAllStudents().isEmpty());
    }
}