CREATE TABLE club_member (
    userID INT AUTO_INCREMENT,
    userType VARCHAR(10) NOT NULL,
    lastName VARCHAR(25) NOT NULL,
    firstName VARCHAR(25) NOT NULL,
    phoneNumber VARCHAR(15) NULL,
    email VARCHAR(60) NULL,

constraint 	ClubMemberPK primary key (userID),
constraint 	ClubMemberAK unique (phoneNumber),
constraint userTypeCheck Check (userType in ('Advisor','Officer','Reserver','Member'))
);

CREATE TABLE reservation (
    userID INT NOT NULL,
    bedNO INT NOT NULL,
    semesterAssigned DATE NOT NULL,

    CONSTRAINT ReservationPK PRIMARY KEY (userID, bedNO),
    CONSTRAINT ReservationFK FOREIGN KEY (userID) 
            REFERENCES club_member(userID)
        	ON UPDATE CASCADE ON DELETE RESTRICT,
    CONSTRAINT FK_BedNo FOREIGN KEY (bedNO) REFERENCES Bed(bedNO)
            ON UPDATE CASCADE 
            ON DELETE RESTRICT
);

Create TABLE garden (
    gardenID INT NOT NULL AUTO_INCREMENT,
    gardenName varchar(30) NOT NULL,
    gardenLocation varchar(30),
    
    CONSTRAINT gardenPK PRIMARY KEY (gardenID)
);

CREATE TABLE Bed (
    bedNO INT NOT NULL, 
    gardenID INT NOT NULL, 
    size INT NOT NULL, 
    soilType VARCHAR(15) NOT NULL,
    bedStatus VARCHAR(15) NOT NULL,

    CONSTRAINT bedPK PRIMARY KEY (bedNo, gardenID), 
    CONSTRAINT bedFK FOREIGN KEY (gardenID) 
        REFERENCES garden(gardenID)
        ON UPDATE CASCADE
        ON DELETE RESTRICT, 
    CONSTRAINT bedSoilType CHECK (soilType IN ('sand-loamy', 'silt-loamy', 'sandy', 'loamy','clay-loamy','clay')),
    CONSTRAINT bedStatus CHECK (bedStatus IN ('Planted', 'Turned', 'Cover Crop', 'Reserved', 'Fertilized'))

    ); 

        
    
    
