CREATE FUNCTION ordem_cronologica() RETURNS TRIGGER AS $$
    BEGIN
        ALTER TABLE ALBUM 
        ADD COLUMN OrdemCronologica SMALLINT;
        UPDATE ALBUM 
        SET OrdemCronologica = row_number + 1;
        
    END;
    $$ LANGUAGE plpgsql;

CREATE TRIGGER ordem_cronologica AFTER
INSERT ON ALBUM
    FOR EACH ROW
EXECUTE PROCEDURE ordem_cronologica();