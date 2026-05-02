# Spring Boot Student Management System

A comprehensive student management application built with Spring Boot.

## Features

- Student registration and management
- Course enrollment
- Grade tracking
- User authentication
- RESTful API endpoints


## Installation

1. Clone the repository:
```bash
git clone https://github.com/Atharva-Surya/springboot-student-management.git
cd springboot-student-management
```

2. Configure the database:
   - Update `application.properties` with your MySQL credentials
   - Create a new MySQL database for the application

3. Build and run the application:
```bash
mvn clean install
mvn spring-boot:run
```

The application will be available at `http://localhost:8080`

## API Endpoints

### Students
- `GET /api/students` - Get all students
- `POST /api/students` - Create a new student
- `GET /api/students/{id}` - Get student by ID
- `PUT /api/students/{id}` - Update student
- `DELETE /api/students/{id}` - Delete student

## Project Structure

```
src/
├── main/
│   ├── java/
│   │   └── com/studentmanagement/
│   │       ├── controller/
│   │       ├── service/
│   │       ├── repository/
│   │       ├── model/
│   │       └── Application.java
│   └── resources/
│       └── application.properties
└── test/
```

## Technologies Used

- Spring Boot
- Spring Data JPA
- H2 Database
- Maven

## Contributing

Contributions are welcome! Please feel free to submit pull requests.

