CREATE USER IF NOT EXISTS 'operateur1'@'localhost' IDENTIFIED BY 'Op1_007';
CREATE USER IF NOT EXISTS 'callmanager1'@'localhost' IDENTIFIED BY 'Cm1_007';

REVOKE ALL PRIVILEGES, GRANT OPTION FROM 'operateur1'@'localhost';
REVOKE ALL PRIVILEGES, GRANT OPTION FROM 'callmanager1'@'localhost';

GRANT SELECT ON centrecalldb.clients TO 'operateur1'@'localhost';
GRANT SELECT, DELETE ON centrecalldb.clients TO 'callmanager1'@'localhost';

FLUSH PRIVILEGES;
