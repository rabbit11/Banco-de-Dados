-- Consulta 1
SELECT * FROM ALBUM WHERE genero = <genero>;

-- Consulta 2
SELECT AVG(cnt) FROM (SELECT COUNT(*) AS cnt, tituloalbum FROM musica GROUP BY tituloalbum) AS medias

-- Consulta 3
SELECT * FROM MUSICA WHERE tituloalbum = <album>;

-- Consulta 4
SELECT nomeartista FROM ALBUM WHERE titulomusica = <musica>;

-- Consulta 5
SELECT faixa FROM MUSICA WHERE titulomusica = <musica>;

-- Consulta 6
SELECT * FROM ALBUM WHERE anodelancamento = <ano>;

-- Consulta 7
SELECT * FROM ALBUM WHERE nomeartista = <nome>;

-- Consulta 8
SELECT DISTINCT titulomusica FROM MUSICA, ALBUM, ARTISTA WHERE MUSICA.tituloalbum = ALBUM.tituloalbum AND ALBUM.nomeartista = <nome>;

-- Consulta 9
SELECT * FROM ALBUM WHERE tituloalbum = <album>;

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

-- Consulta 15
SELECT PLAYLIST.nomepl AS Playlist, COUNT(*) AS Numero_Musicas FROM MUSICA, PLAYLIST WHERE MUSICA.nomepl = PLAYLIST.nomepl GROUP BY PLAYLIST.nomepl;

-- Consulta 16, conta numero de albuns de determinado artista, utilizando a view
SELECT * from NUMERO_ALBUNS
