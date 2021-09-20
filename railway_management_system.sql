


Create table passenger(
passenger_id mediumint primary key auto_increment,
passenger_name varchar(50),
email varchar (30),
date_of_birth date,
gender char (8),
address varchar (30),
phone_number char(11),
password varchar(20)
);

Create table user_login(
Serial_No smallint primary key auto_increment,
email varchar(30),
password Varchar(15)

);




Create table Tickets(
ticket_number mediumint primary key auto_increment,
passenger_name varchar(50),
train_id mediumint,
tarin_name varchar(40),
journey_date date,
departure_time time,
arrival_time time,
start_location varchar(30),
destination varchar(30),
price decimal (6,2)
);


Create table train_Information(
train_id mediumint primary key,
train_name varchar(40),
start_location varchar(30),
end_location varchar(50),
total_seats smallint,
total_available_seats smallint,
departure_time  Time,
arrival_time time,
price decimal (6,2)
);

Insert into Train_information(train_id,train_name,start_location,end_location,total_seats,total_available_seats,departure_time,arrival_time,price)
values (702,"Subarna Express","Chittagong","Dhaka",200, 200,"16:00","21:30",600),
(801,"Jayantika Express","Dhaka","Sylhet",150,150, "10:00","2:30",500),
(802,"Jayantika Express","Sylhet","Dhaka",150,150, "10:00","2:30",500),
(822,"Sundarban Express","Dhaka","Khulna",250,250, "11:00","6:30",700),
(823,"Sundarban Express","Khulna","Dhaka",250,250, "11:00","6:30",700);

update Train_information
set train_name="Subarna Express" where train_id = 702;

Create table Purchase(
purchase_id mediumint primary key auto_increment,
payable_price decimal(6,2),
passenger_id mediumint,
passenger_name varchar(50),
ticket_number mediumint

);


Create table Credit_Card_Info(
credit_card_number varchar(40) primary key ,
credit_card_type varchar(20),
Expiration_date date
);


Create table Mobile_Banking_System(
phone_number char(11) primary key ,
mobile_banking_type varchar(20),
Transaction_id varchar (30)
);


Create table Trip_info(
trip_date date,
start_place varchar(30),
end_place varchar(50),
Duration time,
number_of_stopages smallint, 
name_of_stopage varchar(30),
train_id mediumint

);


Create table admin_info(
admin_id mediumint primary key auto_increment,
admin_name varchar(50),
admin_email varchar(30),
admin_password Varchar(15)

);


Create table admin_login(
Serial_No smallint primary key auto_increment,
admin_name varchar(30),
admin_password Varchar(15)

);

Create table Places(
place_name varchar(30) not null

);


Create table User_review(
user_name varchar(30) not null,
Review varchar(200)
);

Insert into Places(place_name)
values('Dhaka'),('Gopalganj'),('Tangail'),('Kishoregonj'),('Faridpur'),('Narayangonj'),('Joypurhat'),('Rajshahi'),('Natore'),('Ishwardi'),('Ullapara'),('Chittagong'),('Sylhet'),('Mymensingh'),('Singra'),('Sirajgonj'),('Panchagarh'),('Rangpur'),('Laksam'),('Comilla'),('Brahmanbaria'),('Shaistaganj');

drop table Tickets;

alter table train_information
add column available_seat smallint after total_seats;

