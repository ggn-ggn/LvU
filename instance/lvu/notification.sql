create table lvu.notification
(
    id        int auto_increment comment '主键'
        primary key,
    user_id   int                                  not null comment '用户id（关联user表的id）',
    message   varchar(500)                         not null comment '消息内容',
    timestamp datetime   default CURRENT_TIMESTAMP not null comment '时间戳',
    is_read   tinyint(1) default 0                 not null comment '是否已读',
    link      varchar(200)                         null comment '链接',
    constraint fk_notification_user
        foreign key (user_id) references lvu.user (id)
);

