create table lvu.invitation
(
    id         int auto_increment comment '主键'
        primary key,
    team_id    int                           not null comment '队伍id（关联team表的id）',
    inviter_id int                           not null comment '邀请人id（关联user表的id）',
    invitee_id int                           not null comment '被邀请人id（关联user表的id）',
    status     varchar(50) default 'pending' not null comment '邀请状态：pending, accepted, declined',
    constraint fk_invitation_invitee_user
        foreign key (invitee_id) references lvu.user (id),
    constraint fk_invitation_inviter_user
        foreign key (inviter_id) references lvu.user (id),
    constraint fk_invitation_team
        foreign key (team_id) references lvu.team (id)
);

