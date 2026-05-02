package com.example.studentapp.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import com.example.studentapp.entity.Student;
import com.example.studentapp.service.StudentService;

@Controller
public class HomeController {

    @Autowired
    private StudentService service;

    // Show form
    @GetMapping("/add")
    public String showForm() {
        return "addStudent";
    }

    // Save student
    @PostMapping("/save")
    public String saveStudent(@ModelAttribute Student s) {
        service.saveStudent(s);
        return "redirect:/students";
    }

    // Show all students
    @GetMapping("/students")
    public String listStudents(Model model) {
        model.addAttribute("students", service.getAllStudents());
        return "listStudents";
    }
    @GetMapping("/student-courses")
    public String showStudentCourses(Model model) {
        model.addAttribute("data", service.getStudentCourseData());
        return "studentCourses";
    }

    @PostMapping("/update")
    public String updateStudent(@ModelAttribute Student s) {
        service.updateStudent(s.getId(), s);
        return "redirect:/students";
    }
    @GetMapping("/delete/{id}")
    public String deleteStudent(@PathVariable Long id) {
        service.deleteStudent(id);
        return "redirect:/students";
    }
}