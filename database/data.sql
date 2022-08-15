-- *****************************************************************************
-- This script contains INSERT statements for populating tables with seed data
-- *****************************************************************************

BEGIN;

-- INSERT statements go here
create table restaurant (
    restaurant_id serial PRIMARY KEY,
    name varchar(255),
    stars int,
    street_address varchar(255),
    city varchar(255),
    state varchar(255),
    zipcode varchar(255),
    category varchar(255)
);

--94043

insert into restaurant (name,
                        stars,
                        street_address,
                        city,
                        state,
                        zipcode,
                        category) values ('Roger Bar & Restaurant',
                                          4,
                                          '800 Moffett Blvd',
                                          'Mountain View',
                                          'CA',
                                          '94043',
                                          'American');
insert into restaurant (name,
                        stars,
                        street_address,
                        city,
                        state,
                        zipcode,
                        category) values ('The Emerald Hour',
                                          5,
                                          '1625 N Shoreline Blvd',
                                          'Mountain View',
                                          'CA',
                                          '94043',
                                          'Spanish');
insert into restaurant (name,
                        stars,
                        street_address,
                        city,
                        state,
                        zipcode,
                        category) values ('Wagon Wheel BBQ',
                                          5,
                                          '861 Leong Dr',
                                          'Mountain View',
                                          'CA',
                                          '94043',
                                          'Barbeque');
insert into restaurant (name,
                        stars,
                        street_address,
                        city,
                        state,
                        zipcode,
                        category) values ('The Fly-By',
                                          5,
                                          '800 Moffett Blvd',
                                          'Mountain View',
                                          'CA',
                                          '94043',
                                          'Cafes');
insert into restaurant (name,
                        stars,
                        street_address,
                        city,
                        state,
                        zipcode,
                        category) values ('Cucina Venti Restaurant',
                                          4,
                                          '1390 Pear Ave Ste D',
                                          'Mountain View',
                                          'CA',
                                          '94043',
                                          'Italian');

-- 94306
insert into restaurant (name,
                        stars,
                        street_address,
                        city,
                        state,
                        zipcode,
                        category) values ('Hobee''s',
                                          4,
                                          '4224 El Camino Real',
                                          'Palo Alto',
                                          'CA',
                                          '94306',
                                          'American');
insert into restaurant (name,
                        stars,
                        street_address,
                        city,
                        state,
                        zipcode,
                        category) values ('Mandarin Roots',
                                          4,
                                          '3345 El Camino Real',
                                          'Palo Alto',
                                          'CA',
                                          '94306',
                                          'Chinese');
insert into restaurant (name,
                        stars,
                        street_address,
                        city,
                        state,
                        zipcode,
                        category) values ('Sushi Tomo',
                                          4,
                                          '4131 El Camino Way',
                                          'Palo Alto',
                                          'CA',
                                          '94306',
                                          'Japanese');

insert into restaurant (name,
                        stars,
                        street_address,
                        city,
                        state,
                        zipcode,
                        category) values ('Siam Fine Thai Cuisine',
                                          4,
                                          '3924 El Camino Real',
                                          'Palo Alto',
                                          'CA',
                                          '94306',
                                          'Thai');

insert into restaurant (name,
                        stars,
                        street_address,
                        city,
                        state,
                        zipcode,
                        category) values ('Sanchos''Taqueria',
                                          4,
                                          '2723 Middlefield Rd',
                                          'Palo Alto',
                                          'CA',
                                          '94306',
                                          'Mexican');
create table schedule (
    restaurant_id int,
    day_of_week int,
    time_open time,
    time_closed time,
    FOREIGN KEY (restaurant_id) REFERENCES restaurant (restaurant_id)
);


COMMIT;