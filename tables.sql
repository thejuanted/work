CREATE TABLE club_member (
    userID INT AUTO_INCREMENT,
    userType VARCHAR(10) NOT NULL,
    lastName VARCHAR(15) NOT NULL,
    firstName VARCHAR(15) NOT NULL,
    phoneNumber VARCHAR(15) NULL,
    email VARCHAR(60) NULL,

    -- Constraints
constraint 	ClubMemberPK primary key (userID),
constraint 	ClubMemberAK unique (phoneNumber),
constraint userTypeCheck Check (userType in ('Advisor','Officer','Reserver','Member'))
);
