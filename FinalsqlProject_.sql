/**********************************************************************

 ██████╗███████╗ ██████╗██╗    ██████╗ ██╗  ██╗ ██╗ ██████╗ 
██╔════╝██╔════╝██╔════╝██║    ╚════██╗██║  ██║███║██╔═████╗
██║     ███████╗██║     ██║     █████╔╝███████║╚██║██║██╔██║
██║     ╚════██║██║     ██║     ╚═══██╗╚════██║ ██║████╔╝██║
╚██████╗███████║╚██████╗██║    ██████╔╝     ██║ ██║╚██████╔╝
 ╚═════╝╚══════╝ ╚═════╝╚═╝    ╚═════╝      ╚═╝ ╚═╝ ╚═════╝                                                          
 ____ ____ ____ ____ ____ _________ ____ ____ ____ ____ ____ ____ ____ 
||F |||i |||n |||a |||l |||       |||P |||r |||o |||j |||e |||c |||t ||
||__|||__|||__|||__|||__|||_______|||__|||__|||__|||__|||__|||__|||__||
|/__\|/__\|/__\|/__\|/__\|/_______\|/__\|/__\|/__\|/__\|/__\|/__\|/__\|

**********************************************************************/

/**********************************************************************

 Database Developer Name: Jack Crowder
           Project Title: Magic database
      Script Create Date: 5/3/2020

**********************************************************************/

/**********************************************************************
	CREATE TABLE SECTION
**********************************************************************/

create table jrcrow9564.Ruling (
   CardsRulingId int not null primary key identity(1,1),
   RulingDescription varchar(200) not null,
   DateRuling Date not null,
   TournamentWasTheRulingMade varchar(50) not null,
   PersonCreatedRuling varchar(50) not null,
);


create table jrcrow9564.Color (
   ColorId int not null primary key identity(1,1),
   ColorName  varchar(50) not null,
   Black bit  null,
   Green bit null,
   Blue bit  null,
   Red bit  null,
   White bit  null,
);



create table jrcrow9564.Edition (
   EditionId int not null primary key identity(1,1),
   EditionName varchar(50) not null,
   DateOfRelease Date not null,
   Plane varchar(50) not null,
   NumberOfCardsInTheSet int not null,
);

	

create table jrcrow9564.CardType (
    CardTypeId int not null primary key identity(1,1),
	nameType varchar(50) not null,
	Zones varchar(50) not null,
	OnHowItWorks varchar(100) not null,
	rules varchar(100) not null,

);



	


create table jrcrow9564.Formats (
   FormatsId int not null primary key identity(1,1),
   FormatName varchar(50) not null,
   LifeTotal int not null DEFAULT 20,
   CardLimitOfEachCard int not null DEFAULT 4,
   DateOfRelease Date not null,
   
   
);



create table jrcrow9564.Cards (
   CardId int not null primary key identity(1,1),
   Cardname varchar(50) not null,
   ColorId int not null foreign key references jrcrow9564.Color(ColorId),
   ConveratedManaCost int  null,
   CardTypeId int not null foreign key references jrcrow9564.CardType(CardTypeId),
   EditionId int not null foreign key references jrcrow9564.Edition(EditionId),
   CardsRulingId int not null foreign key references jrcrow9564.Ruling(CardsRulingId),
   CreatureType varchar(50) not null,
   
);

	
	

create table jrcrow9564.Decks (
   DecksId int not null primary key identity(1,1),
   DeckName varchar(50) not null,
   ColorId int not null foreign key references jrcrow9564.Color(ColorId),
   FormatsId int not null foreign key references jrcrow9564.Formats(FormatsId),
   NumberOfCardsInDeck int not null,
);


create table jrcrow9564.DeckCards (
   DeckCardId int not null primary key identity(1,1),
   DecksId int not null foreign key references jrcrow9564.Decks(DecksId),
   CardId int not null foreign key references jrcrow9564.Cards(CardId),
   Quantity int not null,
   DateAdded Date not null,
   IsCommander varchar(50) not null,
);


/**********************************************************************
	CREATE STORED PROCEDURE SECTION
**********************************************************************/


go

create procedure Jrcrow9564.UpTable5 
as
begin
update jrcrow9564.Decks
	set DeckName = 'Muldrotha The Graveyard of Doom'
	Where DecksId = '1'
end

go

create procedure Jrcrow9564.DelTable5(
@CardTypeid int
)

as
begin
delete from jrcrow9564.CardType Where CardTypeid = @CardTypeid
end 
go


/**********************************************************************
	DATA POPULATION SECTION
**********************************************************************/
Insert into jrcrow9564.Ruling (RulingDescription, DateRuling, TournamentWasTheRulingMade, PersonCreatedRuling)
Values
('You must follow the normal timing permissions and 
restrictions of the cards you play from your graveyard',CAST('2018-4-27' as datetime),'SCGAtlanta2018','Riki Hayashi'),
(' 	Each player chooses a permanent to sacrifice from among the creatures and planeswalkers they control. 
You don’t choose which type of permanent
any other player has to sacrifice.',CAST('2018-10-5' as datetime),'WorldChampionship2018','Thomas Bisablle'),
('An activation cost of Variable ColorlessVariable Colorless means that you pay twice X.If you want X to be 3, you pay 6 to activate Blast Zone’s ability.',CAST('2019-5-3' as datetime),'MTGDenver','Steven Zwanger');


Insert into jrcrow9564.Color (ColorName, Black, Green, Blue, Red, White)
Values
('Colorless',0,0,0,0,0),
('Mono_Black',1,0,0,0,0),
('Mono_Green',0,1,0,0,0),
('Mono_Blue',0,0,1,0,0),
('Mono_Red',0,0,0,1,0),
('Mono_White',0,0,0,0,1),
('Golgari',1,1,0,0,0),
('Dimir',1,0,1,0,0),
('Rakdos',1,0,0,1,0),
('Orzhov',1,0,0,0,1),
('Simic',0,1,1,0,0),
('Gruul',0,1,0,1,0),
('Selesnya',0,1,0,0,1),
('Izzet',0,0,1,1,0),
('Azorius',0,0,1,0,1),
('Boros',0,0,0,1,1),
('Jund',1,1,0,1,0),
('Bant',0,1,1,0,1),
('Grixis',1,0,1,1,0),
('Naya',0,1,0,1,1),
('Esper',1,0,1,0,1),
('Jeskai',0,0,1,1,1),
('Mardu',1,0,0,1,1),
('Sultai',1,1,1,0,0),
('Temur',0,1,1,1,0),
('Abzan',1,1,0,0,1),
('Glint_Eye',1,1,1,1,0),
('Dune',1,1,0,1,1),
('Witch_Maw',1,1,1,0,1),
('Yore',1,0,1,1,1),
('Ink_Treader',0,1,1,1,1),
('Rainbow',1,1,1,1,1);



Insert into jrcrow9564.Edition (EditionName, DateOfRelease, Plane, NumberOfCardsInTheSet)
Values
	('Dominaria',Cast('2018-4-27' as datetime),'Dominaria',269),
	('War of the Sparks',Cast('2019-5-3' as datetime),'Ravnica',259),
	('Guilds of ravnica',Cast('2018-10-5' as datetime),'Ravnica',264);

Insert into jrcrow9564.CardType ( nameType, Zones, OnHowItWorks, rules)
Values
	('Land','Behind the battlefield','You can tap it to produce one mana','You can only play one land per a turn unless something adds to this rule'),
	('Creatures','The Battlefield','You use mana to cast these creatures. These creatures attack your opponent','Your creature can not attack the turn you cast it unless it had haste'),
	('Enchantments','On the side of the battlefield or on creatures','These can add new rules to the board or buff your creatures','These are casted only on your turn unless it get flash'),
	('Artifacts','On the side of the battlefield','These can make mana, add new effects to the game','You can only cast these at these during your turn unless they get flash'),
	('Instant','These stay in your hand until you cast them','These can add many crazy effects wheneever you want it','You can cast these anytime'),
	('Sorceries','These stay in your hand until you cast them','These usually can buff your creatures, or have some crazy effect','You can only cast these on your turn unless they get flash');

insert into jrcrow9564.Formats (FormatName, LifeTotal, CardLimitOfEachCard, DateOfRelease )
	Values
		('Standard',Default,Default,CAST('1995-1-10' as datetime)),
		('Commander',40,1,CAST('2011-6-17' as datetime)),
		('Modern',Default,Default,CAST('2011-8-12' as datetime)),
		('Legacy',Default,Default,CAST('1997-7-5' as datetime));
	

insert into jrcrow9564.Cards (Cardname, ColorId, ConveratedManaCost, CardTypeId, EditionId, CardsRulingId, CreatureType)
	Values
		('Muldrotha, the gravetide',24,6,2,1,1,'Elemental Avatar'),
		('Blast Zone', 1, 0,1,2,3,'not a creature'),
		('Plaguecrafter',2,3,2,3,2,'Human Shaman');

insert into jrcrow9564.Decks (DeckName, ColorId, FormatsId, NumberOfCardsInDeck)
	Values
		('Muldrotha',24,2,100),
		('Mardu Plaugecrafter',23,1,60),
		('Colorless Eldrazi with blastzone',1,3,60);

Insert into jrcrow9564.DeckCards (DecksId, CardId, Quantity, DateAdded, IsCommander)
	Values
	(1,1,1,CAST('2020-5-3' as datetime),'Yes'),
	(2, 3, 4,CAST('2020-5-3' as datetime),'not a commander deck'),
	(3,2,4,CAST('2020-5-3' as datetime),'not a commander deck');


/**********************************************************************
	RUN STORED PROCEDURE SECTION
**********************************************************************/

exec Jrcrow9564.UpTable5
exec jrcrow9564.DelTable5 6


/**********************************************************************
	END OF SCRIPT
**********************************************************************/

/**************************************************
Drop tables section 
drop table jrcrow9564.ruling;
drop table jrcrow9564.Color;
Drop table jrcrow9564.Edition;
Drop table jrcrow9564.CardType;
Drop table jrcrow9564.Formats;
Drop table jrcrow9564.Cards;
Drop table jrcrow9564.Decks;
Drop table jrcrow9564.DeckCards;
***************************************************/
