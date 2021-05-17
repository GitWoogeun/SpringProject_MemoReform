create table QNA
(
    NO        NUMBER                 not null
        constraint QNA_PK
            primary key,
    WRITER_NO NUMBER                 not null
        constraint QNA_MBER_NO_FK
            references MBER,
    SJ        VARCHAR2(100)          not null,
    CN        VARCHAR2(1000)         not null,
    CO        NUMBER default 1,
    RGSDE     DATE   default SYSDATE not null
)
/

comment on table QNA is 'QNA'
/

comment on column QNA.NO is 'QNA ¿¿'
/

comment on column QNA.WRITER_NO is '¿¿¿'
/

comment on column QNA.SJ is '¿¿'
/

comment on column QNA.CN is '¿¿'
/

comment on column QNA.CO is '¿¿¿'
/

comment on column QNA.RGSDE is '¿¿¿'
/

