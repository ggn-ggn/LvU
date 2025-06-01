create table lvu.user
(
    id           int auto_increment comment '主键'
        primary key,
    username     varchar(150) not null comment '用户名',
    password     varchar(150) not null comment '密码',
    id_code      varchar(100) null comment '身份证号',
    phone        varchar(100) null comment '手机号',
    `character`  varchar(100) null comment '性格',
    travel_hobby varchar(150) null comment '旅游爱好',
    residence    varchar(150) null comment '居住地',
    gender       varchar(10)  null comment '性别',
    constraint username
        unique (username)
);

