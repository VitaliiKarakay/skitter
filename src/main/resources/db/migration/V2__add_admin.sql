insert into usr (id, username, password, active, email)
values (1, 'admin', '{bcrypt}$2a$08$dQ1wBCxi4/8yrCgsf6NKTOVTJob6je0XmmgQ./RIklpXsL3waoGM2', 1, 'example@gmail.com');

insert into user_role (user_id, roles)
values (1, 'ADMIN'), (1, 'USER');