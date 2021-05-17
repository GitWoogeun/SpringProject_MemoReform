create table QNA_REPLY
(
    NO        NUMBER               not null
        constraint QNA_REPLY_PK
            primary key,
    QNA_NO    NUMBER               not null,
    WRITER_ID NUMBER               not null
        constraint QNA_REPLY_MBER_NO_FK
            references MBER,
    SJ        VARCHAR2(100),
    CN        VARCHAR2(1000)       not null,
    RGSDE     DATE default SYSDATE not null
)
/

comment on table QNA_REPLY is 'QNA ¿¿'
/

comment on column QNA_REPLY.NO is 'QNA ¿¿ ¿¿'
/

comment on column QNA_REPLY.QNA_NO is 'QNA ¿¿'
/

comment on column QNA_REPLY.WRITER_ID is '¿¿¿'
/

comment on column QNA_REPLY.SJ is '¿¿'
/

comment on column QNA_REPLY.CN is '¿¿'
/

comment on column QNA_REPLY.RGSDE is '¿¿¿'
/

