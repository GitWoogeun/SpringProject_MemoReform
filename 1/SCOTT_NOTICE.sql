create table NOTICE
(
    NO    NUMBER                 not null
        constraint NOTICE_PK
            primary key,
    SJ    VARCHAR2(100)          not null,
    CN    VARCHAR2(1000)         not null,
    CO    NUMBER default 1,
    RGSDE DATE   default SYSDATE not null
)
/

comment on table NOTICE is '¿¿ ¿¿'
/

comment on column NOTICE.NO is '¿¿ ¿¿ ¿¿'
/

comment on column NOTICE.SJ is '¿¿'
/

comment on column NOTICE.CN is '¿¿'
/

comment on column NOTICE.CO is '¿¿¿'
/

comment on column NOTICE.RGSDE is '¿¿¿'
/

