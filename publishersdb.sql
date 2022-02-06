-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 06, 2022 at 12:33 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `publishersdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_tbl`
--

CREATE TABLE `admin_tbl` (
  `Id` int(10) NOT NULL,
  `Username` varchar(255) NOT NULL,
  `Password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin_tbl`
--

INSERT INTO `admin_tbl` (`Id`, `Username`, `Password`) VALUES
(1, 'Admin', 'admin123');

-- --------------------------------------------------------

--
-- Table structure for table `author_proposal_tbl`
--

CREATE TABLE `author_proposal_tbl` (
  `Id` int(10) NOT NULL,
  `Book_Name` varchar(255) NOT NULL,
  `Author_Name` varchar(255) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Category` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `author_proposal_tbl`
--

INSERT INTO `author_proposal_tbl` (`Id`, `Book_Name`, `Author_Name`, `Email`, `Category`) VALUES
(2, 'Scope & Closures', 'Kyle Simpson', 'hannahrajput1803@gmail.com', 'Javascript'),
(3, 'Shell Programming In Linux', 'Patrick Wood', 'hannahrajput1803@outlook.com', 'Shell Prog.'),
(4, 'TCP/IP Illustrated vol.1', 'Kevin Fall', 'darshanbhatt1799@gmail.com', 'Networking'),
(5, 'Pro ASP.Net MVC 5', 'Adam Freeman', 'hannahrajput1803@outlook.com', '.Net'),
(6, 'Modern OS 4TH Edition', 'Andrew S', 'darshanbhatt1799@gmail.com', 'OS'),
(7, 'DBMS basics for beginners', 'Michelle Fegatofi', 'hannahrajput888@gmail.com', 'DBMS'),
(8, 'Modern Fortran', 'Milan Curcic', 'nyande20@gmail.com', 'Fortran'),
(9, 'Data mining', 'Charu Aggarwal', 'hannahrajput888@gmail.com', 'Data Mining'),
(10, 'R for Data Science', 'Francois Chollete', 'darshanbhatt1799@gmail.com', 'Data Sci.'),
(11, 'Data mining and analysis', 'Mohammed J. Zaki', 'nyande20@gmail.com', 'Data Mining');

-- --------------------------------------------------------

--
-- Table structure for table `booksinfo_tbl`
--

CREATE TABLE `booksinfo_tbl` (
  `Id` int(255) NOT NULL,
  `Book_Name` varchar(500) NOT NULL,
  `Author_Name` varchar(100) NOT NULL,
  `Book_Description` varchar(10000) NOT NULL,
  `Category` varchar(100) NOT NULL,
  `Book_Image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `booksinfo_tbl`
--

INSERT INTO `booksinfo_tbl` (`Id`, `Book_Name`, `Author_Name`, `Book_Description`, `Category`, `Book_Image`) VALUES
(3, 'Web Publishing', 'Laura Lemay', 'Sams Teach Yourself Web Publishing with HTML and CSS in One Hour a Day is a new edition of the best-selling book that started the whole HTML/web publishing phenomenon. The entire book has been revised and refined to reflect current web publishing practices and technologies. It includes extensive coverage of Cascading Style Sheets (CSS), which have become a staple in web development.', 'HTML', 'Web Publishing.jpeg'),
(4, 'Machine Learning', 'Ethem Alpaydin', 'The goal of machine learning is to program computers to use example data or past experience to solve a given problem. Many successful applications of machine learning exist already, including systems that analyze past sales data to predict customer behavior, optimize robot behavior so that a task can be completed using minimum resources, and extract knowledge from bioinformatics data. Introduction to Machine Learning is a comprehensive textbook on the subject, covering a broad array of topics not usually included in introductory machine learning texts. ', 'AI', 'Machine Learning.jpeg'),
(5, 'Java For Beginners', 'Scott Sanderson', 'Java is one of the most popular programming languages out there. Released in 1995 and still widely used today, Java has many applications, including software development, mobile applications, and large systems development. Knowing Java opens a lot of possibilities for you as a developer.', 'Java', 'Java.jpeg'),
(6, 'Learn to Program with C', 'Noel Kalicharan', 'This book teaches computer programming to the complete beginner using the native C language. As such, it assumes you have no knowledge whatsoever about programming. The main goal of this book is to teach fundamental programming principles using C, one of the most widely used programming languages in the world today.', 'C++', 'c++.jpeg'),
(7, 'Web Application Development', 'Fernando Monteiro', 'Learning Single-page Web Application Development is a journey through application development using the MEAN stack with JavaScript  on the server side and client side, covering concepts such as RESTful, authentication and session on SPA. You will build large-scale applications. You will use a JavaScript environment with Node.js on the server, MongoDB as the database, and AngularJS on the frontend.', 'Javascript', 'Web Development.jpeg'),
(8, 'Pro Php and JQuery', 'Jason Lengstorf', 'Take advantage of the improved performance and reduced memory requirements of PHP version 7, and learn to utilize the new built-in PHP functions and features such as typed variable enforcement with declare(strict_types=1) and the new available data types, scalar type declarations for function arguments and return statements, constant arrays using define(), argument unpacking with the ... operator, integer division with intdiv(), the null coalesce operator, the spaceship operator.', 'Php', 'Php.jpeg'),
(9, 'Python AI Projects', 'Joshua Eckroth', 'Artificial Intelligence (AI) is the newest technology that’s being employed among varied businesses, industries, and sectors. Python Artificial Intelligence Projects for Beginners demonstrates AI projects in Python, covering modern techniques that make up the world of Artificial Intelligence.', 'Python', 'Python.jpeg'),
(10, 'Web Design with HTML and CSS', 'Jeremy Osborn', 'Planning your website -- Fundamentals of the Web -- Web design tools -- Fundamentals of HTML, XHTML, and CSS -- Graphics, color, and transparency -- Formatting text with CSS -- Introduction to CSS layout -- Advanced CSS layout -- Browser compatibility -- Introduction to interactivity -- Mobile design -- HTML5 essentials.', 'CSS', 'Web Design.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `contactus_tbl`
--

CREATE TABLE `contactus_tbl` (
  `Id` int(10) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Subject` varchar(255) NOT NULL,
  `Message` varchar(10000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contactus_tbl`
--

INSERT INTO `contactus_tbl` (`Id`, `Name`, `Email`, `Subject`, `Message`) VALUES
(1, 'Hannah Rajput', 'qwert@hotmail.com', 'service', 'the site is not responding...'),
(2, 'Darshan Bhatt', 'darshubada@gmail.com', 'suggestions', 'The site should be more colorful...'),
(3, 'Nyande Paul', 'nyande@gmail.com', 'product', 'I cant find a book of my choice.');

-- --------------------------------------------------------

--
-- Table structure for table `events_tbl`
--

CREATE TABLE `events_tbl` (
  `Id` int(10) NOT NULL,
  `Event_Name` varchar(255) NOT NULL,
  `Event_Status` varchar(255) NOT NULL,
  `Event_description` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `events_tbl`
--

INSERT INTO `events_tbl` (`Id`, `Event_Name`, `Event_Status`, `Event_description`) VALUES
(1, 'Book Writing & Publishing Masterclass -Passion2Published ', 'Past Event', '\"Book Writing and Publishing Workshop\" - Become an Author in 2021\r\nWelcome to the Book Writing and Publishing Workshop by Susmita, Founding Partner and CEO of Global Book Publishing.\r\n\r\nIt is a 2 hour workshop, where Susmita teaches you Perfect Book Writing and Publishing Strategy right from scratch, going into immense detail on why, what, and how to do specific little-known critical things in the book publishing process.'),
(2, 'BooksByWeight Sale at Trisha Gallery', 'Past Event', '\"Book Pre-launch Success Masterclass\" - How to Build A Business Around Your Book and Become a Successful Author in 2021\r\nWelcome to the \"How to Make Your Book A Big Success Even Before It Is Published\" Workshop by Sush and Ash, Founding Partners of Global Book Publishing.'),
(3, 'Gujarat Literature Festival (GLF)', 'Ongoing Event', 'GLF is the first literary festival in Gujarat and features all forms and mediums used to express literary creativity. \r\n\r\nIt is also a unique festival as it has a diversity of languages and multiple of mediums one can experience on a single venue in any other festival. \r\n\r\nGLF aspires to celebrate book writers, poets, film writers, lyricists,  journalists, social media writers and other genres that use literary creativity. '),
(4, 'SuperMoms Popup', 'Upcoming Event', 'SuperMoms Pop up is organised by organiser of Kidzworld - Indias Longest running Childrens Exhibition.\r\nIt is premium Kidz & Mom products & services Exhibition where you will find everything from Brands across India and few globally.\r\nSo get into shopping gear and shop for Kidswear, Education Options, Innovative Education products, Online Classes, Health products/Services, Beauty, Accessories, Toys, Games, Food and many more\r\nEvent Date: 19th February 2022\r\nEvent Location : YMCA Club - Ahmedabd\r');

-- --------------------------------------------------------

--
-- Table structure for table `login_tbl`
--

CREATE TABLE `login_tbl` (
  `Id` int(10) NOT NULL,
  `Username` varchar(255) NOT NULL,
  `Password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `specimen_req_tbl`
--

CREATE TABLE `specimen_req_tbl` (
  `Id` int(10) NOT NULL,
  `Book_Name` varchar(255) NOT NULL,
  `Category` varchar(255) NOT NULL,
  `User_Name` varchar(255) NOT NULL,
  `Email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `specimen_req_tbl`
--

INSERT INTO `specimen_req_tbl` (`Id`, `Book_Name`, `Category`, `User_Name`, `Email`) VALUES
(2, 'CompTIA Network+', 'Networking', '@hr', 'hannahrajput1803@gmail.com'),
(3, 'Learning Deep Learning', 'AI', '@paul', 'nyande20@gmail.com'),
(4, 'Introduction to Networks V6', 'Networking', '@creth', 'darshanbhatt1799@gmail.com'),
(5, 'Cryptography and Network Security', 'Networking', '@hr', 'hannahrajput1803@outlook.com'),
(6, 'Dependency Injection in .NET', '.Net', '@paul', 'nyande20@gmail.com'),
(7, 'C# in Depth', '.Net', '@hr', 'hannahrajput888@gmail.com'),
(8, 'SQL Cookbook', 'DBMS', '@DR', 'darshanbhatt1799@gmail.com'),
(9, 'Data and Reality', 'DBMS', '@DBhatt', 'darshanbhatt1799@gmail.com'),
(10, 'D. B. M. S. (Database Management) with Sql Query', 'DBMS', '@creth', 'darshanbhatt1799@gmail.com'),
(11, 'C++ Primer', 'C++', '@hiten1807', 'hannahrajput1803@outlook.com'),
(12, 'A Tour of C++', 'C++', '@hiten1807', 'hannahrajput1803@outlook.com');

-- --------------------------------------------------------

--
-- Table structure for table `users_tbl`
--

CREATE TABLE `users_tbl` (
  `Id` int(10) NOT NULL,
  `First_Name` varchar(255) NOT NULL,
  `Last_Name` varchar(255) NOT NULL,
  `Username` varchar(255) NOT NULL,
  `Password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users_tbl`
--

INSERT INTO `users_tbl` (`Id`, `First_Name`, `Last_Name`, `Username`, `Password`) VALUES
(1, 'Hannah', 'Rajput', '@hr', 'h12'),
(7, 'Darshan ', 'Bhatt', '@DBhatt', 'dar123'),
(8, 'Nyande', 'Paul', '@paul', 'nyande123'),
(9, 'Creth', 'Rajput', '@creth', 'rajput123'),
(10, 'Denish', 'Rajput', '@DR', 'den123'),
(11, 'Hiten', 'Rajput', '@hiten1807', 'h1234'),
(12, 'Villa ', 'Rajput', '@VRajput', 'vill@21'),
(14, 'Jay', 'Bhatt', '@Jay', 'jayB'),
(16, 'Farhana', 'Pathan', '@pathan', 'FPJones'),
(17, 'Jatin', 'Rajput', '@raj', 'JRajput'),
(18, 'Rashmi', 'Rajput', '@rash', 'rajput'),
(19, 'Archana', 'Rajwadi', '@archu', 'archu12'),
(20, 'Charulata', 'Rajwadi', '@lata', 'charuraj'),
(21, 'Alex', 'Rajwadi', '@alex', 'a1234'),
(22, 'Alka', 'Trivedi', '@alkat', '@alka'),
(23, 'Yash', 'Trivedi', 'Ytrivedi', 'yash1234'),
(24, 'Siddhi', 'Trivedi', '@Strivedi', 'siddhi90'),
(25, 'Nina', 'Parmar', '@nina', 'parmar123'),
(26, 'Kenneth', 'Parmar', '@ken', 'ken123');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_tbl`
--
ALTER TABLE `admin_tbl`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `author_proposal_tbl`
--
ALTER TABLE `author_proposal_tbl`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `booksinfo_tbl`
--
ALTER TABLE `booksinfo_tbl`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `contactus_tbl`
--
ALTER TABLE `contactus_tbl`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `events_tbl`
--
ALTER TABLE `events_tbl`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `login_tbl`
--
ALTER TABLE `login_tbl`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `specimen_req_tbl`
--
ALTER TABLE `specimen_req_tbl`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `users_tbl`
--
ALTER TABLE `users_tbl`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_tbl`
--
ALTER TABLE `admin_tbl`
  MODIFY `Id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `author_proposal_tbl`
--
ALTER TABLE `author_proposal_tbl`
  MODIFY `Id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `booksinfo_tbl`
--
ALTER TABLE `booksinfo_tbl`
  MODIFY `Id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `contactus_tbl`
--
ALTER TABLE `contactus_tbl`
  MODIFY `Id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `events_tbl`
--
ALTER TABLE `events_tbl`
  MODIFY `Id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `login_tbl`
--
ALTER TABLE `login_tbl`
  MODIFY `Id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `specimen_req_tbl`
--
ALTER TABLE `specimen_req_tbl`
  MODIFY `Id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `users_tbl`
--
ALTER TABLE `users_tbl`
  MODIFY `Id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
