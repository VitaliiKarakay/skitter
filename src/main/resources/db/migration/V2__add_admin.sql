insert into usr (id, username, password, active, email)
values (1, 'admin', 'admin', 1, 'example@gmail.com');

insert into user_role (user_id, roles)
values (1, 'ADMIN'), (1, 'USER');