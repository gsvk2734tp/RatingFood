DELETE
FROM user_roles;
DELETE
FROM feed_types;
DELETE
FROM feed;
DELETE
FROM users;
ALTER SEQUENCE global_seq RESTART WITH 100000;

INSERT INTO users(name, email, password)
VALUES ('User', 'user@ya.ru', '{noop}password'),
       ('Admin', 'admin@gmail.com', '{noop}admin');

INSERT INTO user_roles (role, user_id)
VALUES ('ROLE_USER', 100000),
       ('ROLE_ADMIN', 100001),
       ('ROLE_USER', 100001);

INSERT INTO feed (user_id, name,  description, price, ranking, photourl)
VALUES (100000, 'Kronenbourg 1664', 'Пшеничное пиво', 70, 9, '123'),
       (100000, 'Guinness', 'Темный  стаут', 130, 4, '123'),
       (100000, 'Эль Мохнатый Шмель', 'Эль светный нефильтрованный', 40, 6, '123'),
       (100000, 'Hoegaarden', 'Пшеничное пиво', 70, 7, '123'),
       (100001, 'Hoegaarden грейпфрут', 'Пшеничное пиво', 70, 8, '123'),
       (100001, 'Lefebvre Belgian Kriek', 'Красное вишневое', 180, 9, '123');

INSERT INTO feed_types(type, feed_id)
VALUES ('TYPE_BEER', 100002),
       ('TYPE_BEER', 100003),
       ('TYPE_BEER', 100004),
       ('TYPE_BEER', 100005),
       ('TYPE_BEER', 100006),
       ('TYPE_BEER', 100007);