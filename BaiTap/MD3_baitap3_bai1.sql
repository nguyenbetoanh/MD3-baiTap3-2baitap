create database MD3_baiTap3_bai1;
use MD3_baiTap3_bai1;
create table Class(
Class_ID int primary key auto_increment,
Class_Name varchar(20) not null,
StarDate date not null,
Status bit not null
);
create table Student(
Student_ID int primary key auto_increment,
Student_Name varchar(20) not null,
Address varchar(50) not null,
Phone int ,
StatusStatus bit not null,
ClassID int ,
Foreign key(ClassId) references Class(Class_ID)
);
create table Subject(
Sub_ID int primary key auto_increment,
Sub_Name varchar(20) not null,
Credit int not null,
StatusStatus bit not null
);
create table Mark(
Mark_ID int primary key auto_increment,
SubID int,
StudentID int,
Mark int not null,
ExamTimes int not null,
Foreign key(SubID) references Subject(Sub_ID),
Foreign key(StudentID) references Student(Student_ID)
);
insert into class(Class_Name,StarDate,Status)values
('A1','2022-02-4',1),
('A2','2020-06-4',1),
('A3','2021-08-4',0);
insert into student(Student_Name,Address,Phone,StatusStudent,ClassID)values
('VIỆT ANH','HẢI PHÒNG',0942595229,1,1),
('JONY TIỆP','HÀ NỘI',0987654321,0,2),
('THANH PC','NAM TỪ LIÊM',0912345678,0,3);
select * from student;
insert into subject(Sub_Name,Credit,StatusSub)values
('CF',5,1),
('LOL',3,0),
('VLR',4,1),
('GG',23,0);
select * from subject;
insert into Mark(SubID,StudentID,Mark,ExamTimes)values
(1,3,10,2),
(3,3,5,2),
(4,1,7,1),
(2,1,6,3),
(2,2,5,1);
-- 1 Hiển thị tất cả các sinh viên có tên bắt đầu bảng ký tự ‘v’
select s.Student_Name
from student s
where s.student_Name like 'V%';
-- 2 Hiển thị các thông tin lớp học có thời gian bắt đầu vào tháng 6
select *
 from class
 where  month(StarDate) = 6;
-- 3 Hiển thị tất cả các thông tin môn học có credit trong khoảng từ 3-5
select *
from subjects s
where s.Credit between 3 and 5;
-- 4 Thay đổi mã lớp(ClassID) của sinh viên có id =3 là 2.
update  student
set classid = 2
where student_id=3;
-- 5 Hiển thị các thông tin: StudentName, SubName, Mark. Dữ liệu sắp xếp theo điểm thi (mark) giảm dần. nếu trùng sắp theo tên tăng dần. 
select s.Student_Name,sub.Sub_Name,m.Mark
from student s join mark m on s.Student_Id=m.studentId join  subjects sub on sub.Sub_ID=m.SubID
order by m.mark desc,s.student_name  ;







