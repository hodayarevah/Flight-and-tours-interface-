drop table  Tours_CS
--SELECT * FROM  Tours_CS


CREATE table Airlines_CS(
AirlineCode nvarchar(90) primary key,
AirlineName nvarchar(90)
)


create table Airports_CS(
AirportCode nvarchar(90) primary key,
Airportname nvarchar(100),
Longitude nvarchar(15),
Latitudes nvarchar(15),
City nvarchar(80),
Country nvarchar(50),
)

 create table MyFlights_CS(
 FlightPath nvarchar(400) primary key,
 AirportFrom nvarchar(90) REFERENCES Airports_CS(AirportCode),
 AirportTo nvarchar(90) REFERENCES Airports_CS(AirportCode),
 DepTime nvarchar(90), 
 ArriveTime nvarchar(90), 
 Duration nvarchar(20),
 Price int ,
 LegsNumber int ,
 FOREIGN KEY (AirportFrom) REFERENCES Airports_CS(AirportCode),
 FOREIGN KEY (AirportTo) REFERENCES Airports_CS(AirportCode)
)



create Table Legs_CS
(
id nvarchar(90) primary key,
fullpathid nvarchar(400),
legnumber int,
flight_no nvarchar(10),
fromairport nvarchar(90) REFERENCES Airports_CS(AirportCode),
toairport nvarchar(90) REFERENCES Airports_CS(AirportCode),
airlinecode nvarchar (90),
DepTime nvarchar(90),
ArriveTime nvarchar(90),
Duration nvarchar(90),
FOREIGN KEY (fullpathid) REFERENCES MyFlights_CS(FlightPath),
FOREIGN KEY (airlinecode) REFERENCES Airlines_CS(AirlineCode),

)

Create Table Manager_CS
(
    username nvarchar(15) primary key,
    password nvarchar(10),

)

create Table Discount_CS(
id int IDENTITY(0,1),
AirlineCode nvarchar(90) ,
AirportCFrom nvarchar(90) ,
AirportCTo nvarchar(90) ,
DateFrom nvarchar(90),
DateTo nvarchar(90),
discountA float
FOREIGN KEY (AirlineCode) REFERENCES Airlines_CS(AirlineCode),
 FOREIGN KEY (AirportCFrom) REFERENCES Airports_CS(AirportCode),
 FOREIGN KEY (AirportCTo) REFERENCES Airports_CS(AirportCode),
 PRIMARY KEY (AirlineCode,AirportCFrom,AirportCTo,DateFrom,DateTo)


)


create Table MyOrder_CS
(
flightId nvarchar(400),
passengersName nvarchar(90),
userEmail nvarchar(90),
datesubmit  nvarchar(90), 
fTour  nvarchar(40),
sTour nvarchar(40),
tTour nvarchar(40),
FOREIGN KEY (flightId) REFERENCES MyFlights_CS(FlightPath),
primary key(userEmail,flightId)
)
INSERT INTO Manager_CS
VALUES ('hodaya', 'hodaya');

create table Tours_CS(
Id int IDENTITY(0,1) primary key,
IdTour nvarchar(50),
Country nvarchar(15),
TypeTours nvarchar(50),
Price float,
Currency nvarchar(10),
NameTours nvarchar(90),
ImgUrl nvarchar(200),
Score float,
Duration int,
Category nvarchar(20)
)