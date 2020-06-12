CREATE database libpoject;
use libpoject;
CREATE TABLE BOOKS
                (ISBN int(100)not NULL,
				book_title VARCHAR (50) not null,
				category varchar (50) not null,
				rental_price int (10) not null,
				status varchar (50) not null,
				author varchar (50) not null,
				publisher varchar (50) not null,
				PRIMARY KEY (ISBN)	 );

CREATE TABLE EMPLOYEE
                (emp_id int(100)not NULL,
				emp_name VARCHAR (50) not null,
				position varchar (50) not null,
				salary int (10) not null,
				PRIMARY KEY (emp_id)  );

CREATE TABLE CUSTOMER
                (cust_id int(100)not NULL,
				cust_name VARCHAR (50) not null,
				cust_address varchar (50) not null,
				registation_date date not null,
				PRIMARY KEY (cust_id)  );	

CREATE TABLE BRACH
                (branch_no int(100)not NULL,
				manager_id int (50) not null,
				branch_address varchar (50) not null,
				contact_no int (10) not null,
				PRIMARY KEY (branch_no)  );		

CREATE TABLE ISSUE_STATUS
                (issue_id int(100)not NULL,
				issue_cust int (50) not null,
				book_name varchar (50) not null,
				issue_date date not null,
				isbn_book int (10) not null,
				PRIMARY KEY (issue_id),
				constraint FOREIGN KEY (isbn_book) REFERENCES BOOKS(ISBN),
				constraint FOREIGN KEY (issue_cust) REFERENCES CUSTOMER(cust_id)  );

ALTER TABLE BRACH RENAME BRANCH;

CREATE TABLE RETERN_STATUS
                (ret_id int(100)not NULL,
				ret_cust int (50) not null,
				ret_book varchar (50) not null,
				ret_date date not null,
				isbn_book2 int (10) not null,
				PRIMARY KEY (ret_id),
				constraint FOREIGN KEY (isbn_book2) REFERENCES BOOKS(ISBN),
				constraint FOREIGN KEY (ret_cust) REFERENCES ISSUE_STATUS(issue_cust)  );
				
/*    insert        */

insert into BOOKS VALUES (1001,"book_1","comedy1",51,"available","author_1","publisher_1");

insert into BOOKS VALUES (1002,"book_2","comedy2",10,"not_available","author_2","publisher_2");

insert into BOOKS VALUES (1003,"book_3","comedy3",15,"available","author_3","publisher_3");

insert into BOOKS VALUES (1004,"book_4","comedy4",25,"not_available","author_4","publisher_4");

insert into BOOKS VALUES (1005,"book_5","comedy5",35,"available","author_5","publisher_5");

insert into BOOKS VALUES (1006,"book_6","comedy6",45,"available","author_6","publisher_6");

insert into BOOKS VALUES (1007,"book_7","comedy7",55,"not_available","author_7","publisher_7");

alter table branch add constraint foreign key (manager_id) references EMPLOYEE (emp_id);

insert into EMPLOYEE values(991, 'emp1',"manager",30000);

insert into EMPLOYEE values( 992, "emp2", "worker",10000);

insert into EMPLOYEE values(993, "emp3","worker", 10000);

insert into EMPLOYEE values(994, "emp4","reader",20000);

insert into EMPLOYEE values(995, "emp5","assist", 20000);

insert into BRANCH values ( 1,991, "branch_addrl",987654321);
insert into BRANCH values ( 2,992, "branch_addr2",987544354);
insert into BRANCH values ( 3,993, "branch_addr3",987654376);

insert into CUSTOMER values (12,"cus2", "hom2","2008:03:03");
insert into CUSTOMER values (13,"cus3", "hom3","2009:09:09");
insert into CUSTOMER values (14,"cus4", "hom4","2010:10:10");
insert into CUSTOMER values (15,"cus5", "hom5","2011:11:11");


insert into ISSUE_STATUS values(51,12,"book1","2010:01:01",1001);
insert into ISSUE_STATUS values(52,14,"book2","2010:01:01",1004);

insert into RETERN_STATUS values(61,12,"book1","2010:10:01",1001);

SELECT cust_name FROM CUSTOMER WHERE cust_id ="12";

SELECT issue_id , issue_cust FROM ISSUE_STATUS WHERE isbn_book =1004;

SELECT book_title FROM BOOKS WHERE ISBN ="1001";

DELETE from BOOKS WHERE category = "1001";

SELECT book_title FROM BOOKS WHERE ISBN ="1002";

DELETE from BOOKS WHERE category = "1002";

SELECT book_title FROM BOOKS WHERE ISBN ="1003";

DELETE from BOOKS WHERE category = "1003";

SELECT book_title FROM BOOKS WHERE ISBN ="1004";

DELETE from BOOKS WHERE category = "1004";

SELECT book_title FROM BOOKS WHERE ISBN ="1005";

DELETE from BOOKS WHERE category = "1005";

alter table CUSTOMER ADD book_type varchar(10);
alter table CUSTOMER ADD book_type2 varchar(10);
alter table CUSTOMER ADD book_type3 varchar(10);
alter table CUSTOMER ADD book_type4 varchar(10);
alter table CUSTOMER ADD book_type5 varchar(10);


insert into BOOKS VALUES (1011,"book_1","comedy1",51,"available","author_1","publisher_1");

insert into BOOKS VALUES (1012,"book_2","comedy2",10,"not_available","author_2","publisher_2");

insert into BOOKS VALUES (1013,"book_3","comedy3",15,"available","author_3","publisher_3");

insert into BOOKS VALUES (1014,"book_4","comedy4",25,"not_available","author_4","publisher_4");

insert into BOOKS VALUES (1015,"book_5","comedy5",35,"available","author_5","publisher_5");

insert into BOOKS VALUES (1016,"book_6","comedy6",45,"available","author_6","publisher_6");

insert into BOOKS VALUES (1017,"book_7","comedy7",55,"not_available","author_7","publisher_7");


SELECT * from BOOKS ;

SELECT * from CUSTOMER ;

SELECT * from ISSUE_STATUS ;


SELECT issue_id , issue_cust FROM ISSUE_STATUS WHERE isbn_book =1003;


