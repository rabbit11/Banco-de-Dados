-- Consulta 1
SELECT * FROM ALBUM WHERE genero = <genero>;

-- Consulta 3
SELECT * FROM MUSICA WHERE tituloalbum = <album>;

-- Consulta 4
SELECT nomeartista FROM ALBUM WHERE titulomuisca = <musica>;

-- Consulta 5
SELECT faixa FROM MUSICA WHERE titulomuisca = <musica>;

-- Consulta 6
SELECT * FROM ALBUM WHERE anodelancamento = <ano>;

-- Consulta 7
SELECT * FROM ALBUM WHERE nomeartista = <nome>;

-- Consulta 10
SELECT COUNT(*) FROM ALBUM;

-- Consulta 11
SELECT COUNT(*) FROM MUSICA;

-- Consulta 12
SELECT * FROM ALBUM;

-- Consulta 13
SELECT * FROM MUSICA;

-- Consulta 14
SELECT * FROM MUSICA WHERE nomepl = <playlist>;

--consulta extra, conta numero de albuns de determinado artista, utilizando a view
SELECT * from NUMERO_ALBUNS