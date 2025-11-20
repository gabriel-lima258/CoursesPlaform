INSERT INTO tb_user (name, email, password) VALUES ('Maria Brown', 'maria@gmail.com', '$2a$10$BZEayVp6X1Ry93e44/Rnze0hpK5J3ThbAdUm2OzH.GSWjA4zmtGHW');
INSERT INTO tb_user (name, email, password) VALUES ('Alex Green', 'alex@gmail.com', '$2a$10$BZEayVp6X1Ry93e44/Rnze0hpK5J3ThbAdUm2OzH.GSWjA4zmtGHW');
INSERT INTO tb_user (name, email, password) VALUES ('Gabriel Lima', 'gabriel58221@gmail.com', '$2a$10$BZEayVp6X1Ry93e44/Rnze0hpK5J3ThbAdUm2OzH.GSWjA4zmtGHW');

INSERT INTO tb_role (authority) VALUES ('ROLE_STUDENT');
INSERT INTO tb_role (authority) VALUES ('ROLE_INSTRUCTOR');
INSERT INTO tb_role (authority) VALUES ('ROLE_ADMIN');

INSERT INTO tb_user_role (user_id , role_id) VALUES (1, 1);
INSERT INTO tb_user_role (user_id , role_id) VALUES (2, 1);
INSERT INTO tb_user_role (user_id , role_id) VALUES (2, 2);
INSERT INTO tb_user_role (user_id , role_id) VALUES (3, 1);
INSERT INTO tb_user_role (user_id , role_id) VALUES (3, 2);
INSERT INTO tb_user_role (user_id , role_id) VALUES (3, 3);
