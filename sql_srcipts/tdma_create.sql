create sequence id_poezd_seq;

alter sequence id_poezd_seq owner to tstadmin;

create table tm_object_op
(
    id_poezd       numeric(38)                      not null,
    vrsvop         timestamp                        not null,
    kodop_p        char(2)                          not null,
    dis_esr        char(6),
    dis_park       char(2),
    dis_put        char(2),
    kateg_poezd    numeric,
    nom_poezd      varchar(15),
    esr_f          char(6),
    pn_sost        char(3),
    esr_n          char(6),
    vag_gol        char(8),
    vag_hvost      char(8),
    pr_grup        numeric,
    polnota        numeric,
    udl_p          real,
    ves_tara_p     numeric(38),
    ves_netto_p    numeric(38),
    ves_brutto_p   numeric(38),
    osi_p          numeric(38),
    osi_p_rol      numeric(38),
    kol_vag_ob     numeric(38),
    kol_vag_gr     numeric(38),
    kod_prikr_p    char,
    marsh_p        char,
    ngb_n          char,
    ngb_b          char,
    ngb_v          char,
    ngb_vt         char,
    kont_sr_gr_p   numeric(38),
    kont_sr_por_p  numeric(38),
    kont_kr_gr_p   numeric(38),
    kont_kr_por_p  numeric(38),
    pr_tg          char,
    pr_pov_vesa    char,
    pr_dls         char,
    pr_pdl         char,
    kod_vp         smallint  default 0,
    esr_napr       char(6),
    esr_napr_prib  varchar(6),
    savedate       timestamp default LOCALTIMESTAMP not null,
    pr_soed        char,
    code_src       smallint,
    id_message_src numeric,
    constraint xpktm_object_op
        primary key (id_poezd, vrsvop)
);

comment on table tm_object_op is 'Таблица операций с объектами ';

comment on column tm_object_op.id_poezd is 'Системный идентификатор поезда';

comment on column tm_object_op.vrsvop is 'Дата и время совершения последней операции с поездом';

comment on column tm_object_op.kodop_p is 'Код операции с поездом';

comment on column tm_object_op.dis_esr is 'Дислокация код ЕСР станции';

comment on column tm_object_op.dis_park is 'Дислокация номер парка';

comment on column tm_object_op.dis_put is 'Дислокация номер пути';

comment on column tm_object_op.kateg_poezd is 'Код категории поезда';

comment on column tm_object_op.nom_poezd is 'Номер поезда';

comment on column tm_object_op.esr_f is 'ИНДЕКС ПОЕЗДА:
ЕСР станции формирования';

comment on column tm_object_op.pn_sost is 'Порядковый номер состава';

comment on column tm_object_op.esr_n is 'ЕСР станции назначения';

comment on column tm_object_op.vag_gol is 'Номер головного вагона';

comment on column tm_object_op.vag_hvost is 'Номер хвостового вагона';

comment on column tm_object_op.pr_grup is 'Ппризнак группы вагонов (0-поезд, 1-группв вагонов, 2 - локомотив)';

comment on column tm_object_op.polnota is 'Признак полноты информации о повагонном составе поезда:
0- нет сведениий о вагонах
1- есть сведения о части вагонов
2- информация из ТГНЛ
3- НЛП подготовлен в АРМ ТК';

comment on column tm_object_op.udl_p is 'Условная длина поезда';

comment on column tm_object_op.ves_tara_p is 'Вес тары поезда в центнерах';

comment on column tm_object_op.ves_netto_p is 'Вес нетто поезда в тоннах';

comment on column tm_object_op.ves_brutto_p is 'Вес брутто поезда в тоннах';

comment on column tm_object_op.osi_p is 'Количество осей поезда';

comment on column tm_object_op.osi_p_rol is 'Количество осей поезда на роликах';

comment on column tm_object_op.kol_vag_ob is 'Общее количество вагонов в поезде';

comment on column tm_object_op.kol_vag_gr is 'Количество грузовых вагонов';

comment on column tm_object_op.kod_prikr_p is 'Код прикрытия';

comment on column tm_object_op.marsh_p is 'Отметка о маршруте';

comment on column tm_object_op.ngb_n is 'Негабаритность нижняя';

comment on column tm_object_op.ngb_b is 'Негабаритность боковая';

comment on column tm_object_op.ngb_v is 'Негабаритность нижняя';

comment on column tm_object_op.ngb_vt is 'Вертикальная сверхнегабаритность';

comment on column tm_object_op.kont_sr_gr_p is 'Количество контейнеров среднетоннажных груженых в поезде';

comment on column tm_object_op.kont_sr_por_p is 'Количество контейнеров среднетоннажных порожних в поезде';

comment on column tm_object_op.kont_kr_gr_p is 'Количество контейнеров крупнотоннажных груженых в поезде';

comment on column tm_object_op.kont_kr_por_p is 'Количество контейнеров крупнотоннажных порожних в поезде';

comment on column tm_object_op.pr_tg is 'Тяжеловесный';

comment on column tm_object_op.pr_pov_vesa is 'Поезд повышенного веса';

comment on column tm_object_op.pr_dls is 'Длинносоставный поезд';

comment on column tm_object_op.pr_pdl is 'Поезд повышенной длины';

comment on column tm_object_op.kod_vp is 'Код вида поезда 0-не определен, 1-транзитный 2-своего формирования,3- в расформирование,';

comment on column tm_object_op.esr_napr is 'ЕСР направления
отправления/прибытия';

comment on column tm_object_op.esr_napr_prib is 'ЕСР направления
прибытия для операций проследования';

comment on column tm_object_op.savedate is 'Время записи в бд';

comment on column tm_object_op.pr_soed is 'Признак соединенного поезда 1-объединенный поезд, 2-составная часть объединенного.';

comment on column tm_object_op.code_src is 'Источник записи GG';

alter table tm_object_op
    owner to tstadmin;

create index xie1tm_object_op
    on tm_object_op (vrsvop);

create table tm_objects
(
    id_poezd      numeric   not null,
    vrsvop        timestamp not null,
    dis_esr       varchar(6),
    dis_park      varchar(2),
    dis_put       varchar(2),
    nom_poezd     varchar(15),
    esr_f         varchar(6),
    pn_sost       varchar(3),
    esr_n         varchar(6),
    pr_grup       varchar(1),
    pr_soed       varchar(1),
    kodop_p       varchar(2),
    kateg_poezd   numeric,
    esr_napr      varchar(6),
    esr_napr_prib varchar(6)
);

comment on table tm_objects is 'Таблица актуальных объектов';

comment on column tm_objects.id_poezd is 'Системный идентификатор поезда';

comment on column tm_objects.vrsvop is 'Дата и время совершения последней операции с поездом';

comment on column tm_objects.dis_esr is 'еср станции';

comment on column tm_objects.dis_park is 'парк';

comment on column tm_objects.dis_put is 'путь';

comment on column tm_objects.nom_poezd is 'номер поезда';

comment on column tm_objects.esr_f is 'Код еср станции формирования';

comment on column tm_objects.pn_sost is 'порядковый номер состава';

comment on column tm_objects.esr_n is 'Код еср станции назначения';

comment on column tm_objects.pr_grup is 'признак группы вагонов (0-поезд, 1-группв вагонов, 2 - локомотив)';

comment on column tm_objects.pr_soed is 'признак соединенного поезда 1-объединенный поезд, 2-составная часть объединенного.';

comment on column tm_objects.kodop_p is 'код операции с поездом';

comment on column tm_objects.kateg_poezd is 'код категории поезда';

comment on column tm_objects.esr_napr is 'Код еср станции направления отправления/прибытия';

comment on column tm_objects.esr_napr_prib is 'Код еср станции направления прибытия для операции проследования';

alter table tm_objects
    owner to tstadmin;

create table tm_vag
(
    nomvag    char(8)                            not null
        constraint xpktm_vag
            primary key,
    vrsvop    timestamp                          not null,
    id_poezd  numeric(38) default 0              not null,
    dis_esr   char(6),
    dis_park  char(2),
    dis_put   char(2),
    kodop     char(2),
    tip_op    char(2),
    savedate  timestamp   default LOCALTIMESTAMP not null,
    kod_kateg smallint,
    esr_nazn  varchar(6),
    ves_gruz  numeric,
    pnv       numeric
);

comment on table tm_vag is 'Вагоны';

comment on column tm_vag.nomvag is 'Номер вагона';

comment on column tm_vag.vrsvop is 'Время свершения операции';

comment on column tm_vag.id_poezd is 'Идентификатор поезда';

comment on column tm_vag.kodop is 'Код операции с вагоном';

comment on column tm_vag.tip_op is 'Тип операции с вагоном';

comment on column tm_vag.savedate is 'Время записи в бд';

comment on column tm_vag.kod_kateg is 'Код категории парка';

comment on column tm_vag.esr_nazn is 'Код еср станции назначения вагона';

comment on column tm_vag.ves_gruz is 'Вес груза в тоннах';

comment on column tm_vag.pnv is 'Порядковый номер вагона в поезде';

alter table tm_vag
    owner to tstadmin;

create index xie1tm_vag
    on tm_vag (id_poezd);

create index xie3tm_vag
    on tm_vag (vrsvop);

create index xie5tm_vag
    on tm_vag (esr_nazn);

create table tm_vag_op
(
    nomvag         char(8)                            not null,
    vrsvop         timestamp                          not null,
    dis_esr        char(6),
    dis_park       char(2),
    dis_put        char(2),
    kodop          char(2)                            not null,
    tip_op         char(2)                            not null,
    kod_kateg      smallint,
    id_poezd       numeric(38) default 0              not null,
    rol            char,
    rod_vag        char(3),
    ut_ves_tar     numeric(38),
    kodsobs        char(2),
    soba           char(2),
    ves_gruz       numeric(38),
    ddost          timestamp,
    gruz           char(6),
    osiv           numeric,
    tip_kont       numeric,
    kont_gr        numeric(38),
    kont_por       numeric(38),
    esr_naz_v      char(6),
    esr_otp_v      char(6),
    grpol          char(4),
    esr_per_vag    char(6),
    prgr           smallint,
    mar_grp        char,
    sch_prikr      char,
    njd            char,
    kol_plomb      char,
    ohr            char,
    prim           char(6),
    brutto         numeric,
    savedate       timestamp   default LOCALTIMESTAMP not null,
    npp            numeric,
    code_src       numeric,
    id_message_src numeric,
    tara           real,
    okpo_vl        integer,
    brutto_fact    numeric,
    constraint xpktm_vag_op
        primary key (nomvag, vrsvop)
);

comment on table tm_vag_op is 'Таблица операций с вагонами';

comment on column tm_vag_op.nomvag is 'Номер вагона';

comment on column tm_vag_op.vrsvop is 'Время свершения операции';

comment on column tm_vag_op.dis_esr is 'Дислокация код ЕСР станции';

comment on column tm_vag_op.dis_park is 'Дислокация номер парка';

comment on column tm_vag_op.dis_put is 'Дислокация номер пути';

comment on column tm_vag_op.kodop is 'Код операции с вагоном';

comment on column tm_vag_op.tip_op is 'Тип операции с вагоном';

comment on column tm_vag_op.kod_kateg is 'ОТМЕТКИ И ПРИЗНАКИ Код категории парка: Рабочий парк: 2-ТР_БП 3-ТР_СП 4- мест 6-РП неопр. Нерабочий парк: 11-резерв МПС 12- технологич. резерв 13- неисправный 14-спецтехнадобности 15-ост.хознужды 16- жилье и склады  18-обменный парк 19-НРП без детализации (нераспределено). Запас МПС: 17-запас МПС';

comment on column tm_vag_op.id_poezd is 'Идентификатор поезда';

comment on column tm_vag_op.rol is 'Отметка о роликах';

comment on column tm_vag_op.rod_vag is 'род вагона';

comment on column tm_vag_op.ut_ves_tar is 'Уточняющий вес тары-графа "Тара вагона" натурного листа (в тоннах)';

comment on column tm_vag_op.kodsobs is 'Код государства-собственника картотечный';

comment on column tm_vag_op.soba is 'Код государства-собственника с борта';

comment on column tm_vag_op.ves_gruz is 'Вес груза в тоннах';

comment on column tm_vag_op.ddost is 'Дата истечения срока доставки';

comment on column tm_vag_op.gruz is 'Код груза';

comment on column tm_vag_op.osiv is 'Количество осей';

comment on column tm_vag_op.kont_gr is 'Количество груженых контейнеров';

comment on column tm_vag_op.kont_por is 'Количество порожних контейнеров';

comment on column tm_vag_op.esr_naz_v is 'ЕСР станции назначения вагона (при выборе сведений из ТГНЛ или при вводе натурного листа: 5-й разряд=0, 6-й разряд - контрольный';

comment on column tm_vag_op.esr_otp_v is 'СВЕДЕНИЯ О МЕСТЕ ПОСЛЕДНЕЙ ГРУЗОВОЙ ОПЕРАЦИИ Код по ЕСР станции выполнения грузовой операции';

comment on column tm_vag_op.grpol is 'Код грузополучателя';

comment on column tm_vag_op.prgr is 'Код гружености вагона:';

comment on column tm_vag_op.mar_grp is 'Маршрутная группа';

comment on column tm_vag_op.sch_prikr is 'Схема прикрытия';

comment on column tm_vag_op.njd is 'Негабаритность   живность   длиннобазность';

comment on column tm_vag_op.kol_plomb is 'Количество пломб';

comment on column tm_vag_op.ohr is 'Признак наличия охраны у вагона (1-есть охрана)';

comment on column tm_vag_op.prim is 'Примечание';

comment on column tm_vag_op.brutto is 'вес брутто вагона, из ВЛ';

comment on column tm_vag_op.savedate is 'Время записи в бд';

comment on column tm_vag_op.tara is 'Тара вагона нормативная-картотечная - по таблицам характеристик (в центнерах)';

comment on column tm_vag_op.okpo_vl is 'ОКПО  владельца вагона';

comment on column tm_vag_op.brutto_fact is 'Фактический вес брутто от ППСС';

alter table tm_vag_op
    owner to tstadmin;

create index xie1tm_vag_op
    on tm_vag_op (vrsvop);

create index xie2tm_vag_op
    on tm_vag_op (id_poezd, vrsvop);

create index xie3tm_vag_op
    on tm_vag_op (savedate);

create table sys_options
(
    option_name  varchar not null
        constraint sys_options_pk
            primary key,
    option_value varchar
);

comment on column sys_options.option_name is 'Название';

comment on column sys_options.option_value is 'Значение';

alter table sys_options
    owner to tstadmin;


create table vivsd_asoup_p_oper (
    id bigint generated always as identity,
    date_form timestamp,
    date_op timestamp,
    date_perev_gar timestamp,
    date_snyat_gar timestamp,
    date_zap timestamp,
    dornod_posl smallint,
    dor_dis smallint,
    dor_nod_prib202 smallint,
    dor_rasch varchar,
    dvs timestamp,
    dvs_t timestamp,
    id_poezd int,
    index_poezd varchar,
    index_poezd_pred varchar,
    kds varchar,
    kds_t varchar,
    kod_prich_bros smallint,
    kol_otc smallint,
    kol_pric smallint,
    kol_sut_opozd smallint,
    kop_pmd smallint,
    kop_prib202 smallint,
    kskm_poezd int,
    ksnm_poezd int,
    napr_posl int,
    napr_prib202 int,
    nbe varchar,
    nod_dis smallint,
    nom_park smallint,
    nom_poezd smallint,
    nom_put smallint,
    oc_dis smallint,
    ont_time_write timestamp,
    poligon_01 integer,
    poligon_02 integer,
    poligon_03 integer,
    poligon_04 integer,
    poligon_05 integer,
    poligon_06 integer,
    poligon_07 integer,
    poligon_08 integer,
    poligon_09 integer,
    poligon_10 integer,
    progn_styk_sdach int,
    pr_npf_ist varchar,
    pr_npf_tek varchar,
    pr_op_pol varchar,
    pr_snyat_gar varchar,
    pr_styk_posl varchar,
    pr_styk_prib202 varchar,
    request_unq_seq bigint,
    req_date_time timestamp,
    rgn_dis smallint,
    rod_poezd smallint,
    stans_gar_obsln int,
    stan_dis int,
    stan_gar_obsl int,
    stan_gar_obsln int,
    stan_nazn_regul int,
    stan_op int,
    uns int,
    uns_t int,
    vid_otkl_norm smallint
  );
