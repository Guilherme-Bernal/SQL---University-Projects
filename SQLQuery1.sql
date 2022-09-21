create table RACA
(  
  IDRaca Int Not null identity,
  Nome Varchar(100) Not null,
  Descricao Varchar(500),
  Origem Varchar(100) Not null,
  Perdido datetime,
  CONSTRAINT PKIDRaca PrimaRy key (IDRaca)
  )

create table Habilidade 
(
 IDHabilidade Int Not null identity,
 Nome Varchar (200) Not null,
 CONSTRAINT PKIDHabilidade  PrimaRy key (IDHabilidade)
)

create table Classe
(
IDClasse Int Not null identity,
Nome Varchar (100) Not null,
Caracteristicas Varchar (1000),
IDHabilidade int Not null,
CONSTRAINT PKIDClasse PrimaRy key (IDClasse),
CONSTRAINT FKIDHabilidade Foreign key (IDHabilidade) references Habilidade (IDHabilidade)
)

create table Personagem 
(
IDPersonagem int Not null identity,
Nome Varchar (100) Not null,
Descricao Varchar (500) Not null,
Datadenascimento datetime Not null ,
IDRACA int Not null,
IDClasse int Not null,
CONSTRAINT PKPersonagem PrimaRy key (IDPersonagem),
CONSTRAINT FKIDRACA Foreign key (IDRACA) references RACA (IDRaca),
CONSTRAINT FKIClasse Foreign key (IDClasse) references Classe(IDClasse)
)





























