SELECT * FROM netflix.netflix_data;

drop table netflix;

CREATE TABLE netflix (
id int,
   show_id varchar(255),
   type varchar(255),
   title varchar(255),
   director varchar(255),
   country varchar(255),
   date_added varchar(255),
   release_year varchar(255),
   rating varchar(255),
   duration varchar(255),
   listed_in varchar(255)
);

insert into netflix values