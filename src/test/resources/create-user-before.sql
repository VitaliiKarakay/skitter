delete
from user_role;
delete
from usr;

insert into usr(id, active, password, username, email)
values (1, true, '21232f297a57a5a743894a0e4a801fc3', 'admin', 'some@some.com'),
       (2, true, '21232f297a57a5a743894a0e4a801fc3', 'mike', 'some@some.com');

insert into user_role (user_id, roles)
values (1, 'ADMIN'), (1, 'USER'),
       (2, 'USER');
