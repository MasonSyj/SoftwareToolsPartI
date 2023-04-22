DROP TABLE IF EXISTS Candidate;
DROP TABLE IF EXISTS Party;
DROP TABLE IF EXISTS Ward;

CREATE TABLE Ward (
    id INTEGER PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) UNIQUE NOT NULL,
    electorate INTEGER NOT NULL
);

CREATE TABLE Party (
    id INTEGER PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) UNIQUE NOT NULL
);

CREATE TABLE Candidate (
    id INTEGER PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) UNIQUE NOT NULL,
    party INTEGER,
    ward INTEGER,
    votes INTEGER,
    FOREIGN KEY (party) references Party(id),
    FOREIGN KEY (ward) references Ward(id)
);
    