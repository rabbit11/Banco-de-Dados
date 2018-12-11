CREATE FUNCTION ordem_cronologica(A SMALLINT) RETURNS TRIGGER AS $ordem_cronologica$
    BEGIN
        IF(OrdemCronologica == null){
        }