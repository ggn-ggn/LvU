create table lvu.user_team
(
    id           int auto_increment comment '主键'
        primary key,
    team_id      int           not null comment '组队id（关联team表的id）',
    join_user_id int           not null comment '参与者id（关联user表的id）',
    audit_status int default 0 not null comment '审核状态：0待审核 1审核通过 2审核不通过',
    constraint fk_user_team_team
        foreign key (team_id) references lvu.team (id),
    constraint fk_user_team_user
        foreign key (join_user_id) references lvu.user (id)
);

