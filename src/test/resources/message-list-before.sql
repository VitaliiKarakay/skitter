delete
from message;

insert into message (id, text, tag, user_id)
    value (1, 'first', 'my-tag', 1),
    (2, 'second', 'tag', 2),
    (3, 'third', 'my-tag', 1),
    (4, 'fourth', 'tag', 2);

alter table message AUTO_INCREMENT = 10;