-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2022-04-09 06:50:17.042

-- tables
-- Table: Booking
CREATE TABLE Booking (
    Booking_Id int  NOT NULL,
    Booking_Date date  NOT NULL,
    Status varchar(15)  NOT NULL,
    Customer_Customer_Id int  NOT NULL,
    CONSTRAINT Booking_pk PRIMARY KEY (Booking_Id)
);

-- Table: Customer
CREATE TABLE Customer (
    Customer_Id int  NOT NULL,
    Customer_Name varchar(30)  NOT NULL,
    Address varchar(100)  NOT NULL,
    CONSTRAINT Customer_pk PRIMARY KEY (Customer_Id)
);

-- Table: Location
CREATE TABLE Location (
    Location_Id int  NOT NULL,
    Location_Name varchar(25)  NOT NULL,
    Location_Address varchar(100)  NOT NULL,
    Room_Room_Id int  NOT NULL,
    CONSTRAINT Location_pk PRIMARY KEY (Location_Id)
);

-- Table: Payment
CREATE TABLE Payment (
    Payment_Id int  NOT NULL,
    Payment_Type varchar(20)  NOT NULL,
    Amount decimal  NOT NULL,
    Customer_Customer_Id int  NOT NULL,
    Room_Room_Id int  NOT NULL,
    CONSTRAINT Payment_pk PRIMARY KEY (Payment_Id)
);

-- Table: Room
CREATE TABLE Room (
    Room_Id int  NOT NULL,
    Room_Number varchar(25)  NOT NULL,
    Room_Type varchar(25)  NOT NULL,
    Customer_Customer_Id int  NOT NULL,
    CONSTRAINT Room_pk PRIMARY KEY (Room_Id)
);

-- foreign keys
-- Reference: Booking_Customer (table: Booking)
ALTER TABLE Booking ADD CONSTRAINT Booking_Customer
    FOREIGN KEY (Customer_Customer_Id)
    REFERENCES Customer (Customer_Id)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: Location_Room (table: Location)
ALTER TABLE Location ADD CONSTRAINT Location_Room
    FOREIGN KEY (Room_Room_Id)
    REFERENCES Room (Room_Id)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: Payment_Customer (table: Payment)
ALTER TABLE Payment ADD CONSTRAINT Payment_Customer
    FOREIGN KEY (Customer_Customer_Id)
    REFERENCES Customer (Customer_Id)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: Payment_Room (table: Payment)
ALTER TABLE Payment ADD CONSTRAINT Payment_Room
    FOREIGN KEY (Room_Room_Id)
    REFERENCES Room (Room_Id)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: Room_Customer (table: Room)
ALTER TABLE Room ADD CONSTRAINT Room_Customer
    FOREIGN KEY (Customer_Customer_Id)
    REFERENCES Customer (Customer_Id)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- End of file.

