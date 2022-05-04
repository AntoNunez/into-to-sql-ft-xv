CREATE DATABASE prueba;


CREATE TABLE users (
    id INTEGER NOT NULL AUTO_INCREMENT,
    username VARCHAR(255) NOT NULL,
    password VARCHAR(255) NOT NULL,
    email VARCHAR(120),
    PRIMARY KEY(id),
    UNIQUE KEY(email)
);

-- SELECT * FROM table_name; 

-- INSERT INTO table_name (fields...,) VALUES (values...,);

-- UPDATE table_name SET field=valu..., field=value WHERE id=?;

-- DELETE FROM table_name WHERE field=value;

SELECT * FROM users WHERE id=2;

INSERT INTO users (username, password, email) VALUES ('lrodriguez', '123456', 'lrodriguez@4geeks.co');
INSERT INTO users (username, password, email) VALUES ('santiago', '123456', 'santiago@gmail.com');



UPDATE users SET password='654321' WHERE id=2;

BEGIN; -- INICIA TRANSACCION

DELETE FROM users WHERE id=2;

ROLLBACK; -- 