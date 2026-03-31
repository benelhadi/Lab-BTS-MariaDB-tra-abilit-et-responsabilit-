USE centrecalldb;

CREATE TABLE IF NOT EXISTS audit_clients (
    audit_id INT AUTO_INCREMENT PRIMARY KEY,
    action_type VARCHAR(20) NOT NULL,
    sql_user VARCHAR(100) NOT NULL,
    client_id INT NOT NULL,
    nom VARCHAR(50),
    prenom VARCHAR(50),
    telephone VARCHAR(20),
    ville VARCHAR(50),
    action_date DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP
);

DROP TRIGGER IF EXISTS trg_clients_after_delete;

DELIMITER //

CREATE TRIGGER trg_clients_after_delete
AFTER DELETE ON clients
FOR EACH ROW
BEGIN
    INSERT INTO audit_clients (
        action_type,
        sql_user,
        client_id,
        nom,
        prenom,
        telephone,
        ville,
        action_date
    )
    VALUES (
        'DELETE',
        USER(),
        OLD.id,
        OLD.nom,
        OLD.prenom,
        OLD.telephone,
        OLD.ville,
        NOW()
    );
END//

DELIMITER ;
