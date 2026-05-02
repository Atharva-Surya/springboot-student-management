-- COURSES (10 rows)
INSERT INTO course (title, instructor) VALUES ('Math', 'John');
INSERT INTO course (title, instructor) VALUES ('Science', 'Mike');
INSERT INTO course (title, instructor) VALUES ('Physics', 'David');
INSERT INTO course (title, instructor) VALUES ('Chemistry', 'Sara');
INSERT INTO course (title, instructor) VALUES ('Biology', 'Anna');
INSERT INTO course (title, instructor) VALUES ('English', 'Robert');
INSERT INTO course (title, instructor) VALUES ('History', 'James');
INSERT INTO course (title, instructor) VALUES ('Geography', 'Linda');
INSERT INTO course (title, instructor) VALUES ('Computer', 'Alex');
INSERT INTO course (title, instructor) VALUES ('Economics', 'Chris');


-- STUDENTS (10 rows)
INSERT INTO student (name, email) VALUES ('Atharva', 'atharva@mail.com');
INSERT INTO student (name, email) VALUES ('Rahul', 'rahul@mail.com');
INSERT INTO student (name, email) VALUES ('Amit', 'amit@mail.com');
INSERT INTO student (name, email) VALUES ('Sneha', 'sneha@mail.com');
INSERT INTO student (name, email) VALUES ('Priya', 'priya@mail.com');
INSERT INTO student (name, email) VALUES ('Rohan', 'rohan@mail.com');
INSERT INTO student (name, email) VALUES ('Neha', 'neha@mail.com');
INSERT INTO student (name, email) VALUES ('Karan', 'karan@mail.com');
INSERT INTO student (name, email) VALUES ('Pooja', 'pooja@mail.com');
INSERT INTO student (name, email) VALUES ('Vikas', 'vikas@mail.com');


-- RELATIONSHIP (student_course)
INSERT INTO student_course (student_id, course_id) VALUES (1,1);
INSERT INTO student_course (student_id, course_id) VALUES (1,2);
INSERT INTO student_course (student_id, course_id) VALUES (2,3);
INSERT INTO student_course (student_id, course_id) VALUES (3,4);
INSERT INTO student_course (student_id, course_id) VALUES (4,5);
INSERT INTO student_course (student_id, course_id) VALUES (5,6);
INSERT INTO student_course (student_id, course_id) VALUES (6,7);
INSERT INTO student_course (student_id, course_id) VALUES (7,8);
INSERT INTO student_course (student_id, course_id) VALUES (8,9);
INSERT INTO student_course (student_id, course_id) VALUES (9,10);
INSERT INTO student_course (student_id, course_id) VALUES (10,1);