-- *****************************************************************************
-- This script contains INSERT statements for populating tables with seed data
-- *****************************************************************************

BEGIN;
DROP TABLE IF EXISTS restaurant CASCADE;
DROP TABLE IF EXISTS schedule CASCADE;
DROP TABLE IF EXISTS events CASCADE;
DROP TABLE IF EXISTS event_user_id CASCADE;

--relational event and user id table statements;
create table event_user_id (
    event_id serial PRIMARY KEY,
    user_id int,
    FOREIGN KEY (user_id) REFERENCES app_user (id)


);




-- INSERT statements go here
create table restaurant (
                            restaurant_id serial PRIMARY KEY,
                            name varchar(255),
                            stars int,
                            street_address varchar(255),
                            city varchar(255),
                            state varchar(255),
                            zipcode varchar(255),
                            category varchar(255),
                            phone_number varchar(255)
);

--Event table statements

create table events (
    event_id int,
    host_name varchar(255),
    restaurant_id int,
    likes int,
    dislikes int,
    deadline date,
    FOREIGN KEY (event_id) REFERENCES event_user_id (event_id),
    FOREIGN KEY (restaurant_id) REFERENCES restaurant (restaurant_id)
);

--94043

insert into restaurant (name,
                        stars,
                        street_address,
                        city,
                        state,
                        zipcode,
                        category,
                        phone_number) values ('Roger Bar & Restaurant',
                                              4,
                                              '800 Moffett Blvd',
                                              'Mountain View',
                                              'CA',
                                              '94043',
                                              'American',
                                              '(650) 744-1030');
insert into restaurant (name,
                        stars,
                        street_address,
                        city,
                        state,
                        zipcode,
                        category,
                        phone_number) values ('The Emerald Hour',
                                              5,
                                              '1625 N Shoreline Blvd',
                                              'Mountain View',
                                              'CA',
                                              '94043',
                                              'Spanish',
                                              '(650) 420-2600');
insert into restaurant (name,
                        stars,
                        street_address,
                        city,
                        state,
                        zipcode,
                        category,
                        phone_number) values ('Wagon Wheel BBQ',
                                              5,
                                              '861 Leong Dr',
                                              'Mountain View',
                                              'CA',
                                              '94043',
                                              'Barbeque',
                                              '(650) 988-0400');
insert into restaurant (name,
                        stars,
                        street_address,
                        city,
                        state,
                        zipcode,
                        category,
                        phone_number) values ('The Fly-By',
                                              5,
                                              '800 Moffett Blvd',
                                              'Mountain View',
                                              'CA',
                                              '94043',
                                              'Cafes',
                                              '(650) 880-1000');
insert into restaurant (name,
                        stars,
                        street_address,
                        city,
                        state,
                        zipcode,
                        category,
                        phone_number) values ('Cucina Venti Restaurant',
                                              4,
                                              '1390 Pear Ave Ste D',
                                              'Mountain View',
                                              'CA',
                                              '94043',
                                              'Italian',
                                              '(650) 254-1120');

-- 94306
insert into restaurant (name,
                        stars,
                        street_address,
                        city,
                        state,
                        zipcode,
                        category,
                        phone_number) values ('Hobee''s',
                                              4,
                                              '4224 El Camino Real',
                                              'Palo Alto',
                                              'CA',
                                              '94306',
                                              'American',
                                              '(650) 856-6124');
insert into restaurant (name,
                        stars,
                        street_address,
                        city,
                        state,
                        zipcode,
                        category,
                        phone_number) values ('Mandarin Roots',
                                              4,
                                              '3345 El Camino Real',
                                              'Palo Alto',
                                              'CA',
                                              '94306',
                                              'Chinese',
                                              '(650) 565-8868');
insert into restaurant (name,
                        stars,
                        street_address,
                        city,
                        state,
                        zipcode,
                        category,
                        phone_number) values ('Sushi Tomo',
                                              4,
                                              '4131 El Camino Way',
                                              'Palo Alto',
                                              'CA',
                                              '94306',
                                              'Japanese',
                                              '(650) 856-1100');

insert into restaurant (name,
                        stars,
                        street_address,
                        city,
                        state,
                        zipcode,
                        category,
                        phone_number) values ('Siam Fine Thai Cuisine',
                                              4,
                                              '3924 El Camino Real',
                                              'Palo Alto',
                                              'CA',
                                              '94306',
                                              'Thai',
                                              '(650) 812-0139');

insert into restaurant (name,
                        stars,
                        street_address,
                        city,
                        state,
                        zipcode,
                        category,
                        phone_number) values ('Sancho''s Taqueria',
                                              4,
                                              '2723 Middlefield Rd',
                                              'Palo Alto',
                                              'CA',
                                              '94306',
                                              'Mexican',
                                              '(650) 324-8226');
insert into restaurant (name,
                        stars,
                        street_address,
                        city,
                        state,
                        zipcode,
                        category,
                        phone_number) values ('Dinah''s Poolside Restaurant',
                                              5,
                                              '4261 El Camino Real',
                                              'Palo Alto',
                                              'CA',
                                              '94306',
                                              'American',
                                              '(650) 493-2844');

create table schedule (
                          restaurant_id int,
                          day_of_week int,
                          time_open time,
                          time_closed time,
                          FOREIGN KEY (restaurant_id) REFERENCES restaurant (restaurant_id)
);

-- restaurant id 1

insert into schedule (restaurant_id,
                      day_of_week,
                      time_open,
                      time_closed) values (1,
                                           1,
                                           '10:00',
                                           '23:59');
insert into schedule (restaurant_id,
                      day_of_week,
                      time_open,
                      time_closed) values (1,
                                           2,
                                           '16:00',
                                           '23:59');
insert into schedule (restaurant_id,
                      day_of_week,
                      time_open,
                      time_closed) values (1,
                                           3,
                                           '16:00',
                                           '23:59');
insert into schedule (restaurant_id,
                      day_of_week,
                      time_open,
                      time_closed) values (1,
                                           4,
                                           '16:00',
                                           '23:59');
insert into schedule (restaurant_id,
                      day_of_week,
                      time_open,
                      time_closed) values (1,
                                           5,
                                           '16:00',
                                           '23:59');
insert into schedule (restaurant_id,
                      day_of_week,
                      time_open,
                      time_closed) values (1,
                                           6,
                                           '16:00',
                                           '23:59');
insert into schedule (restaurant_id,
                      day_of_week,
                      time_open,
                      time_closed) values (1,
                                           7,
                                           '10:00',
                                           '23:59');

-- restaurant id 2

insert into schedule (restaurant_id,
                      day_of_week,
                      time_open,
                      time_closed) values (2,
                                           1,
                                           '16:00',
                                           '22:00');
insert into schedule (restaurant_id,
                      day_of_week,
                      time_open,
                      time_closed) values (2,
                                           2,
                                           '16:00',
                                           '22:00');
insert into schedule (restaurant_id,
                      day_of_week,
                      time_open,
                      time_closed) values (2,
                                           3,
                                           '16:00',
                                           '22:00');
insert into schedule (restaurant_id,
                      day_of_week,
                      time_open,
                      time_closed) values (2,
                                           4,
                                           '16:00',
                                           '22:00');
insert into schedule (restaurant_id,
                      day_of_week,
                      time_open,
                      time_closed) values (2,
                                           5,
                                           '16:00',
                                           '22:00');
insert into schedule (restaurant_id,
                      day_of_week,
                      time_open,
                      time_closed) values (2,
                                           6,
                                           '16:00',
                                           '22:00');
insert into schedule (restaurant_id,
                      day_of_week,
                      time_open,
                      time_closed) values (2,
                                           7,
                                           '16:00',
                                           '22:00');

-- restaurant id 3

insert into schedule (restaurant_id,
                      day_of_week,
                      time_open,
                      time_closed) values (3,
                                           1,
                                           '07:00',
                                           '21:00');
insert into schedule (restaurant_id,
                      day_of_week,
                      time_open,
                      time_closed) values (3,
                                           2,
                                           '07:00',
                                           '21:00');
insert into schedule (restaurant_id,
                      day_of_week,
                      time_open,
                      time_closed) values (3,
                                           3,
                                           '07:00',
                                           '21:00');
insert into schedule (restaurant_id,
                      day_of_week,
                      time_open,
                      time_closed) values (3,
                                           4,
                                           '07:00',
                                           '21:00');
insert into schedule (restaurant_id,
                      day_of_week,
                      time_open,
                      time_closed) values (3,
                                           5,
                                           '07:00',
                                           '21:00');
insert into schedule (restaurant_id,
                      day_of_week,
                      time_open,
                      time_closed) values (3,
                                           6,
                                           '07:00',
                                           '21:00');
insert into schedule (restaurant_id,
                      day_of_week,
                      time_open,
                      time_closed) values (3,
                                           7,
                                           '07:00',
                                           '21:00');

-- restaurant id 4

insert into schedule (restaurant_id,
                      day_of_week,
                      time_open,
                      time_closed) values (4,
                                           1,
                                           '07:00',
                                           '18:00');
insert into schedule (restaurant_id,
                      day_of_week,
                      time_open,
                      time_closed) values (4,
                                           2,
                                           '07:00',
                                           '18:00');
insert into schedule (restaurant_id,
                      day_of_week,
                      time_open,
                      time_closed) values (4,
                                           3,
                                           '07:00',
                                           '18:00');
insert into schedule (restaurant_id,
                      day_of_week,
                      time_open,
                      time_closed) values (4,
                                           4,
                                           '07:00',
                                           '18:00');
insert into schedule (restaurant_id,
                      day_of_week,
                      time_open,
                      time_closed) values (4,
                                           5,
                                           '07:00',
                                           '18:00');
insert into schedule (restaurant_id,
                      day_of_week,
                      time_open,
                      time_closed) values (4,
                                           6,
                                           '07:00',
                                           '18:00');
insert into schedule (restaurant_id,
                      day_of_week,
                      time_open,
                      time_closed) values (4,
                                           7,
                                           '07:00',
                                           '18:00');

-- restaurant id 5

insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (5,1,'11:00','22:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (5,2,'11:00','21:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (5,3,'11:00','21:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (5,4,'11:00','21:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (5,5,'11:00','21:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (5,6,'11:00','22:00');
insert into schedule (restaurant_id, day_of_week,time_open,time_closed) values (5,7,'11:00','22:00');
--restaurant id 6
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (6,1,'08:00','15:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (6,2,'08:00','14:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (6,3,'08:00','14:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (6,4,'08:00','14:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (6,5,'08:00','14:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (6,6,'08:00','14:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (6,7,'08:00','15:00');

--restaurant id 7
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (7,1,'11:00','20:30');
--insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (7,2,'08:00','14:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (7,3,'11:00','20:30');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (7,4,'11:00','20:30');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (7,5,'11:00','20:30');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (7,6,'11:00','21:30');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (7,7,'11:00','21:30');

--restaurant id 8
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (8,1,'12:30','21:00');
--insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (8,2,'12:30','21:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (8,3,'11:30','21:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (8,4,'11:30','21:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (8,5,'11:30','21:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (8,6,'11:30','21:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (8,7,'11:00','21:00');

--restaurant id 9
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (9,1,'11:00','21:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (9,2,'16:00','21:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (9,3,'16:00','21:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (9,4,'11:00','21:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (9,5,'11:00','21:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (9,6,'11:00','21:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (9,7,'11:00','21:00');

--restaurant id 10
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (10,1,'10:30','19:30');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (10,2,'10:30','21:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (10,3,'10:30','21:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (10,4,'10:30','21:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (10,5,'10:30','21:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (10,6,'10:30','21:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (10,7,'11:00','21:00');


--restaurant id 11
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (11,1,'08:00','21:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (11,2,'08:00','21:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (11,3,'08:00','21:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (11,4,'08:00','21:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (11,5,'08:00','21:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (11,6,'08:00','21:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (11,7,'08:00','21:00');

GRANT ALL PRIVILEGES ON ALL TABLES IN SCHEMA public TO capstone_appuser;
GRANT USAGE, SELECT ON ALL SEQUENCES IN SCHEMA public TO capstone_appuser;
GRANT USAGE, SELECT ON ALL SEQUENCES IN SCHEMA public TO capstone_owner;

COMMIT;