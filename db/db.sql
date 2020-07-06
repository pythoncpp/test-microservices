use mysql;
GRANT ALL PRIVILEGES ON *.* TO root@172.16.20.12 IDENTIFIED BY 'root';
FLUSH PRIVILEGES;

create database notesdb;
use notesdb;
create table notes (id integer primary key auto_increment, contents text, created_on timestamp default CURRENT_TIMESTAMP);