create table ARTISTA(
	Nome varchar(50) primary key,
	PaisDeOrigem varchar(50) NOT NULL
);

create table ALBUM(
	TituloAlbum varchar(50) PRIMARY KEY,
	NomeArtista varchar(50) NOT NULL,
	-- OrdemCronologica smallint, --utilizar trigger (campo calculado)
	Genero varchar(20) NOT NULL,
	AnoDeLancamento SMALLINT NOT NULL CHECK (ALBUM.AnoDeLancamento >= 1500),
	foreign key (NomeArtista) references Artista(Nome)
		on delete cascade
);

create table PLAYLIST(
	NomePl varchar(50) primary key,
	Autor varchar(50) NOT NULL
);

create table MUSICA(
	TituloMusica varChar(50),
	TituloAlbum varchar(50),
	NomePl varchar(50) NOT NULL,
	Duracao smallint NOT NULL CHECK (MUSICA.Duracao >= 0.5),
	Faixa smallint NOT NULL,
	primary key (TituloAlbum, TituloMusica),
	foreign key (TituloAlbum) references Album(TituloAlbum)
		on delete cascade,
	foreign key (NomePl) references Playlist(NomePl)
		on delete cascade
);