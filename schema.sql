create schema video_jc;

use video_jc;

CREATE TABLE if not exists owner_details (  
    content_id varchar(24) NOT NULL,
    timeLinked DATE, 
    PRIMARY KEY(content_id)
);

CREATE TABLE if not exists Channell (
    channellid VARCHAR(30) NOT NULL,
    channelTitle VARCHAR(120) NOT NULL, 
    kind varchar(30),
    content_id varchar(24) NOT NULL,
    link VARCHAR(255), 
    publishedAt VARCHAR(255) NOT NULL,
    description VARCHAR(500),
    PRIMARY KEY (channellid), 
    FOREIGN KEY (content_id) references owner_details(content_id)
);

CREATE TABLE if not exists video (  
    videoId VARCHAR(30) NOT NULL,
    channellid VARCHAR(30) NOT NULL,
    link VARCHAR(255),
    kind varchar(30),
    title VARCHAR(255),
    publishedAt DATE, 
    description VARCHAR(500),
    PRIMARY KEY(videoId),
    FOREIGN KEY(channellid) references channell(channellid)
);

CREATE TABLE if not exists video_statistics (
    viewCount VARCHAR(255), 
    likeCount VARCHAR(255),
    dislikeCount VARCHAR(255),  
    favoriteCount VARCHAR(255), 
    commentCount VARCHAR(255),
    videoId VARCHAR(30) NOT NULL,
    FOREIGN KEY(videoId) references video(videoId)
);

CREATE TABLE if not exists channel_statistics (
    viewCount VARCHAR(255),
    channellid VARCHAR(30) NOT NULL,
    subscriberCount VARCHAR(255),
    videoCount VARCHAR(255),
    FOREIGN KEY(channellid) references channell(channellid)
);

insert into owner_details (content_id, timeLinked)
values (' ', null);

INSERT INTO channell (channellid, channelTitle, kind, content_id,link, publishedAt , description)
VALUES ('UCe1XGNDeEwAx5xaLGcNPEbQ', 'TV Jornal SBT', 'youtube#channel', ' ', 'https://www.youtube.com/channel/UCe1XGNDeEwAx5xaLGcNPEbQ', '2019-12-26', 
'No canal da TV Jornal SBT, você confere os principais vídeos de jornalismo e entretenimento da TV Jornal, emissora do Recife ...'),
('UCOFMoDHG-vKXs-f5vcG7JaQ', 'TV Guararapes Oficial', 'youtube#channel', ' ', 'https://www.youtube.com/channel/UCOFMoDHG-vKXs-f5vcG7JaQ', '2015-03-30', 
'A TV Clube agora é TV Guararapes - Pernambuco em todas as telas. Sigam nossas redes sociais: Whatsapp: ...'),
('UCQD_Fq8NZXbHz9LI8Fa1Q9A', 'TV Jornal Interior', 'youtube#channel', ' ', 'https://www.youtube.com/c/TVJornalInterior/featured', '2016-11-07', 
'Conteúdo produzido pela TV Jornal Interior/SBT Caruaru. Notícias de Pernambuco, jornalismo policial, futebol e entretenimento como Programa Cotidiano, Eu Fui Nesta Viagem, Programa Sobretudo e muito mais.'),
('UCP391YRAjSOdM_bwievgaZA', 'Jovem Pan News', 'youtube#channel', ' ', 'https://www.youtube.com/c/jovempannews', '2011-12-01', 
'A maior rede de rádio do Brasil está também no Youtube com a presença de Thiago Uberreich, Rodrigo Constantino, Augusto Nunes e todo o time de comentaristas Jovem Pan.');


INSERT INTO video (videoId, channellid, link, kind, title, publishedAt, description)
VALUES ('-mpFDHfb9pY', 'UCQD_Fq8NZXbHz9LI8Fa1Q9A', 'https://www.youtube.com/watch?v=-mpFDHfb9pY', 'youtube#video', 'Transmissão ao vivo de TV Jornal Interior', '2021-04-08', ' '),	 
('4opM5Nt85yg', 'UCe1XGNDeEwAx5xaLGcNPEbQ', 'https://www.youtube.com/watch?v=4opM5Nt85yg', 'youtube#video', 'TV Jornal estreia novo estúdio e traz novidades na programação', '2021-09-13', 'A TV Jornal estreou nesta segunda-feira (13), o novo estúdio de Jornalismo da emissora trazendo novidades na programação.'),
('6qLnAZ76AzI', 'UCOFMoDHG-vKXs-f5vcG7JaQ', 'https://www.youtube.com/watch?v=6qLnAZ76AzI', 'youtube#video', 'Tudo é Notícia -  AO VIVO', '2022-05-28', 'Tudo é Notícia - AO VIVO #tudoénotícia.'),
('gTHSgcV4cPs', 'UCe1XGNDeEwAx5xaLGcNPEbQ', 'https://www.youtube.com/watch?v=gTHSgcV4cPs', 'youtube#video', '#AOVIVO | Pré-jogo entre Sport x Fortaleza pelo primeiro jogo da final da Copa do Nordeste 2022', '2022-04-01', 'Acompanhe todos os detalhes do pré-jogo entre Sport x Fortaleza, pelo primeiro jogo da final da Copa do Nordeste 2022, com ...'),
('Ht5DL01JCLI', 'UCOFMoDHG-vKXs-f5vcG7JaQ', 'https://www.youtube.com/watch?v=Ht5DL01JCLI', 'youtube#video', 'Balanço Geral Manhã na íntegra - 25/05/2025', '2022-05-25', 'Whatsapp: encurtador.com.br/hlHIX Facebook: facebook.com/tvguararapesoficial Instagram: Instagram.com/tvguararapesoficial ...'),
('TpphwOkx15M', 'UCe1XGNDeEwAx5xaLGcNPEbQ', 'https://www.youtube.com/watch?v=TpphwOkx15M', 'youtube#video', '#AOVIVO | Pré-jogo entre Sport x CRB pela Copa do Nordeste 2022', '2022-03-27', 'Acompanhe todos os detalhes do pré-jogo entre Sport x CRB, pela semifinal da Copa do Nordeste 2022, com Aroldo Costa.'),
('twPEPnitz6U', 'UCP391YRAjSOdM_bwievgaZA', 'https://www.youtube.com/watch?v=twPEPnitz6U', 'youtube#video', 'JORNAL DA MANHÃ - 28/05/2022', '2022-05-28', 'Baixe o app Panflix: https://www.panflix.com.br/ Baixe o AppNews Jovem Pan na Google Play store https://bit.ly/2KRm8OJ Baixe o ...');

INSERT INTO video_statistics (viewCount, likeCount, dislikeCount, commentCount, videoId)
VALUES  ('4.586', '187', ' ' , '13', "4opM5Nt85yg" ),
		('21.607', '422', ' ' , '5', "gTHSgcV4cPs" ),
		('24.512', '582', ' ' , '8', "TpphwOkx15M" ),
		('16.374', '362', ' ' , '29', "-mpFDHfb9pY" ),
		('30.114', '978', ' ' , '20', "Ht5DL01JCLI" ),
		('24.512', '582', ' ' , '8', "TpphwOkx15M"),
		('21.607', '422', ' ' , '5', "twPEPnitz6U" ),
		('306.522', '12.000', ' ' , '48', "gTHSgcV4cPs" ),
		('16.374', '362', ' ' , '29', "-mpFDHfb9pY" ),
		('20.114', '978', ' ' , '20', "Ht5DL01JCLI" ),
		('35.417', '1.3000', ' ' , '41', "6qLnAZ76AzI" );
        
INSERT INTO channel_statistics (viewCount, channellid, subscriberCount, videoCount)
VALUES  ('17.048.470', "UCe1XGNDeEwAx5xaLGcNPEbQ", '110.000' , '6.849'),
		('98.655.056', "UCOFMoDHG-vKXs-f5vcG7JaQ", '456.000' , '11.334'),
		('2.001.756.622', "UCP391YRAjSOdM_bwievgaZA", '5.0400.00' , '80.958'),
		('20.162.983', "UCQD_Fq8NZXbHz9LI8Fa1Q9A", '103.000' , '4.469');
				
/*Filtros*/
SELECT video.title, video.publishedAt, video_statistics.viewCount, channell.channelTitle, channel_statistics.subscriberCount, channel_statistics.videoCount, channel_statistics.viewCount
FROM video_statistics JOIN video JOIN channell JOIN channel_statistics
WHERE video_statistics.videoId = video.videoId
AND video.channellid = channell.channellid
AND channell.channellid = channel_statistics.channellid;


SELECT video.title, video.publishedAt, video_statistics.viewCount, channell.channelTitle, channel_statistics.subscriberCount, channel_statistics.videoCount, channel_statistics.viewCount
FROM video_statistics JOIN video JOIN channell JOIN channel_statistics
WHERE video_statistics.videoId = video.videoId
AND video.channellid = channell.channellid
AND channell.channellid = channel_statistics.channellid
ORDER BY video_statistics.viewCount DESC;
