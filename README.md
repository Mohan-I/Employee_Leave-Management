# Employee Leave Management System

![Java](https://img.shields.io/badge/Java-11%2B-blue)
![JavaFX](https://img.shields.io/badge/JavaFX-UI%20Framework-orange)
![MySQL](https://img.shields.io/badge/MySQL-Database-blue)
![Maven](https://img.shields.io/badge/Maven-Build%20Tool-red)
![MVC](https://img.shields.io/badge/Architecture-MVC%20Pattern-green)

A comprehensive desktop application for managing employee leave requests and approvals built with JavaFX and MySQL.

## 📋 Table of Contents

- [Features](#features)
- [Screenshots](#screenshots)
- [Technology Stack](#technology-stack)
- [Installation](#installation)
- [Database Setup](#database-setup)
- [Usage](#usage)
- [Project Structure](#project-structure)
- [Development](#development)
- [Contributing](#contributing)
- [License](#license)

## ✨ Features

### 👨‍💼 Admin Features
- **Employee Management** - Add, view, update, and delete employee records
- **Leave Request Management** - Approve or reject employee leave applications
- **Password Token System** - Generate secure login tokens for employees
- **Real-time Dashboard** - Visual charts and status overview
- **Status Tracking** - Monitor employee availability and leave status

### 👩‍💼 Employee Features
- **Personal Dashboard** - View personal information and leave balance
- **Leave Application** - Submit leave requests with date range and remarks
- **Leave History** - Track previous leave applications and status
- **Real-time Updates** - Instant notification of leave approval/rejection
- **Profile Management** - View and update personal details

## 🖼️ Screenshots

- Admin Dashboard
  ![Admin Login Interface](https://github.com/Mohan-I/Employee_Leave-Management/blob/main/sample%20images/app_faces/Screenshot%202026-04-04%20181932.png)
- Employee Dashboard Schema
  ![Employee Dashboard](https://github.com/Mohan-I/Employee_Leave-Management/blob/main/sample%20images/app_faces/Screenshot%202025-11-09%20171248.png?raw=true)
- Leave Management Panel
  ![Employee Dashboard](https://github.com/Mohan-I/Employee_Leave-Management/blob/main/sample%20images/app_faces/Screenshot%202026-04-04%20190259.png)
- Employee / Admin Login Interface
  ![Employee Dashboard](https://github.com/Mohan-I/Employee_Leave-Management/blob/main/sample%20images/app_faces/Screenshot%202025-11-13%20210801.png)
## 🛠️ Technology Stack

- **Frontend:** JavaFX, FXML, CSS
- **Backend:** Java 11+
- **Database:** MySQL
- **Architecture:** MVC Pattern
- **Build Tool:** Maven
- **IDE:** NetBeans (recommended)

## 🚀 Installation

### Prerequisites
- Java 11 or higher
- MySQL 5.7+
- JavaFX SDK
- Maven 3.6+

### Step-by-Step Setup

1. **Clone the Repository**
   ```bash
   git clone https://github.com/mohan-i/employee-leave-management.git
   cd employee-leave-management
   ```

2. **Database Configuration**
   ```sql
   CREATE DATABASE employee;
   USE employee;
   ```

3. **Create Tables (or import the sql file)**
   ```sql
   CREATE TABLE employee (
       id INT PRIMARY KEY AUTO_INCREMENT,
       emp_ID VARCHAR(10) UNIQUE NOT NULL,
       fullname VARCHAR(100) NOT NULL,
       position VARCHAR(100) NOT NULL,
       leave_from DATE,
       leave_to DATE,
       remarks TEXT,
       status ENUM('Active','Pending','Absent','Leave-Approved','Leave-Rejected','Already on leave','Terminated'),
       password VARCHAR(225) NOT NULL,
       image VARCHAR(225)
   );

   CREATE TABLE admin (
       id INT PRIMARY KEY AUTO_INCREMENT,
       username VARCHAR(50) UNIQUE NOT NULL,
       password VARCHAR(225) NOT NULL
   );
   ```

4. **Insert Default Admin**
   ```sql
   INSERT INTO admin (username, password) VALUES ('admin', 'admin123');
   ```

5. **Configure Database Connection**
   Update database credentials in `src/main/java/com/tcet/emplmanage/database.java`

6. **Build and Run**
   ```bash
   mvn clean compile
   mvn javafx:run
   ```

## 💾 Database Setup

### Employee Table Schema
```sql
CREATE TABLE employee (
    id INT PRIMARY KEY AUTO_INCREMENT,
    emp_ID VARCHAR(10) UNIQUE NOT NULL,
    fullname VARCHAR(100) NOT NULL,
    position VARCHAR(100) NOT NULL,
    leave_from DATE,
    leave_to DATE,
    remarks TEXT,
    status ENUM('Active','Pending','Absent','Leave-Approved','Leave-Rejected','Already on leave','Terminated'),
    password VARCHAR(225) NOT NULL,
    image VARCHAR(225)
);
```

### Admin Table Schema
```sql
CREATE TABLE admin (
    id INT PRIMARY KEY AUTO_INCREMENT,
    username VARCHAR(50) UNIQUE NOT NULL,
    password VARCHAR(225) NOT NULL
);
```

## 📖 Usage

### Admin Login
1. Launch the application
2. Use default credentials:
   - Username: `admin`
   - Password: `admin123`
3. Access the admin dashboard for employee management

### Employee Login
1. Employees use their Employee ID and generated password
2. Access personal dashboard to apply for leaves
3. View leave history and status

### Leave Application Workflow
1. Employee logs in and navigates to leave application
2. Fills leave form with dates and remarks
3. Admin reviews and approves/rejects the request
4. Employee receives status update

## 📁 Project Structure

```
EmplManage/
├── src/
│   ├── main/
│   │   ├── java/
│   │   │   └── com/tcet/emplmanage/
│   │   │       ├── App.java                 # Main application entry point
│   │   │       ├── PrimaryController.java   # Admin login controller
│   │   │       ├── EmployeeLoginController.java # Employee login & dashboard
│   │   │       ├── DashboardController.java # Admin dashboard
│   │   │       ├── SecondaryController.java # Employee dashboard (FXML-based)
│   │   │       ├── database.java           # Database connection handler
│   │   │       ├── getData.java            # Data transfer object
│   │   │       └── employeeData.java       # Employee data model
│   │   └── resources/
│   │       └── com/tcet/emplmanage/
│   │           ├── primary.fxml            # Admin login UI
│   │           ├── dashboard.fxml          # Admin dashboard UI
│   │           ├── emp_log.fxml            # Employee login UI
│   │           ├── secondary.fxml          # Employee dashboard UI
│   │           └── *.css                   # Stylesheets
└── pom.xml
```

## 🔧 Development

### Key Components

#### Database Connection
```java
public class database {
    public static Connection connectDb() {
        // Singleton pattern implementation
    }
}
```

#### Data Models
- `employeeData.java` - Employee model with JavaFX properties
- `getData.java` - Data transfer object for session management

#### Controllers
- `PrimaryController.java` - Admin authentication
- `EmployeeLoginController.java` - Employee authentication and dashboard
- `DashboardController.java` - Admin management interface

### Building from Source

1. **Import into NetBeans**
   - Open NetBeans IDE
   - Select File → Open Project
   - Navigate to project directory

2. **Command Line Build**
   ```bash
   mvn clean package
   java -jar target/emplmanage-1.0.0.jar
   ```

## 🤝 Contributing

We welcome contributions! Please follow these steps:

1. Fork the repository
2. Create a feature branch (`git checkout -b feature/AmazingFeature`)
3. Commit your changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

### Code Standards
- Follow Java naming conventions
- Use meaningful variable and method names
- Add comments for complex logic
- Test thoroughly before submitting

## 🐛 Known Issues

- FXML file loading inconsistencies (fallback to programmatic UI)
- Image path handling improvements needed
- Session management enhancements required

## 🚀 Future Enhancements

### High Priority
- Email notifications for leave approvals
- Password encryption implementation
- Enhanced session management

### Medium Priority
- PDF report generation
- Calendar integration
- Multi-level approval workflow

### Low Priority
- Mobile-responsive web version
- Audit logging system
- Automated database backups

## 📄 License

This project is licensed under the Free License - see the [LICENSE](LICENSE) file for details.

## 👥 Maintainers

- Development Team
- **Last Updated:** November 2025
- **Version:** 1.0.0

## 📞 Support

For support and queries, please contact the development team or create an issue in the repository.
email id: mohanshyadav@gmail.com
---

**⭐ Star this repo if you find it helpful!**
