create table QNA_ANSWER
(
    NO        NUMBER               not null
        constraint QNA_ANSWER_PK
            primary key,
    QNA_NO    NUMBER               not null,
    WRITER_ID NUMBER               not null
        constraint QNA_ANSWER_MBER_NO_FK
            references MBER,
    SJ        VARCHAR2(100)        not null,
    CN        VARCHAR2(1000)       not null,
    RGSDE     DATE default SYSDATE not null
)
/

comment on table QNA_ANSWER is 'QNA ¿¿'
/

comment on column QNA_ANSWER.NO is 'QNA ¿¿ ¿¿'
/

comment on column QNA_ANSWER.QNA_NO is 'QNA ¿¿'
/

comment on column QNA_ANSWER.WRITER_ID is '¿¿¿'
/

comment on column QNA_ANSWER.SJ is '¿¿'
/

comment on column QNA_ANSWER.CN is '¿¿'
/

comment on column QNA_ANSWER.RGSDE is '¿¿¿'
/

