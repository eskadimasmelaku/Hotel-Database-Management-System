CREATE DATABASE HOTELE_MANAGEMENT

CREATE TABLE HOTEL (
    hotel_No VARCHAR(12) PRIMARY KEY NOT NULL,
    Name VARCHAR(50) NOT NULL,
    H_Address VARCHAR(100) NOT NULL
);

CREATE TABLE Room (
    Room_No VARCHAR(22) PRIMARY KEY NOT NULL,
    R_type VARCHAR(20) NOT NULL,
    price FLOAT NOT NULL,
    hotel_No VARCHAR(12) NOT NULL,
    FOREIGN KEY (hotel_No) REFERENCES HOTEL(hotel_No)
);

CREATE TABLE Guest (
    Guest_no VARCHAR(21) PRIMARY KEY NOT NULL,
    Name VARCHAR(50) NOT NULL,
    Guest_address VARCHAR(255) NOT NULL
);

CREATE TABLE Booking (
    hotel_No VARCHAR(12) NOT NULL,
    Guest_no VARCHAR(21) NOT NULL,
    Date_From DATE NOT NULL,
    Date_To DATE NOT NULL,
    Room_No VARCHAR(22) NOT NULL,
    PRIMARY KEY (hotel_No, Guest_no, Date_From, Room_No),
    FOREIGN KEY (hotel_No) REFERENCES HOTEL(hotel_No),
    FOREIGN KEY (Guest_no) REFERENCES Guest(Guest_no),
    FOREIGN KEY (Room_No) REFERENCES Room(Room_No)
);



INSERT INTO HOTEL (hotel_No, Name, H_Address) VALUES ('H1', 'Sheraton Addis', 'Addis Ababa');
INSERT INTO HOTEL (hotel_No, Name, H_Address) VALUES ('H2', 'Hilton', 'Addis Ababa');
INSERT INTO HOTEL (hotel_No, Name, H_Address) VALUES ('H3', 'Jupiter', 'Addis Ababa');
INSERT INTO HOTEL (hotel_No, Name, H_Address) VALUES ('H4', 'Haile Resort', 'Awasa');
INSERT INTO HOTEL (hotel_No, Name, H_Address) VALUES ('H5', 'Kuriftu', 'Deberezit');



INSERT INTO Room (Room_No, R_type, price, hotel_No) VALUES ('R1', 'single', 1000, 'H1');
INSERT INTO Room (Room_No, R_type, price, hotel_No) VALUES ('R10', 'VIP familly', 6000, 'H1');
INSERT INTO Room (Room_No, R_type, price, hotel_No) VALUES ('R11', 'VIP single', 4000, 'H1');
INSERT INTO Room (Room_No, R_type, price, hotel_No) VALUES ('R13', 'single', 1000, 'H3');
INSERT INTO Room (Room_No, R_type, price, hotel_No) VALUES ('R2', 'familly', 2000, 'H1');
INSERT INTO Room (Room_No, R_type, price, hotel_No) VALUES ('R3', 'familly', 3000, 'H1');
INSERT INTO Room (Room_No, R_type, price, hotel_No) VALUES ('R4', 'familly', 2000, 'H2');
INSERT INTO Room (Room_No, R_type, price, hotel_No) VALUES ('R5', 'familly', 2500, 'H2');
INSERT INTO Room (Room_No, R_type, price, hotel_No) VALUES ('R6', 'familly', 2500, 'H4');
INSERT INTO Room (Room_No, R_type, price, hotel_No) VALUES ('R7', 'familly', 3000, 'H4');
INSERT INTO Room (Room_No, R_type, price, hotel_No) VALUES ('R8', 'single', 1500, 'H4');
INSERT INTO Room (Room_No, R_type, price, hotel_No) VALUES ('R9', 'single', 1500, 'H5');

INSERT INTO Guest (Guest_no, Name, Guest_address) VALUES ('G1', 'Abel Efrem', 'A.A');
INSERT INTO Guest (Guest_no, Name, Guest_address) VALUES ('G2', 'Hana Zewde', 'A.A');
INSERT INTO Guest (Guest_no, Name, Guest_address) VALUES ('G3', 'Mulualem Awel', 'Jima');
INSERT INTO Guest (Guest_no, Name, Guest_address) VALUES ('G4', 'Cheru Lemma', 'A.A');
INSERT INTO Guest (Guest_no, Name, Guest_address) VALUES ('G5', 'Sintayehu Geremew', 'A.A');
INSERT INTO Guest (Guest_no, Name, Guest_address) VALUES ('G6', 'Sileshi Tsegaye', 'Bahirdar');
INSERT INTO Guest (Guest_no, Name, Guest_address) VALUES ('G7', 'Teklay Nigus', 'Bahirdar');
INSERT INTO Guest (Guest_no, Name, Guest_address) VALUES ('G8', 'Eskadimas Melaku', 'A.A');


INSERT INTO Booking (hotel_No, Guest_no, Date_From, Date_To, Room_No) VALUES ('H1', 'G3', '2024-06-02', '2024-06-08', 'R1');
INSERT INTO Booking (hotel_No, Guest_no, Date_From, Date_To, Room_No) VALUES ('H1', 'G6', '2024-06-02', '2024-06-07', 'R2');
INSERT INTO Booking (hotel_No, Guest_no, Date_From, Date_To, Room_No) VALUES ('H1', 'G1', '2024-06-02', '2024-06-06', 'R3');
INSERT INTO Booking (hotel_No, Guest_no, Date_From, Date_To, Room_No) VALUES ('H2', 'G2', '2024-06-02', '2024-06-08', 'R4');
INSERT INTO Booking (hotel_No, Guest_no, Date_From, Date_To, Room_No) VALUES ('H2', 'G4', '2024-06-02', '2024-06-08', 'R5');
INSERT INTO Booking (hotel_No, Guest_no, Date_From, Date_To, Room_No) VALUES ('H4', 'G7', '2024-06-02', '2024-06-08', 'R6');
INSERT INTO Booking (hotel_No, Guest_no, Date_From, Date_To, Room_No) VALUES ('H4', 'G5', '2024-06-02', '2024-06-08', 'R7');
INSERT INTO Booking (hotel_No, Guest_no, Date_From, Date_To, Room_No) VALUES ('H5', 'G1', '2024-06-02', '2024-06-08', 'R8');
INSERT INTO Booking (hotel_No, Guest_no, Date_From, Date_To, Room_No) VALUES ('H1', 'G1', '2024-06-02', '2024-06-15', 'R9');
INSERT INTO Booking (hotel_No, Guest_no, Date_From, Date_To, Room_No) VALUES ('H1', 'G2', '2024-06-02', '2024-06-15', 'R10');