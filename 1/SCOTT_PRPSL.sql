create table PRPSL
(
    NO         NUMBER               not null
        constraint PRPSL_PK
            primary key,
    RQSTDOC_NO NUMBER               not null
        constraint PRPSL_RQSTDOC_NO_FK
            references RQSTDOC,
    EXPERT_NO  NUMBER               not null
        constraint PRPSL_MBER_NO_FK
            references MBER,
    SJ         VARCHAR2(100)        not null,
    CN         VARCHAR2(1000)       not null,
    ESTMT      NUMBER               not null,
    STTUS      CHAR default 'N'     not null,
    RGSDE      DATE default SYSDATE not null
)
/

comment on table PRPSL is '¿¿¿'
/

comment on column PRPSL.NO is '¿¿¿ ¿¿'
/

comment on column PRPSL.RQSTDOC_NO is '¿¿¿ ¿¿'
/

comment on column PRPSL.EXPERT_NO is '¿¿¿ ¿¿'
/

comment on column PRPSL.SJ is '¿¿'
/

comment on column PRPSL.CN is '¿¿'
/

comment on column PRPSL.ESTMT is '¿¿ ¿¿'
/

comment on column PRPSL.STTUS is '¿¿ ¿¿. Y: ¿¿, N: ¿¿¿'
/

comment on column PRPSL.RGSDE is '¿¿¿'
/

