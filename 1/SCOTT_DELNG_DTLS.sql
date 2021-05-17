create table DELNG_DTLS
(
    NO         NUMBER               not null
        constraint DELNG_DTLS_PK
            primary key,
    USER_NO    NUMBER               not null
        constraint DELNG_DTLS_MBER_NO_FK
            references MBER,
    RQSTDOC_NO NUMBER               not null
        constraint DELNG_DTLS_RQSTDOC_NO_FK
            references RQSTDOC,
    EXPERT_NO  NUMBER               not null
        constraint DELNG_DTLS_MBER_NO_FK_2
            references MBER,
    PRPSL_NO   NUMBER               not null
        constraint DELNG_DTLS_PRPSL_NO_FK
            references PRPSL,
    ESTMT      NUMBER               not null,
    RGSDE      DATE default SYSDATE not null
)
/

comment on table DELNG_DTLS is '¿¿ ¿¿'
/

comment on column DELNG_DTLS.NO is '¿¿ ¿¿'
/

comment on column DELNG_DTLS.USER_NO is '¿¿¿ ¿¿'
/

comment on column DELNG_DTLS.RQSTDOC_NO is '¿¿¿ ¿¿'
/

comment on column DELNG_DTLS.EXPERT_NO is '¿¿¿ ¿¿'
/

comment on column DELNG_DTLS.PRPSL_NO is '¿¿¿ ¿¿'
/

comment on column DELNG_DTLS.ESTMT is '¿¿¿'
/

comment on column DELNG_DTLS.RGSDE is '¿¿¿'
/

