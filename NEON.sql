create database NEON;
use NEON;

create table users_tlb (
    user_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    user_firstname VARCHAR(40) NOT NULL,
    user_lastname VARCHAR(40) NOT NULL,
    user_email VARCHAR(60) NOT NULL,
    user_password VARBINARY(256)
);

INSERT INTO NEON.users_tlb (user_firstname, user_lastname, user_email, user_password)
VALUES (UPPER('pablo'), UPPER('gomez'), 'pabgomez2000@gmail.com', AES_ENCRYPT('password','$2a$12$0BIhaYgJ9rTTPnzcoYW4texXnkQNdimS8l9TrFmIQeSM2zp9OtZQm'));
INSERT INTO NEON.users_tlb (user_firstname, user_lastname, user_email, user_password)
VALUES (UPPER('jose'), UPPER('fino'), 'jose.fino896@gmail.com', AES_ENCRYPT('password','$2a$12$0BIhaYgJ9rTTPnzcoYW4texXnkQNdimS8l9TrFmIQeSM2zp9OtZQm'));

SELECT *, CAST(AES_DECRYPT(user_password,'$2a$12$0BIhaYgJ9rTTPnzcoYW4texXnkQNdimS8l9TrFmIQeSM2zp9OtZQm') AS CHAR(50)) end_data FROM users_tlb WHERE user_id = 1;
DROP DATABASE NEON;
select * from users_tlb;

