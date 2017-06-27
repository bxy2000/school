drop database if exists school;

create database school;

use school;

create table students
(
	id				int			not null		auto_increment,
	student_number	varchar(30),
	student_name	varchar(30),
	gender			varchar(10),
	birthday		date,
	mobile			varchar(20),
	email			varchar(80),
	address			varchar(255),
	city			varchar(50),
	province		varchar(50),
	
	constraint		pk_students	primary key(id)
);

insert into students(student_number, student_name, gender, birthday, mobile, email, address, city, province) values ('1', '张三1', '男', '1990-1-1', '138-----------', 'zhangsan1@163.com', '金水区', '郑州', '河南');
insert into students(student_number, student_name, gender, birthday, mobile, email, address, city, province) values ('2', '张三1', '男', '1990-1-1', '138-----------', 'zhangsan1@163.com', '金水区', '郑州', '河南');
insert into students(student_number, student_name, gender, birthday, mobile, email, address, city, province) values ('3', '张三1', '男', '1990-1-1', '138-----------', 'zhangsan1@163.com', '金水区', '郑州', '河南');
insert into students(student_number, student_name, gender, birthday, mobile, email, address, city, province) values ('4', '张三1', '男', '1990-1-1', '138-----------', 'zhangsan1@163.com', '金水区', '郑州', '河南');
insert into students(student_number, student_name, gender, birthday, mobile, email, address, city, province) values ('5', '张三1', '男', '1990-1-1', '138-----------', 'zhangsan1@163.com', '金水区', '郑州', '河南');
insert into students(student_number, student_name, gender, birthday, mobile, email, address, city, province) values ('6', '张三1', '男', '1990-1-1', '138-----------', 'zhangsan1@163.com', '金水区', '郑州', '河南');
insert into students(student_number, student_name, gender, birthday, mobile, email, address, city, province) values ('7', '张三1', '男', '1990-1-1', '138-----------', 'zhangsan1@163.com', '金水区', '郑州', '河南');
insert into students(student_number, student_name, gender, birthday, mobile, email, address, city, province) values ('8', '张三1', '男', '1990-1-1', '138-----------', 'zhangsan1@163.com', '金水区', '郑州', '河南');
insert into students(student_number, student_name, gender, birthday, mobile, email, address, city, province) values ('9', '张三1', '男', '1990-1-1', '138-----------', 'zhangsan1@163.com', '金水区', '郑州', '河南');
insert into students(student_number, student_name, gender, birthday, mobile, email, address, city, province) values ('10', '张三1', '男', '1990-1-1', '138-----------', 'zhangsan1@163.com', '金水区', '郑州', '河南');
insert into students(student_number, student_name, gender, birthday, mobile, email, address, city, province) values ('11', '张三1', '男', '1990-1-1', '138-----------', 'zhangsan1@163.com', '金水区', '郑州', '河南');
insert into students(student_number, student_name, gender, birthday, mobile, email, address, city, province) values ('12', '张三1', '男', '1990-1-1', '138-----------', 'zhangsan1@163.com', '金水区', '郑州', '河南');
insert into students(student_number, student_name, gender, birthday, mobile, email, address, city, province) values ('13', '张三1', '男', '1990-1-1', '138-----------', 'zhangsan1@163.com', '金水区', '郑州', '河南');
insert into students(student_number, student_name, gender, birthday, mobile, email, address, city, province) values ('14', '张三1', '男', '1990-1-1', '138-----------', 'zhangsan1@163.com', '金水区', '郑州', '河南');
insert into students(student_number, student_name, gender, birthday, mobile, email, address, city, province) values ('15', '张三1', '男', '1990-1-1', '138-----------', 'zhangsan1@163.com', '金水区', '郑州', '河南');
insert into students(student_number, student_name, gender, birthday, mobile, email, address, city, province) values ('16', '张三1', '男', '1990-1-1', '138-----------', 'zhangsan1@163.com', '金水区', '郑州', '河南');
insert into students(student_number, student_name, gender, birthday, mobile, email, address, city, province) values ('17', '张三1', '男', '1990-1-1', '138-----------', 'zhangsan1@163.com', '金水区', '郑州', '河南');
insert into students(student_number, student_name, gender, birthday, mobile, email, address, city, province) values ('18', '张三1', '男', '1990-1-1', '138-----------', 'zhangsan1@163.com', '金水区', '郑州', '河南');
insert into students(student_number, student_name, gender, birthday, mobile, email, address, city, province) values ('19', '张三1', '男', '1990-1-1', '138-----------', 'zhangsan1@163.com', '金水区', '郑州', '河南');
insert into students(student_number, student_name, gender, birthday, mobile, email, address, city, province) values ('20', '张三1', '男', '1990-1-1', '138-----------', 'zhangsan1@163.com', '金水区', '郑州', '河南');
insert into students(student_number, student_name, gender, birthday, mobile, email, address, city, province) values ('21', '张三1', '男', '1990-1-1', '138-----------', 'zhangsan1@163.com', '金水区', '郑州', '河南');
insert into students(student_number, student_name, gender, birthday, mobile, email, address, city, province) values ('22', '张三1', '男', '1990-1-1', '138-----------', 'zhangsan1@163.com', '金水区', '郑州', '河南');
insert into students(student_number, student_name, gender, birthday, mobile, email, address, city, province) values ('23', '张三1', '男', '1990-1-1', '138-----------', 'zhangsan1@163.com', '金水区', '郑州', '河南');
insert into students(student_number, student_name, gender, birthday, mobile, email, address, city, province) values ('24', '张三1', '男', '1990-1-1', '138-----------', 'zhangsan1@163.com', '金水区', '郑州', '河南');
insert into students(student_number, student_name, gender, birthday, mobile, email, address, city, province) values ('25', '张三1', '男', '1990-1-1', '138-----------', 'zhangsan1@163.com', '金水区', '郑州', '河南');

