-- EXERCISE 1 --
create database University;
use University;
create table Student (
    SID int primary key,
    FN varchar (50),
    LN varchar(50),
    BDate date,
    Sex char(1),
    Class varchar(20),
    Degree_Program varchar(50),
    C_Address varchar(100),
    C_Phone varchar(15),
    P_Phone varchar(15),
    City varchar(50),
    State varchar(50),
    ZIP varchar(10),
    Major_Dep varchar(50),
    Minor_Dep varchar(50)
);
create table Department (
    DName varchar(50) primary key,
    Code varchar(10),
    College varchar(50),
    OfficeNo varchar(10),
    OfficePhone varchar(15)
);
-- altering student table to add foreign key --
alter table Student add foreign key (Major_Dep) references Department(DName);
alter table Student add foreign key (Minor_Dep) references Department(DName);
create table Course (
    CNumber varchar(10) primary key,
    CName varchar(50),
    Description text,
    Hours int,
    Level varchar(20),
    Dep varchar(50),
    foreign key (Dep) references Department(DName)
);
create table section (
	SecNum int primary key,
    Year int,
    Semester int,
    Instructor varchar(50),
    Course varchar(50),
    foreign key (Course) references Course(CNumber)
);
CREATE TABLE Grade_Report (
    LetterGrade char(2),
    NumericGrade int primary key
);
CREATE TABLE Student_Grades (
    Student int,
    CourseNo varchar(10),
    Section int,
    Semester varchar(20),
    Year int,
    Grade int,
    
    primary key (Student, CourseNo, Section, Semester, Year),

    foreign key (Student) references Student(SID),
    foreign key (Section) references Section(SecNum),
    foreign key (Grade) references Grade_Report(NumericGrade)
);