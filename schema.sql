CREATE DATABASE video_JC; 

use video_JC;

CREATE TABLE if not exists owner_details(  
    contentOwner varchar(24) NOT NULL PRIMARY KEY /*Dono do conteúdo*/,
    timeLinked DATETIME() /*Tempo 'linkado'*/,
    PRIMARY KEY (contentOwner);
);

CREATE TABLE if not exists channel(
    channelId VARCHAR(24) NOT NULL PRIMARY KEY 'Primary Key',
    channelTitle VARCHAR(120) NOT NULL /*Títito do canal*/,
    destription VARCHAR(500) /*Descrição*/,
    customUrl VARCHAR(255) /*Url customizada*/,
    publishedAt VARCHAR(255) NOT NULL /*Publicado em*/,
    PRIMARY KEY (channelId),
    FOREIGN KEY (contentOwner);
);

CREATE TABLE if not exists video(  
    videoid VARCHAR(14) NOT NULL PRIMARY KEY 'Id',
    link VARCHAR(255),
    title VARCHAR(255),
    publishedAt DATETIME() /*Publicado em*/,
    description_vid VARCHAR(500),
    PRIMARY KEY (videoid),
    FOREIGN KEY (channelId);
);

CREATE TABLE if not exists video_statistics (
    viewCount int(255) /*Visualizações*/,
    likeCount int(255) /*Contagem de like*/,
    dislikeCount int(255) /*Contagem de dislike*/,
    favoriteCount int(255) /*Contagem de favoritos*/,
    commentCount int(255) /*Contagem de comentarios*/,
    FOREIGN KEY (videoid);
);

CREATE TABLE if not exists channel_statistics (
    viewCount int(255) /*Visualizações*/,
    subscriberCount: int(255) /*Contagem de inscritos*/,
    hiddenSubscriberCount int(255) /*Contagem de inscritos escondida*/,
    videoCount int(255) /*Contagem de videos*/,
    PRIMARY KEY (id),
    FOREIGN KEY (channelId);
);