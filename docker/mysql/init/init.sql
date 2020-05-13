use mysql;
ALTER USER 'root'@'%' IDENTIFIED WITH mysql_native_password BY 'root';
CREATE USER 'mgw'@'%' IDENTIFIED BY 'yiju';
create database quant_platform;
use quant_platform;

