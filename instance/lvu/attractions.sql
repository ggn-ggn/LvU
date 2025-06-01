create table lvu.attractions
(
    id       int auto_increment comment '主键'
        primary key,
    城市     varchar(50)  null,
    景点名称 varchar(100) null,
    攻略数量 varchar(50)  null,
    评论数量 varchar(50)  null,
    星级     float        null,
    排名     varchar(50)  null,
    简介     text         null,
    链接     varchar(255) null,
    图片     varchar(255) null
);

