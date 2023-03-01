CREATE TABLE NAMES(
ID_Name INT PRIMARY KEY IDENTITY (1,1) not null,
Name1 varchar (20) not null,
Name2 varchar (20) not null,
Last_Name1 varchar (20) not null,
Last_Name2 varchar (20) not null
)

CREATE TABLE USERS(
ID_Users Int PRIMARY KEY IDENTITY (1,1) not null,
Users_Name varchar (20) not null,
Pass varchar (20) not null,
Birth_Date date not null,
Age int not null,
Email varchar (20) not null,
UserImage IMAGE not null,
ID_Name int,
FOREIGN KEY (ID_Name) REFERENCES NAMES(ID_Name)
)

CREATE TABLE POST(
ID_Post Int PRIMARY KEY IDENTITY (1,1) not null,
Title varchar (20) not null,
DescriptionPost varchar (50) not null,
Creation_date date not null,
StatusPost bit not null,
ID_Uers int,
FOREIGN KEY (ID_Uers) REFERENCES USERS(ID_Users)
)

CREATE TABLE COMMENT(
ID_Comment Int PRIMARY KEY IDENTITY (1,1) not null,
DescriptionComment varchar (50) not null,
ID_Uers int,
FOREIGN KEY (ID_Uers) REFERENCES USERS(ID_Users),
ID_Post int,
FOREIGN KEY (ID_Post) REFERENCES POST(ID_Post)
)

CREATE TABLE REACT_TYPE(
ID_ReactType Int PRIMARY KEY IDENTITY (1,1) not null,
React varchar (50) not null,
)

CREATE TABLE USER_REACT_POST(
ID_UserReactPost Int PRIMARY KEY IDENTITY (1,1) not null,
ID_Users int,
FOREIGN KEY (ID_Users) REFERENCES USERS(ID_Users),
ID_Post int,
FOREIGN KEY (ID_Post) REFERENCES POST(ID_Post),
ID_ReactType int,
FOREIGN KEY (ID_ReactType) REFERENCES REACT_TYPE(ID_ReactType)
)

CREATE TABLE CATEGORIES(
ID_Categories Int PRIMARY KEY IDENTITY (1,1) not null,
Category varchar (20) not null,
)

CREATE TABLE POST_CATEGORIES(
ID_PostCategories INT PRIMARY KEY IDENTITY (1,1) not null,
ID_Post int,
FOREIGN KEY (ID_Post) REFERENCES POST(ID_Post),
ID_Categories int,
FOREIGN KEY (ID_Categories) REFERENCES CATEGORIES(ID_Categories)
)

