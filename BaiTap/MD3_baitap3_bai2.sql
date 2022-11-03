CREATE DATABASE MD3_baitap3_bai2;
USE MD3_baitap3_bai2;
CREATE TABLE Class
(
    ClassID   INT         NOT NULL AUTO_INCREMENT PRIMARY KEY,
    ClassName VARCHAR(60) NOT NULL,
    StartDate DATETIME    NOT NULL,
    Status    BIT
);
CREATE TABLE Student
(
    StudentId   INT         NOT NULL AUTO_INCREMENT PRIMARY KEY,
    StudentName VARCHAR(30) NOT NULL,
    Address     VARCHAR(50),
    Phone       VARCHAR(20),
    Status      BIT,
    ClassId     INT         NOT NULL,
    FOREIGN KEY (ClassId) REFERENCES Class (ClassID)
);
CREATE TABLE Subject
(
    SubId   INT         NOT NULL AUTO_INCREMENT PRIMARY KEY,
    SubName VARCHAR(30) NOT NULL,
    Credit  TINYINT     NOT NULL DEFAULT 1 CHECK ( Credit >= 1 ),
    Status  BIT                  DEFAULT 1
);

CREATE TABLE Mark
(
    MarkId    INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    SubId     INT NOT NULL,
    StudentId INT NOT NULL,
    Mark      FLOAT   DEFAULT 0 CHECK ( Mark BETWEEN 0 AND 100),
    ExamTimes TINYINT DEFAULT 1,
    UNIQUE (SubId, StudentId),
    FOREIGN KEY (SubId) REFERENCES Subject (SubId),
    FOREIGN KEY (StudentId) REFERENCES Student (StudentId)
);
insert into class(ClassName,StartDate,Statuss
)values('lop_mi_thuat','2020-07-20',1),
('lop_am_nhac','2010-02-02',1),
('lop_toan_hoc','2021-01-25',0),
('lop_you_bae','2018-07-29',1);
insert into mark(SubId,StudentId,Mark,ExamTimes)values
('1','4',9,2),
('4','1',5,4),
('2','2',3,3),
('3','2',8,3),
('1','3',10,1);
insert into subjects(SubName,Credit,Statuss)values
('Mon vat li',50,1),
('Mon toan ',60,1),
('Mon hoa',20,0),
('Mon the duc',5,0),
('Mon du xa',45,1);
insert into student(StudentName,Address,Phone,Statuss,ClassId)values
('Nguyen van a','ha noi','0945692610',1,1),
('Nguyen van b','hai phong','0987654321',0,2),
('Nguyen van c','hai duong','094456987321',0,1),
('Nguyen van d','quang ninh','09147852963',1,2),
('Nguyen van e','nghe an','0935795123',0,3);




