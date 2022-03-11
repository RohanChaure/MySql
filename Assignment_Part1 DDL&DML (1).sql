create database assignments;
use assignments;
create table authors(authorid integer primary key, authorname varchar(255));
desc authors;
insert into authors values(1,'J K Rowling');
insert into authors values(2,'Thomas Hardy');
insert into authors values(3,'Oscar Wilde');
insert into authors values(4,'Sidney Sheldon');
insert into authors values(5,'Alistair Maclean');
insert into authors values(6,'Jane Autsen');
select * from authors;
insert into Authors values(7,'Sanjay Pawar');
insert into Authors values(8,'Manish Sharma');
select * from authors;
update authors set authorname='Alastair McNeal' where authorid=5;
select * from Authors where authorid=5;
create table books(bookid integer primary key,bookname varchar(40),authorid integer);
desc books;
insert into books values(1,"Harry Potter and the Philospher's",1);
insert into books values(2,'Harry Potter and the Chamber of Secrets',1);
insert into books values(3,'Harry Potter and the Half-Blood Prince',1);
insert into books values(4,'Harry Potter and the Goblet of Fire',1);
insert into books values(5,'Night Without End',5);
insert into books values(6,'Fear is the Key',5);
insert into books values(7,'Where Eagles Dare',5);
insert into books values(8,'Sense and Sensibility',6);
insert into books values(9,'Pride and Prejudice',6);
insert into books values(10,'Emma',6);
insert into books values(11,'Random Book',22);
select * from books;
delete from books where bookid=11;
select *from books;
rename table books to Favbooks;
alter table authors rename to Favauthors;
select * from Favbooks;
select * from Favauthors;
use assignments;
create table suppliers(supplierid integer primary key auto_increment, 
suppliername varchar(30),
location varchar(60));
create table product(productid integer primary key auto_increment,
productname varchar(60)not null unique,
 Descriptions text(355), 
supplierid integer, foreign key(supplierid) references suppliers(supplierid));
create table stock(stockid integer primary key auto_increment,
productid integer,
foreign key(productid) references product(productid),
balancestock integer);
desc suppliers;
desc product;
desc stock;
insert into suppliers values(101,'Varun Dhawat','Mumbai');
insert into suppliers values(102,'Ali','Mysore');
insert into suppliers values(103,'Sasi','Chennai');
insert into suppliers values(104,'Pramod','Bangalore');
insert into suppliers values(105,'vashitha','bangalore');
select * from suppliers;
insert into product values(1,'Goorgette sarees','Amiga Fashion Womens Geograetta friil sarees with Blouse piece',102);
insert into product values(2,'Cotton Sarees','Chitrarekha pretty Sarees',102);
insert into product values(3,'Silk Sarees','Aahira Trandy Jecquard silk Saree',105);
insert into product values(4,'Solid Sarees','Banita Superior Sarees',101);
insert into product values(5,'Ruffle & frill','jennili latest Designer cotton silk Saree for wedding',103);
select * from product;
insert into stock values(1001,2,24);
insert into stock values(1002,5,12);
insert into stock values(1003,1,34);
insert into stock values(1004,2,7);
insert into stock values(1005,3,15);
select * from stock;
create table suppliers(supplierid integer primary key auto_increment,
suppliername varchar(30),
location varchar(60));
alter table suppliers modify column suppliername varchar(30) unique;
desc suppliers;
use anadb;
select * from myemp;
alter table myemp add deptno integer;
desc myemp;
update myemp set deptno=20 where emp_id%2=0;
update myemp set deptno=30 where emp_id%3=0;
update myemp set deptno=40 where emp_id%4=0;
update myemp set deptno=50 where emp_id%5=0;
update myemp set deptno=10 where deptno=null;
select * from myemp;
create unique index hash on myemp(emp_id);


