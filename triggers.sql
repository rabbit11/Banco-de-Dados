CREATE OR REPLACE FUNCTION verifica_artista() RETURNS trigger AS $verifica_artista$
	BEGIN
	IF (TG_OP = 'DELETE') THEN
			IF NOT EXISTS (SELECT 1 FROM ALBUM WHERE nomeartista = OLD.nomeartista) THEN
				DELETE FROM ARTISTA
    				WHERE ARTISTA.nome = OLD.nomeartista;
				RETURN OLD;
			END IF;
		END IF;
		RETURN NULL;
	END
$verifica_artista$ LANGUAGE plpgsql;

CREATE TRIGGER verifica_artista AFTER DELETE ON ALBUM
 	FOR EACH ROW EXECUTE PROCEDURE verifica_artista();

CREATE OR REPLACE FUNCTION verifica_musica() RETURNS trigger AS $verifica_musica$
    BEGIN
    IF (TG_OP = 'DELETE') THEN
        IF NOT EXISTS (SELECT 1 FROM MUSICA WHERE tituloalbum = OLD.tituloalbum) THEN
            DELETE FROM ALBUM
                    WHERE ALBUM.tituloalbum = OLD.tituloalbum;
                RETURN OLD;
            END IF;
        END IF;
        RETURN NULL;
    END
$verifica_musica$ LANGUAGE plpgsql;

CREATE TRIGGER verifica_musica AFTER DELETE ON MUSICA
   FOR EACH ROW EXECUTE PROCEDURE verifica_musica();

CREATE OR REPLACE FUNCTION verifica_playlist() RETURNS trigger AS $verifica_playlist$
    BEGIN
    IF (TG_OP = 'DELETE') THEN
        IF NOT EXISTS (SELECT 1 FROM MUSICA WHERE nomepl = OLD.nomepl) THEN
            DELETE FROM PLAYLIST
                    WHERE PLAYLIST.nomepl = OLD.nomepl;
                RETURN OLD;
            END IF;
        END IF;
        RETURN NULL;
    END
$verifica_playlist$ LANGUAGE plpgsql;

CREATE TRIGGER verifica_playlist AFTER DELETE ON MUSICA
   FOR EACH ROW EXECUTE PROCEDURE verifica_playlist();
