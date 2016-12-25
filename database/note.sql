-- TRINHTH CREATE DATABASE
DROP DATABASE mynote;
CREATE DATABASE IF NOT EXISTS mynote;

USE mynote;

-- CREATE TABLE USER
CREATE TABLE IF NOT EXISTS users ( userid  INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
                                    email VARCHAR(100) NOT NULL,
                                    name VARCHAR(100) NOT NULL,
                                    password VARCHAR(100) NOT NULL);

CREATE TABLE IF NOT EXISTS roles ( roleid INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
                                    name VARCHAR(20));

CREATE TABLE IF NOT EXISTS user_role ( urid INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
                                        userid INT NOT NULL,
                                        roleid INT NOT NULL);                     

CREATE TABLE IF NOT EXISTS posts ( postid INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
                                    content VARCHAR(50000) NOT NULL,
                                    datecreate DATE,
                                    datemodify DATE,
                                    userid INT,
                                    FOREIGN KEY (userid) REFERENCES users(usersid));                             



-- INSERT DEFAULT VALUE

-- INSERT ADMIN
INSERT INTO users (email,  name, password) VALUES ('hathetrinh@gmail.com', 'admin', MD5('Love0808'));

-- INSERT DEFAULT ROLES (ADMIN, USER)
INSERT INTO roles (name) VALUES ('admin');
INSERT INTO roles (name) VALUES ('user');

-- INSERT ROLE ADMIN FOR ADMIN
INSERT INTO user_role (userid, roleid) VALUES (1, 1);