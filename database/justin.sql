-- Mountain View - American Inserts - Justin
insert into restaurant (name,stars,street_address,city,state,zipcode,category,phone_number)
    values ('Eureka!',4,'191 Castro St.','Mountain View','CA','94041','American','(650) 744-2839');

insert into restaurant (name,stars,street_address,city,state,zipcode,category, phone_number)
    values ('The Melt', 5,'1711 W El Camino Real','Mountain View','CA','94040','American','(855) 384-2868');

insert into restaurant (name,stars,street_address,city,state,zipcode,category,phone_number)
    values ('Steins Beer Garden & Restaurant',3,'895 Villa St.','Mountain View','CA','94041','American','(650) 963-9568');

insert into restaurant (name,stars,street_address,city,state,zipcode,category,phone_number)
    values ('Scratch',4,'401 Castro St','Mountain View','CA','94041','American','(650) 237-3121)');

--Schedule inserts for Mountain View American ^^
-- Eureka
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (12,1,'11:00','23:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (12,2,'11:00','23:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (12,3,'11:00','23:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (12,4,'11:00','24:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (12,5,'11:00','01:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (12,6,'11:00','02:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (12,7,'11:00','23:00');
-- The Melt
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (13,1,'11:00','24:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (13,2,'11:00','24:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (13,3,'11:00','24:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (13,4,'11:00','24:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (13,5,'11:00','24:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (13,6,'11:00','24:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (13,7,'11:00','24:00');
-- Steins Beer Garden
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (14,1,'11:30','22:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (14,2,'11:30','22:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (14,3,'11:30','22:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (14,4,'11:30','23:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (14,5,'11:30','23:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (14,6,'10:00','23:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (14,7,'10:00','21:00');
-- Scratch
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (15,1,'16:00','22:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (15,2,'16:00','21:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (15,3,'16:00','21:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (15,4,'16:00','21:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (15,5,'16:00','21:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (15,6,'10:00','22:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (15,7,'10:00','22:00');

--Mountain View Spanish Inserts - Justin

insert into restaurant (name,stars,street_address,city,state,zipcode,category,phone_number)
    values ('Cascal',3,'400 Castro St','Mountain View','CA','94041','Spanish','(650) 940-9500');

--Schedule Insert for Mountain View Spanish

-- Cascal
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (16,1,'11:30','21:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (16,2,'11:30','21:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (16,3,'11:30','21:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (16,4,'11:30','21:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (16,5,'11:30','22:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (16,6,'11:30','22:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (16,7,'11:30','21:00');

-- Mountain View Inserts for Barbeque

insert into restaurant (name,stars,street_address,city,state,zipcode,category,phone_number)
values ('QBB - Quality Bourbon & Barbeque',4,'216 Castro St','Mountain View','CA','94041','Barbeque','(650) 969-1112');

insert into restaurant (name,stars,street_address,city,state,zipcode,category,phone_number)
values ('Bills Family Barbeque',5,'1905 Old Middlefield Way ','Mountain View','CA','94043','Barbeque','(650) 963-4111');

insert into restaurant (name,stars,street_address,city,state,zipcode,category,phone_number)
values ('Harold''s Ribs',4,'2690 W El Camino Real','Mountain View','CA','94040','Barbeque','(650) 941-0590');

-- Schedule Inserts for Mountain View Barbeque
-- QBB
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (17,1,'11:30','20:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (17,2,'11:30','20:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (17,3,'11:30','20:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (17,4,'11:30','20:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (17,5,'11:30','20:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (17,6,'11:30','20:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (17,7,'11:30','20:00');
-- Bills Family BBQ
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (18,1,'11:30','19:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (18,2,'11:30','19:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (18,3,'11:30','19:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (18,4,'11:30','19:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (18,5,'11:30','19:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (18,6,'11:30','19:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (18,7,'11:30','19:00');
-- Harolds Ribs
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (19,1,'11:00','19:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (19,2,'11:00','19:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (19,3,'11:00','19:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (19,4,'11:00','19:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (19,5,'11:00','19:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (19,6,'11:00','19:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (19,7,'11:00','19:00');

-- Mountain View inserts for Cafes
insert into restaurant (name,stars,street_address,city,state,zipcode,category,phone_number)
values ('Alexander''s Patisserie',4,'209 Castro St','Mountain View','CA','94041','Cafes','(650) 864-9999');

insert into restaurant (name,stars,street_address,city,state,zipcode,category,phone_number)
values ('The Bayshore Cafe',5,'1080 Linda Vista Ave','Mountain View','CA','94043','Cafes','(650) 867-5309');

insert into restaurant (name,stars,street_address,city,state,zipcode,category,phone_number)
values ('1 Oz Coffee',4,'650 Castro St Ste 130','Mountain View','CA','94041','Cafes','(650) 254-8555');

-- Schedule inserts for Mountain View Cafes
--Alexanders Patisserie
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (20,1,'08:00','21:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (20,2,'08:00','21:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (20,3,'08:00','21:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (20,4,'08:00','21:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (20,5,'08:00','22:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (20,6,'09:00','22:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (20,7,'09:00','20:00');
-- The Bayshore Cafe
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (21,1,'09:00','22:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (21,2,'09:00','22:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (21,3,'09:00','22:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (21,4,'09:00','22:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (21,5,'09:00','22:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (21,6,'09:00','18:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (21,7,'09:00','18:00');
-- 1 Oz Coffee
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (22,1,'07:00','16:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (22,2,'07:00','16:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (22,3,'07:00','16:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (22,4,'07:00','16:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (22,5,'07:00','16:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (22,6,'08:00','17:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (22,7,'08:00','17:00');

--Mountain View Inserts for Italian
insert into restaurant (name,stars,street_address,city,state,zipcode,category,phone_number)
values ('Vaso Azzurro Ristorante',4,'108 Castro St','Mountain View','CA','94041','Italian','(650) 940-1717');

insert into restaurant (name,stars,street_address,city,state,zipcode,category,phone_number)
values ('Ristorante Don Giovanni',3,'235 Castro St','Mountain View','CA','94041','Italian','(650) 961-9749');

insert into restaurant (name,stars,street_address,city,state,zipcode,category,phone_number)
values ('Doppio Zero',4,'160 Castro St','Mountain View','CA','94041','Italian','(650) 938-4147');

insert into restaurant (name,stars,street_address,city,state,zipcode,category,phone_number)
values ('La Fontaine Restaurant',4,'186 Castro St','Mountain View','CA','94041','Italian','(650) 968-2300');


-- Schedule inserts for Mountain View Italian
--Vaso Azzurro Ristorante
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (23,1,'17:00','21:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (23,2,'17:00','21:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (23,3,'17:00','21:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (23,4,'17:00','21:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (23,5,'17:00','21:30');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (23,6,'17:00','21:30');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (23,7,'17:00','21:00');
-- Ristorante Don Giovanni
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (24,1,'16:00','21:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (24,2,'16:00','21:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (24,3,'16:00','21:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (24,4,'16:00','21:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (24,5,'11:30','22:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (24,6,'11:30','22:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (24,7,'11:30','21:00');
-- Doppio Zero
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (25,1,'11:30','22:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (25,2,'11:30','22:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (25,3,'11:30','22:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (25,4,'11:30','22:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (25,5,'11:30','23:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (25,6,'11:30','23:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (25,7,'11:30','21:30');
-- La Fontaine Restaurant
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (26,1,'11:30','21:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (26,2,'11:30','21:30');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (26,3,'11:30','21:30');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (26,4,'11:30','21:30');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (26,5,'11:30','22:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (26,6,'11:30','22:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (26,7,'11:30','21:00');

--Mountain View Inserts for Chinese
insert into restaurant (name,stars,street_address,city,state,zipcode,category,phone_number)
values ('Embrace Luck',3,'286 W El Camino Real','Mountain View','CA','94041','Chinese','(650) 386-5338');

insert into restaurant (name,stars,street_address,city,state,zipcode,category,phone_number)
values ('Queen House',3,'273 Castro St','Mountain View','CA','94041','Chinese','(650) 960-0580');

insert into restaurant (name,stars,street_address,city,state,zipcode,category,phone_number)
values ('Mifen101',4,'841 Villa St','Mountain View','CA','94041','Chinese','(650) 282-5333');

insert into restaurant (name,stars,street_address,city,state,zipcode,category,phone_number)
values ('Happy Lamb Hot Pot',4,'102 Castro St','Mountain View','CA','94041','Chinese','(650) 386-5061');

insert into restaurant (name,stars,street_address,city,state,zipcode,category,phone_number)
values ('Dumpling Garden',3,'108A N Rengstorff Ave','Mountain View','CA','94043','Chinese','(650) 967-7334');

--Schedule Inserts for Mountain View Chinese
--Embrace Luck
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (27,1,'11:30','21:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (27,2,'11:30','21:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (27,3,'11:30','21:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (27,4,'11:30','21:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (27,5,'11:30','21:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (27,6,'11:30','21:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (27,7,'11:30','21:00');
-- Queen House
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (28,1,'11:00','21:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (28,2,'11:00','21:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (28,3,'11:00','21:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (28,4,'11:00','21:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (28,5,'11:00','21:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (28,6,'11:00','21:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (28,7,'11:00','21:00');
-- Mifen101
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (29,1,'11:00','21:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (29,2,'11:00','21:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (29,3,'11:00','21:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (29,4,'11:00','21:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (29,5,'11:00','21:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (29,6,'11:00','21:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (29,7,'11:00','20:00');
-- Happy Lamb Hot Pot
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (30,1,'11:30','22:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (30,2,'11:30','22:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (30,3,'11:30','22:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (30,4,'11:30','22:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (30,5,'11:30','22:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (30,6,'11:30','22:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (30,7,'11:30','22:00');
-- Dumpling Garden
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (31,1,'11:00','21:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (31,2,'11:00','21:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (31,3,'11:00','21:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (31,4,'11:00','21:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (31,5,'11:00','21:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (31,6,'11:00','21:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (31,7,'11:00','21:00');

-- Mountain View Inserts for Japanese

insert into restaurant (name,stars,street_address,city,state,zipcode,category,phone_number)
values ('Kakaroto',4,'743 W Dana St','Mountain View','CA','94041','Japanese','(650) 903-9668');

insert into restaurant (name,stars,street_address,city,state,zipcode,category,phone_number)
values ('Udon Mugizo',4,'180 Castro St','Mountain View','CA','94041','Japanese','(650) 961-8880');

insert into restaurant (name,stars,street_address,city,state,zipcode,category,phone_number)
values ('Sushi Tomi',4,'635 W Dana St','Mountain View','CA','94040','Japanese','(650) 968-3227');

insert into restaurant (name,stars,street_address,city,state,zipcode,category,phone_number)
values ('Gochi',4,'1943 W El Camino','Mountain View','CA','94040','Japanese','(650) 965-8301');

insert into restaurant (name,stars,street_address,city,state,zipcode,category,phone_number)
values ('Sushi Jin',5,'580 N Rengstorff Ave','Mountain View','CA','94043','Japanese','(650) 386-5885');

-- Schedule Inserts for Mountain View Japanese
--Kakaroto
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (32,1,'11:30','21:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (32,2,'11:30','21:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (32,3,'11:30','21:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (32,4,'11:30','21:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (32,5,'11:30','21:30');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (32,6,'11:30','21:30');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (32,7,'11:30','21:00');
-- Udon Mugizo
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (33,1,'11:00','21:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (33,2,'11:00','21:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (33,3,'11:00','21:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (33,4,'11:00','21:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (33,5,'11:00','22:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (33,6,'11:00','21:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (33,7,'11:00','21:00');
-- Sushi Tomi
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (34,1,'11:00','20:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (34,2,'11:00','20:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (34,3,'11:00','20:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (34,4,'11:00','20:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (34,5,'11:00','20:30');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (34,6,'11:00','20:30');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (34,7,'11:00','20:00');
-- Gochi
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (35,1,'11:30','20:30');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (35,2,'11:30','20:30');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (35,3,'11:30','20:30');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (35,4,'11:30','20:30');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (35,5,'11:30','21:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (35,6,'11:30','21:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (35,7,'11:30','20:30');
-- Sushi Jin
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (36,1,'16:30','21:30');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (36,2,'16:30','21:30');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (36,3,'16:30','21:30');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (36,4,'16:30','21:30');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (36,5,'16:30','21:30');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (36,6,'16:30','21:30');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (36,7,'16:30','21:30');

-- Mountain View Inserts for Thai

insert into restaurant (name,stars,street_address,city,state,zipcode,category,phone_number)
values ('Shana Thai',4,'311 Moffet Blvd','Mountain View','CA','94043','Thai','(650) 940-9990');

insert into restaurant (name,stars,street_address,city,state,zipcode,category,phone_number)
values ('Amarin Thai Cuisine',3,'174 Castro St','Mountain View','CA','94041','Thai','(650) 988-9323');

insert into restaurant (name,stars,street_address,city,state,zipcode,category,phone_number)
values ('Khao Kang Thai Kitchen',4,'225 E Middlefield Rd','Mountain View','CA','94043','Thai','(650) 960-7100');

-- Schedule Inserts for Mountain View Thai

-- Shana Thai
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (37,1,'11:00','21:30');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (37,2,'11:00','21:30');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (37,3,'11:00','21:30');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (37,4,'11:00','21:30');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (37,5,'11:00','21:30');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (37,6,'12:00','21:30');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (37,7,'12:00','21:30');
-- Amarin Thai
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (38,1,'11:30','21:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (38,2,'11:30','21:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (38,3,'11:30','21:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (38,4,'11:30','21:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (38,5,'11:30','21:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (38,6,'17:00','21:30');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (38,7,'11:45','21:00');
-- Khao Kang
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (39,1,'11:00','21:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (39,2,'11:00','21:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (39,3,'11:00','21:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (39,4,'11:00','21:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (39,5,'11:00','21:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (39,6,'12:00','21:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (39,7,'17:00','22:00');

-- Mountain View Inserts for Mexican

insert into restaurant (name,stars,street_address,city,state,zipcode,category,phone_number)
values ('Los Amigos',4,'1040 Grant Rd Ste 305','Mountain View','CA','94040','Mexican','(650) 900-9700');

insert into restaurant (name,stars,street_address,city,state,zipcode,category,phone_number)
values ('La Fiesta',4,'240 Villa St','Mountain View','CA','94041','Mexican','(650) 968-1364');

insert into restaurant (name,stars,street_address,city,state,zipcode,category,phone_number)
values ('Casa Lupe',3,'459 Castro St','Mountain View','CA','94041','Mexican','(650) 965-2944');

insert into restaurant (name,stars,street_address,city,state,zipcode,category,phone_number)
values ('Los Portales',4,'430 Moffet Blvd','Mountain View','CA','94043','Mexican','(650) 968-0453');

insert into restaurant (name,stars,street_address,city,state,zipcode,category,phone_number)
values ('Agave Mexican Bistro',3,'194 Castro St','Mountain View','CA','94041','Mexican','(650) 969-6767');

-- Schedule Inserts for Mountain View Mexican
-- Los Amigos
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (40,1,'10:00','22:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (40,2,'10:00','22:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (40,3,'10:00','22:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (40,4,'10:00','22:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (40,5,'10:00','22:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (40,6,'10:00','22:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (40,7,'10:00','22:00');
-- La Fiesta
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (41,1,'17:00','20:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (41,2,'17:00','20:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (41,3,'17:00','20:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (41,4,'17:00','20:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (41,5,'17:00','20:30');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (41,6,'17:00','20:30');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (41,7,'17:00','20:30');
-- Casa Lupe
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (42,1,'11:30','21:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (42,2,'11:30','21:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (42,3,'11:30','21:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (42,4,'11:30','21:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (42,5,'11:30','21:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (42,6,'11:30','21:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (42,7,'11:30','21:00');
-- Los Portales
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (43,1,'11:00','21:30');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (43,2,'11:00','21:30');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (43,3,'11:00','21:30');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (43,4,'11:00','21:30');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (43,5,'11:00','21:30');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (43,6,'11:00','21:30');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (43,7,'11:00','21:30');
-- Agave Mexican Bistro
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (44,1,'11:30','21:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (44,2,'11:30','21:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (44,3,'11:30','21:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (44,4,'11:30','21:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (44,5,'11:30','22:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (44,6,'11:30','22:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (44,7,'11:30','20:00');

-- Palo Alto Inserts for American

insert into restaurant (name,stars,street_address,city,state,zipcode,category,phone_number)
values ('Sweet Maple',4,'150 University Ave','Palo Alto','CA','94301','American','(650) 521-0764');

insert into restaurant (name,stars,street_address,city,state,zipcode,category,phone_number)
values ('Crepevine Restaurants',4,'367 University Ave','Palo Alto','CA','94301','American','(650) 323-3900');

insert into restaurant (name,stars,street_address,city,state,zipcode,category,phone_number)
values ('Bird Dog',4,'420 Ramona St','Palo Alto','CA','94301','American','(650) 656-8180');

insert into restaurant (name,stars,street_address,city,state,zipcode,category,phone_number)
values ('Wild Onion Bistro & Bar',4,'748 San Antonio Rd','Palo Alto','CA','94303','American','(650) 424-8991');

-- Schedule Inserts for Palo Alto American
--Sweet Maple
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (45,1,'08:30','21:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (45,2,'08:30','21:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (45,3,'08:30','21:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (45,4,'08:30','21:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (45,5,'08:30','21:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (45,6,'08:30','21:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (45,7,'08:30','21:00');
-- Crepevine
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (46,1,'08:00','21:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (46,2,'08:00','21:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (46,3,'08:00','21:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (46,4,'08:00','21:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (46,5,'08:00','21:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (46,6,'08:00','21:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (46,7,'08:00','21:00');
-- Bird Dog
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (47,1,'17:30','21:30');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (47,2,'17:30','21:30');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (47,3,'17:30','21:30');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (47,4,'17:30','21:30');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (47,5,'17:30','21:30');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (47,6,'17:30','21:30');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (47,7,'17:30','21:30');
-- Wild Onion
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (48,1,'07:00','21:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (48,2,'07:00','21:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (48,3,'07:00','21:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (48,4,'07:00','21:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (48,5,'07:00','21:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (48,6,'07:00','21:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (48,7,'07:00','21:00');

-- Palo Alto Inserts for Spanish

insert into restaurant (name,stars,street_address,city,state,zipcode,category,phone_number)
values ('Joya Restaurant & Lounge',3,'339 University Ave','Palo Alto','CA','94301','Spanish','(650) 853-9800');

insert into restaurant (name,stars,street_address,city,state,zipcode,category,phone_number)
values ('La Bodeguita Del Medio',4,'463 S California Ave','Palo Alto','CA','94306','Spanish','(650) 326-7762');

insert into restaurant (name,stars,street_address,city,state,zipcode,category,phone_number)
values ('Telefèric Barcelona',4,'855 El Camino Real Ste 130','Palo Alto','CA','94301','Spanish','(650) 321-0512');

-- Schedule Inserts for Palo Alto Spanish
-- Joya
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (49,1,'16:00','21:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (49,2,'16:00','21:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (49,3,'16:00','21:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (49,4,'16:00','21:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (49,5,'16:00','22:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (49,6,'16:00','22:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (49,7,'16:00','21:00');
-- La Bodeguita
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (50,1,'15:00','21:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (50,2,'15:00','21:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (50,3,'15:00','21:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (50,4,'15:00','21:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (50,5,'15:00','21:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (50,6,'15:00','21:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (50,7,'15:00','21:00');
-- Teleferic
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (51,1,'11:30','21:30');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (51,2,'11:30','21:30');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (51,3,'11:30','21:30');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (51,4,'11:30','21:30');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (51,5,'11:30','22:15');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (51,6,'11:00','22:15');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (51,7,'11:00','21:15');

-- Palo Alto Inserts for Barbeque
insert into restaurant (name,stars,street_address,city,state,zipcode,category,phone_number)
values ('Get Tha Fork Outta Here',4,'290 Stanford Way','Palo Alto','CA','94301','Barbeque','(650) 855-4227');

insert into restaurant (name,stars,street_address,city,state,zipcode,category,phone_number)
values ('Back A Yard Caribbean American Grill',5,'1189 Willow Rd','Palo Alto','CA','94306','Barbeque','(650) 323-4244');

-- Schedule Inserts for Palo Alto BBQ
-- Get Tha Fork Outta Here
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (52,1,'11:00','19:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (52,2,'11:00','19:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (52,3,'11:00','19:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (52,4,'11:00','19:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (52,5,'11:00','21:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (52,6,'11:00','21:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (52,7,'11:00','19:00');
-- Back A Yard BBQ
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (53,1,'11:00','19:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (53,2,'11:00','19:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (53,3,'11:00','19:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (53,4,'11:00','19:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (53,5,'11:00','19:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (53,6,'11:00','19:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (53,7,'11:00','19:00');

-- Palo Alto Inserts for Cafes

insert into restaurant (name,stars,street_address,city,state,zipcode,category,phone_number)
values ('Cafe Venetia',3,'419 University Ave','Palo Alto','CA','94301','Cafes','(650) 323-3600');

insert into restaurant (name,stars,street_address,city,state,zipcode,category,phone_number)
values ('Mademoiselle Colette',4,'499 Lytton Ave','Palo Alto','CA','94301','Cafes','(650) 272-6873');

insert into restaurant (name,stars,street_address,city,state,zipcode,category,phone_number)
values ('Coupa Cafe',3,'538 Ramona St','Palo Alto','CA','94301','Cafes','(650) 322-6872');

-- Schedule Inserts for Palo Alto Cafes
-- Cafe Venetia
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (54,1,'07:30','22:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (54,2,'07:30','22:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (54,3,'07:30','22:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (54,4,'07:30','22:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (54,5,'07:30','22:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (54,6,'07:30','22:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (54,7,'07:30','22:00');
-- Madamoiselle Colette
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (55,1,'08:00','16:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (55,2,'08:00','16:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (55,3,'08:00','16:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (55,4,'08:00','16:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (55,5,'08:00','16:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (55,6,'08:00','16:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (55,7,'08:00','14:00');
-- Coupa Cafe
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (56,1,'07:00','20:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (56,2,'07:00','20:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (56,3,'07:00','20:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (56,4,'07:00','20:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (56,5,'07:00','20:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (56,6,'07:00','20:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (56,7,'07:00','20:00');

-- Palo Alto Inserts for Italian
insert into restaurant (name,stars,street_address,city,state,zipcode,category,phone_number)
values ('Café Pro Bono',4,'2437 Birch St','Palo Alto','CA','94306','Italian','(650) 326-1626');

insert into restaurant (name,stars,street_address,city,state,zipcode,category,phone_number)
values ('Terún',4,'448 S California Ave','Palo Alto','CA','94306','Italian','(650) 600-8310');

insert into restaurant (name,stars,street_address,city,state,zipcode,category,phone_number)
values ('iTalico',4,'341 S California Ave','Palo Alto','CA','94306','Italian','(650) 473-9616');

insert into restaurant (name,stars,street_address,city,state,zipcode,category,phone_number)
values ('Osteria Toscana',3,'247 Hamilton Ave','Palo Alto','CA','94301','Italian','(650) 328-5700');

-- Schedule Inserts for P.A. Italian
-- Cafe Pro Bono
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (57,1,'11:30','21:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (57,2,'11:30','21:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (57,3,'11:30','21:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (57,4,'11:30','21:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (57,5,'11:30','21:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (57,6,'17:00','21:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (57,7,'17:00','21:00');
-- Terun
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (58,1,'17:00','21:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (58,2,'17:00','21:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (58,3,'17:00','21:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (58,4,'17:00','21:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (58,5,'17:00','21:30');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (58,6,'17:00','21:30');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (58,7,'17:00','21:00');
-- Italico
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (59,1,'17:00','21:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (59,2,'17:00','21:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (59,3,'17:00','21:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (59,4,'17:00','21:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (59,5,'17:00','21:30');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (59,6,'17:00','21:30');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (59,7,'17:00','21:00');
-- Osteria
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (60,1,'11:00','21:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (60,2,'11:00','21:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (60,3,'11:00','21:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (60,4,'11:00','21:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (60,5,'11:00','21:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (60,6,'11:00','21:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (60,7,'11:00','21:00');

-- Palo Alto Inserts Chinese
insert into restaurant (name,stars,street_address,city,state,zipcode,category,phone_number)
values ('Jing Jing Chinese Gourmet',3,'443 Emerson St','Palo Alto','CA','94301','Chinese','(650) 328-6885');

insert into restaurant (name,stars,street_address,city,state,zipcode,category,phone_number)
values ('Taste',4,'423 University Ave','Palo Alto','CA','94301','Chinese','(650) 323-6488');

insert into restaurant (name,stars,street_address,city,state,zipcode,category,phone_number)
values ('Tai Pan',3,'560 Waverley St','Palo Alto','CA','94301','Chinese','(650) 329-9168');

insert into restaurant (name,stars,street_address,city,state,zipcode,category,phone_number)
values ('Dumpling City',4,'3487 El Camino Real','Palo Alto','CA','94306','Chinese','(650) 272-6715');

-- Schedule Inserts for P.A. Chinese
-- Jing Jing
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (61,1,'11:30','21:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (61,2,'11:30','21:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (61,3,'11:30','21:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (61,4,'11:30','21:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (61,5,'11:30','21:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (61,6,'11:30','21:30');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (61,7,'11:30','21:00');
-- Taste
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (62,1,'11:00','21:30');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (62,2,'11:00','21:30');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (62,3,'11:00','21:30');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (62,4,'11:00','21:30');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (62,5,'11:00','21:30');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (62,6,'11:00','21:30');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (62,7,'11:00','21:30');
-- Tai Pan
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (63,1,'11:00','21:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (63,2,'11:00','21:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (63,3,'11:00','20:30');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (63,4,'11:00','21:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (63,5,'11:00','21:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (63,6,'11:00','21:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (63,7,'11:00','21:00');
-- Dumpling City
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (64,1,'10:00','19:30');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (64,2,'10:00','19:30');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (64,3,'10:00','19:30');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (64,4,'10:00','19:30');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (64,5,'10:00','19:30');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (64,6,'10:00','19:30');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (64,7,'10:00','19:30');

-- Palo Alto Inserts Japanese

insert into restaurant (name,stars,street_address,city,state,zipcode,category,phone_number)
values ('Nobu Palo Alto',3,'180 Hamilton Ave','Palo Alto','CA','94301','Japanese','(650) 798-8396');

insert into restaurant (name,stars,street_address,city,state,zipcode,category,phone_number)
values ('Ramen Nagi',4,'541 Bryant St','Palo Alto','CA','94301','Japanese','(650) 123-4567');

insert into restaurant (name,stars,street_address,city,state,zipcode,category,phone_number)
values ('YAYOI',3,'403 University Ave','Palo Alto','CA','94301','Japanese','(650) 494-4437');

insert into restaurant (name,stars,street_address,city,state,zipcode,category,phone_number)
values ('Araki Sushi',4,'201 University Ave','Palo Alto','CA','94301','Japanese','(650) 324-3300');

insert into restaurant (name,stars,street_address,city,state,zipcode,category,phone_number)
values ('Onigilly Japanese Kitchen',4,'164 University Ave','Palo Alto','CA','94301','Japanese','(650) 313-2104');

-- Schedule Inserts for P.A. Japanese
-- Nobu
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (65,1,'12:00','22:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (65,2,'12:00','22:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (65,3,'12:00','22:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (65,4,'12:00','22:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (65,5,'12:00','22:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (65,6,'07:00','22:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (65,7,'07:00','22:00');
-- Ramen Nagi
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (66,1,'11:00','21:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (66,2,'11:00','21:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (66,3,'11:00','21:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (66,4,'11:00','21:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (66,5,'11:00','21:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (66,6,'11:00','21:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (66,7,'11:00','21:00');
-- Yayoi
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (67,1,'11:30','20:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (67,2,'11:30','20:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (67,3,'11:30','20:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (67,4,'11:30','20:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (67,5,'11:30','20:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (67,6,'11:30','20:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (67,7,'11:30','20:00');
-- Araki Sushi
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (68,1,'11:00','22:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (68,2,'11:00','22:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (68,3,'11:00','22:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (68,4,'11:00','22:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (68,5,'11:00','22:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (68,6,'11:00','22:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (68,7,'11:00','22:00');
-- Onigilly
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (69,1,'11:00','19:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (69,2,'11:00','19:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (69,3,'11:00','19:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (69,4,'11:00','19:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (69,5,'11:00','20:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (69,6,'11:00','20:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (69,7,'11:00','20:00');

-- Palo Alto Inserts Thai
insert into restaurant (name,stars,street_address,city,state,zipcode,category,phone_number)
values ('New Thai Elephant',4,'200 S B St','Palo Alto','CA','94301','Thai','(650) 431-0888');

insert into restaurant (name,stars,street_address,city,state,zipcode,category,phone_number)
values ('Farmhouse Kitchen Thai Cuisine',4,'1165 Merrill St','Palo Alto','CA','94301','Thai','(650) 665-7935');

insert into restaurant (name,stars,street_address,city,state,zipcode,category,phone_number)
values ('Siam Fine Thai Cuisine',4,'3924 El Camino Real','Palo Alto','CA','94306','Thai','(650) 812-0139');

insert into restaurant (name,stars,street_address,city,state,zipcode,category,phone_number)
values ('Lotus Thai Bistro',3,'425 California Ave','Palo Alto','CA','94306','Thai','(650) 289-0907');

-- Schedule Inserts for P.A. Thai

-- New Thai Elephant
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (70,1,'11:00','21:15');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (70,2,'11:00','21:15');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (70,3,'11:00','21:15');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (70,4,'11:00','21:15');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (70,5,'11:00','21:15');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (70,6,'11:00','21:15');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (70,7,'11:00','21:15');
-- Farmhouse Thai
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (71,1,'11:00','21:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (71,2,'11:00','21:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (71,3,'11:00','21:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (71,4,'11:00','21:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (71,5,'11:00','21:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (71,6,'12:00','22:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (71,7,'12:00','21:00');
-- Siam Thai
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (72,1,'16:00','21:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (72,2,'16:00','21:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (72,3,'11:00','21:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (72,4,'11:00','21:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (72,5,'11:00','21:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (72,6,'11:00','21:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (72,7,'11:00','21:00');
-- Lotus Thai
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (73,1,'11:00','21:30');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (73,2,'11:00','21:30');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (73,3,'11:00','21:30');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (73,4,'11:00','21:30');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (73,5,'11:00','21:30');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (73,6,'16:00','21:30');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (73,7,'16:00','21:30');

-- Palo Alto Inserts Mexican
insert into restaurant (name,stars,street_address,city,state,zipcode,category,phone_number)
values ('San Agus Cocina Urbana & Cocktails',4,'115 Hamilton Ave','Palo Alto','CA','94301','Mexican','(650) 847-1334');

insert into restaurant (name,stars,street_address,city,state,zipcode,category,phone_number)
values ('Reposado',3,'236 Hamilton Ave','Palo Alto','CA','94301','Mexican','(650) 833-3151');

insert into restaurant (name,stars,street_address,city,state,zipcode,category,phone_number)
values ('SUN of WOLF',4,'406 California Ave','Palo Alto','CA','94306','Mexican','(650) 325-8888');

-- Schedule Inserts for P.A. Mexican
-- San Agus
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (74,1,'15:00','21:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (74,2,'15:00','21:30');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (74,3,'15:00','21:30');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (74,4,'15:00','21:30');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (74,5,'12:00','21:30');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (74,6,'12:00','22:30');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (74,7,'12:00','21:00');
-- Reposado
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (75,1,'16:00','21:30');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (75,2,'16:00','21:30');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (75,3,'16:00','21:30');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (75,4,'16:00','21:30');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (75,5,'16:00','22:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (75,6,'16:00','22:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (75,7,'16:00','21:00');
-- Sun of Wolf
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (76,1,'17:00','20:30');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (76,2,'17:00','20:30');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (76,3,'17:00','20:30');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (76,4,'17:00','21:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (76,5,'17:00','21:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (76,6,'10:30','14:00');
insert into schedule (restaurant_id,day_of_week,time_open,time_closed) values (76,7,'10:30','14:00');



