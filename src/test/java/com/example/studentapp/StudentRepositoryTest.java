package com.example.studentapp;

import com.example.studentapp.entity.Student;
import com.example.studentapp.repository.StudentRepository;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import static org.junit.jupiter.api.Assertions.*;

@SpringBootTest
class StudentRepositoryTest {

    @Autowired
    private StudentRepository repo;

    @Test
    void testSaveStudent() {
        Student s = new Student();
        s.setName("Test");
        s.setEmail("test@mail.com");

        Student saved = repo.save(s);

        assertNotNull(saved.getId());
    }

    @Test
    void testFindAll() {
        assertFalse(repo.findAll().isEmpty());
    }
}