--view que mostra o numero de albuns produzidos por determinado artista
CREATE VIEW Numero_albuns AS
    SELECT ARTISTA.Nome as ARTISTA, count(*) as NUMERO_ALBUNS
    FROM ALBUM, ARTISTA
    WHERE ARTISTA.Nome = ALBUM.NomeArtista
    GROUP BY ARTISTA.Nome;
