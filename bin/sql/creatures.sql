create table wizards(
    creature_name character varying(50),
    creature_power character varying(50)
);

 create table elves(
        name character varying(50),
         speed character varying(50)
);

create table hobbits(
        name character varying(50),
        personality character varying(50)
);

create table allies(
    wizard character varying(50),
    elf character varying(50)
);


create table guardians(
    elf character varying(50),
    hobbit character varying(50)
);

insert into wizards(creature_name,creature_power) 
values
('Gandaulf','fireworks'),
('Sarah','rings'),
('Sarumana','betreyal');


insert into elves (name,speed)
values 
('Legolas',10),
('Arwen',12),
('Barusa',21);


insert into hobbits(name,personality)
values
('Frodo','carefully'),
('Bruno','brave'),
('Santiago','greedy');


insert into allies(wizard,elf)
values
('Gandalf','Legolas'),
('Gandalf','Arwen'),
('Saruman','Elrond'),
('Saruman','Legolas');

insert into guardians(elf,hobbit)
values 
('Legolas','Frudo'),
('Arven','Sam'),
('Elrond','Bilbo'),
('Legolas','Arwen');