CREATE DATABASE yous_db;
--(heroku config:get DATABASE_URL -a yous-app) your_process
psql -h localhost -p 5432 -U postgres yous_db;
\c yous_db; --connecting to database in postgre script



-- Host ec2-18-233-32-61.compute-1.amazonaws.com
-- Database d31stok7bt5sp7
-- User hwnpudocdkumdx
-- Port 5432
-- Password 71974eea6e178a12b172e11b876408043c9202f5a182ef9fee7dd3eb253c3799
-- URI postgres://hwnpudocdkumdx:71974eea6e178a12b172e11b876408043c9202f5a182ef9fee7dd3eb253c3799@ec2-18-233-32-61.compute-1.amazonaws.com:5432/d31stok7bt5sp7
-- Heroku CLI heroku pg:psql postgresql-corrugated-47517 --app yous-aus


create table User_Password(
	User_id bigserial,
	Email VARCHAR(100) NOT NULL,
    User_Password VARCHAR(100) NOT NULL,
     PRIMARY KEY ( User_id )
);
create table User_Info(
   User_id bigserial,
   FName VARCHAR(40) NOT NULL,
   LName VARCHAR(40) NOT NULL,
   Address VARCHAR(100) NOT NULL,
   Phone_Number VARCHAR(15) NOT NULL,
   User_Type VARCHAR(15) NOT NULL,
   Email VARCHAR(100) NOT NULL,
   PRIMARY KEY ( User_id ),
   FOREIGN KEY (User_Id) REFERENCES User_Password(User_Id)
);

