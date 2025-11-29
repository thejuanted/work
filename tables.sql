CREATE TABLE club_member (
    userID INT AUTO_INCREMENT,
    userType VARCHAR(10) NOT NULL,
    lastName VARCHAR(50) NOT NULL,
    firstName VARCHAR(50) NOT NULL,
    phoneNumber VARCHAR(15) NOT NULL,
    email VARCHAR(100) NOT NULL,

    -- Constraints
    CONSTRAINT chk_userType CHECK (userType IN ('Advisor', 'Officer', 'Reserver', 'Member')),
    CONSTRAINT uq_phoneNumber UNIQUE (phoneNumber),
    CONSTRAINT pk_userID PRIMARY KEY (userID)
);
