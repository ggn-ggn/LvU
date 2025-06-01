create table lvu.team
(
    id                 int auto_increment comment '主键'
        primary key,
    destination        varchar(150)  not null comment '目的地',
    departure_location varchar(150)  not null comment '出发地点',
    travel_mode        varchar(100)  null comment '出行方式',
    team_type          varchar(100)  null comment '队伍类型',
    travel_time        varchar(100)  not null comment '游玩时间',
    travel_budget      int unsigned  not null comment '旅游预算',
    max_members        int default 0 null comment '最大组队人数',
    current_members    int default 0 not null comment '当前组队人数',
    public_id          int           not null comment '发起人id（关联user表的id）',
    admin_id           int default 1 null comment '管理员id（关联user表的id）',
    travel_plan        text          null comment '旅游计划',
    popularity         int default 0 not null comment '队伍热度统计',
    view_count         int default 0 not null comment '查看次数',
    apply_count        int default 0 not null comment '入队申请次数',
    constraint fk_team_admin_user
        foreign key (admin_id) references lvu.user (id),
    constraint fk_team_public_user
        foreign key (public_id) references lvu.user (id)
);

