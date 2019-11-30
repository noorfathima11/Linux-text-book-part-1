CREATE USER 'worker'@'$ACCESSFROMIP' IDENTIFIED BY 'yourpasswordhere';
GRANT SELECT,INSERT,UPDATE,DELETE,CREATE,CREATE TEMPORARY TABLES,DROP,INDEX,ALTER ON comments.* TO worker@'$ACCESSFROMIP' IDENTIFIED BY '$USERPASS'; 
FLUSH PRIVILEGES;

-- My example would be
-- CREATE USER 'worker'@'192.168.1.239' IDENTIFIED BY 'ilovebunnies';
-- GRANT ALL ON *.* TO 'worker'@'192.168.1.239';
