CREATE TABLE users (
    username VARCHAR(256) NOT NULL,
    domain VARCHAR(256) NOT NULL,
    password VARCHAR(256) NOT NULL,
    PRIMARY KEY (username, domain)
);
