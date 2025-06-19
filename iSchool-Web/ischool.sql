-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jan 27, 2024 at 06:19 PM
-- Server version: 10.11.6-MariaDB-1:10.11.6+maria~ubu2204
-- PHP Version: 8.1.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ischool`
--
CREATE DATABASE IF NOT EXISTS `ischool` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `ischool`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `admin_name` varchar(255) NOT NULL,
  `admin_email` varchar(255) NOT NULL,
  `admin_pass` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `admin_name`, `admin_email`, `admin_pass`) VALUES
(1, 'Admin Anne', 'admin@gmail.com', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

DROP TABLE IF EXISTS `course`;
CREATE TABLE `course` (
  `course_id` int(11) NOT NULL,
  `course_name` text NOT NULL,
  `course_desc` text DEFAULT NULL,
  `course_author` varchar(255) DEFAULT NULL,
  `course_img` text NOT NULL,
  `course_duration` text NOT NULL,
  `course_price` int(11) NOT NULL,
  `course_original_price` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`course_id`, `course_name`, `course_desc`, `course_author`, `course_img`, `course_duration`, `course_price`, `course_original_price`) VALUES
(1, 'Hands-on Artificial Intelligence', 'Learn and Master how AI works and how it is changing our lives in this Course.\r\nlives in this Course.', 'Dr. Md Abdul Masud', '../image/courseimg/ai.jpg', '6 Months', 900, 3000),
(2, 'Learn Python A-Z', 'This is the most comprehensive, yet straight-forward, course for the Python programming language.', 'Dr. Md Abdul Masud', '../image/courseimg/Python.jpg', '4 Months', 800, 2200),
(3, 'Complete PHP Bootcamp', 'This course will help you get all the Object Oriented PHP, MYSQLi and ending the course by building a CMS system.', 'Md Mahbubur Rahman', '../image/courseimg/php.jpg', '3 Months', 700, 1300),
(4, 'Angular JS', 'Angular is one of the most popular frameworks for building client apps with HTML, CSS and TypeScript.', 'Md Mahbubur Rahman', '../image/courseimg/angular.jpg', '4 Month', 700, 1900),
(5, 'Learn Vue JS', 'The skills you will learn from this course is applicable to the real world, so you can go ahead and build similar app.', 'Md Mahbubur Rahman', '../image/courseimg/vue.jpg', '2 Months', 650, 1500),
(6, 'Learn React Native', 'React Native lets you create truly native apps and doesn\'t compromise your users\' experiences.', 'Md. Atikqur Rahaman', '../image/courseimg/react-native.png', '5 months', 800, 2800),
(7, 'Python Complete Beginners', 'Start your coding journey with this Python Course. From basic to advanced projects, grow your Python skills at iSchool.', 'Md. Atikqur Rahaman', '../image/courseimg/Python.jpg', '4 hours', 500, 2600),
(8, 'Learn Guitar The Easy Wayy', 'This course is your \"Free Pass\" to playing guitar. It is the most direct and to the point complete online guitar course.', 'Md. Atikqur Rahaman', '../image/courseimg/Guitar.jpg', '3 Hours', 555, 1800),
(9, 'Database System ', 'Database Management Systems (DBMS) are software systems used to store, retrieve, and run queries on data. A DBMS serves as an interface between an end-user and a database, allowing users to create, read, update, and delete data in the database.', 'Dr. Md Samsuzzaman Sobuz', '../image/courseimg/Database-Management-System.jpg', '3 month', 500, 600);

-- --------------------------------------------------------

--
-- Table structure for table `courseorder`
--

DROP TABLE IF EXISTS `courseorder`;
CREATE TABLE `courseorder` (
  `co_id` int(11) NOT NULL,
  `order_id` varchar(255) NOT NULL,
  `stu_email` varchar(255) NOT NULL,
  `course_id` int(11) NOT NULL,
  `pay_status` varchar(255) NOT NULL,
  `payment_type` text NOT NULL,
  `amount` int(11) NOT NULL,
  `order_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;

--
-- Dumping data for table `courseorder`
--

INSERT INTO `courseorder` (`co_id`, `order_id`, `stu_email`, `course_id`, `pay_status`, `payment_type`, `amount`, `order_date`) VALUES
(1, 'ORDS66832973', 'anne@gmail.com', 1, 'Successful', 'bKash-bKash', 900, '2023-11-27'),
(2, 'ORDS44056674', 'papri@gmail.com', 3, 'Successful', 'DBBL-VISA', 700, '2023-11-28'),
(3, 'ORDS85300637', 'farisa@gmail.com', 5, 'Successful', 'bKash-bKash', 650, '2023-11-28'),
(4, 'ORDS40297784', 'mouly@gmail.com', 2, 'Successful', 'nagad', 800, '2024-01-23'),
(5, 'ORDS59349031', 'kaberi@gmail.com', 6, 'Successful', 'DBBL-MASTER', 800, '2024-01-24'),
(6, 'ORDS20845713', 'anne@gmail.com', 2, 'Successful', 'bKash-bKash', 800, '2024-01-24'),
(7, 'ORDS31345179', 'tasin@gmail.com', 1, 'Successful', 'bKash-bKash', 900, '2024-01-24'),
(8, 'ORDS78669916', 'mahin@gmail.com', 5, 'Successful', 'UPAY', 650, '2024-01-24'),
(9, 'ORDS19153502', 'tasin@gmail.com', 9, 'Successful', 'nagad', 500, '2024-01-25'),
(10, 'ORDS70768593', 'nusrat@gmail.com', 9, 'Successful', 'bKash-bKash', 500, '2024-01-25'),
(11, 'ORDS39515464', 'afrin@gmail.com', 5, 'Successful', 'bKash-bKash', 650, '2024-01-25'),
(12, 'ORDS5081064', 'hafsa@gmail.com', 8, 'Successful', 'DBBL-MobileBanking', 555, '2024-01-26');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

DROP TABLE IF EXISTS `feedback`;
CREATE TABLE `feedback` (
  `f_id` int(11) NOT NULL,
  `f_content` text NOT NULL,
  `stu_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`f_id`, `f_content`, `stu_id`) VALUES
(1, 'My life at iSchool made me stronger and took me a step ahead for being an independent women. I am thankful to all the teachers who supported us and corrected us throughout our career. I am very grateful to the iSchool for providing us the best of placement opportunities and finally I got placed in DC Marvel.', 3),
(2, 'I am grateful to iSchool - both the faculty and the Training & Placement Department. They have made efforts ensuring maximum number of placed students. Due to the efforts made by the faculty and placement cell. I was able to bag a job in the second company.', 2),
(3, 'iSchool is a place of learning, fun, culture, lore, literature and many such life preaching activities. Studying at the iSchool brought an added value to my life.', 1),
(4, 'Think Magical, that is one thing that iSchool urges in and to far extent succeed in teaching to its students which invariably helps to achieve what you need.', 6),
(5, 'Knowledge is power. Information is liberating. Education is the premise of progress, in every society, in every family.', 7);

-- --------------------------------------------------------

--
-- Table structure for table `lesson`
--

DROP TABLE IF EXISTS `lesson`;
CREATE TABLE `lesson` (
  `lesson_id` int(11) NOT NULL,
  `lesson_name` text NOT NULL,
  `lesson_desc` text DEFAULT NULL,
  `lesson_link` text NOT NULL,
  `course_id` int(11) NOT NULL,
  `course_name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;

--
-- Dumping data for table `lesson`
--

INSERT INTO `lesson` (`lesson_id`, `lesson_name`, `lesson_desc`, `lesson_link`, `course_id`, `course_name`) VALUES
(1, 'Intro Hands-on Artificial Intelligence', 'Intro Hands-on Artificial Intelligence', '../lessonvid/video10.mp4', 1, 'Hands-on Artificial Intelligence'),
(2, 'What Is Machine Learning?', 'Definition and Terminology', '../lessonvid/video11.mp4', 1, 'Hands-on Artificial Intelligence'),
(3, 'Introduction to Python ', 'Introduction to Python Programming Language', '../lessonvid/video2.mp4', 2, 'Learn Python A-Z'),
(4, 'How Python Works', 'How Python Language Works', '../lessonvid/video3.mp4', 2, 'Learn Python A-Z'),
(5, 'Why Python is powerful', 'The Reason for Python Being Such Powerful', '../lessonvid/video9.mp4', 2, 'Learn Python A-Z'),
(6, 'Everyone should learn Python ', 'Why everyone should learn Python', '../lessonvid/video1.mp4', 2, 'Learn Python A-Z'),
(7, 'Introduction to PHP', 'Introduction to PHP Language', '../lessonvid/video4.mp4', 3, 'Complete PHP Bootcamp'),
(8, 'How PHP works', 'PHP Workflow Overview', '../lessonvid/video5.mp4', 3, 'Complete PHP Bootcamp'),
(9, 'is PHP really easy ?', 'Why PHP is so easy', '../lessonvid/video6.mp4', 3, 'Complete PHP Bootcamp'),
(10, 'intro Angular JS', 'Introduction to Angular JS', '../lessonvid/video13.mp4', 4, 'Angular JS'),
(11, 'Inro Learn Vue JS', 'Inroduction to Vue JS', '../lessonvid/video12.mp4', 5, 'Learn Vue JS'),
(12, 'Introduction to React Native', 'This intro video of React native', '../lessonvid/video11.mp4', 6, 'Learn React Native'),
(13, 'Intro to Python Complete', 'This is lesson number 1', '../lessonvid/video11.mp4', 7, 'Python Complete'),
(14, 'Introduction to Guitar44', 'Introduction to Guitar desc1', '../lessonvid/video7.mp4', 8, 'Learn Guitar The Easy Way'),
(15, 'Type of Guitar', 'Type of Guitar Desc2', '../lessonvid/video8.mp4', 8, 'Learn Guitar The Easy Way'),
(16, 'Types of Machine Learning', 'Different Types of Machine Learning', '../lessonvid/video11.mp4', 1, 'Hands-on Artificial Intelligence'),
(17, 'Types of Machine Learning Problems\r\n', 'Different Types of Machine Learning Problems', '../lessonvid/video11.mp4', 1, 'Hands-on Artificial Intelligence'),
(18, 'Overfitting and Underfitting', 'Overfitting and Underfitting Concept', '../lessonvid/video11.mp4', 1, 'Hands-on Artificial Intelligence'),
(19, 'Conda Environments', 'Installing Conda on Different Environments', '../lessonvid/video11.mp4', 1, 'Hands-on Artificial Intelligence'),
(20, 'Jupyter Notebook Walkthrough', 'A Walkthrough of Jupyter Notebook Features', '../lessonvid/video11.mp4', 1, 'Hands-on Artificial Intelligence'),
(21, 'Pandas Introduction', 'A Walkthrough of Pandas Features', '../lessonvid/video11.mp4', 1, 'Hands-on Artificial Intelligence'),
(22, 'Describing Data with Pandas', 'How to Describe Data with Pandas', '../lessonvid/video11.mp4', 1, 'Hands-on Artificial Intelligence'),
(23, 'Selecting and Viewing Data with Pandas', 'How to Select and View Data with Pandas', '../lessonvid/video11.mp4', 1, 'Hands-on Artificial Intelligence'),
(24, 'Manipulating Data with Pandas', 'How to Manipulating Data with Pandas', '../lessonvid/video11.mp4', 1, 'Hands-on Artificial Intelligence'),
(25, 'NumPy Introduction', 'A Walkthrough of NumPy Capabilities', '../lessonvid/video11.mp4', 1, 'Hands-on Artificial Intelligence'),
(26, 'NumPy DataTypes and Attributes', 'What are the NumPy DataTypes and Attributes', '../lessonvid/video11.mp4', 1, 'Hands-on Artificial Intelligence'),
(27, 'Scikit-learn Introduction', 'An Introduction of Scikit-learn Features', '../lessonvid/video11.mp4', 1, 'Hands-on Artificial Intelligence'),
(28, 'Supervised Learning - Classification and Regression', 'An Implementation of Supervised Learning - Classification and Regression', '../lessonvid/video11.mp4', 1, 'Hands-on Artificial Intelligence'),
(29, 'String Manipulation', 'How to Manipulate Strings using Python ', '../lessonvid/video1.mp4', 2, 'Learn Python A-Z'),
(30, 'Python Data Types', 'Different Data Types Available in Python ', '../lessonvid/video1.mp4', 2, 'Learn Python A-Z'),
(31, 'Type Error, Type Checking, Type Conversion', 'Some Important Type Functions in Python ', '../lessonvid/video1.mp4', 2, 'Learn Python A-Z'),
(32, 'Mathematical Operations in Python', 'Mathematical Operations Available in Python ', '../lessonvid/video1.mp4', 2, 'Learn Python A-Z'),
(33, 'Control Flow and Logical Operators in Python', 'Control Flow and Logical Operators Used in Python ', '../lessonvid/video1.mp4', 2, 'Learn Python A-Z'),
(34, 'Python Loops', 'Using Python Loops for Different Data Types', '../lessonvid/video1.mp4', 2, 'Learn Python A-Z'),
(35, 'Data Types, Variables & Built-in Functions', 'Data Types, Variables & Built-in Functions Available in PHP', '../lessonvid/video6.mp4', 3, 'Complete PHP Bootcamp'),
(36, 'Arrays in PHP', 'How to Use Arrays in PHP', '../lessonvid/video6.mp4', 3, 'Complete PHP Bootcamp'),
(37, 'Loops in PHP', 'How to Use Loops in PHP', '../lessonvid/video6.mp4', 3, 'Complete PHP Bootcamp'),
(38, 'Conditions in PHP', 'How to Use Conditions in PHP', '../lessonvid/video6.mp4', 3, 'Complete PHP Bootcamp'),
(39, 'Functions in PHP', 'How to Define Functions in PHP', '../lessonvid/video6.mp4', 3, 'Complete PHP Bootcamp'),
(40, 'Object Oriented Programming (OOP)', 'Object Oriented Programming (OOP) in PHP', '../lessonvid/video6.mp4', 3, 'Complete PHP Bootcamp'),
(41, 'Database Integration', 'Database Integration in PHP', '../lessonvid/video6.mp4', 3, 'Complete PHP Bootcamp'),
(42, 'Project Setup and First App', 'How an Angular App Gets Loaded and Started', '../lessonvid/video13.mp4', 4, 'Angular JS'),
(43, 'Debugging', 'How to Debug Angular App', '../lessonvid/video13.mp4', 4, 'Angular JS'),
(44, 'Components and Databinding', 'Components and Databinding in Angular', '../lessonvid/video13.mp4', 4, 'Angular JS'),
(45, 'Using Services and Dependency Injection', 'Using Services and Dependency Injection in Angular', '../lessonvid/video13.mp4', 4, 'Angular JS'),
(46, 'Changing Pages with Routing', 'Changing Pages with Routing in Angular', '../lessonvid/video13.mp4', 4, 'Angular JS'),
(47, 'Handling Forms in Angular Apps', 'How to Handle Forms in Angular Apps', '../lessonvid/video13.mp4', 4, 'Angular JS'),
(48, 'Making HTTP Requests', 'How to Make HTTP Requests in Angular', '../lessonvid/video13.mp4', 4, 'Angular JS'),
(49, 'Dynamic Components', 'Dynamic Components in Angular', '../lessonvid/video13.mp4', 4, 'Angular JS'),
(50, 'Deploying an Angular App', 'How to Deploy an Angular App', '../lessonvid/video13.mp4', 4, 'Angular JS'),
(51, 'Project Setup and First App', 'How a React Native App Gets Loaded and Started', '../lessonvid/video11.mp4', 6, 'Learn React Native'),
(52, 'Debugging', 'How to Debug a React Native App', '../lessonvid/video12.mp4', 6, 'Learn React Native'),
(53, 'Components and Databinding', 'Components and Databinding in React Native', '../lessonvid/video11.mp4', 6, 'Learn React Native'),
(54, 'Using Services and Dependency Injection', 'Using Services and Dependency Injection in React Native', '../lessonvid/video12.mp4', 6, 'Learn React Native'),
(55, 'Changing Pages with Routing', 'Changing Pages with Routing in React Native', '../lessonvid/video11.mp4', 6, 'Learn React Native'),
(56, 'Handling Forms in React Native Apps', 'How to Handle Forms in React Native Apps', '../lessonvid/video12.mp4', 6, 'Learn React Native'),
(57, 'Making HTTP Requests', 'How to Make HTTP Requests in React Native', '../lessonvid/video13.mp4', 6, 'Learn React Native'),
(58, 'Dynamic Components', 'Dynamic Components in React Native', '../lessonvid/video11.mp4', 6, 'Learn React Native'),
(59, 'Deploying a React Native App', 'How to Deploy a React Native App', '../lessonvid/video11.mp4', 6, 'Learn React Native'),
(60, 'Project Setup and First App', 'How a Vue App Gets Loaded and Started', '../lessonvid/video12.mp4', 5, 'Learn Vue JS'),
(61, 'Debugging', 'How to Debug a Vue App', '../lessonvid/video12.mp4', 5, 'Learn Vue JS'),
(62, 'Components and Databinding', 'Components and Databinding in Vue', '../lessonvid/video11.mp4', 5, 'Learn Vue JS'),
(63, 'Using Services and Dependency Injection', 'Using Services and Dependency Injection in Vue', '../lessonvid/video12.mp4', 5, 'Learn Vue JS'),
(64, 'Changing Pages with Routing', 'Changing Pages with Routing in Vue', '../lessonvid/video11.mp4', 5, 'Learn Vue JS'),
(65, 'Handling Forms in Vue Apps', 'How to Handle Forms in Vue Apps', '../lessonvid/video12.mp4', 5, 'Learn Vue JS'),
(66, 'Making HTTP Requests', 'How to Make HTTP Requests in Vue', '../lessonvid/video13.mp4', 5, 'Learn Vue JS'),
(67, 'Dynamic Components', 'Dynamic Components in Vue', '../lessonvid/video11.mp4', 5, 'Learn Vue JS'),
(68, 'Deploying a Vue App', 'How to Deploy a Vue App', '../lessonvid/video11.mp4', 5, 'Learn Vue JS'),
(69, 'How Python Works', 'How Python Language Works', '../lessonvid/video3.mp4', 7, 'Python Complete'),
(70, 'Why Python is powerful', 'The Reason for Python Being Such Powerful', '../lessonvid/video9.mp4', 7, 'Python Complete'),
(71, 'Everyone should learn Python ', 'Why everyone should learn Python', '../lessonvid/video1.mp4', 7, 'Python Complete'),
(72, 'String Manipulation', 'How to Manipulate Strings using Python ', '../lessonvid/video1.mp4', 7, 'Python Complete'),
(73, 'Python Data Types', 'Different Data Types Available in Python ', '../lessonvid/video1.mp4', 7, 'Python Complete'),
(74, 'Type Error, Type Checking, Type Conversion', 'Some Important Type Functions in Python ', '../lessonvid/video1.mp4', 7, 'Python Complete'),
(75, 'Mathematical Operations in Python', 'Mathematical Operations Available in Python ', '../lessonvid/video1.mp4', 7, 'Python Complete'),
(76, 'Control Flow and Logical Operators in Python', 'Control Flow and Logical Operators Used in Python ', '../lessonvid/video1.mp4', 7, 'Python Complete'),
(77, 'Python Loops', 'Using Python Loops for Different Data Types', '../lessonvid/video1.mp4', 7, 'Python Complete'),
(78, 'Introduction of Database', 'Database Management Systems (DBMS) are software systems used to store, retrieve, and run queries on data. A DBMS serves as an interface between an end-user and a database, allowing users to create, read, update, and delete data in the database.', '../lessonvid/', 9, 'Database System ');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `stu_id` int(11) NOT NULL,
  `stu_name` varchar(255) NOT NULL,
  `stu_email` varchar(255) NOT NULL,
  `stu_pass` varchar(255) NOT NULL,
  `stu_occ` varchar(255) DEFAULT NULL,
  `stu_img` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`stu_id`, `stu_name`, `stu_email`, `stu_pass`, `stu_occ`, `stu_img`) VALUES
(1, 'Sinthia Afrin', 'anne@gmail.com', 'anne', 'Web Developer', '../image/stu/student1.jpg'),
(2, 'Papri', 'papri@gmail.com', '123456', 'Web Developer', '../image/stu/student2.jpg'),
(3, 'Farisa', 'farisa@gmail.com', '123456', 'Web Designer', '../image/stu/student3.jpg'),
(4, 'Mouly', 'mouly@gmail.com', '123456', 'Web Designer', '../image/stu/student4.jpg'),
(5, 'Avro', 'avro@gmail.com', '123456', 'Software Engineer', '../image/stu/student5.jpg'),
(6, 'Jaad', 'jaad@gmail.com', '123456', 'Software Engineer', '../image/stu/student6.jpg'),
(7, 'Kaberi', 'kaberi@gmail.com', '123456', 'Web Developer', '../image/stu/student7.jpg'),
(9, 'asdf', 'asdf@gmail.com', '123456', NULL, NULL),
(10, 'Tasin', 'tasin@gmail.com', 'tasin', 'Junior Web developer ', '../image/stu/IMG_20161203_191813_157.jpg'),
(11, 'Md fahim Mollah', 'mdfahimmollah582@gmail.com', '90456617', NULL, NULL),
(13, 'mahin', 'mahin@gmail.com', 'mahin', 'Student', '../image/stu/IMG_20211106_145658.jpg'),
(14, 'Tanisha', 'Tanisha@gmail.com', 'tanisha', 'Student', '../image/stu/2022-01-15-14-58-58-811.jpg'),
(15, 'Tamanna', 'tamanna@gmail.com', 'tamanna', NULL, NULL),
(16, 'Nusrat', 'nusrat@gmail.com', 'nusrat', 'Student', ''),
(17, 'Afrin', 'afrin@gmail.com', 'afrin', NULL, NULL),
(18, 'Hafsa', 'hafsa@gmail.com', 'hafsa', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`course_id`);

--
-- Indexes for table `courseorder`
--
ALTER TABLE `courseorder`
  ADD PRIMARY KEY (`co_id`),
  ADD UNIQUE KEY `order_id` (`order_id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`f_id`);

--
-- Indexes for table `lesson`
--
ALTER TABLE `lesson`
  ADD PRIMARY KEY (`lesson_id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`stu_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `course_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `courseorder`
--
ALTER TABLE `courseorder`
  MODIFY `co_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `f_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `lesson`
--
ALTER TABLE `lesson`
  MODIFY `lesson_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `stu_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
