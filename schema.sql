create schema video_jc;

use video_jc;

CREATE TABLE if not exists owner_details (  
    content_id varchar(24) NOT NULL,
    timeLinked DATETIME, 
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
    publishedAt DATETIME, 
    description VARCHAR(500),
    PRIMARY KEY(videoId),
    FOREIGN KEY(channellid) references channell(channellid)
);

CREATE TABLE if not exists video_statistics (
    viewCount int(255), 
    likeCount int(255),
    dislikeCount int(255),  
    favoriteCount int(255), 
    commentCount int(255),
    videoId VARCHAR(30) NOT NULL,
    FOREIGN KEY(videoId) references video(videoId)
);

CREATE TABLE if not exists channel_statistics (
    viewCount int(255),
    channellid VARCHAR(30) NOT NULL,
    subscriberCount int(255),
    videoCount int(255),
    FOREIGN KEY(channellid) references channell(channellid)
);

insert into owner_details (content_id, timeLinked)
values (' ', null);

INSERT INTO channell (channellid, channelTitle, kind, content_id,link, publishedAt , description)
VALUES ('UCe1XGNDeEwAx5xaLGcNPEbQ', 'TV Jornal SBT', 'youtube#channel', ' ', 'https://www.youtube.com/channel/UCe1XGNDeEwAx5xaLGcNPEbQ', '2019-12-26T17:37:45Z', 
'No canal da TV Jornal SBT, você confere os principais vídeos de jornalismo e entretenimento da TV Jornal, emissora do Recife ...'),
('UCOFMoDHG-vKXs-f5vcG7JaQ', 'TV Guararapes Oficial', 'youtube#channel', ' ', 'https://www.youtube.com/channel/UCOFMoDHG-vKXs-f5vcG7JaQ', '2015-03-30T20:52:36Z', 
'A TV Clube agora é TV Guararapes - Pernambuco em todas as telas. Sigam nossas redes sociais: Whatsapp: ...'),
('UCQD_Fq8NZXbHz9LI8Fa1Q9A', 'TV Jornal Interior', 'youtube#channel', ' ', 'https://www.youtube.com/c/TVJornalInterior/featured', '2016-07-');


INSERT INTO video (videoId, channellid, link, kind, title, publishedAt, description_vid)
VALUES ('4opM5Nt85yg', 'UCe1XGNDeEwAx5xaLGcNPEbQ', 'https://www.youtube.com/watch?v=4opM5Nt85yg', 'youtube#video', 
'TV Jornal estreia novo estúdio e traz novidades na programação', '2021-09-13T12:57:59Z', 
'A TV Jornal estreou nesta segunda-feira (13), o novo estúdio de Jornalismo da emissora trazendo novidades na programação.'),
('VvCz9dh2_ds', 'UCAQN1P1htBCZKvj2vcFCcmw', 'https://www.youtube.com/watch?v=VvCz9dh2_ds', 'youtube#video', 
'GLOBO AO VIVO HD 25/05/2022 QUANTO MAIS VIDA MELHOR - JORNAL NACIONAL - PANTANAL', '2022-05-24T20:10:52Z',
'GLOBO AO VIVO, GLOBO AO VIVO AGORA, GLOBO AO VIVO HD ,GLOBO HOJE, GLOBO ONLINE, REDE GLOBO, globo ao vivo ...'),
('gTHSgcV4cPs', 'UCe1XGNDeEwAx5xaLGcNPEbQ', 'https://www.youtube.com/watch?v=gTHSgcV4cPs', 'youtube#video', 
'#AOVIVO | Pré-jogo entre Sport x Fortaleza pelo primeiro jogo da final da Copa do Nordeste 2022', '2022-04-01T00:17:36Z', 
'Acompanhe todos os detalhes do pré-jogo entre Sport x Fortaleza, pelo primeiro jogo da final da Copa do Nordeste 2022, com ...'),
('TpphwOkx15M', 'UCe1XGNDeEwAx5xaLGcNPEbQ', 'https://www.youtube.com/watch?v=TpphwOkx15M', 'youtube#video', 
'#AOVIVO | Pré-jogo entre Sport x CRB pela Copa do Nordeste 2022', '2022-03-27T21:35:18Z', 
'Acompanhe todos os detalhes do pré-jogo entre Sport x CRB, pela semifinal da Copa do Nordeste 2022, com Aroldo Costa.'),
('-mpFDHfb9pY', 'UCQD_Fq8NZXbHz9LI8Fa1Q9A', 'https://www.youtube.com/watch?v=-mpFDHfb9pY', 'youtube#video', 
'Transmissão ao vivo de TV Jornal Interior', '2021-04-08T13:35:20Z', ' '),
('twPEPnitz6U', 'UCP391YRAjSOdM_bwievgaZA', 'https://www.youtube.com/watch?v=twPEPnitz6U', 'youtube#video', 
'JORNAL DA MANHÃ - 28/05/2022', '2022-05-28T14:47:20Z', 
'Baixe o app Panflix: https://www.panflix.com.br/ Baixe o AppNews Jovem Pan na Google Play store https://bit.ly/2KRm8OJ Baixe o ...'),
('gTHSgcV4cPs', 'UCe1XGNDeEwAx5xaLGcNPEbQ', 'https://www.youtube.com/watch?v=gTHSgcV4cPs', 'youtube#video', 
'#AOVIVO | Pré-jogo entre Sport x Fortaleza pelo primeiro jogo da final da Copa do Nordeste 2022', '2022-04-01T00:17:36Z', 
'Acompanhe todos os detalhes do pré-jogo entre Sport x Fortaleza, pelo primeiro jogo da final da Copa do Nordeste 2022, com ...'),
('-mpFDHfb9pY', 'UCQD_Fq8NZXbHz9LI8Fa1Q9A', 'https://www.youtube.com/watch?v=-mpFDHfb9pY', 'youtube#video', 
'Transmissão ao vivo de TV Jornal Interior', '2021-04-08T13:35:20Z', ' '),
('Ht5DL01JCLI', 'UCOFMoDHG-vKXs-f5vcG7JaQ', 'https://www.youtube.com/watch?v=Ht5DL01JCLI', 'youtube#video', 
'Balanço Geral Manhã na íntegra - 25/05/2025', '2022-05-25T11:41:42Z', 
'Whatsapp: encurtador.com.br/hlHIX Facebook: facebook.com/tvguararapesoficial Instagram: Instagram.com/tvguararapesoficial ...'),
('6qLnAZ76AzI', 'UCOFMoDHG-vKXs-f5vcG7JaQ', 'https://www.youtube.com/watch?v=6qLnAZ76AzI', 'youtube#video', 
'Tudo é Notícia -  AO VIVO', '2022-05-28T17:13:07Z', 'Tudo é Notícia - AO VIVO #tudoénotícia.'),
('B8zhql6aA08', 'UCoa-D_VfMkFrCYodrOC9-mA', 'https://www.youtube.com/watch?v=B8zhql6aA08', 'youtube#video', 
'JORNAL DA BAND - 28/05/2022', '2022-05-28T23:41:28Z', 
'INSCREVA-SE NO CANAL E NÃO PERCA NENHUMA NOTÍCIA DO BRASIL E DO MUNDO. Siga as nossas redes sociais: ...'),
('qyBsgDXDOKs', 'UCP4OAt3pxqIhh_DLy-SK20g', 'https://www.youtube.com/watch?v=qyBsgDXDOKs', 'youtube#video', 
'Bronca Pesada com Cardinot (Trechos) - TV Jornal Digital - Recife/PE', '2011-07-09T21:31:08Z', 
'A pedidos: Trechos do programa Bronca Pesada apresentado pelo Cardinot. Programa exibido em 7 de Julho de 2011. TV Jornal ...');

INSERT INTO video_statistics (viewCount, likeCount, dislikeCount, commentCount, videoId)
VALUES (null, null, null , null, "UCe1XGNDeEwAx5xaLGcNPEbQ" ),
		('4.586', '187', null , '13', "4opM5Nt85yg" ),
		('1.251', '49', null , '1', "LI5T8XBcVWM" ),
		(null, null, null , null, "VvCz9dh2_ds" ),
		('21.607', '422', null , '5', "gTHSgcV4cPs" ),
		('24.512', '582', null , '8', "TpphwOkx15M" ),
		('16.374', '362', null , '29', "-mpFDHfb9pY" ),
		('30.114', '978', null , '20', "Ht5DL01JCLI" ),
		(null, null, null , null, "UCOFMoDHG-vKXs-f5vcG7JaQ"),
		(null, null, null , null, "UCOFMoDHG-vKXs-f5vcG7JaQ"),
		(null, null, null , null, "UCOFMoDHG-vKXs-f5vcG7JaQ"),
		('24.512', '582', null , '8', "TpphwOkx15M"),
		('21.607', '422', null , '5', "twPEPnitz6U" ),
		('306.522', '12.000', null , '48', "gTHSgcV4cPs" ),
		('16.374', '362', null , '29', "-mpFDHfb9pY" ),
		('20.114', '978', null , '20', "Ht5DL01JCLI" ),
		('35.417', '1.3000', null , '41', "6qLnAZ76AzI" ),
		('134.091', null, null , '39', "B8zhql6aA08" ),
		('1.257.440', '8.000', null , '327', "qyBsgDXDOKs" );
        
        INSERT INTO channel_statistics (viewCount, channellid, subscriberCount, videoCount)
VALUES ('17.048.470', "UCe1XGNDeEwAx5xaLGcNPEbQ", '110.000' , '6.849'),
		('17.048.470', "UCe1XGNDeEwAx5xaLGcNPEbQ", '110.000' , '6.849'),
		('17.048.470', "UCe1XGNDeEwAx5xaLGcNPEbQ", '110.000' , '6.849'),
		('0', "UCAQN1P1htBCZKvj2vcFCcmw", '82.2000' , '0'),
		('17.048.470', "UCe1XGNDeEwAx5xaLGcNPEbQ", '110.000' , '6.849'),
		('17.048.470', "UCe1XGNDeEwAx5xaLGcNPEbQ", '110.000' , '6.849'),
		('296.392', "UCa7utqA7qkZxm6RN2tM4ukg", '5.2000' , '393'),
		('98.655.056', "UCOFMoDHG-vKXs-f5vcG7JaQ", '456.000' , '11.334'),
		('98.655.056', "UCOFMoDHG-vKXs-f5vcG7JaQ", '456.000' , '11.334'),
		('98.655.056', "UCOFMoDHG-vKXs-f5vcG7JaQ", '456.000' , '11.334'),
		('17.048.470', "UCe1XGNDeEwAx5xaLGcNPEbQ", '110.000' , '6.849'),
		('17.048.470', "UCe1XGNDeEwAx5xaLGcNPEbQ", '110.000' , '6.849'),
		('2.001.756.622', "jovempannews", '5.0400.00' , '80.958'),
		('17.048.470', "UCe1XGNDeEwAx5xaLGcNPEbQ", '110.000' , '6.849'),
		('20.162.983', "UCQD_Fq8NZXbHz9LI8Fa1Q9A", '103.000' , '4.469'),
		('98.655.056', "UCOFMoDHG-vKXs-f5vcG7JaQ", '456.000' , '11.334'),
		('98.655.056', "UCOFMoDHG-vKXs-f5vcG7JaQ", '456.000' , '11.334'),
		(null, null, null , null),
		('1.548.985.663', "UCoa-D_VfMkFrCYodrOC9-mA", '3.7500.00' , '79.690'),
		('27.493.627', "Leonardo26PE", '58.2000' , '599');