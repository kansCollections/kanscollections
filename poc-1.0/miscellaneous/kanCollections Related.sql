create database KanCollections;

use KanCollections;
create table Feedback (name varchar(30), email varchar(30), message varchar (10000), regarding int (5), code varchar(10), rating int);

desc Feedback;
insert into Feedback values ('Kanmani', 'kanmani_s@yahoo.com', 'good', 1, 'Kan1', 4);

Select * from Feedback;

alter table kancollections.feedback
change column name realname
varchar(30) NOT NULL;


alter table kancollections.feedback
change column message comments
varchar(10000) ;

ALTER TABLE kancollections.feedback
  DROP COLUMN regarding;
 
 ALTER TABLE kancollections.feedback
  DROP COLUMN code; 

ALTER TABLE kancollections.feedback
  ADD product varchar(30) NOT NULL
    AFTER email,
  ADD service varchar(30) 
    AFTER product;
    
select * from kancollections.feedback;
desc kancollections.feedback;
insert into kancollections.feedback values ('Kanmani', 'kanmani_s@yahoo.com', 'saree', 'buy', 'good', 4 );

insert into kancollections.user values ('test-one', 'test1');
insert into kancollections.user values ('test-two', 'test2');
insert into kancollections.user values ('test-three','test3');
insert into kancollections.user values ('test-four', 'test4');
insert into kancollections.user values ('test-five', 'test5');
insert into kancollections.user values ('test', 'test');
commit;
use kancollections;
select * from user;
use kancollections;
select * from  feedback;

select * from imagetable;
create table kancollections.ImageTable (imageID int unsigned not null auto_increment, imageName varchar(45) not null, image mediumblob not null, PRIMARY KEY(imageID));