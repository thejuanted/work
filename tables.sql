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
    CONSTRAINT ReservationFK FOREIGN KEY (userID) REFERENCES club_member(userID)
        	ON UPDATE CASCADE ON DELETE RESTRICT,
    CONSTRAINT FK_BedNo FOREIGN KEY (bedNO) REFERENCES Bed(bedNO)
            ON UPDATE CASCADE ON DELETE RESTRICT
);
