----------------------------------------------------
-- Export file for user FEE_HLJ                   --
-- Created by Administrator on 2018/6/22, 9:49:31 --
----------------------------------------------------

spool fee_hlj.log

prompt
prompt Creating table B_ATTACHMENT_UNIT
prompt ================================
prompt
create table FEE_HLJ.B_ATTACHMENT_UNIT
(
  ID                 NUMBER(19) not null,
  ENTITY_CODE        VARCHAR2(255 CHAR),
  ENTITY_CREATE_DATE TIMESTAMP(6),
  ENTITY_DESC        VARCHAR2(4000 CHAR),
  FINISH_DATE        TIMESTAMP(6),
  ENTITY_NAME        VARCHAR2(255 CHAR),
  ENTITY_STATUS      VARCHAR2(100 CHAR),
  ATTACH_TYPE        VARCHAR2(128 CHAR),
  BIZ_ID             NUMBER(19),
  ENTITY_CREATOR_ID  NUMBER(19)
)
tablespace EPMSDEV
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.B_ATTACHMENT_UNIT
  add primary key (ID)
  using index 
  tablespace EPMSDEV
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table S_PRIVILEGE_USER
prompt ===============================
prompt
create table FEE_HLJ.S_PRIVILEGE_USER
(
  ID                     NUMBER(19) not null,
  PARTY_ADDRESS          VARCHAR2(500 CHAR),
  PARTY_CODE             VARCHAR2(50 CHAR),
  PARTY_DESC             VARCHAR2(255 CHAR),
  PARTY_NAME             VARCHAR2(255 CHAR),
  PHONE                  VARCHAR2(255 CHAR),
  ACTIVE_FLAG            NUMBER(1),
  EMAIL                  VARCHAR2(255 CHAR),
  END_DATE               TIMESTAMP(6),
  LOCK_FLAG              NUMBER(1),
  LOGIN_IP               VARCHAR2(255 CHAR),
  LOGIN_NAME             VARCHAR2(20 CHAR),
  MANAGER_ENABLED_FLAG   NUMBER(1),
  OA_ACCOUNT             VARCHAR2(255 CHAR),
  ORDER_ID               NUMBER(10),
  LOGIN_PASSWORD         VARCHAR2(50 CHAR),
  PASSWORD_MODIFY_TIME   TIMESTAMP(6),
  RELATION_ID            NUMBER(19),
  ROLE_ENABLED_FLAG      NUMBER(1),
  START_DATE             TIMESTAMP(6),
  U_ID                   VARCHAR2(100 CHAR),
  UPDATE_DATE            TIMESTAMP(6),
  WRONG_CREDENTIAL_TIMES NUMBER(10),
  CONSTRUCT_UNIT_ID      NUMBER(19),
  LEAF_ORG_ID            NUMBER(19),
  DEPARTMENT_ID          NUMBER(19),
  OFFICE_ID              NUMBER(19),
  SYSTEM_USER_ID         NUMBER(19),
  JOB_ID                 NUMBER(19),
  POSITION_ID            NUMBER(19)
)
tablespace EPMSDEV
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.S_PRIVILEGE_USER
  add primary key (ID)
  using index 
  tablespace EPMSDEV
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table B_CONTRACT_HEADER
prompt ================================
prompt
create table FEE_HLJ.B_CONTRACT_HEADER
(
  ID                 NUMBER(19) not null,
  ENTITY_CODE        VARCHAR2(255 CHAR),
  ENTITY_CREATE_DATE TIMESTAMP(6),
  ENTITY_DESC        VARCHAR2(4000 CHAR),
  FINISH_DATE        TIMESTAMP(6),
  ENTITY_NAME        VARCHAR2(255 CHAR),
  ENTITY_STATUS      VARCHAR2(100 CHAR),
  PROVIDER_NAME      VARCHAR2(255 CHAR),
  ENTITY_CREATOR_ID  NUMBER(19)
)
tablespace EPMSDEV
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.B_CONTRACT_HEADER
  add primary key (ID)
  using index 
  tablespace EPMSDEV
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.B_CONTRACT_HEADER
  add constraint FKA62D149D7D3296C0 foreign key (ENTITY_CREATOR_ID)
  references FEE_HLJ.S_PRIVILEGE_USER (ID);

prompt
prompt Creating table B_RESOURCE_UNIT
prompt ==============================
prompt
create table FEE_HLJ.B_RESOURCE_UNIT
(
  ID                 NUMBER(19) not null,
  ENTITY_CODE        VARCHAR2(255 CHAR),
  ENTITY_CREATE_DATE TIMESTAMP(6),
  ENTITY_DESC        VARCHAR2(4000 CHAR),
  FINISH_DATE        TIMESTAMP(6),
  ENTITY_NAME        VARCHAR2(255 CHAR),
  ENTITY_STATUS      VARCHAR2(100 CHAR),
  ENTITY_CREATOR_ID  NUMBER(19)
)
tablespace EPMSDEV
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.B_RESOURCE_UNIT
  add primary key (ID)
  using index 
  tablespace EPMSDEV
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.B_RESOURCE_UNIT
  add constraint FKA14149F87D3296C0 foreign key (ENTITY_CREATOR_ID)
  references FEE_HLJ.S_PRIVILEGE_USER (ID);

prompt
prompt Creating table C_CONTRACT_RENT_TYPE
prompt ===================================
prompt
create table FEE_HLJ.C_CONTRACT_RENT_TYPE
(
  ID           NUMBER(19) not null,
  TYPE_CODE    VARCHAR2(255 CHAR),
  TYPE_DESC    VARCHAR2(255 CHAR),
  DELETED_FLAG NUMBER(1),
  TYPE_NAME    VARCHAR2(255 CHAR),
  PRIORITY     NUMBER(10)
)
tablespace EPMSDEV
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.C_CONTRACT_RENT_TYPE
  add primary key (ID)
  using index 
  tablespace EPMSDEV
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table C_ORGANIZATION
prompt =============================
prompt
create table FEE_HLJ.C_ORGANIZATION
(
  ID                NUMBER(19) not null,
  ISLEAF_FLAG       NUMBER(1),
  ISROOT_FLAG       NUMBER(1),
  UNIT_NAME         VARCHAR2(255 CHAR),
  ACTIVE_FLAG       NUMBER(1),
  PARTY_CODE        VARCHAR2(50 CHAR),
  CONTACT           VARCHAR2(100 CHAR),
  PARTY_DESC        VARCHAR2(255 CHAR),
  END_DATE          TIMESTAMP(6),
  FINACIAL_CODE     VARCHAR2(50 CHAR),
  FINACIAL_CODE_TD  VARCHAR2(50 CHAR),
  INNER_CODE        VARCHAR2(50 CHAR),
  LEVEL_NO          NUMBER(10),
  LONG_NAME         VARCHAR2(200 CHAR),
  MANAGER           VARCHAR2(50 CHAR),
  MIS_CODE          NUMBER(19),
  PARTY_NAME        VARCHAR2(255 CHAR),
  O_ID              VARCHAR2(100 CHAR),
  PRIORITY          NUMBER(10),
  SIMPLE_NAME       VARCHAR2(50 CHAR),
  START_DATE        TIMESTAMP(6),
  UPDATE_DATE       TIMESTAMP(6),
  PARENT_ID         NUMBER(19),
  DEPARMENT_TYPE_ID NUMBER(19)
)
tablespace EPMSDEV
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.C_ORGANIZATION
  add primary key (ID)
  using index 
  tablespace EPMSDEV
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table C_PAYMENT_CYCLE
prompt ==============================
prompt
create table FEE_HLJ.C_PAYMENT_CYCLE
(
  ID           NUMBER(19) not null,
  TYPE_CODE    VARCHAR2(255 CHAR),
  TYPE_DESC    VARCHAR2(255 CHAR),
  DELETED_FLAG NUMBER(1),
  TYPE_NAME    VARCHAR2(255 CHAR),
  PRIORITY     NUMBER(10)
)
tablespace EPMSDEV
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.C_PAYMENT_CYCLE
  add primary key (ID)
  using index 
  tablespace EPMSDEV
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table C_POWER_SUPPLY_TYPE
prompt ==================================
prompt
create table FEE_HLJ.C_POWER_SUPPLY_TYPE
(
  ID           NUMBER(19) not null,
  TYPE_CODE    VARCHAR2(255 CHAR),
  TYPE_DESC    VARCHAR2(255 CHAR),
  DELETED_FLAG NUMBER(1),
  TYPE_NAME    VARCHAR2(255 CHAR),
  PRIORITY     NUMBER(10)
)
tablespace EPMSDEV
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.C_POWER_SUPPLY_TYPE
  add primary key (ID)
  using index 
  tablespace EPMSDEV
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table C_PROVIDER
prompt =========================
prompt
create table FEE_HLJ.C_PROVIDER
(
  ID           NUMBER(19) not null,
  TYPE_CODE    VARCHAR2(255 CHAR),
  TYPE_DESC    VARCHAR2(255 CHAR),
  DELETED_FLAG NUMBER(1),
  TYPE_NAME    VARCHAR2(255 CHAR),
  PRIORITY     NUMBER(10),
  CITY         VARCHAR2(512 CHAR),
  PROVIDERNAME VARCHAR2(512 CHAR),
  REGION       VARCHAR2(512 CHAR),
  SHIXIAODATE  TIMESTAMP(6)
)
tablespace EPMSDEV
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.C_PROVIDER
  add primary key (ID)
  using index 
  tablespace EPMSDEV
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table C_RESOURCE_SCENE
prompt ===============================
prompt
create table FEE_HLJ.C_RESOURCE_SCENE
(
  ID           NUMBER(19) not null,
  TYPE_CODE    VARCHAR2(255 CHAR),
  TYPE_DESC    VARCHAR2(255 CHAR),
  DELETED_FLAG NUMBER(1),
  TYPE_NAME    VARCHAR2(255 CHAR),
  PRIORITY     NUMBER(10)
)
tablespace EPMSDEV
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.C_RESOURCE_SCENE
  add primary key (ID)
  using index 
  tablespace EPMSDEV
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table C_RESOURCE_SORT
prompt ==============================
prompt
create table FEE_HLJ.C_RESOURCE_SORT
(
  ID           NUMBER(19) not null,
  TYPE_CODE    VARCHAR2(255 CHAR),
  TYPE_DESC    VARCHAR2(255 CHAR),
  DELETED_FLAG NUMBER(1),
  TYPE_NAME    VARCHAR2(255 CHAR),
  PRIORITY     NUMBER(10)
)
tablespace EPMSDEV
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.C_RESOURCE_SORT
  add primary key (ID)
  using index 
  tablespace EPMSDEV
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table B_CONTRACT
prompt =========================
prompt
create table FEE_HLJ.B_CONTRACT
(
  ID                  NUMBER(19) not null,
  ENTITY_CODE         VARCHAR2(255 CHAR),
  ENTITY_CREATE_DATE  TIMESTAMP(6),
  ENTITY_DESC         VARCHAR2(4000 CHAR),
  FINISH_DATE         TIMESTAMP(6),
  ENTITY_NAME         VARCHAR2(255 CHAR),
  ENTITY_STATUS       VARCHAR2(100 CHAR),
  ALL_RENT            NUMBER(19,2),
  AVERAGE_RENT        NUMBER(19,2),
  CONTRACTTYPE        VARCHAR2(100 CHAR),
  ELECTRICITY_PRICE   NUMBER(19,8),
  END_DATE            TIMESTAMP(6),
  IS_REPLACE_POWER    NUMBER(1),
  PERIOD              NUMBER(19,2),
  START_DATE          TIMESTAMP(6),
  ENTITY_CREATOR_ID   NUMBER(19),
  HEADER_ID           NUMBER(19),
  PAYCYCLE_ID         NUMBER(19),
  RESOURCESCENE_ID    NUMBER(19),
  CITY_ID             NUMBER(19),
  RESOURCESORT_ID     NUMBER(19),
  RENT_UNIT_ID        NUMBER(19),
  POWER_UNIT_ID       NUMBER(19),
  SUPPLYTYPE_ID       NUMBER(19),
  REGION_ID           NUMBER(19),
  CONTRACTRENTTYPE_ID NUMBER(19),
  PAYCYCLE_RENT       NUMBER(19,2),
  CONTRACT_CODE       VARCHAR2(255 CHAR),
  CONTRACT_NAME       VARCHAR2(255 CHAR),
  PROVIDER            NUMBER(19),
  ADD_TAX             NUMBER(19,2),
  DRAFT_DEPART        VARCHAR2(255 CHAR),
  DRAFT_USER          VARCHAR2(255 CHAR),
  PROCUREMENT_METHOD  VARCHAR2(255 CHAR),
  PROJECT_CODE        VARCHAR2(255 CHAR),
  PROVIDER_NAME       VARCHAR2(255 CHAR),
  TOTAL_AMOUNT        NUMBER(19,2),
  TOTAL_TAX_AMOUNT    NUMBER(19,2),
  SIGN_DATE           TIMESTAMP(6),
  IF_CONTRACT         NUMBER(1),
  PROVIDER_ID         VARCHAR2(255 CHAR),
  MODIFTY_DATE        VARCHAR2(400)
)
tablespace EPMSDEV
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.B_CONTRACT
  add primary key (ID)
  using index 
  tablespace EPMSDEV
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.B_CONTRACT
  add constraint FK67B7904F14CCBFFD foreign key (RESOURCESORT_ID)
  references FEE_HLJ.C_RESOURCE_SORT (ID);
alter table FEE_HLJ.B_CONTRACT
  add constraint FK67B7904F4261E5E9 foreign key (PAYCYCLE_ID)
  references FEE_HLJ.C_PAYMENT_CYCLE (ID);
alter table FEE_HLJ.B_CONTRACT
  add constraint FK67B7904F4432092F foreign key (RENT_UNIT_ID)
  references FEE_HLJ.B_RESOURCE_UNIT (ID);
alter table FEE_HLJ.B_CONTRACT
  add constraint FK67B7904F6F05DADB foreign key (POWER_UNIT_ID)
  references FEE_HLJ.B_RESOURCE_UNIT (ID);
alter table FEE_HLJ.B_CONTRACT
  add constraint FK67B7904F7D3296C0 foreign key (ENTITY_CREATOR_ID)
  references FEE_HLJ.S_PRIVILEGE_USER (ID);
alter table FEE_HLJ.B_CONTRACT
  add constraint FK67B7904F813A160F foreign key (PROVIDER)
  references FEE_HLJ.C_PROVIDER (ID);
alter table FEE_HLJ.B_CONTRACT
  add constraint FK67B7904F9274FD07 foreign key (CONTRACTRENTTYPE_ID)
  references FEE_HLJ.C_CONTRACT_RENT_TYPE (ID);
alter table FEE_HLJ.B_CONTRACT
  add constraint FK67B7904FA642F552 foreign key (SUPPLYTYPE_ID)
  references FEE_HLJ.C_POWER_SUPPLY_TYPE (ID);
alter table FEE_HLJ.B_CONTRACT
  add constraint FK67B7904FACEBAB84 foreign key (REGION_ID)
  references FEE_HLJ.C_ORGANIZATION (ID);
alter table FEE_HLJ.B_CONTRACT
  add constraint FK67B7904FD74E11AD foreign key (CITY_ID)
  references FEE_HLJ.C_ORGANIZATION (ID);
alter table FEE_HLJ.B_CONTRACT
  add constraint FK67B7904FDA406769 foreign key (RESOURCESORT_ID)
  references FEE_HLJ.C_RESOURCE_SCENE (ID);
alter table FEE_HLJ.B_CONTRACT
  add constraint FK67B7904FDCB2A6B9 foreign key (HEADER_ID)
  references FEE_HLJ.B_CONTRACT_HEADER (ID);
alter table FEE_HLJ.B_CONTRACT
  add constraint FK67B7904FF379DB97 foreign key (RESOURCESCENE_ID)
  references FEE_HLJ.C_RESOURCE_SCENE (ID);

prompt
prompt Creating table B_METER_UINT
prompt ===========================
prompt
create table FEE_HLJ.B_METER_UINT
(
  ID                 NUMBER(19) not null,
  ENTITY_CODE        VARCHAR2(255 CHAR),
  ENTITY_CREATE_DATE TIMESTAMP(6),
  ENTITY_DESC        VARCHAR2(4000 CHAR),
  FINISH_DATE        TIMESTAMP(6),
  ENTITY_NAME        VARCHAR2(255 CHAR),
  ENTITY_STATUS      VARCHAR2(100 CHAR),
  ENTITY_CREATOR_ID  NUMBER(19)
)
tablespace EPMSDEV
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.B_METER_UINT
  add primary key (ID)
  using index 
  tablespace EPMSDEV
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.B_METER_UINT
  add constraint FKE4BF968D7D3296C0 foreign key (ENTITY_CREATOR_ID)
  references FEE_HLJ.S_PRIVILEGE_USER (ID);

prompt
prompt Creating table C_NET_STATUS
prompt ===========================
prompt
create table FEE_HLJ.C_NET_STATUS
(
  ID           NUMBER(19) not null,
  TYPE_CODE    VARCHAR2(255 CHAR),
  TYPE_DESC    VARCHAR2(255 CHAR),
  DELETED_FLAG NUMBER(1),
  TYPE_NAME    VARCHAR2(255 CHAR),
  PRIORITY     NUMBER(10)
)
tablespace EPMSDEV
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.C_NET_STATUS
  add primary key (ID)
  using index 
  tablespace EPMSDEV
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table C_OWNER_TYPE
prompt ===========================
prompt
create table FEE_HLJ.C_OWNER_TYPE
(
  ID           NUMBER(19) not null,
  TYPE_CODE    VARCHAR2(255 CHAR),
  TYPE_DESC    VARCHAR2(255 CHAR),
  DELETED_FLAG NUMBER(1),
  TYPE_NAME    VARCHAR2(255 CHAR),
  PRIORITY     NUMBER(10)
)
tablespace EPMSDEV
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.C_OWNER_TYPE
  add primary key (ID)
  using index 
  tablespace EPMSDEV
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table C_RESOURCE_TOWER_TYPE
prompt ====================================
prompt
create table FEE_HLJ.C_RESOURCE_TOWER_TYPE
(
  ID           NUMBER(19) not null,
  TYPE_CODE    VARCHAR2(255 CHAR),
  TYPE_DESC    VARCHAR2(255 CHAR),
  DELETED_FLAG NUMBER(1),
  TYPE_NAME    VARCHAR2(255 CHAR),
  PRIORITY     NUMBER(10)
)
tablespace EPMSDEV
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.C_RESOURCE_TOWER_TYPE
  add primary key (ID)
  using index 
  tablespace EPMSDEV
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table C_RESOURCE_TYPE
prompt ==============================
prompt
create table FEE_HLJ.C_RESOURCE_TYPE
(
  ID           NUMBER(19) not null,
  TYPE_CODE    VARCHAR2(255 CHAR),
  TYPE_DESC    VARCHAR2(255 CHAR),
  DELETED_FLAG NUMBER(1),
  TYPE_NAME    VARCHAR2(255 CHAR),
  PRIORITY     NUMBER(10)
)
tablespace EPMSDEV
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.C_RESOURCE_TYPE
  add primary key (ID)
  using index 
  tablespace EPMSDEV
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table W_WORKFLOW_ACTIVITY
prompt ==================================
prompt
create table FEE_HLJ.W_WORKFLOW_ACTIVITY
(
  ID                 NUMBER(19) not null,
  ENTITY_CODE        VARCHAR2(255 CHAR),
  ENTITY_CREATE_DATE TIMESTAMP(6),
  ENTITY_DESC        VARCHAR2(4000 CHAR),
  FINISH_DATE        TIMESTAMP(6),
  ENTITY_NAME        VARCHAR2(255 CHAR),
  ENTITY_STATUS      VARCHAR2(100 CHAR),
  ACTIVITY_CLASS     VARCHAR2(255 CHAR),
  ACTIVITY_ID        NUMBER(19),
  BUSINESS_TYPE      VARCHAR2(255 CHAR),
  FLOW_INSTANCE_ID   VARCHAR2(255 CHAR),
  READ_ONLY_URL      VARCHAR2(1024 CHAR),
  URL                VARCHAR2(1024 CHAR),
  USERID_COPY_FOR    VARCHAR2(1024 CHAR),
  USERNAME_COPY_FOR  VARCHAR2(1024 CHAR),
  INSTANCE_ID        NUMBER(19),
  ENTITY_CREATOR_ID  NUMBER(19),
  NODE_NAME          VARCHAR2(255 CHAR)
)
tablespace EPMSDEV
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.W_WORKFLOW_ACTIVITY
  add primary key (ID)
  using index 
  tablespace EPMSDEV
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table B_RESOURCE_POINT
prompt ===============================
prompt
create table FEE_HLJ.B_RESOURCE_POINT
(
  ID                          NUMBER(19) not null,
  ENTITY_CODE                 VARCHAR2(255 CHAR),
  ENTITY_CREATE_DATE          TIMESTAMP(6),
  ENTITY_DESC                 VARCHAR2(4000 CHAR),
  FINISH_DATE                 TIMESTAMP(6),
  ENTITY_NAME                 VARCHAR2(255 CHAR),
  ENTITY_STATUS               VARCHAR2(100 CHAR),
  DELETED_FLAG                NUMBER(1),
  ACREAGE                     NUMBER(10,4),
  BASE_STATION_ADDRESS        VARCHAR2(400 CHAR),
  CARRIER                     VARCHAR2(255 CHAR),
  DEPARTURE_DATE              TIMESTAMP(6),
  IF_CONVERGENCE_TRANSMISSION NUMBER(1),
  IF_NEED_INSPECT             NUMBER(1),
  IF_SHARE                    NUMBER(1),
  IF_TRUNK_TRANSMISSION       NUMBER(1),
  LATITUDE                    NUMBER(20,10),
  LONGITUDE                   NUMBER(20,10),
  RESOURCE_NATURE             VARCHAR2(100 CHAR),
  SHARE_TYPE                  VARCHAR2(255 CHAR),
  U_QUANTITY                  VARCHAR2(100 CHAR),
  REGION_ID                   NUMBER(19),
  WORKFLOW_ACTIVITY_ID        NUMBER(19),
  ENTITY_CREATOR_ID           NUMBER(19),
  ATTACHMENT_UNIT_ID          NUMBER(19),
  NETSTATUS_ID                NUMBER(19),
  APPLY_DEPT_ID               NUMBER(19),
  CITY_ID                     NUMBER(19),
  APPLY_ORG_ID                NUMBER(19),
  PROVINCE_ID                 NUMBER(19),
  OWNERTYPE_ID                NUMBER(19),
  RESOURCETYPE_ID             NUMBER(19),
  REGION_NAME                 VARCHAR2(100 CHAR),
  ROOM_ID                     VARCHAR2(255),
  BELONG_REGION               VARCHAR2(200 CHAR),
  FLOOR_POSITION              VARCHAR2(225 CHAR),
  IS_NODE_STATION             NUMBER(1),
  LIFE_CYCLE_STATE            VARCHAR2(225 CHAR),
  MAINTENANCE_MODE            VARCHAR2(225 CHAR),
  RONM_NAME                   VARCHAR2(225 CHAR),
  TOWER_SITE_CODE             VARCHAR2(100 CHAR),
  TOWER_SITE_NAME             VARCHAR2(225 CHAR),
  RESOURCETOWERTYPE_ID        NUMBER(19),
  LOCATION_POINT              VARCHAR2(225 CHAR),
  RANTCONTRACT_ID             NUMBER(19),
  ELECONTRACT_ID              NUMBER(19),
  DEPARTUREINTODATE           TIMESTAMP(6),
  METER_UINT_ID               NUMBER(19),
  CREATE_TIME                 VARCHAR2(100 CHAR),
  EXT_CODE                    VARCHAR2(225 CHAR),
  EXT_NAME                    VARCHAR2(225 CHAR),
  IS_TRANSNODE                VARCHAR2(100 CHAR),
  MAINT_MODE                  VARCHAR2(100 CHAR),
  RELATED_SITE                VARCHAR2(225 CHAR),
  ROOMTYPE                    VARCHAR2(100 CHAR),
  STANDARD_NAME               VARCHAR2(500 CHAR)
)
tablespace EPMSDEV
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.B_RESOURCE_POINT
  add primary key (ID)
  using index 
  tablespace EPMSDEV
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.B_RESOURCE_POINT
  add constraint FKC41E179C1B739349 foreign key (ELECONTRACT_ID)
  references FEE_HLJ.B_CONTRACT (ID);
alter table FEE_HLJ.B_RESOURCE_POINT
  add constraint FKC41E179C347C6DC8 foreign key (PROVINCE_ID)
  references FEE_HLJ.C_ORGANIZATION (ID);
alter table FEE_HLJ.B_RESOURCE_POINT
  add constraint FKC41E179C60E7F06E foreign key (NETSTATUS_ID)
  references FEE_HLJ.C_NET_STATUS (ID);
alter table FEE_HLJ.B_RESOURCE_POINT
  add constraint FKC41E179C6F47A83E foreign key (METER_UINT_ID)
  references FEE_HLJ.B_METER_UINT (ID);
alter table FEE_HLJ.B_RESOURCE_POINT
  add constraint FKC41E179C712C3366 foreign key (RESOURCETYPE_ID)
  references FEE_HLJ.C_RESOURCE_TYPE (ID);
alter table FEE_HLJ.B_RESOURCE_POINT
  add constraint FKC41E179C7D3296C0 foreign key (ENTITY_CREATOR_ID)
  references FEE_HLJ.S_PRIVILEGE_USER (ID);
alter table FEE_HLJ.B_RESOURCE_POINT
  add constraint FKC41E179C8C55BA8E foreign key (RESOURCETOWERTYPE_ID)
  references FEE_HLJ.C_RESOURCE_TOWER_TYPE (ID);
alter table FEE_HLJ.B_RESOURCE_POINT
  add constraint FKC41E179C967622C2 foreign key (APPLY_DEPT_ID)
  references FEE_HLJ.C_ORGANIZATION (ID);
alter table FEE_HLJ.B_RESOURCE_POINT
  add constraint FKC41E179CA29A3F85 foreign key (APPLY_ORG_ID)
  references FEE_HLJ.C_ORGANIZATION (ID);
alter table FEE_HLJ.B_RESOURCE_POINT
  add constraint FKC41E179CACEBAB84 foreign key (REGION_ID)
  references FEE_HLJ.C_ORGANIZATION (ID);
alter table FEE_HLJ.B_RESOURCE_POINT
  add constraint FKC41E179CD74E11AD foreign key (CITY_ID)
  references FEE_HLJ.C_ORGANIZATION (ID);
alter table FEE_HLJ.B_RESOURCE_POINT
  add constraint FKC41E179CDEFD0F5 foreign key (WORKFLOW_ACTIVITY_ID)
  references FEE_HLJ.W_WORKFLOW_ACTIVITY (ID);
alter table FEE_HLJ.B_RESOURCE_POINT
  add constraint FKC41E179CE8207B52 foreign key (RANTCONTRACT_ID)
  references FEE_HLJ.B_CONTRACT (ID);
alter table FEE_HLJ.B_RESOURCE_POINT
  add constraint FKC41E179CF4104BAE foreign key (OWNERTYPE_ID)
  references FEE_HLJ.C_OWNER_TYPE (ID);
alter table FEE_HLJ.B_RESOURCE_POINT
  add constraint FKC41E179CF7258E38 foreign key (ATTACHMENT_UNIT_ID)
  references FEE_HLJ.B_ATTACHMENT_UNIT (ID);

prompt
prompt Creating table C_PAYMENT_SORT
prompt =============================
prompt
create table FEE_HLJ.C_PAYMENT_SORT
(
  ID           NUMBER(19) not null,
  TYPE_CODE    VARCHAR2(255 CHAR),
  TYPE_DESC    VARCHAR2(255 CHAR),
  DELETED_FLAG NUMBER(1),
  TYPE_NAME    VARCHAR2(255 CHAR),
  PRIORITY     NUMBER(10)
)
tablespace EPMSDEV
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.C_PAYMENT_SORT
  add primary key (ID)
  using index 
  tablespace EPMSDEV
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table C_PAY_TYPE
prompt =========================
prompt
create table FEE_HLJ.C_PAY_TYPE
(
  ID           NUMBER(19) not null,
  TYPE_CODE    VARCHAR2(255 CHAR),
  TYPE_DESC    VARCHAR2(255 CHAR),
  DELETED_FLAG NUMBER(1),
  TYPE_NAME    VARCHAR2(255 CHAR),
  PRIORITY     NUMBER(10)
)
tablespace EPMSDEV
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.C_PAY_TYPE
  add primary key (ID)
  using index 
  tablespace EPMSDEV
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table B_ACCOUNT_CELL
prompt =============================
prompt
create table FEE_HLJ.B_ACCOUNT_CELL
(
  ID                   NUMBER(19) not null,
  ENTITY_CODE          VARCHAR2(255 CHAR),
  ENTITY_CREATE_DATE   TIMESTAMP(6),
  ENTITY_DESC          VARCHAR2(4000 CHAR),
  FINISH_DATE          TIMESTAMP(6),
  ENTITY_NAME          VARCHAR2(255 CHAR),
  ENTITY_STATUS        VARCHAR2(100 CHAR),
  DELETED_FLAG         NUMBER(1),
  PLAT_FORM            VARCHAR2(400 CHAR),
  STRUCTURE            VARCHAR2(1000 CHAR),
  ENTITY_CREATOR_ID    NUMBER(19),
  PAYCYCLE_ID          NUMBER(19),
  RANTCONTRACT_ID      NUMBER(19),
  PROVIDER             NUMBER(19),
  RESOURCE_POINT_ID    NUMBER(19),
  ATTACHMENT_UNIT_ID   NUMBER(19),
  WORKFLOW_ACTIVITY_ID NUMBER(19),
  PAYTYPE_ID           NUMBER(19),
  PAYMENT_SORT_ID      NUMBER(19),
  APPLY_ORG_ID         NUMBER(19),
  METER_UINT_ID        NUMBER(19),
  SUPPLYTYPE_ID        NUMBER(19),
  APPLY_DEPT_ID        NUMBER(19),
  ELECONTRACT_ID       NUMBER(19),
  IS_NEWEST            NUMBER(1),
  OLDID                NUMBER(19),
  CHANGE_DATE          TIMESTAMP(6),
  RESOURCE_POINT_NAME  VARCHAR2(255)
)
tablespace EPMSDEV
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.B_ACCOUNT_CELL
  add primary key (ID)
  using index 
  tablespace EPMSDEV
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.B_ACCOUNT_CELL
  add constraint FK44496D311B739349 foreign key (ELECONTRACT_ID)
  references FEE_HLJ.B_CONTRACT (ID);
alter table FEE_HLJ.B_ACCOUNT_CELL
  add constraint FK44496D314261E5E9 foreign key (PAYCYCLE_ID)
  references FEE_HLJ.C_PAYMENT_CYCLE (ID);
alter table FEE_HLJ.B_ACCOUNT_CELL
  add constraint FK44496D316F47A83E foreign key (METER_UINT_ID)
  references FEE_HLJ.B_METER_UINT (ID);
alter table FEE_HLJ.B_ACCOUNT_CELL
  add constraint FK44496D31784C851 foreign key (RESOURCE_POINT_ID)
  references FEE_HLJ.B_RESOURCE_POINT (ID);
alter table FEE_HLJ.B_ACCOUNT_CELL
  add constraint FK44496D317D3296C0 foreign key (ENTITY_CREATOR_ID)
  references FEE_HLJ.S_PRIVILEGE_USER (ID);
alter table FEE_HLJ.B_ACCOUNT_CELL
  add constraint FK44496D31813A160F foreign key (PROVIDER)
  references FEE_HLJ.C_PROVIDER (ID);
alter table FEE_HLJ.B_ACCOUNT_CELL
  add constraint FK44496D31967622C2 foreign key (APPLY_DEPT_ID)
  references FEE_HLJ.C_ORGANIZATION (ID);
alter table FEE_HLJ.B_ACCOUNT_CELL
  add constraint FK44496D31A29A3F85 foreign key (APPLY_ORG_ID)
  references FEE_HLJ.C_ORGANIZATION (ID);
alter table FEE_HLJ.B_ACCOUNT_CELL
  add constraint FK44496D31A642F552 foreign key (SUPPLYTYPE_ID)
  references FEE_HLJ.C_POWER_SUPPLY_TYPE (ID);
alter table FEE_HLJ.B_ACCOUNT_CELL
  add constraint FK44496D31DEFD0F5 foreign key (WORKFLOW_ACTIVITY_ID)
  references FEE_HLJ.W_WORKFLOW_ACTIVITY (ID);
alter table FEE_HLJ.B_ACCOUNT_CELL
  add constraint FK44496D31E6733ECD foreign key (PAYTYPE_ID)
  references FEE_HLJ.C_PAY_TYPE (ID);
alter table FEE_HLJ.B_ACCOUNT_CELL
  add constraint FK44496D31E8207B52 foreign key (RANTCONTRACT_ID)
  references FEE_HLJ.B_CONTRACT (ID);
alter table FEE_HLJ.B_ACCOUNT_CELL
  add constraint FK44496D31F7258E38 foreign key (ATTACHMENT_UNIT_ID)
  references FEE_HLJ.B_ATTACHMENT_UNIT (ID);
alter table FEE_HLJ.B_ACCOUNT_CELL
  add constraint FK44496D31FA8B43F5 foreign key (PAYMENT_SORT_ID)
  references FEE_HLJ.C_PAYMENT_SORT (ID);

prompt
prompt Creating table C_PAPER_TYPE
prompt ===========================
prompt
create table FEE_HLJ.C_PAPER_TYPE
(
  ID           NUMBER(19) not null,
  TYPE_CODE    VARCHAR2(255 CHAR),
  TYPE_DESC    VARCHAR2(255 CHAR),
  DELETED_FLAG NUMBER(1),
  TYPE_NAME    VARCHAR2(255 CHAR),
  PRIORITY     NUMBER(10)
)
tablespace EPMSDEV
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.C_PAPER_TYPE
  add primary key (ID)
  using index 
  tablespace EPMSDEV
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table C_REIMBURSEMENT_TYPE
prompt ===================================
prompt
create table FEE_HLJ.C_REIMBURSEMENT_TYPE
(
  ID           NUMBER(19) not null,
  TYPE_CODE    VARCHAR2(255 CHAR),
  TYPE_DESC    VARCHAR2(255 CHAR),
  DELETED_FLAG NUMBER(1),
  TYPE_NAME    VARCHAR2(255 CHAR),
  PRIORITY     NUMBER(10)
)
tablespace EPMSDEV
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.C_REIMBURSEMENT_TYPE
  add primary key (ID)
  using index 
  tablespace EPMSDEV
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table C_TAX_LIABILITY
prompt ==============================
prompt
create table FEE_HLJ.C_TAX_LIABILITY
(
  ID           NUMBER(19) not null,
  TYPE_CODE    VARCHAR2(255 CHAR),
  TYPE_DESC    VARCHAR2(255 CHAR),
  DELETED_FLAG NUMBER(1),
  TYPE_NAME    VARCHAR2(255 CHAR),
  PRIORITY     NUMBER(10)
)
tablespace EPMSDEV
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.C_TAX_LIABILITY
  add primary key (ID)
  using index 
  tablespace EPMSDEV
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table C_VAT_DEDUCTION
prompt ==============================
prompt
create table FEE_HLJ.C_VAT_DEDUCTION
(
  ID           NUMBER(19) not null,
  TYPE_CODE    VARCHAR2(255 CHAR),
  TYPE_DESC    VARCHAR2(255 CHAR),
  DELETED_FLAG NUMBER(1),
  TYPE_NAME    VARCHAR2(255 CHAR),
  PRIORITY     NUMBER(10)
)
tablespace EPMSDEV
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.C_VAT_DEDUCTION
  add primary key (ID)
  using index 
  tablespace EPMSDEV
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table C_WHETHER_TAX
prompt ============================
prompt
create table FEE_HLJ.C_WHETHER_TAX
(
  ID           NUMBER(19) not null,
  TYPE_CODE    VARCHAR2(255 CHAR),
  TYPE_DESC    VARCHAR2(255 CHAR),
  DELETED_FLAG NUMBER(1),
  TYPE_NAME    VARCHAR2(255 CHAR),
  PRIORITY     NUMBER(10)
)
tablespace EPMSDEV
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.C_WHETHER_TAX
  add primary key (ID)
  using index 
  tablespace EPMSDEV
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table B_ACCOUNT_PAYMENT_INFORMATION
prompt ============================================
prompt
create table FEE_HLJ.B_ACCOUNT_PAYMENT_INFORMATION
(
  ID                           NUMBER(19) not null,
  ENTITY_CODE                  VARCHAR2(255 CHAR),
  ENTITY_CREATE_DATE           TIMESTAMP(6),
  ENTITY_DESC                  VARCHAR2(4000 CHAR),
  FINISH_DATE                  TIMESTAMP(6),
  ENTITY_NAME                  VARCHAR2(255 CHAR),
  ENTITY_STATUS                VARCHAR2(100 CHAR),
  DELETED_FLAG                 NUMBER(1),
  METHOD_OF_PAYMENT            VARCHAR2(255 CHAR),
  NON_TAX_AMOUNT               NUMBER(10,2),
  NOTE                         VARCHAR2(255 CHAR),
  OTHER_AMOUNT                 NUMBER(10,2),
  PAY_DATE_OF_APPLICATION      TIMESTAMP(6),
  PAYMENT_BEGIN_DATE           TIMESTAMP(6),
  PAYMENT_END_DATE             TIMESTAMP(6),
  PROVIDER_ACCOUNT             VARCHAR2(255 CHAR),
  PROVIDER_NAME                VARCHAR2(255 CHAR),
  REIMBURSEMENT_ACCOUNT_NUMBER VARCHAR2(255 CHAR),
  REIMBURSEMENT_AMOUNT         NUMBER(10,2),
  REIMBURSEMENT_POINT_CODE     VARCHAR2(255 CHAR),
  TAX_MONEY                    NUMBER(10,2),
  TAX_RATE                     NUMBER(10,2),
  WORKFLOW_ACTIVITY_ID         NUMBER(19),
  VAT_DEDUCTION_ID             NUMBER(19),
  ATTACHMENT_UNIT_ID           NUMBER(19),
  PAPER_TYPE_ID                NUMBER(19),
  WHETHER_TAX_ID               NUMBER(19),
  REIMBURSEMENT_TYPE_ID        NUMBER(19),
  APPLY_DEPT_ID                NUMBER(19),
  APPLY_ORG_ID                 NUMBER(19),
  TAX_LIABILITY_ID             NUMBER(19),
  ENTITY_CREATOR_ID            NUMBER(19)
)
tablespace EPMSDEV
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.B_ACCOUNT_PAYMENT_INFORMATION
  add primary key (ID)
  using index 
  tablespace EPMSDEV
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.B_ACCOUNT_PAYMENT_INFORMATION
  add constraint FKE679A10445609D12 foreign key (TAX_LIABILITY_ID)
  references FEE_HLJ.C_TAX_LIABILITY (ID);
alter table FEE_HLJ.B_ACCOUNT_PAYMENT_INFORMATION
  add constraint FKE679A1047D3296C0 foreign key (ENTITY_CREATOR_ID)
  references FEE_HLJ.S_PRIVILEGE_USER (ID);
alter table FEE_HLJ.B_ACCOUNT_PAYMENT_INFORMATION
  add constraint FKE679A104967622C2 foreign key (APPLY_DEPT_ID)
  references FEE_HLJ.C_ORGANIZATION (ID);
alter table FEE_HLJ.B_ACCOUNT_PAYMENT_INFORMATION
  add constraint FKE679A1049B1BDD96 foreign key (VAT_DEDUCTION_ID)
  references FEE_HLJ.C_VAT_DEDUCTION (ID);
alter table FEE_HLJ.B_ACCOUNT_PAYMENT_INFORMATION
  add constraint FKE679A1049D2F405C foreign key (REIMBURSEMENT_TYPE_ID)
  references FEE_HLJ.C_REIMBURSEMENT_TYPE (ID);
alter table FEE_HLJ.B_ACCOUNT_PAYMENT_INFORMATION
  add constraint FKE679A104A29A3F85 foreign key (APPLY_ORG_ID)
  references FEE_HLJ.C_ORGANIZATION (ID);
alter table FEE_HLJ.B_ACCOUNT_PAYMENT_INFORMATION
  add constraint FKE679A104BC034C04 foreign key (PAPER_TYPE_ID)
  references FEE_HLJ.C_PAPER_TYPE (ID);
alter table FEE_HLJ.B_ACCOUNT_PAYMENT_INFORMATION
  add constraint FKE679A104DEFD0F5 foreign key (WORKFLOW_ACTIVITY_ID)
  references FEE_HLJ.W_WORKFLOW_ACTIVITY (ID);
alter table FEE_HLJ.B_ACCOUNT_PAYMENT_INFORMATION
  add constraint FKE679A104F09B7EFE foreign key (WHETHER_TAX_ID)
  references FEE_HLJ.C_WHETHER_TAX (ID);
alter table FEE_HLJ.B_ACCOUNT_PAYMENT_INFORMATION
  add constraint FKE679A104F7258E38 foreign key (ATTACHMENT_UNIT_ID)
  references FEE_HLJ.B_ATTACHMENT_UNIT (ID);

prompt
prompt Creating table B_ACER_STATION_ORDER
prompt ===================================
prompt
create table FEE_HLJ.B_ACER_STATION_ORDER
(
  ID                   NUMBER(19) not null,
  ENTITY_CODE          VARCHAR2(255 CHAR),
  ENTITY_CREATE_DATE   TIMESTAMP(6),
  ENTITY_DESC          VARCHAR2(4000 CHAR),
  FINISH_DATE          TIMESTAMP(6),
  ENTITY_NAME          VARCHAR2(255 CHAR),
  ENTITY_STATUS        VARCHAR2(100 CHAR),
  DELETED_FLAG         NUMBER(1),
  WORKFLOW_ACTIVITY_ID NUMBER(19),
  ATTACHMENT_UNIT_ID   NUMBER(19),
  APPLY_ORG_ID         NUMBER(19),
  ENTITY_CREATOR_ID    NUMBER(19),
  APPLY_DEPT_ID        NUMBER(19)
)
tablespace EPMSDEV
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.B_ACER_STATION_ORDER
  add primary key (ID)
  using index 
  tablespace EPMSDEV
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.B_ACER_STATION_ORDER
  add constraint FK7A0EBF907D3296C0 foreign key (ENTITY_CREATOR_ID)
  references FEE_HLJ.S_PRIVILEGE_USER (ID);
alter table FEE_HLJ.B_ACER_STATION_ORDER
  add constraint FK7A0EBF90967622C2 foreign key (APPLY_DEPT_ID)
  references FEE_HLJ.C_ORGANIZATION (ID);
alter table FEE_HLJ.B_ACER_STATION_ORDER
  add constraint FK7A0EBF90A29A3F85 foreign key (APPLY_ORG_ID)
  references FEE_HLJ.C_ORGANIZATION (ID);
alter table FEE_HLJ.B_ACER_STATION_ORDER
  add constraint FK7A0EBF90DEFD0F5 foreign key (WORKFLOW_ACTIVITY_ID)
  references FEE_HLJ.W_WORKFLOW_ACTIVITY (ID);
alter table FEE_HLJ.B_ACER_STATION_ORDER
  add constraint FK7A0EBF90F7258E38 foreign key (ATTACHMENT_UNIT_ID)
  references FEE_HLJ.B_ATTACHMENT_UNIT (ID);

prompt
prompt Creating table B_ACER_STATION_ORDER_ADJUST
prompt ==========================================
prompt
create table FEE_HLJ.B_ACER_STATION_ORDER_ADJUST
(
  ID                   NUMBER(19) not null,
  ENTITY_CODE          VARCHAR2(255 CHAR),
  ENTITY_CREATE_DATE   TIMESTAMP(6),
  ENTITY_DESC          VARCHAR2(4000 CHAR),
  FINISH_DATE          TIMESTAMP(6),
  ENTITY_NAME          VARCHAR2(255 CHAR),
  ENTITY_STATUS        VARCHAR2(100 CHAR),
  DELETED_FLAG         NUMBER(1),
  ENTITY_CREATOR_ID    NUMBER(19),
  APPLY_DEPT_ID        NUMBER(19),
  WORKFLOW_ACTIVITY_ID NUMBER(19),
  ATTACHMENT_UNIT_ID   NUMBER(19),
  APPLY_ORG_ID         NUMBER(19)
)
tablespace EPMSDEV
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.B_ACER_STATION_ORDER_ADJUST
  add primary key (ID)
  using index 
  tablespace EPMSDEV
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.B_ACER_STATION_ORDER_ADJUST
  add constraint FK75FED31E7D3296C0 foreign key (ENTITY_CREATOR_ID)
  references FEE_HLJ.S_PRIVILEGE_USER (ID);
alter table FEE_HLJ.B_ACER_STATION_ORDER_ADJUST
  add constraint FK75FED31E967622C2 foreign key (APPLY_DEPT_ID)
  references FEE_HLJ.C_ORGANIZATION (ID);
alter table FEE_HLJ.B_ACER_STATION_ORDER_ADJUST
  add constraint FK75FED31EA29A3F85 foreign key (APPLY_ORG_ID)
  references FEE_HLJ.C_ORGANIZATION (ID);
alter table FEE_HLJ.B_ACER_STATION_ORDER_ADJUST
  add constraint FK75FED31EDEFD0F5 foreign key (WORKFLOW_ACTIVITY_ID)
  references FEE_HLJ.W_WORKFLOW_ACTIVITY (ID);
alter table FEE_HLJ.B_ACER_STATION_ORDER_ADJUST
  add constraint FK75FED31EF7258E38 foreign key (ATTACHMENT_UNIT_ID)
  references FEE_HLJ.B_ATTACHMENT_UNIT (ID);

prompt
prompt Creating table C_CITY_CATEGORY
prompt ==============================
prompt
create table FEE_HLJ.C_CITY_CATEGORY
(
  ID           NUMBER(19) not null,
  TYPE_CODE    VARCHAR2(255 CHAR),
  TYPE_DESC    VARCHAR2(255 CHAR),
  DELETED_FLAG NUMBER(1),
  TYPE_NAME    VARCHAR2(255 CHAR),
  PRIORITY     NUMBER(10)
)
tablespace EPMSDEV
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.C_CITY_CATEGORY
  add primary key (ID)
  using index 
  tablespace EPMSDEV
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table C_ROOM_DETAIL_TYPE
prompt =================================
prompt
create table FEE_HLJ.C_ROOM_DETAIL_TYPE
(
  ID           NUMBER(19) not null,
  TYPE_CODE    VARCHAR2(255 CHAR),
  TYPE_DESC    VARCHAR2(255 CHAR),
  DELETED_FLAG NUMBER(1),
  TYPE_NAME    VARCHAR2(255 CHAR),
  PRIORITY     NUMBER(10)
)
tablespace EPMSDEV
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.C_ROOM_DETAIL_TYPE
  add primary key (ID)
  using index 
  tablespace EPMSDEV
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table C_TOWER_DETAIL_TYPE
prompt ==================================
prompt
create table FEE_HLJ.C_TOWER_DETAIL_TYPE
(
  ID           NUMBER(19) not null,
  TYPE_CODE    VARCHAR2(255 CHAR),
  TYPE_DESC    VARCHAR2(255 CHAR),
  DELETED_FLAG NUMBER(1),
  TYPE_NAME    VARCHAR2(255 CHAR),
  PRIORITY     NUMBER(10)
)
tablespace EPMSDEV
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.C_TOWER_DETAIL_TYPE
  add primary key (ID)
  using index 
  tablespace EPMSDEV
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table C_TOWER_TYPE
prompt ===========================
prompt
create table FEE_HLJ.C_TOWER_TYPE
(
  ID           NUMBER(19) not null,
  TYPE_CODE    VARCHAR2(255 CHAR),
  TYPE_DESC    VARCHAR2(255 CHAR),
  DELETED_FLAG NUMBER(1),
  TYPE_NAME    VARCHAR2(255 CHAR),
  PRIORITY     NUMBER(10)
)
tablespace EPMSDEV
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.C_TOWER_TYPE
  add primary key (ID)
  using index 
  tablespace EPMSDEV
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table B_ACER_STATION_ORDER_DETAIL
prompt ==========================================
prompt
create table FEE_HLJ.B_ACER_STATION_ORDER_DETAIL
(
  ID                        NUMBER(19) not null,
  ENTITY_CODE               VARCHAR2(255 CHAR),
  ENTITY_CREATE_DATE        TIMESTAMP(6),
  ENTITY_DESC               VARCHAR2(4000 CHAR),
  FINISH_DATE               TIMESTAMP(6),
  ENTITY_NAME               VARCHAR2(255 CHAR),
  ENTITY_STATUS             VARCHAR2(100 CHAR),
  BBU_NUM                   VARCHAR2(255 CHAR),
  BBU_SYSTEM_NUM            VARCHAR2(255 CHAR),
  BBU_TOWERRENT_MONRY       NUMBER(10,3),
  BEIZHU                    VARCHAR2(4000 CHAR),
  BEIZHU_NEW                VARCHAR2(4000 CHAR),
  CHANPIN_DANYUAN_NUM       NUMBER(10,3),
  CHANPIN_JIAGE             VARCHAR2(255 CHAR),
  CHANPIN_PEIZHI            VARCHAR2(4000 CHAR),
  CHANQUAN_DANWEI           VARCHAR2(255 CHAR),
  CHANQUAN_SHUXING          VARCHAR2(255 CHAR),
  CHANGDI_MOSHI             VARCHAR2(255 CHAR),
  CHANGDI_DANJIA_CHENGBEN   VARCHAR2(255 CHAR),
  CHANGDI_GX_ZHEKOU         VARCHAR2(255 CHAR),
  CHANGDI_JIANZAO_CHENGBEN  NUMBER(10,3),
  CHANGDI_YUANSHI_CHENGBEN  VARCHAR2(255 CHAR),
  CLOSE_DATE                TIMESTAMP(6),
  COMPLE_DATE               TIMESTAMP(6),
  DEMAND_COLLECT_DATE       TIMESTAMP(6),
  DIANLI_FANGSHI            VARCHAR2(255 CHAR),
  DIANLI_DANJIA_CHENGBEN    VARCHAR2(255 CHAR),
  DIANLI_GX_ZHEKOU          VARCHAR2(255 CHAR),
  DIANLI_JIANZAO_CHENGBEN   NUMBER(10,3),
  DIANLI_MOSHI              VARCHAR2(255 CHAR),
  DIANLI_YUANSHI_CHENGBEN   VARCHAR2(255 CHAR),
  DINGDAN_SHUXING           VARCHAR2(255 CHAR),
  GAOD_YUANSHI_CHENGBEN     VARCHAR2(255 CHAR),
  GAODENG_FEI               NUMBER(10,3),
  GT_XIANGMU                VARCHAR2(255 CHAR),
  GT_XIANGMU_MINGCHENG      VARCHAR2(255 CHAR),
  GX_XIANGXI_ZHANZHI        VARCHAR2(4000 CHAR),
  GX_XIN_JUTIYUNYINGSHANG   VARCHAR2(255 CHAR),
  GX_XIN_YUNYINGSHANG       VARCHAR2(255 CHAR),
  GX_YUAN_JUTIYUNYINGSHANG  VARCHAR2(255 CHAR),
  GX_YUAN_YUNYINGSHANG      VARCHAR2(255 CHAR),
  IS_CAIWU_XUANZHI          VARCHAR2(255 CHAR),
  IS_CHANGDI_GX             VARCHAR2(255 CHAR),
  IS_DIANLI_GX              VARCHAR2(255 CHAR),
  IS_FADIAN                 NUMBER(1),
  IS_FADIANJI               VARCHAR2(255 CHAR),
  IS_ROOM_SHOUJIA           VARCHAR2(255 CHAR),
  IS_SHANGTA1               NUMBER(1),
  IS_SHANGTA2               NUMBER(1),
  IS_SHANGTA3               NUMBER(1),
  IS_SHANGZHAN              VARCHAR2(255 CHAR),
  IS_SHOUJIA                VARCHAR2(255 CHAR),
  IS_TIETA_JIFANG1          NUMBER(1),
  IS_TIETA_JIFANG2          NUMBER(1),
  IS_TIETA_JIFANG3          NUMBER(1),
  IS_TOWER_SHOUJIA          VARCHAR2(255 CHAR),
  IS_WUYE_CAIWU             VARCHAR2(255 CHAR),
  JF_SHIJI_SHIJIAN          VARCHAR2(255 CHAR),
  JF_SHIJIANYAOQIU          VARCHAR2(255 CHAR),
  JF_YANSHOU_JIEGUO         VARCHAR2(255 CHAR),
  JIANSHE_FANGSHI           VARCHAR2(255 CHAR),
  JINGDU                    VARCHAR2(255 CHAR),
  JIZHUN_DANJIA_CHENGBEN    VARCHAR2(255 CHAR),
  JIZHUN_JIANZAO_CHENGBEN   VARCHAR2(255 CHAR),
  ORDER_NUM                 VARCHAR2(255 CHAR),
  ORDER_SIGN_DATE           TIMESTAMP(6),
  ORDER_STATUS              VARCHAR2(255 CHAR),
  OTHER_CHANGDI_FEI         NUMBER(10,3),
  OTHER_DIANLI_FEI          NUMBER(10,3),
  OTHER_FEI                 NUMBER(10,3),
  OTHER_MOSHI               VARCHAR2(255 CHAR),
  OTHER_WEIHU_FEI           NUMBER(10,3),
  OTHER_YONGDIAN_FEI        NUMBER(10,3),
  OTHER_YOUJI_FEI           NUMBER(10,3),
  OTEHR_YUANSHI_CHANGDI     VARCHAR2(255 CHAR),
  OTHER_YUANSHI_CHENGBEN    VARCHAR2(255 CHAR),
  OTEHR_YUANSHI_DIANLI      VARCHAR2(255 CHAR),
  OTEHR_YUANSHI_WEIHU       VARCHAR2(255 CHAR),
  OTEHR_YUANSHI_YONGDIAN    VARCHAR2(255 CHAR),
  OTEHR_YUANSHI_YOUJI       VARCHAR2(255 CHAR),
  OTHER_ZHEKOU              VARCHAR2(255 CHAR),
  PEITAO_DANJIA_CHENGBEN    VARCHAR2(255 CHAR),
  PEITAO_GX_ZHEKOU          NUMBER(10,3),
  PEITAO_JIANZAO_CHENGBEN   VARCHAR2(255 CHAR),
  PEITAO_YUANSHI_CHENGBEN   VARCHAR2(255 CHAR),
  PROJECT_START_DATE        TIMESTAMP(6),
  RENT_DATE                 TIMESTAMP(6),
  ROOM_CODE                 VARCHAR2(255 CHAR),
  ROOM_DANJIA_CHENGBEN      VARCHAR2(255 CHAR),
  ROOM_GX_ZHEKOU            NUMBER(10,3),
  ROOM_JIANZAO_CHENGBEN     VARCHAR2(255 CHAR),
  ROOM_NAME                 VARCHAR2(255 CHAR),
  ROOM_NUM                  VARCHAR2(255 CHAR),
  ROOM_YUANSHI_CHENGBEN     VARCHAR2(255 CHAR),
  RRU_GONGDIAN              VARCHAR2(255 CHAR),
  RRU_NUM                   VARCHAR2(255 CHAR),
  SHENG_FEN                 VARCHAR2(255 CHAR),
  SHIJI_FENGYAXS            VARCHAR2(255 CHAR),
  STOP_DATE                 TIMESTAMP(6),
  SUANFEI_FENGYAXS          NUMBER(10,3),
  TOWER_CODE                VARCHAR2(255 CHAR),
  TOWER_DANJIA_CHENGBEN     VARCHAR2(255 CHAR),
  TOWER_GX_ZHEKOU           NUMBER(10,3),
  TOWER_HEIGHT              VARCHAR2(255 CHAR),
  TOWER_JIANZAO_CHENGBEN    VARCHAR2(255 CHAR),
  TOWER_NAME                VARCHAR2(255 CHAR),
  TOWER_NUM                 VARCHAR2(255 CHAR),
  TOWER_YUANSHI_CHENGBEN    VARCHAR2(255 CHAR),
  TT_JIFEI_XITONG1          VARCHAR2(255 CHAR),
  TT_JIFEI_XITONG2          VARCHAR2(255 CHAR),
  TT_JIFEI_XITONG3          VARCHAR2(255 CHAR),
  TT_SYSTEM_NAME1           VARCHAR2(255 CHAR),
  TT_SYSTEM_NAME2           VARCHAR2(255 CHAR),
  TT_SYSTEM_NAME3           VARCHAR2(255 CHAR),
  TT_TIANXIAN_GUAGAO1       NUMBER(10,3),
  TT_TIANXIAN_GUAGAO2       NUMBER(10,3),
  TT_TIANXIAN_GUAGAO3       NUMBER(10,3),
  TT_TIANXIAN_SHU1          VARCHAR2(255 CHAR),
  TT_TIANXIAN_SHU2          VARCHAR2(255 CHAR),
  TT_TIANXIAN_SHU3          VARCHAR2(255 CHAR),
  TT_ZHANZHI_MINGCHENG      VARCHAR2(255 CHAR),
  WEIBO_TIANXIAN            VARCHAR2(255 CHAR),
  WEIDU                     VARCHAR2(255 CHAR),
  WEIHU_DENGJI              VARCHAR2(255 CHAR),
  WEIBO_FEI                 NUMBER(10,3),
  WEIBO_YUANSHI_CHENGBEN    VARCHAR2(255 CHAR),
  WEIHU_DANJIA_CHENGBEN     VARCHAR2(255 CHAR),
  WEIHU_GX_ZHEKOU           NUMBER(10,3),
  WEIHU_JIANZAO_CHENGBEN    VARCHAR2(255 CHAR),
  WEIHU_YUANSHI_CHENGBEN    VARCHAR2(255 CHAR),
  WL_ZHANZHI_BIANMA         VARCHAR2(255 CHAR),
  WLAN_FEI                  NUMBER(10,3),
  WLAN_TIANXIAN             VARCHAR2(255 CHAR),
  WLAN_YUANSHI_CHENGBEN     VARCHAR2(255 CHAR),
  XDC_FEI                   NUMBER(10,3),
  XDC_SHICHANG              VARCHAR2(255 CHAR),
  XDC_YUANSHI_CHENGBEN      VARCHAR2(255 CHAR),
  XIANGXI_DIZHI             VARCHAR2(4000 CHAR),
  XIEYI_BIANHAO             VARCHAR2(255 CHAR),
  XM_JIANSHE_ZHUANGTAI      VARCHAR2(255 CHAR),
  XQ_DANHAO                 VARCHAR2(255 CHAR),
  XQ_PICI                   VARCHAR2(255 CHAR),
  XQ_ZHANDIAN_MINGCHENG     VARCHAR2(255 CHAR),
  YONGDIAN_JIANZAO_CHENGBEN NUMBER(10,3),
  YONGDIAN_MOSHI            VARCHAR2(255 CHAR),
  YONGDIAN_YUANSHI_CHENGBEN VARCHAR2(255 CHAR),
  YOUJI_JIANZAO_CHENGBEN    NUMBER(10,3),
  YOUJI_MOSHI               VARCHAR2(255 CHAR),
  YOUJI_YUANSHI_CHENGBEN    VARCHAR2(255 CHAR),
  YUN_YING_SHANG            VARCHAR2(255 CHAR),
  ZHANZHI_BIANMA            VARCHAR2(255 CHAR),
  ZONG_FEI                  VARCHAR2(255 CHAR),
  ZONG_GONGHAO              VARCHAR2(255 CHAR),
  TOWERTYPE_ID              NUMBER(19),
  TOWERDETAILTYPE_ID        NUMBER(19),
  CITY_ID                   NUMBER(19),
  ENTITY_CREATOR_ID         NUMBER(19),
  CITYTYPE_ID               NUMBER(19),
  ROOMDETAILTYPE_ID         NUMBER(19),
  ATTACHMENT_UNIT_ID        NUMBER(19),
  REGION_ID                 NUMBER(19),
  FUGAI_MIANJI              VARCHAR2(255 CHAR),
  JIANZHU_LEIXING           VARCHAR2(255 CHAR),
  TYPE                      VARCHAR2(255 CHAR),
  IS_DOU                    VARCHAR2(255 CHAR),
  IS_TESHU                  VARCHAR2(255 CHAR),
  MAX_POI                   VARCHAR2(255 CHAR),
  MIN_POI                   VARCHAR2(255 CHAR),
  POI_TYPE                  VARCHAR2(255 CHAR),
  SUIDAO_CHANGDU            VARCHAR2(255 CHAR),
  XINYUAN_PINDUAN           VARCHAR2(255 CHAR),
  ROOM_GX_ZHEKOU2           NUMBER(10,3),
  ROOM_GX_ZHEKOU3           NUMBER(10,3),
  ROOMSHIJIAN1              VARCHAR2(255 CHAR),
  ROOMSHIJIAN2              VARCHAR2(255 CHAR),
  ROOMSHIJIAN3              VARCHAR2(255 CHAR),
  TOWER_GX_ZHEKOU2          NUMBER(10,3),
  TOWER_GX_ZHEKOU3          NUMBER(10,3),
  TOWERSHIJIAN1             VARCHAR2(255 CHAR),
  TOWERSHIJIAN2             VARCHAR2(255 CHAR),
  TOWERSHIJIAN3             VARCHAR2(255 CHAR),
  机房时间段1                    VARCHAR2(255 CHAR),
  机房时间段2                    VARCHAR2(255 CHAR),
  机房时间段3                    VARCHAR2(255 CHAR),
  铁塔时间段1                    VARCHAR2(255 CHAR),
  铁塔时间段2                    VARCHAR2(255 CHAR),
  铁塔时间段3                    VARCHAR2(255 CHAR),
  CDSHIJIAN1                VARCHAR2(255 CHAR),
  CDSHIJIAN2                VARCHAR2(255 CHAR),
  CDSHIJIAN3                VARCHAR2(255 CHAR),
  CDZHEKOU1                 NUMBER(10,3),
  CDZHEKOU2                 NUMBER(10,3),
  CDZHEKOU3                 NUMBER(10,3),
  IS_COUNT                  NUMBER(1),
  HIS_ID                    VARCHAR2(255 CHAR)
)
tablespace EPMSDEV
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.B_ACER_STATION_ORDER_DETAIL
  add primary key (ID)
  using index 
  tablespace EPMSDEV
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.B_ACER_STATION_ORDER_DETAIL
  add constraint FK7B2FB3E013E6951B foreign key (ROOMDETAILTYPE_ID)
  references FEE_HLJ.C_ROOM_DETAIL_TYPE (ID);
alter table FEE_HLJ.B_ACER_STATION_ORDER_DETAIL
  add constraint FK7B2FB3E026D130B9 foreign key (TOWERDETAILTYPE_ID)
  references FEE_HLJ.C_TOWER_DETAIL_TYPE (ID);
alter table FEE_HLJ.B_ACER_STATION_ORDER_DETAIL
  add constraint FK7B2FB3E07D3296C0 foreign key (ENTITY_CREATOR_ID)
  references FEE_HLJ.S_PRIVILEGE_USER (ID);
alter table FEE_HLJ.B_ACER_STATION_ORDER_DETAIL
  add constraint FK7B2FB3E0ACEBAB84 foreign key (REGION_ID)
  references FEE_HLJ.C_ORGANIZATION (ID);
alter table FEE_HLJ.B_ACER_STATION_ORDER_DETAIL
  add constraint FK7B2FB3E0D74E11AD foreign key (CITY_ID)
  references FEE_HLJ.C_ORGANIZATION (ID);
alter table FEE_HLJ.B_ACER_STATION_ORDER_DETAIL
  add constraint FK7B2FB3E0DE8CD579 foreign key (TOWERTYPE_ID)
  references FEE_HLJ.C_TOWER_TYPE (ID);
alter table FEE_HLJ.B_ACER_STATION_ORDER_DETAIL
  add constraint FK7B2FB3E0F43C991F foreign key (CITYTYPE_ID)
  references FEE_HLJ.C_CITY_CATEGORY (ID);
alter table FEE_HLJ.B_ACER_STATION_ORDER_DETAIL
  add constraint FK7B2FB3E0F7258E38 foreign key (ATTACHMENT_UNIT_ID)
  references FEE_HLJ.B_ATTACHMENT_UNIT (ID);

prompt
prompt Creating table B_ACER_STATION_ORDER_HIS
prompt =======================================
prompt
create table FEE_HLJ.B_ACER_STATION_ORDER_HIS
(
  ID                        NUMBER(19) not null,
  ENTITY_CODE               VARCHAR2(255 CHAR),
  ENTITY_CREATE_DATE        TIMESTAMP(6),
  ENTITY_DESC               VARCHAR2(4000 CHAR),
  FINISH_DATE               TIMESTAMP(6),
  ENTITY_NAME               VARCHAR2(255 CHAR),
  ENTITY_STATUS             VARCHAR2(100 CHAR),
  BBU_NUM                   VARCHAR2(255 CHAR),
  BBU_SYSTEM_NUM            VARCHAR2(255 CHAR),
  BBU_TOWERRENT_MONRY       NUMBER(10,3),
  BEIZHU                    VARCHAR2(4000 CHAR),
  BEIZHU_NEW                VARCHAR2(4000 CHAR),
  CDSHIJIAN1                VARCHAR2(255 CHAR),
  CDSHIJIAN2                VARCHAR2(255 CHAR),
  CDSHIJIAN3                VARCHAR2(255 CHAR),
  CDZHEKOU1                 NUMBER(10,3),
  CDZHEKOU2                 NUMBER(10,3),
  CDZHEKOU3                 NUMBER(10,3),
  CHANPIN_DANYUAN_NUM       NUMBER(10,3),
  CHANPIN_JIAGE             VARCHAR2(255 CHAR),
  CHANPIN_PEIZHI            VARCHAR2(4000 CHAR),
  CHANQUAN_DANWEI           VARCHAR2(255 CHAR),
  CHANQUAN_SHUXING          VARCHAR2(255 CHAR),
  CHANGDI_MOSHI             VARCHAR2(255 CHAR),
  CHANGDI_DANJIA_CHENGBEN   VARCHAR2(255 CHAR),
  CHANGDI_GX_ZHEKOU         VARCHAR2(255 CHAR),
  CHANGDI_JIANZAO_CHENGBEN  NUMBER(10,3),
  CHANGDI_YUANSHI_CHENGBEN  VARCHAR2(255 CHAR),
  CLOSE_DATE                TIMESTAMP(6),
  COMPLE_DATE               TIMESTAMP(6),
  DEMAND_COLLECT_DATE       TIMESTAMP(6),
  DIANLI_FANGSHI            VARCHAR2(255 CHAR),
  DIANLI_DANJIA_CHENGBEN    VARCHAR2(255 CHAR),
  DIANLI_GX_ZHEKOU          VARCHAR2(255 CHAR),
  DIANLI_JIANZAO_CHENGBEN   NUMBER(10,3),
  DIANLI_MOSHI              VARCHAR2(255 CHAR),
  DIANLI_YUANSHI_CHENGBEN   VARCHAR2(255 CHAR),
  DINGDAN_SHUXING           VARCHAR2(255 CHAR),
  FUGAI_MIANJI              VARCHAR2(255 CHAR),
  GAOD_YUANSHI_CHENGBEN     VARCHAR2(255 CHAR),
  GAODENG_FEI               NUMBER(10,3),
  GT_XIANGMU                VARCHAR2(255 CHAR),
  GT_XIANGMU_MINGCHENG      VARCHAR2(255 CHAR),
  GX_XIANGXI_ZHANZHI        VARCHAR2(4000 CHAR),
  GX_XIN_JUTIYUNYINGSHANG   VARCHAR2(255 CHAR),
  GX_XIN_YUNYINGSHANG       VARCHAR2(255 CHAR),
  GX_YUAN_JUTIYUNYINGSHANG  VARCHAR2(255 CHAR),
  GX_YUAN_YUNYINGSHANG      VARCHAR2(255 CHAR),
  IS_CAIWU_XUANZHI          VARCHAR2(255 CHAR),
  IS_CHANGDI_GX             VARCHAR2(255 CHAR),
  IS_COUNT                  NUMBER(1),
  IS_DIANLI_GX              VARCHAR2(255 CHAR),
  IS_DOU                    VARCHAR2(255 CHAR),
  IS_FADIAN                 NUMBER(1),
  IS_FADIANJI               VARCHAR2(255 CHAR),
  IS_ROOM_SHOUJIA           VARCHAR2(255 CHAR),
  IS_SHANGTA1               NUMBER(1),
  IS_SHANGTA2               NUMBER(1),
  IS_SHANGTA3               NUMBER(1),
  IS_SHANGZHAN              VARCHAR2(255 CHAR),
  IS_SHOUJIA                VARCHAR2(255 CHAR),
  IS_TESHU                  VARCHAR2(255 CHAR),
  IS_TIETA_JIFANG1          NUMBER(1),
  IS_TIETA_JIFANG2          NUMBER(1),
  IS_TIETA_JIFANG3          NUMBER(1),
  IS_TOWER_SHOUJIA          VARCHAR2(255 CHAR),
  IS_WUYE_CAIWU             VARCHAR2(255 CHAR),
  JF_SHIJI_SHIJIAN          VARCHAR2(255 CHAR),
  JF_SHIJIANYAOQIU          VARCHAR2(255 CHAR),
  JF_YANSHOU_JIEGUO         VARCHAR2(255 CHAR),
  JIANSHE_FANGSHI           VARCHAR2(255 CHAR),
  JIANZHU_LEIXING           VARCHAR2(255 CHAR),
  JINGDU                    VARCHAR2(255 CHAR),
  JIZHUN_DANJIA_CHENGBEN    VARCHAR2(255 CHAR),
  JIZHUN_JIANZAO_CHENGBEN   VARCHAR2(255 CHAR),
  MAX_POI                   VARCHAR2(255 CHAR),
  MIN_POI                   VARCHAR2(255 CHAR),
  ORDER_NUM                 VARCHAR2(255 CHAR),
  ORDER_SIGN_DATE           TIMESTAMP(6),
  ORDER_STATUS              VARCHAR2(255 CHAR),
  OTHER_CHANGDI_FEI         NUMBER(10,3),
  OTHER_DIANLI_FEI          NUMBER(10,3),
  OTHER_FEI                 NUMBER(10,3),
  OTHER_MOSHI               VARCHAR2(255 CHAR),
  OTHER_WEIHU_FEI           NUMBER(10,3),
  OTHER_YONGDIAN_FEI        NUMBER(10,3),
  OTHER_YOUJI_FEI           NUMBER(10,3),
  OTEHR_YUANSHI_CHANGDI     VARCHAR2(255 CHAR),
  OTHER_YUANSHI_CHENGBEN    VARCHAR2(255 CHAR),
  OTEHR_YUANSHI_DIANLI      VARCHAR2(255 CHAR),
  OTEHR_YUANSHI_WEIHU       VARCHAR2(255 CHAR),
  OTEHR_YUANSHI_YONGDIAN    VARCHAR2(255 CHAR),
  OTEHR_YUANSHI_YOUJI       VARCHAR2(255 CHAR),
  OTHER_ZHEKOU              VARCHAR2(255 CHAR),
  PEITAO_DANJIA_CHENGBEN    VARCHAR2(255 CHAR),
  PEITAO_GX_ZHEKOU          NUMBER(10,3),
  PEITAO_JIANZAO_CHENGBEN   VARCHAR2(255 CHAR),
  PEITAO_YUANSHI_CHENGBEN   VARCHAR2(255 CHAR),
  POI_TYPE                  VARCHAR2(255 CHAR),
  PROJECT_START_DATE        TIMESTAMP(6),
  RENT_DATE                 TIMESTAMP(6),
  ROOM_CODE                 VARCHAR2(255 CHAR),
  ROOM_DANJIA_CHENGBEN      VARCHAR2(255 CHAR),
  ROOM_GX_ZHEKOU            NUMBER(10,3),
  ROOM_GX_ZHEKOU2           NUMBER(10,3),
  ROOM_GX_ZHEKOU3           NUMBER(10,3),
  ROOM_JIANZAO_CHENGBEN     VARCHAR2(255 CHAR),
  ROOM_NAME                 VARCHAR2(255 CHAR),
  ROOM_NUM                  VARCHAR2(255 CHAR),
  ROOMSHIJIAN1              VARCHAR2(255 CHAR),
  ROOMSHIJIAN2              VARCHAR2(255 CHAR),
  ROOMSHIJIAN3              VARCHAR2(255 CHAR),
  ROOM_YUANSHI_CHENGBEN     VARCHAR2(255 CHAR),
  RRU_GONGDIAN              VARCHAR2(255 CHAR),
  RRU_NUM                   VARCHAR2(255 CHAR),
  SHENG_FEN                 VARCHAR2(255 CHAR),
  SHIJI_FENGYAXS            VARCHAR2(255 CHAR),
  STOP_DATE                 TIMESTAMP(6),
  SUANFEI_FENGYAXS          NUMBER(10,3),
  SUIDAO_CHANGDU            VARCHAR2(255 CHAR),
  TOWER_CODE                VARCHAR2(255 CHAR),
  TOWER_DANJIA_CHENGBEN     VARCHAR2(255 CHAR),
  TOWER_GX_ZHEKOU           NUMBER(10,3),
  TOWER_GX_ZHEKOU2          NUMBER(10,3),
  TOWER_GX_ZHEKOU3          NUMBER(10,3),
  TOWER_HEIGHT              VARCHAR2(255 CHAR),
  TOWER_JIANZAO_CHENGBEN    VARCHAR2(255 CHAR),
  TOWER_NAME                VARCHAR2(255 CHAR),
  TOWER_NUM                 VARCHAR2(255 CHAR),
  TOWERSHIJIAN1             VARCHAR2(255 CHAR),
  TOWERSHIJIAN2             VARCHAR2(255 CHAR),
  TOWERSHIJIAN3             VARCHAR2(255 CHAR),
  TOWER_YUANSHI_CHENGBEN    VARCHAR2(255 CHAR),
  TT_JIFEI_XITONG1          VARCHAR2(255 CHAR),
  TT_JIFEI_XITONG2          VARCHAR2(255 CHAR),
  TT_JIFEI_XITONG3          VARCHAR2(255 CHAR),
  TT_SYSTEM_NAME1           VARCHAR2(255 CHAR),
  TT_SYSTEM_NAME2           VARCHAR2(255 CHAR),
  TT_SYSTEM_NAME3           VARCHAR2(255 CHAR),
  TT_TIANXIAN_GUAGAO1       NUMBER(10,3),
  TT_TIANXIAN_GUAGAO2       NUMBER(10,3),
  TT_TIANXIAN_GUAGAO3       NUMBER(10,3),
  TT_TIANXIAN_SHU1          VARCHAR2(255 CHAR),
  TT_TIANXIAN_SHU2          VARCHAR2(255 CHAR),
  TT_TIANXIAN_SHU3          VARCHAR2(255 CHAR),
  TT_ZHANZHI_MINGCHENG      VARCHAR2(255 CHAR),
  TYPE                      VARCHAR2(255 CHAR),
  WEIBO_TIANXIAN            VARCHAR2(255 CHAR),
  WEIDU                     VARCHAR2(255 CHAR),
  WEIHU_DENGJI              VARCHAR2(255 CHAR),
  WEIBO_FEI                 NUMBER(10,3),
  WEIBO_YUANSHI_CHENGBEN    VARCHAR2(255 CHAR),
  WEIHU_DANJIA_CHENGBEN     VARCHAR2(255 CHAR),
  WEIHU_GX_ZHEKOU           NUMBER(10,3),
  WEIHU_JIANZAO_CHENGBEN    VARCHAR2(255 CHAR),
  WEIHU_YUANSHI_CHENGBEN    VARCHAR2(255 CHAR),
  WL_ZHANZHI_BIANMA         VARCHAR2(255 CHAR),
  WLAN_FEI                  NUMBER(10,3),
  WLAN_TIANXIAN             VARCHAR2(255 CHAR),
  WLAN_YUANSHI_CHENGBEN     VARCHAR2(255 CHAR),
  XDC_FEI                   NUMBER(10,3),
  XDC_SHICHANG              VARCHAR2(255 CHAR),
  XDC_YUANSHI_CHENGBEN      VARCHAR2(255 CHAR),
  XIANGXI_DIZHI             VARCHAR2(4000 CHAR),
  XIEYI_BIANHAO             VARCHAR2(255 CHAR),
  XINYUAN_PINDUAN           VARCHAR2(255 CHAR),
  XM_JIANSHE_ZHUANGTAI      VARCHAR2(255 CHAR),
  XQ_DANHAO                 VARCHAR2(255 CHAR),
  XQ_PICI                   VARCHAR2(255 CHAR),
  XQ_ZHANDIAN_MINGCHENG     VARCHAR2(255 CHAR),
  YONGDIAN_JIANZAO_CHENGBEN NUMBER(10,3),
  YONGDIAN_MOSHI            VARCHAR2(255 CHAR),
  YONGDIAN_YUANSHI_CHENGBEN VARCHAR2(255 CHAR),
  YOUJI_JIANZAO_CHENGBEN    NUMBER(10,3),
  YOUJI_MOSHI               VARCHAR2(255 CHAR),
  YOUJI_YUANSHI_CHENGBEN    VARCHAR2(255 CHAR),
  YUN_YING_SHANG            VARCHAR2(255 CHAR),
  ZHANZHI_BIANMA            VARCHAR2(255 CHAR),
  ZONG_FEI                  VARCHAR2(255 CHAR),
  ZONG_GONGHAO              VARCHAR2(255 CHAR),
  REGION_ID                 NUMBER(19),
  ENTITY_CREATOR_ID         NUMBER(19),
  ATTACHMENT_UNIT_ID        NUMBER(19),
  CITYTYPE_ID               NUMBER(19),
  CITY_ID                   NUMBER(19),
  ROOMDETAILTYPE_ID         NUMBER(19),
  TOWERTYPE_ID              NUMBER(19),
  TOWERDETAILTYPE_ID        NUMBER(19)
)
tablespace EPMSDEV
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.B_ACER_STATION_ORDER_HIS
  add primary key (ID)
  using index 
  tablespace EPMSDEV
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.B_ACER_STATION_ORDER_HIS
  add constraint FK4EB13A6313E6951B foreign key (ROOMDETAILTYPE_ID)
  references FEE_HLJ.C_ROOM_DETAIL_TYPE (ID);
alter table FEE_HLJ.B_ACER_STATION_ORDER_HIS
  add constraint FK4EB13A6326D130B9 foreign key (TOWERDETAILTYPE_ID)
  references FEE_HLJ.C_TOWER_DETAIL_TYPE (ID);
alter table FEE_HLJ.B_ACER_STATION_ORDER_HIS
  add constraint FK4EB13A637D3296C0 foreign key (ENTITY_CREATOR_ID)
  references FEE_HLJ.S_PRIVILEGE_USER (ID);
alter table FEE_HLJ.B_ACER_STATION_ORDER_HIS
  add constraint FK4EB13A63ACEBAB84 foreign key (REGION_ID)
  references FEE_HLJ.C_ORGANIZATION (ID);
alter table FEE_HLJ.B_ACER_STATION_ORDER_HIS
  add constraint FK4EB13A63D74E11AD foreign key (CITY_ID)
  references FEE_HLJ.C_ORGANIZATION (ID);
alter table FEE_HLJ.B_ACER_STATION_ORDER_HIS
  add constraint FK4EB13A63DE8CD579 foreign key (TOWERTYPE_ID)
  references FEE_HLJ.C_TOWER_TYPE (ID);
alter table FEE_HLJ.B_ACER_STATION_ORDER_HIS
  add constraint FK4EB13A63F43C991F foreign key (CITYTYPE_ID)
  references FEE_HLJ.C_CITY_CATEGORY (ID);
alter table FEE_HLJ.B_ACER_STATION_ORDER_HIS
  add constraint FK4EB13A63F7258E38 foreign key (ATTACHMENT_UNIT_ID)
  references FEE_HLJ.B_ATTACHMENT_UNIT (ID);

prompt
prompt Creating table B_ACER_STATION_ORDER_TRAN
prompt ========================================
prompt
create table FEE_HLJ.B_ACER_STATION_ORDER_TRAN
(
  ID                           NUMBER(19) not null,
  ENTITY_CODE                  VARCHAR2(255 CHAR),
  ENTITY_CREATE_DATE           TIMESTAMP(6),
  ENTITY_DESC                  VARCHAR2(4000 CHAR),
  FINISH_DATE                  TIMESTAMP(6),
  ENTITY_NAME                  VARCHAR2(255 CHAR),
  ENTITY_STATUS                VARCHAR2(100 CHAR),
  BBU_NUM                      VARCHAR2(255 CHAR),
  BBU_SYSTEM_NUM               VARCHAR2(255 CHAR),
  BBU_TOWERRENT_MONRY          NUMBER(10,3),
  BEIZHU                       VARCHAR2(4000 CHAR),
  BEIZHU_NEW                   VARCHAR2(4000 CHAR),
  CHANPIN_DANYUAN_NUM          NUMBER(10,3),
  CHANPIN_JIAGE                VARCHAR2(255 CHAR),
  CHANPIN_PEIZHI               VARCHAR2(4000 CHAR),
  CHANQUAN_DANWEI              VARCHAR2(255 CHAR),
  CHANQUAN_SHUXING             VARCHAR2(255 CHAR),
  CHANGDI_MOSHI                VARCHAR2(255 CHAR),
  CHANGDI_DANJIA_CHENGBEN      VARCHAR2(255 CHAR),
  CHANGDI_GX_ZHEKOU            VARCHAR2(255 CHAR),
  CHANGDI_JIANZAO_CHENGBEN     NUMBER(10,3),
  CHANGDI_YUANSHI_CHENGBEN     VARCHAR2(255 CHAR),
  CLOSE_DATE                   TIMESTAMP(6),
  COMPLE_DATE                  TIMESTAMP(6),
  DEMAND_COLLECT_DATE          TIMESTAMP(6),
  DIANLI_FANGSHI               VARCHAR2(255 CHAR),
  DIANLI_DANJIA_CHENGBEN       VARCHAR2(255 CHAR),
  DIANLI_GX_ZHEKOU             VARCHAR2(255 CHAR),
  DIANLI_JIANZAO_CHENGBEN      NUMBER(10,3),
  DIANLI_MOSHI                 VARCHAR2(255 CHAR),
  DIANLI_YUANSHI_CHENGBEN      VARCHAR2(255 CHAR),
  DINGDAN_SHUXING              VARCHAR2(255 CHAR),
  GAOD_YUANSHI_CHENGBEN        VARCHAR2(255 CHAR),
  GAODENG_FEI                  NUMBER(10,3),
  GT_XIANGMU                   VARCHAR2(255 CHAR),
  GT_XIANGMU_MINGCHENG         VARCHAR2(255 CHAR),
  GX_XIANGXI_ZHANZHI           VARCHAR2(4000 CHAR),
  GX_XIN_JUTIYUNYINGSHANG      VARCHAR2(255 CHAR),
  GX_XIN_YUNYINGSHANG          VARCHAR2(255 CHAR),
  GX_YUAN_JUTIYUNYINGSHANG     VARCHAR2(255 CHAR),
  GX_YUAN_YUNYINGSHANG         VARCHAR2(255 CHAR),
  IS_CAIWU_XUANZHI             VARCHAR2(255 CHAR),
  IS_CHANGDI_GX                VARCHAR2(255 CHAR),
  IS_DIANLI_GX                 VARCHAR2(255 CHAR),
  IS_FADIAN                    NUMBER(1),
  IS_FADIANJI                  VARCHAR2(255 CHAR),
  IS_ROOM_SHOUJIA              VARCHAR2(255 CHAR),
  IS_SHANGTA1                  NUMBER(1),
  IS_SHANGTA2                  NUMBER(1),
  IS_SHANGTA3                  NUMBER(1),
  IS_SHANGZHAN                 VARCHAR2(255 CHAR),
  IS_SHOUJIA                   VARCHAR2(255 CHAR),
  IS_TIETA_JIFANG1             NUMBER(1),
  IS_TIETA_JIFANG2             NUMBER(1),
  IS_TIETA_JIFANG3             NUMBER(1),
  IS_TOWER_SHOUJIA             VARCHAR2(255 CHAR),
  IS_WUYE_CAIWU                VARCHAR2(255 CHAR),
  JF_SHIJI_SHIJIAN             VARCHAR2(255 CHAR),
  JF_SHIJIANYAOQIU             VARCHAR2(255 CHAR),
  JF_YANSHOU_JIEGUO            VARCHAR2(255 CHAR),
  JIANSHE_FANGSHI              VARCHAR2(255 CHAR),
  JINGDU                       VARCHAR2(255 CHAR),
  JIZHUN_DANJIA_CHENGBEN       VARCHAR2(255 CHAR),
  JIZHUN_JIANZAO_CHENGBEN      VARCHAR2(255 CHAR),
  ORDER_NUM                    VARCHAR2(255 CHAR),
  ORDER_SIGN_DATE              TIMESTAMP(6),
  ORDER_STATUS                 VARCHAR2(255 CHAR),
  OTHER_CHANGDI_FEI            NUMBER(10,3),
  OTHER_DIANLI_FEI             NUMBER(10,3),
  OTHER_FEI                    NUMBER(10,3),
  OTHER_MOSHI                  VARCHAR2(255 CHAR),
  OTHER_WEIHU_FEI              NUMBER(10,3),
  OTHER_YONGDIAN_FEI           NUMBER(10,3),
  OTHER_YOUJI_FEI              NUMBER(10,3),
  OTEHR_YUANSHI_CHANGDI        VARCHAR2(255 CHAR),
  OTHER_YUANSHI_CHENGBEN       VARCHAR2(255 CHAR),
  OTEHR_YUANSHI_DIANLI         VARCHAR2(255 CHAR),
  OTEHR_YUANSHI_WEIHU          VARCHAR2(255 CHAR),
  OTEHR_YUANSHI_YONGDIAN       VARCHAR2(255 CHAR),
  OTEHR_YUANSHI_YOUJI          VARCHAR2(255 CHAR),
  OTHER_ZHEKOU                 VARCHAR2(255 CHAR),
  PEITAO_DANJIA_CHENGBEN       VARCHAR2(255 CHAR),
  PEITAO_GX_ZHEKOU             NUMBER(10,3),
  PEITAO_JIANZAO_CHENGBEN      VARCHAR2(255 CHAR),
  PEITAO_YUANSHI_CHENGBEN      VARCHAR2(255 CHAR),
  PROJECT_START_DATE           TIMESTAMP(6),
  RENT_DATE                    TIMESTAMP(6),
  ROOM_CODE                    VARCHAR2(255 CHAR),
  ROOM_DANJIA_CHENGBEN         VARCHAR2(255 CHAR),
  ROOM_GX_ZHEKOU               NUMBER(10,3),
  ROOM_JIANZAO_CHENGBEN        VARCHAR2(255 CHAR),
  ROOM_NAME                    VARCHAR2(255 CHAR),
  ROOM_NUM                     VARCHAR2(255 CHAR),
  ROOM_YUANSHI_CHENGBEN        VARCHAR2(255 CHAR),
  RRU_GONGDIAN                 VARCHAR2(255 CHAR),
  RRU_NUM                      VARCHAR2(255 CHAR),
  SHENG_FEN                    VARCHAR2(255 CHAR),
  SHIJI_FENGYAXS               VARCHAR2(255 CHAR),
  STOP_DATE                    TIMESTAMP(6),
  SUANFEI_FENGYAXS             NUMBER(10,3),
  TOWER_CODE                   VARCHAR2(255 CHAR),
  TOWER_DANJIA_CHENGBEN        VARCHAR2(255 CHAR),
  TOWER_GX_ZHEKOU              NUMBER(10,3),
  TOWER_HEIGHT                 VARCHAR2(255 CHAR),
  TOWER_JIANZAO_CHENGBEN       VARCHAR2(255 CHAR),
  TOWER_NAME                   VARCHAR2(255 CHAR),
  TOWER_NUM                    VARCHAR2(255 CHAR),
  TOWER_YUANSHI_CHENGBEN       VARCHAR2(255 CHAR),
  TT_JIFEI_XITONG1             VARCHAR2(255 CHAR),
  TT_JIFEI_XITONG2             VARCHAR2(255 CHAR),
  TT_JIFEI_XITONG3             VARCHAR2(255 CHAR),
  TT_SYSTEM_NAME1              VARCHAR2(255 CHAR),
  TT_SYSTEM_NAME2              VARCHAR2(255 CHAR),
  TT_SYSTEM_NAME3              VARCHAR2(255 CHAR),
  TT_TIANXIAN_GUAGAO1          NUMBER(10,3),
  TT_TIANXIAN_GUAGAO2          NUMBER(10,3),
  TT_TIANXIAN_GUAGAO3          NUMBER(10,3),
  TT_TIANXIAN_SHU1             VARCHAR2(255 CHAR),
  TT_TIANXIAN_SHU2             VARCHAR2(255 CHAR),
  TT_TIANXIAN_SHU3             VARCHAR2(255 CHAR),
  TT_ZHANZHI_MINGCHENG         VARCHAR2(255 CHAR),
  WEIBO_TIANXIAN               VARCHAR2(255 CHAR),
  WEIDU                        VARCHAR2(255 CHAR),
  WEIHU_DENGJI                 VARCHAR2(255 CHAR),
  WEIBO_FEI                    NUMBER(10,3),
  WEIBO_YUANSHI_CHENGBEN       VARCHAR2(255 CHAR),
  WEIHU_DANJIA_CHENGBEN        VARCHAR2(255 CHAR),
  WEIHU_GX_ZHEKOU              NUMBER(10,3),
  WEIHU_JIANZAO_CHENGBEN       VARCHAR2(255 CHAR),
  WEIHU_YUANSHI_CHENGBEN       VARCHAR2(255 CHAR),
  WL_ZHANZHI_BIANMA            VARCHAR2(255 CHAR),
  WLAN_FEI                     NUMBER(10,3),
  WLAN_TIANXIAN                VARCHAR2(255 CHAR),
  WLAN_YUANSHI_CHENGBEN        VARCHAR2(255 CHAR),
  XDC_FEI                      NUMBER(10,3),
  XDC_SHICHANG                 VARCHAR2(255 CHAR),
  XDC_YUANSHI_CHENGBEN         VARCHAR2(255 CHAR),
  XIANGXI_DIZHI                VARCHAR2(4000 CHAR),
  XIEYI_BIANHAO                VARCHAR2(255 CHAR),
  XM_JIANSHE_ZHUANGTAI         VARCHAR2(255 CHAR),
  XQ_DANHAO                    VARCHAR2(255 CHAR),
  XQ_PICI                      VARCHAR2(255 CHAR),
  XQ_ZHANDIAN_MINGCHENG        VARCHAR2(255 CHAR),
  YONGDIAN_JIANZAO_CHENGBEN    NUMBER(10,3),
  YONGDIAN_MOSHI               VARCHAR2(255 CHAR),
  YONGDIAN_YUANSHI_CHENGBEN    VARCHAR2(255 CHAR),
  YOUJI_JIANZAO_CHENGBEN       NUMBER(10,3),
  YOUJI_MOSHI                  VARCHAR2(255 CHAR),
  YOUJI_YUANSHI_CHENGBEN       VARCHAR2(255 CHAR),
  YUN_YING_SHANG               VARCHAR2(255 CHAR),
  ZHANZHI_BIANMA               VARCHAR2(255 CHAR),
  ZONG_FEI                     VARCHAR2(255 CHAR),
  ZONG_GONGHAO                 VARCHAR2(255 CHAR),
  REGION_ID                    NUMBER(19),
  ENTITY_CREATOR_ID            NUMBER(19),
  ROOMDETAILTYPE_ID            NUMBER(19),
  ATTACHMENT_UNIT_ID           NUMBER(19),
  CITY_ID                      NUMBER(19),
  ACER_STATION_ORDER_DETAIL_ID NUMBER(19),
  TOWERDETAILTYPE_ID           NUMBER(19),
  TOWERTYPE_ID                 NUMBER(19),
  CITYTYPE_ID                  NUMBER(19),
  FUGAI_MIANJI                 VARCHAR2(255 CHAR),
  JIANZHU_LEIXING              VARCHAR2(255 CHAR),
  TYPE                         VARCHAR2(255 CHAR),
  IS_DOU                       VARCHAR2(255 CHAR),
  IS_TESHU                     VARCHAR2(255 CHAR),
  MAX_POI                      VARCHAR2(255 CHAR),
  MIN_POI                      VARCHAR2(255 CHAR),
  POI_TYPE                     VARCHAR2(255 CHAR),
  SUIDAO_CHANGDU               VARCHAR2(255 CHAR),
  XINYUAN_PINDUAN              VARCHAR2(255 CHAR),
  ROOM_GX_ZHEKOU2              NUMBER(10,3),
  ROOM_GX_ZHEKOU3              NUMBER(10,3),
  ROOMSHIJIAN1                 VARCHAR2(255 CHAR),
  ROOMSHIJIAN2                 VARCHAR2(255 CHAR),
  ROOMSHIJIAN3                 VARCHAR2(255 CHAR),
  TOWER_GX_ZHEKOU2             NUMBER(10,3),
  TOWER_GX_ZHEKOU3             NUMBER(10,3),
  TOWERSHIJIAN1                VARCHAR2(255 CHAR),
  TOWERSHIJIAN2                VARCHAR2(255 CHAR),
  TOWERSHIJIAN3                VARCHAR2(255 CHAR),
  机房时间段1                       VARCHAR2(255 CHAR),
  机房时间段2                       VARCHAR2(255 CHAR),
  机房时间段3                       VARCHAR2(255 CHAR),
  铁塔时间段1                       VARCHAR2(255 CHAR),
  铁塔时间段2                       VARCHAR2(255 CHAR),
  铁塔时间段3                       VARCHAR2(255 CHAR),
  CDSHIJIAN1                   VARCHAR2(255 CHAR),
  CDSHIJIAN2                   VARCHAR2(255 CHAR),
  CDSHIJIAN3                   VARCHAR2(255 CHAR),
  CDZHEKOU1                    NUMBER(10,3),
  CDZHEKOU2                    NUMBER(10,3),
  CDZHEKOU3                    NUMBER(10,3),
  IS_COUNT                     NUMBER(1),
  ACER_STATION_ORDER_HIS_ID    VARCHAR2(255 CHAR)
)
tablespace EPMSDEV
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.B_ACER_STATION_ORDER_TRAN
  add primary key (ID)
  using index 
  tablespace EPMSDEV
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.B_ACER_STATION_ORDER_TRAN
  add constraint FK877BA67A13E6951B foreign key (ROOMDETAILTYPE_ID)
  references FEE_HLJ.C_ROOM_DETAIL_TYPE (ID);
alter table FEE_HLJ.B_ACER_STATION_ORDER_TRAN
  add constraint FK877BA67A26D130B9 foreign key (TOWERDETAILTYPE_ID)
  references FEE_HLJ.C_TOWER_DETAIL_TYPE (ID);
alter table FEE_HLJ.B_ACER_STATION_ORDER_TRAN
  add constraint FK877BA67A2F0C6B0D foreign key (ACER_STATION_ORDER_DETAIL_ID)
  references FEE_HLJ.B_ACER_STATION_ORDER_DETAIL (ID);
alter table FEE_HLJ.B_ACER_STATION_ORDER_TRAN
  add constraint FK877BA67A7D3296C0 foreign key (ENTITY_CREATOR_ID)
  references FEE_HLJ.S_PRIVILEGE_USER (ID);
alter table FEE_HLJ.B_ACER_STATION_ORDER_TRAN
  add constraint FK877BA67AACEBAB84 foreign key (REGION_ID)
  references FEE_HLJ.C_ORGANIZATION (ID);
alter table FEE_HLJ.B_ACER_STATION_ORDER_TRAN
  add constraint FK877BA67AD74E11AD foreign key (CITY_ID)
  references FEE_HLJ.C_ORGANIZATION (ID);
alter table FEE_HLJ.B_ACER_STATION_ORDER_TRAN
  add constraint FK877BA67ADE8CD579 foreign key (TOWERTYPE_ID)
  references FEE_HLJ.C_TOWER_TYPE (ID);
alter table FEE_HLJ.B_ACER_STATION_ORDER_TRAN
  add constraint FK877BA67AF43C991F foreign key (CITYTYPE_ID)
  references FEE_HLJ.C_CITY_CATEGORY (ID);
alter table FEE_HLJ.B_ACER_STATION_ORDER_TRAN
  add constraint FK877BA67AF7258E38 foreign key (ATTACHMENT_UNIT_ID)
  references FEE_HLJ.B_ATTACHMENT_UNIT (ID);

prompt
prompt Creating table B_ATTACHMENT
prompt ===========================
prompt
create table FEE_HLJ.B_ATTACHMENT
(
  ID                  NUMBER(19) not null,
  ATTACH_TYPE         VARCHAR2(128 CHAR),
  ATTCHMENT_SIZE      NUMBER(19,2),
  AUTHOR              VARCHAR2(50 CHAR),
  ATTACH_CODE         VARCHAR2(50 CHAR),
  CONTENT             VARCHAR2(1000 CHAR),
  ATTACH_NAME         VARCHAR2(255 CHAR),
  ATTACH_PATH         VARCHAR2(255 CHAR),
  ATTACH_TOPIC        VARCHAR2(255 CHAR),
  UPLOAD_DATE         TIMESTAMP(6),
  ATTACHMENT_STAGE_ID NUMBER(19),
  ATTACHMENT_TYPE_ID  NUMBER(19),
  ATTACHMENT_UNIT_ID  NUMBER(19),
  UPLOADER_ID         NUMBER(19),
  DOC_DATE            TIMESTAMP(6)
)
tablespace EPMSDEV
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.B_ATTACHMENT
  add primary key (ID)
  using index 
  tablespace EPMSDEV
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table B_BULLETIN
prompt =========================
prompt
create table FEE_HLJ.B_BULLETIN
(
  ID                 NUMBER(19) not null,
  ENTITY_CODE        VARCHAR2(255 CHAR),
  ENTITY_CREATE_DATE TIMESTAMP(6),
  ENTITY_DESC        VARCHAR2(4000 CHAR),
  FINISH_DATE        TIMESTAMP(6),
  ENTITY_NAME        VARCHAR2(255 CHAR),
  ENTITY_STATUS      VARCHAR2(100 CHAR),
  ATTACHMENT_UNIT_ID NUMBER(19),
  ENTITY_CREATOR_ID  NUMBER(19)
)
tablespace EPMSDEV
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.B_BULLETIN
  add primary key (ID)
  using index 
  tablespace EPMSDEV
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table B_BUSINESS_SERIAL_NUMBER
prompt =======================================
prompt
create table FEE_HLJ.B_BUSINESS_SERIAL_NUMBER
(
  ID                     NUMBER(19) not null,
  BUSINESS_SERIAL_NUMBER VARCHAR2(255 CHAR),
  BUSINESS_TYPE          VARCHAR2(255 CHAR),
  SERIAL_NUMBER          VARCHAR2(255 CHAR)
)
tablespace EPMSDEV
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.B_BUSINESS_SERIAL_NUMBER
  add primary key (ID)
  using index 
  tablespace EPMSDEV
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table C_THE_OWNER_TYPE
prompt ===============================
prompt
create table FEE_HLJ.C_THE_OWNER_TYPE
(
  ID           NUMBER(19) not null,
  TYPE_CODE    VARCHAR2(255 CHAR),
  TYPE_DESC    VARCHAR2(255 CHAR),
  DELETED_FLAG NUMBER(1),
  TYPE_NAME    VARCHAR2(255 CHAR),
  PRIORITY     NUMBER(10)
)
tablespace EPMSDEV
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.C_THE_OWNER_TYPE
  add primary key (ID)
  using index 
  tablespace EPMSDEV
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table B_CONTRACT_INFORMATION
prompt =====================================
prompt
create table FEE_HLJ.B_CONTRACT_INFORMATION
(
  ID                   NUMBER(19) not null,
  ENTITY_CODE          VARCHAR2(255 CHAR),
  ENTITY_CREATE_DATE   TIMESTAMP(6),
  ENTITY_DESC          VARCHAR2(4000 CHAR),
  FINISH_DATE          TIMESTAMP(6),
  ENTITY_NAME          VARCHAR2(255 CHAR),
  ENTITY_STATUS        VARCHAR2(100 CHAR),
  DELETED_FLAG         NUMBER(1),
  AVERAGE_ANNUAL_RENT  NUMBER(10,2),
  CONTRACT_AMOUNT      NUMBER(10,2),
  CONTRACT_CODE        VARCHAR2(255 CHAR),
  CONTRACT_END_DATE    TIMESTAMP(6),
  CONTRACT_NAME        VARCHAR2(255 CHAR),
  CONTRACT_SITE_NAME   VARCHAR2(255 CHAR),
  CONTRACT_START_DATE  TIMESTAMP(6),
  CONTRACT_WAY         NUMBER(19,2),
  LEASE_AREA           VARCHAR2(255 CHAR),
  OWNER_IS_CONTACT     VARCHAR2(255 CHAR),
  PAYMENT_PERIOD       VARCHAR2(100 CHAR),
  PROVIDER_ACCOUNT     VARCHAR2(255 CHAR),
  PROVIDER_CODE        VARCHAR2(255 CHAR),
  PROVIDER_NAME        VARCHAR2(255 CHAR),
  RENT_FIXED           VARCHAR2(255 CHAR),
  APPLY_ORG_ID         NUMBER(19),
  ATTACHMENT_UNIT_ID   NUMBER(19),
  WORKFLOW_ACTIVITY_ID NUMBER(19),
  ENTITY_CREATOR_ID    NUMBER(19),
  THE_OWNER_TYPE_ID    NUMBER(19),
  APPLY_DEPT_ID        NUMBER(19)
)
tablespace EPMSDEV
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.B_CONTRACT_INFORMATION
  add primary key (ID)
  using index 
  tablespace EPMSDEV
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.B_CONTRACT_INFORMATION
  add constraint FK2B91653C7D3296C0 foreign key (ENTITY_CREATOR_ID)
  references FEE_HLJ.S_PRIVILEGE_USER (ID);
alter table FEE_HLJ.B_CONTRACT_INFORMATION
  add constraint FK2B91653C967622C2 foreign key (APPLY_DEPT_ID)
  references FEE_HLJ.C_ORGANIZATION (ID);
alter table FEE_HLJ.B_CONTRACT_INFORMATION
  add constraint FK2B91653C979F9C51 foreign key (THE_OWNER_TYPE_ID)
  references FEE_HLJ.C_THE_OWNER_TYPE (ID);
alter table FEE_HLJ.B_CONTRACT_INFORMATION
  add constraint FK2B91653CA29A3F85 foreign key (APPLY_ORG_ID)
  references FEE_HLJ.C_ORGANIZATION (ID);
alter table FEE_HLJ.B_CONTRACT_INFORMATION
  add constraint FK2B91653CDEFD0F5 foreign key (WORKFLOW_ACTIVITY_ID)
  references FEE_HLJ.W_WORKFLOW_ACTIVITY (ID);
alter table FEE_HLJ.B_CONTRACT_INFORMATION
  add constraint FK2B91653CF7258E38 foreign key (ATTACHMENT_UNIT_ID)
  references FEE_HLJ.B_ATTACHMENT_UNIT (ID);

prompt
prompt Creating table B_CONTRACT_MAINTAIN
prompt ==================================
prompt
create table FEE_HLJ.B_CONTRACT_MAINTAIN
(
  ID                   NUMBER(19) not null,
  ENTITY_CODE          VARCHAR2(255 CHAR),
  ENTITY_CREATE_DATE   TIMESTAMP(6),
  ENTITY_DESC          VARCHAR2(4000 CHAR),
  FINISH_DATE          TIMESTAMP(6),
  ENTITY_NAME          VARCHAR2(255 CHAR),
  ENTITY_STATUS        VARCHAR2(100 CHAR),
  DELETED_FLAG         NUMBER(1),
  ENTITY_CREATOR_ID    NUMBER(19),
  WORKFLOW_ACTIVITY_ID NUMBER(19),
  ATTACHMENT_UNIT_ID   NUMBER(19),
  APPLY_ORG_ID         NUMBER(19),
  APPLY_DEPT_ID        NUMBER(19)
)
tablespace EPMSDEV
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.B_CONTRACT_MAINTAIN
  add primary key (ID)
  using index 
  tablespace EPMSDEV
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.B_CONTRACT_MAINTAIN
  add constraint FKD673F7B7D3296C0 foreign key (ENTITY_CREATOR_ID)
  references FEE_HLJ.S_PRIVILEGE_USER (ID);
alter table FEE_HLJ.B_CONTRACT_MAINTAIN
  add constraint FKD673F7B967622C2 foreign key (APPLY_DEPT_ID)
  references FEE_HLJ.C_ORGANIZATION (ID);
alter table FEE_HLJ.B_CONTRACT_MAINTAIN
  add constraint FKD673F7BA29A3F85 foreign key (APPLY_ORG_ID)
  references FEE_HLJ.C_ORGANIZATION (ID);
alter table FEE_HLJ.B_CONTRACT_MAINTAIN
  add constraint FKD673F7BDEFD0F5 foreign key (WORKFLOW_ACTIVITY_ID)
  references FEE_HLJ.W_WORKFLOW_ACTIVITY (ID);
alter table FEE_HLJ.B_CONTRACT_MAINTAIN
  add constraint FKD673F7BF7258E38 foreign key (ATTACHMENT_UNIT_ID)
  references FEE_HLJ.B_ATTACHMENT_UNIT (ID);

prompt
prompt Creating table B_CONTRACT_POWER
prompt ===============================
prompt
create table FEE_HLJ.B_CONTRACT_POWER
(
  ID                   NUMBER(19) not null,
  ENTITY_CODE          VARCHAR2(255 CHAR),
  ENTITY_CREATE_DATE   TIMESTAMP(6),
  ENTITY_DESC          VARCHAR2(4000 CHAR),
  FINISH_DATE          TIMESTAMP(6),
  ENTITY_NAME          VARCHAR2(255 CHAR),
  ENTITY_STATUS        VARCHAR2(100 CHAR),
  DELETED_FLAG         NUMBER(1),
  CONTRACTTYPE         VARCHAR2(1 CHAR),
  ELECTRICITY_PRICE    NUMBER(19,2),
  END_DATE             TIMESTAMP(6),
  PERIOD               NUMBER(19,2),
  START_DATE           TIMESTAMP(6),
  REGION_ID            NUMBER(19),
  ATTACHMENT_UNIT_ID   NUMBER(19),
  CONTRACT_ID          NUMBER(19),
  PAYCYCLE_ID          NUMBER(19),
  CITY_ID              NUMBER(19),
  APPLY_DEPT_ID        NUMBER(19),
  ENTITY_CREATOR_ID    NUMBER(19),
  SUPPLYTYPE_ID        NUMBER(19),
  APPLY_ORG_ID         NUMBER(19),
  WORKFLOW_ACTIVITY_ID NUMBER(19),
  POWER_UNIT_ID        NUMBER(19),
  CONTRACT_CODE        VARCHAR2(255 CHAR),
  CONTRACT_NAME        VARCHAR2(255 CHAR),
  PROVIDER             NUMBER(19)
)
tablespace EPMSDEV
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.B_CONTRACT_POWER
  add primary key (ID)
  using index 
  tablespace EPMSDEV
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.B_CONTRACT_POWER
  add constraint FKC1D6A1154261E5E9 foreign key (PAYCYCLE_ID)
  references FEE_HLJ.C_PAYMENT_CYCLE (ID);
alter table FEE_HLJ.B_CONTRACT_POWER
  add constraint FKC1D6A11556960AA7 foreign key (CONTRACT_ID)
  references FEE_HLJ.B_CONTRACT (ID);
alter table FEE_HLJ.B_CONTRACT_POWER
  add constraint FKC1D6A1156F05DADB foreign key (POWER_UNIT_ID)
  references FEE_HLJ.B_RESOURCE_UNIT (ID);
alter table FEE_HLJ.B_CONTRACT_POWER
  add constraint FKC1D6A1157D3296C0 foreign key (ENTITY_CREATOR_ID)
  references FEE_HLJ.S_PRIVILEGE_USER (ID);
alter table FEE_HLJ.B_CONTRACT_POWER
  add constraint FKC1D6A115813A160F foreign key (PROVIDER)
  references FEE_HLJ.C_PROVIDER (ID);
alter table FEE_HLJ.B_CONTRACT_POWER
  add constraint FKC1D6A115967622C2 foreign key (APPLY_DEPT_ID)
  references FEE_HLJ.C_ORGANIZATION (ID);
alter table FEE_HLJ.B_CONTRACT_POWER
  add constraint FKC1D6A115A29A3F85 foreign key (APPLY_ORG_ID)
  references FEE_HLJ.C_ORGANIZATION (ID);
alter table FEE_HLJ.B_CONTRACT_POWER
  add constraint FKC1D6A115A642F552 foreign key (SUPPLYTYPE_ID)
  references FEE_HLJ.C_POWER_SUPPLY_TYPE (ID);
alter table FEE_HLJ.B_CONTRACT_POWER
  add constraint FKC1D6A115ACEBAB84 foreign key (REGION_ID)
  references FEE_HLJ.C_ORGANIZATION (ID);
alter table FEE_HLJ.B_CONTRACT_POWER
  add constraint FKC1D6A115D74E11AD foreign key (CITY_ID)
  references FEE_HLJ.C_ORGANIZATION (ID);
alter table FEE_HLJ.B_CONTRACT_POWER
  add constraint FKC1D6A115DEFD0F5 foreign key (WORKFLOW_ACTIVITY_ID)
  references FEE_HLJ.W_WORKFLOW_ACTIVITY (ID);
alter table FEE_HLJ.B_CONTRACT_POWER
  add constraint FKC1D6A115F7258E38 foreign key (ATTACHMENT_UNIT_ID)
  references FEE_HLJ.B_ATTACHMENT_UNIT (ID);

prompt
prompt Creating table B_CONTRACT_POWER_ADJUST
prompt ======================================
prompt
create table FEE_HLJ.B_CONTRACT_POWER_ADJUST
(
  ID                   NUMBER(19) not null,
  ENTITY_CODE          VARCHAR2(255 CHAR),
  ENTITY_CREATE_DATE   TIMESTAMP(6),
  ENTITY_DESC          VARCHAR2(4000 CHAR),
  FINISH_DATE          TIMESTAMP(6),
  ENTITY_NAME          VARCHAR2(255 CHAR),
  ENTITY_STATUS        VARCHAR2(100 CHAR),
  DELETED_FLAG         NUMBER(1),
  CONTRACTTYPE         VARCHAR2(10),
  ELECTRICITY_PRICE    NUMBER(19,2),
  END_DATE             TIMESTAMP(6),
  PERIOD               NUMBER(19,2),
  START_DATE           TIMESTAMP(6),
  ENTITY_CREATOR_ID    NUMBER(19),
  APPLY_ORG_ID         NUMBER(19),
  APPLY_DEPT_ID        NUMBER(19),
  CONTRACT_ID          NUMBER(19),
  CITY_ID              NUMBER(19),
  WORKFLOW_ACTIVITY_ID NUMBER(19),
  SUPPLYTYPE_ID        NUMBER(19),
  PAYCYCLE_ID          NUMBER(19),
  REGION_ID            NUMBER(19),
  ATTACHMENT_UNIT_ID   NUMBER(19),
  POWER_UNIT_ID        NUMBER(19),
  CONTRACT_CODE        VARCHAR2(255 CHAR),
  CONTRACT_NAME        VARCHAR2(255 CHAR),
  PROVIDER             NUMBER(19)
)
tablespace EPMSDEV
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.B_CONTRACT_POWER_ADJUST
  add primary key (ID)
  using index 
  tablespace EPMSDEV
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.B_CONTRACT_POWER_ADJUST
  add constraint FKDA290E194261E5E9 foreign key (PAYCYCLE_ID)
  references FEE_HLJ.C_PAYMENT_CYCLE (ID);
alter table FEE_HLJ.B_CONTRACT_POWER_ADJUST
  add constraint FKDA290E1956960AA7 foreign key (CONTRACT_ID)
  references FEE_HLJ.B_CONTRACT (ID);
alter table FEE_HLJ.B_CONTRACT_POWER_ADJUST
  add constraint FKDA290E196F05DADB foreign key (POWER_UNIT_ID)
  references FEE_HLJ.B_RESOURCE_UNIT (ID);
alter table FEE_HLJ.B_CONTRACT_POWER_ADJUST
  add constraint FKDA290E197D3296C0 foreign key (ENTITY_CREATOR_ID)
  references FEE_HLJ.S_PRIVILEGE_USER (ID);
alter table FEE_HLJ.B_CONTRACT_POWER_ADJUST
  add constraint FKDA290E19813A160F foreign key (PROVIDER)
  references FEE_HLJ.C_PROVIDER (ID);
alter table FEE_HLJ.B_CONTRACT_POWER_ADJUST
  add constraint FKDA290E19967622C2 foreign key (APPLY_DEPT_ID)
  references FEE_HLJ.C_ORGANIZATION (ID);
alter table FEE_HLJ.B_CONTRACT_POWER_ADJUST
  add constraint FKDA290E19A29A3F85 foreign key (APPLY_ORG_ID)
  references FEE_HLJ.C_ORGANIZATION (ID);
alter table FEE_HLJ.B_CONTRACT_POWER_ADJUST
  add constraint FKDA290E19A642F552 foreign key (SUPPLYTYPE_ID)
  references FEE_HLJ.C_POWER_SUPPLY_TYPE (ID);
alter table FEE_HLJ.B_CONTRACT_POWER_ADJUST
  add constraint FKDA290E19ACEBAB84 foreign key (REGION_ID)
  references FEE_HLJ.C_ORGANIZATION (ID);
alter table FEE_HLJ.B_CONTRACT_POWER_ADJUST
  add constraint FKDA290E19D74E11AD foreign key (CITY_ID)
  references FEE_HLJ.C_ORGANIZATION (ID);
alter table FEE_HLJ.B_CONTRACT_POWER_ADJUST
  add constraint FKDA290E19DEFD0F5 foreign key (WORKFLOW_ACTIVITY_ID)
  references FEE_HLJ.W_WORKFLOW_ACTIVITY (ID);
alter table FEE_HLJ.B_CONTRACT_POWER_ADJUST
  add constraint FKDA290E19F7258E38 foreign key (ATTACHMENT_UNIT_ID)
  references FEE_HLJ.B_ATTACHMENT_UNIT (ID);

prompt
prompt Creating table B_CONTRACT_RENT
prompt ==============================
prompt
create table FEE_HLJ.B_CONTRACT_RENT
(
  ID                   NUMBER(19) not null,
  ENTITY_CODE          VARCHAR2(255 CHAR),
  ENTITY_CREATE_DATE   TIMESTAMP(6),
  ENTITY_DESC          VARCHAR2(4000 CHAR),
  FINISH_DATE          TIMESTAMP(6),
  ENTITY_NAME          VARCHAR2(255 CHAR),
  ENTITY_STATUS        VARCHAR2(100 CHAR),
  DELETED_FLAG         NUMBER(1),
  ALL_RENT             NUMBER(19,2),
  AVERAGE_RENT         NUMBER(19,2),
  CONTRACTTYPE         VARCHAR2(1 CHAR),
  END_DATE             TIMESTAMP(6),
  IS_REPLACE_POWER     NUMBER(1),
  PERIOD               NUMBER(19,2),
  START_DATE           TIMESTAMP(6),
  ENTITY_CREATOR_ID    NUMBER(19),
  ATTACHMENT_UNIT_ID   NUMBER(19),
  APPLY_DEPT_ID        NUMBER(19),
  REGION_ID            NUMBER(19),
  CONTRACT_ID          NUMBER(19),
  CITY_ID              NUMBER(19),
  RENT_UNIT_ID         NUMBER(19),
  APPLY_ORG_ID         NUMBER(19),
  PAYCYCLE_ID          NUMBER(19),
  WORKFLOW_ACTIVITY_ID NUMBER(19),
  RESOURCESCENE_ID     NUMBER(19),
  RESOURCESORT_ID      NUMBER(19),
  CONTRACTRENTTYPE_ID  NUMBER(19),
  PAYCYCLE             NUMBER(19,2),
  CONTRACT_CODE        VARCHAR2(255 CHAR),
  CONTRACT_NAME        VARCHAR2(255 CHAR),
  PROVIDER             NUMBER(19)
)
tablespace EPMSDEV
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.B_CONTRACT_RENT
  add primary key (ID)
  using index 
  tablespace EPMSDEV
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.B_CONTRACT_RENT
  add constraint FK4852012914CCBFFD foreign key (RESOURCESORT_ID)
  references FEE_HLJ.C_RESOURCE_SORT (ID);
alter table FEE_HLJ.B_CONTRACT_RENT
  add constraint FK485201294261E5E9 foreign key (PAYCYCLE_ID)
  references FEE_HLJ.C_PAYMENT_CYCLE (ID);
alter table FEE_HLJ.B_CONTRACT_RENT
  add constraint FK485201294432092F foreign key (RENT_UNIT_ID)
  references FEE_HLJ.B_RESOURCE_UNIT (ID);
alter table FEE_HLJ.B_CONTRACT_RENT
  add constraint FK4852012956960AA7 foreign key (CONTRACT_ID)
  references FEE_HLJ.B_CONTRACT (ID);
alter table FEE_HLJ.B_CONTRACT_RENT
  add constraint FK485201297D3296C0 foreign key (ENTITY_CREATOR_ID)
  references FEE_HLJ.S_PRIVILEGE_USER (ID);
alter table FEE_HLJ.B_CONTRACT_RENT
  add constraint FK48520129813A160F foreign key (PROVIDER)
  references FEE_HLJ.C_PROVIDER (ID);
alter table FEE_HLJ.B_CONTRACT_RENT
  add constraint FK485201299274FD07 foreign key (CONTRACTRENTTYPE_ID)
  references FEE_HLJ.C_CONTRACT_RENT_TYPE (ID);
alter table FEE_HLJ.B_CONTRACT_RENT
  add constraint FK48520129967622C2 foreign key (APPLY_DEPT_ID)
  references FEE_HLJ.C_ORGANIZATION (ID);
alter table FEE_HLJ.B_CONTRACT_RENT
  add constraint FK48520129A29A3F85 foreign key (APPLY_ORG_ID)
  references FEE_HLJ.C_ORGANIZATION (ID);
alter table FEE_HLJ.B_CONTRACT_RENT
  add constraint FK48520129ACEBAB84 foreign key (REGION_ID)
  references FEE_HLJ.C_ORGANIZATION (ID);
alter table FEE_HLJ.B_CONTRACT_RENT
  add constraint FK48520129D74E11AD foreign key (CITY_ID)
  references FEE_HLJ.C_ORGANIZATION (ID);
alter table FEE_HLJ.B_CONTRACT_RENT
  add constraint FK48520129DA406769 foreign key (RESOURCESORT_ID)
  references FEE_HLJ.C_RESOURCE_SCENE (ID);
alter table FEE_HLJ.B_CONTRACT_RENT
  add constraint FK48520129DEFD0F5 foreign key (WORKFLOW_ACTIVITY_ID)
  references FEE_HLJ.W_WORKFLOW_ACTIVITY (ID);
alter table FEE_HLJ.B_CONTRACT_RENT
  add constraint FK48520129F379DB97 foreign key (RESOURCESCENE_ID)
  references FEE_HLJ.C_RESOURCE_SCENE (ID);
alter table FEE_HLJ.B_CONTRACT_RENT
  add constraint FK48520129F7258E38 foreign key (ATTACHMENT_UNIT_ID)
  references FEE_HLJ.B_ATTACHMENT_UNIT (ID);

prompt
prompt Creating table B_CONTRACT_RENT_ADJUST
prompt =====================================
prompt
create table FEE_HLJ.B_CONTRACT_RENT_ADJUST
(
  ID                   NUMBER(19) not null,
  ENTITY_CODE          VARCHAR2(255 CHAR),
  ENTITY_CREATE_DATE   TIMESTAMP(6),
  ENTITY_DESC          VARCHAR2(4000 CHAR),
  FINISH_DATE          TIMESTAMP(6),
  ENTITY_NAME          VARCHAR2(255 CHAR),
  ENTITY_STATUS        VARCHAR2(100 CHAR),
  DELETED_FLAG         NUMBER(1),
  ALL_RENT             NUMBER(19,2),
  AVERAGE_RENT         NUMBER(19,2),
  CONTRACTTYPE         VARCHAR2(10),
  END_DATE             TIMESTAMP(6),
  IS_REPLACE_POWER     NUMBER(1),
  PERIOD               NUMBER(19,2),
  START_DATE           TIMESTAMP(6),
  ATTACHMENT_UNIT_ID   NUMBER(19),
  RESOURCESCENE_ID     NUMBER(19),
  CITY_ID              NUMBER(19),
  RESOURCESORT_ID      NUMBER(19),
  REGION_ID            NUMBER(19),
  RENT_UNIT_ID         NUMBER(19),
  CONTRACT_ID          NUMBER(19),
  PAYCYCLE_ID          NUMBER(19),
  WORKFLOW_ACTIVITY_ID NUMBER(19),
  APPLY_DEPT_ID        NUMBER(19),
  APPLY_ORG_ID         NUMBER(19),
  ENTITY_CREATOR_ID    NUMBER(19),
  CONTRACTRENTTYPE_ID  NUMBER(19),
  PAYCYCLE             NUMBER(19,2),
  CONTRACT_CODE        VARCHAR2(255 CHAR),
  CONTRACT_NAME        VARCHAR2(255 CHAR),
  PROVIDER             NUMBER(19)
)
tablespace EPMSDEV
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.B_CONTRACT_RENT_ADJUST
  add primary key (ID)
  using index 
  tablespace EPMSDEV
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.B_CONTRACT_RENT_ADJUST
  add constraint FKE854436514CCBFFD foreign key (RESOURCESORT_ID)
  references FEE_HLJ.C_RESOURCE_SORT (ID);
alter table FEE_HLJ.B_CONTRACT_RENT_ADJUST
  add constraint FKE85443654261E5E9 foreign key (PAYCYCLE_ID)
  references FEE_HLJ.C_PAYMENT_CYCLE (ID);
alter table FEE_HLJ.B_CONTRACT_RENT_ADJUST
  add constraint FKE85443654432092F foreign key (RENT_UNIT_ID)
  references FEE_HLJ.B_RESOURCE_UNIT (ID);
alter table FEE_HLJ.B_CONTRACT_RENT_ADJUST
  add constraint FKE854436556960AA7 foreign key (CONTRACT_ID)
  references FEE_HLJ.B_CONTRACT (ID);
alter table FEE_HLJ.B_CONTRACT_RENT_ADJUST
  add constraint FKE85443657D3296C0 foreign key (ENTITY_CREATOR_ID)
  references FEE_HLJ.S_PRIVILEGE_USER (ID);
alter table FEE_HLJ.B_CONTRACT_RENT_ADJUST
  add constraint FKE8544365813A160F foreign key (PROVIDER)
  references FEE_HLJ.C_PROVIDER (ID);
alter table FEE_HLJ.B_CONTRACT_RENT_ADJUST
  add constraint FKE85443659274FD07 foreign key (CONTRACTRENTTYPE_ID)
  references FEE_HLJ.C_CONTRACT_RENT_TYPE (ID);
alter table FEE_HLJ.B_CONTRACT_RENT_ADJUST
  add constraint FKE8544365967622C2 foreign key (APPLY_DEPT_ID)
  references FEE_HLJ.C_ORGANIZATION (ID);
alter table FEE_HLJ.B_CONTRACT_RENT_ADJUST
  add constraint FKE8544365A29A3F85 foreign key (APPLY_ORG_ID)
  references FEE_HLJ.C_ORGANIZATION (ID);
alter table FEE_HLJ.B_CONTRACT_RENT_ADJUST
  add constraint FKE8544365ACEBAB84 foreign key (REGION_ID)
  references FEE_HLJ.C_ORGANIZATION (ID);
alter table FEE_HLJ.B_CONTRACT_RENT_ADJUST
  add constraint FKE8544365D74E11AD foreign key (CITY_ID)
  references FEE_HLJ.C_ORGANIZATION (ID);
alter table FEE_HLJ.B_CONTRACT_RENT_ADJUST
  add constraint FKE8544365DA406769 foreign key (RESOURCESORT_ID)
  references FEE_HLJ.C_RESOURCE_SCENE (ID);
alter table FEE_HLJ.B_CONTRACT_RENT_ADJUST
  add constraint FKE8544365DEFD0F5 foreign key (WORKFLOW_ACTIVITY_ID)
  references FEE_HLJ.W_WORKFLOW_ACTIVITY (ID);
alter table FEE_HLJ.B_CONTRACT_RENT_ADJUST
  add constraint FKE8544365F379DB97 foreign key (RESOURCESCENE_ID)
  references FEE_HLJ.C_RESOURCE_SCENE (ID);
alter table FEE_HLJ.B_CONTRACT_RENT_ADJUST
  add constraint FKE8544365F7258E38 foreign key (ATTACHMENT_UNIT_ID)
  references FEE_HLJ.B_ATTACHMENT_UNIT (ID);

prompt
prompt Creating table B_CUSTOMIZE_USERSET
prompt ==================================
prompt
create table FEE_HLJ.B_CUSTOMIZE_USERSET
(
  ID                 NUMBER(19) not null,
  ENTITY_CODE        VARCHAR2(255 CHAR),
  ENTITY_CREATE_DATE TIMESTAMP(6),
  ENTITY_DESC        VARCHAR2(4000 CHAR),
  FINISH_DATE        TIMESTAMP(6),
  ENTITY_NAME        VARCHAR2(255 CHAR),
  ENTITY_STATUS      VARCHAR2(100 CHAR),
  ENTITY_CREATOR_ID  NUMBER(19),
  CURRENT_USER_ID    NUMBER(19)
)
tablespace EPMSDEV
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.B_CUSTOMIZE_USERSET
  add primary key (ID)
  using index 
  tablespace EPMSDEV
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table B_DIRECT_POWER_TARIFF
prompt ====================================
prompt
create table FEE_HLJ.B_DIRECT_POWER_TARIFF
(
  ID                 NUMBER(19) not null,
  ENTITY_CODE        VARCHAR2(255 CHAR),
  ENTITY_CREATE_DATE TIMESTAMP(6),
  ENTITY_DESC        VARCHAR2(4000 CHAR),
  FINISH_DATE        TIMESTAMP(6),
  ENTITY_NAME        VARCHAR2(255 CHAR),
  ENTITY_STATUS      VARCHAR2(100 CHAR),
  PRICE_CEILING      NUMBER(10,4),
  PRICE_LOWER        NUMBER(10,4),
  CITY_ID            NUMBER(19),
  ENTITY_CREATOR_ID  NUMBER(19)
)
tablespace EPMSDEV
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.B_DIRECT_POWER_TARIFF
  add primary key (ID)
  using index 
  tablespace EPMSDEV
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.B_DIRECT_POWER_TARIFF
  add constraint FKEC6466D77D3296C0 foreign key (ENTITY_CREATOR_ID)
  references FEE_HLJ.S_PRIVILEGE_USER (ID);
alter table FEE_HLJ.B_DIRECT_POWER_TARIFF
  add constraint FKEC6466D7D74E11AD foreign key (CITY_ID)
  references FEE_HLJ.C_ORGANIZATION (ID);

prompt
prompt Creating table B_DYNAMIC_ENVIRONMENTS
prompt =====================================
prompt
create table FEE_HLJ.B_DYNAMIC_ENVIRONMENTS
(
  ID                  NUMBER(19) not null,
  ENTITY_CODE         VARCHAR2(255 CHAR),
  ENTITY_CREATE_DATE  TIMESTAMP(6),
  ENTITY_DESC         VARCHAR2(4000 CHAR),
  FINISH_DATE         TIMESTAMP(6),
  ENTITY_NAME         VARCHAR2(255 CHAR),
  ENTITY_STATUS       VARCHAR2(100 CHAR),
  AIRCONDITIONING_NUM NUMBER(10,4),
  ALLNUMBER           NUMBER(19,2),
  COMMUNICATIO_NUM    NUMBER(10,4),
  METER_CODE          VARCHAR2(100 CHAR),
  PECORD_DATA         TIMESTAMP(6),
  BASE_STATION_ID     NUMBER(19),
  ENTITY_CREATOR_ID   NUMBER(19)
)
tablespace EPMSDEV
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.B_DYNAMIC_ENVIRONMENTS
  add primary key (ID)
  using index 
  tablespace EPMSDEV
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.B_DYNAMIC_ENVIRONMENTS
  add constraint FK684447D7D3296C0 foreign key (ENTITY_CREATOR_ID)
  references FEE_HLJ.S_PRIVILEGE_USER (ID);
alter table FEE_HLJ.B_DYNAMIC_ENVIRONMENTS
  add constraint FK684447DAEFC3F4A foreign key (BASE_STATION_ID)
  references FEE_HLJ.B_RESOURCE_POINT (ID);

prompt
prompt Creating table B_ELECTRICITYREPORT
prompt ==================================
prompt
create table FEE_HLJ.B_ELECTRICITYREPORT
(
  ID                   NUMBER(19) not null,
  ENTITY_CODE          VARCHAR2(255 CHAR),
  ENTITY_CREATE_DATE   TIMESTAMP(6),
  ENTITY_DESC          VARCHAR2(4000 CHAR),
  FINISH_DATE          TIMESTAMP(6),
  ENTITY_NAME          VARCHAR2(255 CHAR),
  ENTITY_STATUS        VARCHAR2(100 CHAR),
  DELETED_FLAG         NUMBER(1),
  PAY_SITE_NUMBER      VARCHAR2(255 CHAR),
  SITE_NUMBER          VARCHAR2(255 CHAR),
  ATTACHMENT_UNIT_ID   NUMBER(19),
  APPLY_DEPT_ID        NUMBER(19),
  APPLY_ORG_ID         NUMBER(19),
  WORKFLOW_ACTIVITY_ID NUMBER(19),
  ENTITY_CREATOR_ID    NUMBER(19),
  PAY_TYPE             VARCHAR2(255 CHAR),
  FOMAET_DATE          TIMESTAMP(6),
  REGION_ID            NUMBER(19),
  CITY_ID              NUMBER(19)
)
tablespace EPMSDEV
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.B_ELECTRICITYREPORT
  add primary key (ID)
  using index 
  tablespace EPMSDEV
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.B_ELECTRICITYREPORT
  add constraint FKF58C30687D3296C0 foreign key (ENTITY_CREATOR_ID)
  references FEE_HLJ.S_PRIVILEGE_USER (ID);
alter table FEE_HLJ.B_ELECTRICITYREPORT
  add constraint FKF58C3068967622C2 foreign key (APPLY_DEPT_ID)
  references FEE_HLJ.C_ORGANIZATION (ID);
alter table FEE_HLJ.B_ELECTRICITYREPORT
  add constraint FKF58C3068A29A3F85 foreign key (APPLY_ORG_ID)
  references FEE_HLJ.C_ORGANIZATION (ID);
alter table FEE_HLJ.B_ELECTRICITYREPORT
  add constraint FKF58C3068ACEBAB84 foreign key (REGION_ID)
  references FEE_HLJ.C_ORGANIZATION (ID);
alter table FEE_HLJ.B_ELECTRICITYREPORT
  add constraint FKF58C3068D74E11AD foreign key (CITY_ID)
  references FEE_HLJ.C_ORGANIZATION (ID);
alter table FEE_HLJ.B_ELECTRICITYREPORT
  add constraint FKF58C3068DEFD0F5 foreign key (WORKFLOW_ACTIVITY_ID)
  references FEE_HLJ.W_WORKFLOW_ACTIVITY (ID);
alter table FEE_HLJ.B_ELECTRICITYREPORT
  add constraint FKF58C3068F7258E38 foreign key (ATTACHMENT_UNIT_ID)
  references FEE_HLJ.B_ATTACHMENT_UNIT (ID);

prompt
prompt Creating table B_ELECTRICITYREPORTMID
prompt =====================================
prompt
create table FEE_HLJ.B_ELECTRICITYREPORTMID
(
  ID                   NUMBER(19) not null,
  ENTITY_CODE          VARCHAR2(255 CHAR),
  ENTITY_CREATE_DATE   TIMESTAMP(6),
  ENTITY_DESC          VARCHAR2(4000 CHAR),
  FINISH_DATE          TIMESTAMP(6),
  ENTITY_NAME          VARCHAR2(255 CHAR),
  ENTITY_STATUS        VARCHAR2(100 CHAR),
  DELETED_FLAG         NUMBER(1),
  FOMAET_DATE          TIMESTAMP(6),
  SITE_NUMBER          VARCHAR2(255 CHAR),
  ATTACHMENT_UNIT_ID   NUMBER(19),
  WORKFLOW_ACTIVITY_ID NUMBER(19),
  ENTITY_CREATOR_ID    NUMBER(19),
  APPLY_DEPT_ID        NUMBER(19),
  APPLY_ORG_ID         NUMBER(19),
  SITE_ID              VARCHAR2(255 CHAR),
  TYPE_NAME            VARCHAR2(255 CHAR),
  JISHU_NUMBER         VARCHAR2(255 CHAR),
  WF_TYPE              VARCHAR2(255 CHAR),
  CITY_ID              NUMBER(19),
  REGION_ID            NUMBER(19),
  NUM_ID               NUMBER(19)
)
tablespace EPMSDEV
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.B_ELECTRICITYREPORTMID
  add primary key (ID)
  using index 
  tablespace EPMSDEV
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.B_ELECTRICITYREPORTMID
  add constraint FKA4F644C02ADBD721 foreign key (NUM_ID)
  references FEE_HLJ.B_ELECTRICITYREPORT (ID);
alter table FEE_HLJ.B_ELECTRICITYREPORTMID
  add constraint FKA4F644C07D3296C0 foreign key (ENTITY_CREATOR_ID)
  references FEE_HLJ.S_PRIVILEGE_USER (ID);
alter table FEE_HLJ.B_ELECTRICITYREPORTMID
  add constraint FKA4F644C0967622C2 foreign key (APPLY_DEPT_ID)
  references FEE_HLJ.C_ORGANIZATION (ID);
alter table FEE_HLJ.B_ELECTRICITYREPORTMID
  add constraint FKA4F644C0A29A3F85 foreign key (APPLY_ORG_ID)
  references FEE_HLJ.C_ORGANIZATION (ID);
alter table FEE_HLJ.B_ELECTRICITYREPORTMID
  add constraint FKA4F644C0ACEBAB84 foreign key (REGION_ID)
  references FEE_HLJ.C_ORGANIZATION (ID);
alter table FEE_HLJ.B_ELECTRICITYREPORTMID
  add constraint FKA4F644C0D74E11AD foreign key (CITY_ID)
  references FEE_HLJ.C_ORGANIZATION (ID);
alter table FEE_HLJ.B_ELECTRICITYREPORTMID
  add constraint FKA4F644C0DEFD0F5 foreign key (WORKFLOW_ACTIVITY_ID)
  references FEE_HLJ.W_WORKFLOW_ACTIVITY (ID);
alter table FEE_HLJ.B_ELECTRICITYREPORTMID
  add constraint FKA4F644C0F7258E38 foreign key (ATTACHMENT_UNIT_ID)
  references FEE_HLJ.B_ATTACHMENT_UNIT (ID);

prompt
prompt Creating table B_EQUIP_MENT
prompt ===========================
prompt
create table FEE_HLJ.B_EQUIP_MENT
(
  ID                 NUMBER(19) not null,
  ENTITY_CODE        VARCHAR2(255 CHAR),
  ENTITY_CREATE_DATE TIMESTAMP(6),
  ENTITY_DESC        VARCHAR2(4000 CHAR),
  FINISH_DATE        DATE,
  ENTITY_NAME        VARCHAR2(2048 CHAR),
  ENTITY_STATUS      VARCHAR2(100 CHAR),
  EQUIPMENT_CATEGORY VARCHAR2(255 CHAR),
  EQUIPMENT_POWER    NUMBER(10,4),
  EQUIPMENT_TYPE     VARCHAR2(255 CHAR),
  NETSTATUS_ID       NUMBER(19),
  RESOURCE_POINT_ID  NUMBER(19),
  ENTITY_CREATOR_ID  NUMBER(19),
  RELATED_ROOM_CUID  VARCHAR2(255),
  CUID               VARCHAR2(1000 CHAR),
  QUIT_TIME          VARCHAR2(225 CHAR)
)
tablespace EPMSDEV
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.B_EQUIP_MENT
  add primary key (ID)
  using index 
  tablespace EPMSDEV
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.B_EQUIP_MENT
  add constraint FKF6F2A80A60E7F06E foreign key (NETSTATUS_ID)
  references FEE_HLJ.C_NET_STATUS (ID);
alter table FEE_HLJ.B_EQUIP_MENT
  add constraint FKF6F2A80A784C851 foreign key (RESOURCE_POINT_ID)
  references FEE_HLJ.B_RESOURCE_POINT (ID);
alter table FEE_HLJ.B_EQUIP_MENT
  add constraint FKF6F2A80A7D3296C0 foreign key (ENTITY_CREATOR_ID)
  references FEE_HLJ.S_PRIVILEGE_USER (ID);

prompt
prompt Creating table B_RESOURCE_DAILY_RECORD
prompt ======================================
prompt
create table FEE_HLJ.B_RESOURCE_DAILY_RECORD
(
  ID                NUMBER(19) not null,
  RECORD_DATE       TIMESTAMP(6),
  RESOURCE_POINT_ID NUMBER(19),
  NETSTATUS_ID      NUMBER(19)
)
tablespace EPMSDEV
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.B_RESOURCE_DAILY_RECORD
  add primary key (ID)
  using index 
  tablespace EPMSDEV
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.B_RESOURCE_DAILY_RECORD
  add constraint FK4E1F45AB60E7F06E foreign key (NETSTATUS_ID)
  references FEE_HLJ.C_NET_STATUS (ID);
alter table FEE_HLJ.B_RESOURCE_DAILY_RECORD
  add constraint FK4E1F45ABDAF8641E foreign key (RESOURCE_POINT_ID)
  references FEE_HLJ.B_RESOURCE_POINT (ID);

prompt
prompt Creating table B_EQUIP_DAILY_RECORD
prompt ===================================
prompt
create table FEE_HLJ.B_EQUIP_DAILY_RECORD
(
  ID                       NUMBER(19) not null,
  NETSTATUS_ID             NUMBER(19),
  RESOURCE_EAILY_RECORD_ID NUMBER(19),
  EQUIP_MENT_ID            NUMBER(19),
  ENTITY_CREATE_DATE       TIMESTAMP(6)
)
tablespace EPMSDEV
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.B_EQUIP_DAILY_RECORD
  add primary key (ID)
  using index 
  tablespace EPMSDEV
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.B_EQUIP_DAILY_RECORD
  add constraint FK1B3753E360E7F06E foreign key (NETSTATUS_ID)
  references FEE_HLJ.C_NET_STATUS (ID);
alter table FEE_HLJ.B_EQUIP_DAILY_RECORD
  add constraint FK1B3753E381BF950F foreign key (EQUIP_MENT_ID)
  references FEE_HLJ.B_EQUIP_MENT (ID);
alter table FEE_HLJ.B_EQUIP_DAILY_RECORD
  add constraint FK1B3753E38412F403 foreign key (RESOURCE_EAILY_RECORD_ID)
  references FEE_HLJ.B_RESOURCE_DAILY_RECORD (ID);

prompt
prompt Creating table B_HISMONTH_MARK
prompt ==============================
prompt
create table FEE_HLJ.B_HISMONTH_MARK
(
  ID                 NUMBER(19) not null,
  ENTITY_CODE        VARCHAR2(255 CHAR),
  ENTITY_CREATE_DATE TIMESTAMP(6),
  ENTITY_DESC        VARCHAR2(4000 CHAR),
  FINISH_DATE        TIMESTAMP(6),
  ENTITY_NAME        VARCHAR2(255 CHAR),
  ENTITY_STATUS      VARCHAR2(100 CHAR),
  APRIL_AVE          NUMBER(19,2),
  APRIL_BARVALUE     NUMBER(19,2),
  AUGUST_AVE         NUMBER(19,2),
  AUGUST_BARVALUE    NUMBER(19,2),
  DECEMBER_AVE       NUMBER(19,2),
  DECEMBER_BARVALUE  NUMBER(19,2),
  FEBRUARY_AVE       NUMBER(19,2),
  FEBRUARY_BARVALUE  NUMBER(19,2),
  JANUARY_AVE        NUMBER(19,2),
  JANUARY_BARVALUE   NUMBER(19,2),
  JULY_AVE           NUMBER(19,2),
  JULY_BARVALUE      NUMBER(19,2),
  JUNE_AVE           NUMBER(19,2),
  JUNE_BARVALUE      NUMBER(19,2),
  MARCH_AVE          NUMBER(19,2),
  MARCH_BARVALUE     NUMBER(19,2),
  MAY_AVE            NUMBER(19,2),
  MAY_BARVALUE       NUMBER(19,2),
  NOVEMBER_AVE       NUMBER(19,2),
  NOVEMBER_BARVALUE  NUMBER(19,2),
  OCTOBER_AVE        NUMBER(19,2),
  OCTOBER_BARVALUE   NUMBER(19,2),
  SEPTEMBER_AVE      NUMBER(19,2),
  SEPTEMBER_BARVALUE NUMBER(19,2),
  RESOURCEPOINT_ID   NUMBER(19),
  ENTITY_CREATOR_ID  NUMBER(19)
)
tablespace EPMSDEV
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.B_HISMONTH_MARK
  add primary key (ID)
  using index 
  tablespace EPMSDEV
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.B_HISMONTH_MARK
  add constraint FK6C7C7D217D3296C0 foreign key (ENTITY_CREATOR_ID)
  references FEE_HLJ.S_PRIVILEGE_USER (ID);
alter table FEE_HLJ.B_HISMONTH_MARK
  add constraint FK6C7C7D21F830814E foreign key (RESOURCEPOINT_ID)
  references FEE_HLJ.B_RESOURCE_POINT (ID);

prompt
prompt Creating table B_MEASURED_BENCHMARK
prompt ===================================
prompt
create table FEE_HLJ.B_MEASURED_BENCHMARK
(
  ID                 NUMBER(19) not null,
  ENTITY_CODE        VARCHAR2(255 CHAR),
  ENTITY_CREATE_DATE TIMESTAMP(6),
  ENTITY_DESC        VARCHAR2(4000 CHAR),
  FINISH_DATE        TIMESTAMP(6),
  ENTITY_NAME        VARCHAR2(255 CHAR),
  ENTITY_STATUS      VARCHAR2(100 CHAR),
  APRIL_AVE          NUMBER(19,2),
  APRIL_BARVALUE     NUMBER(19,2),
  AUGUST_AVE         NUMBER(19,2),
  AUGUST_BARVALUE    NUMBER(19,2),
  DECEMBER_AVE       NUMBER(19,2),
  DECEMBER_BARVALUE  NUMBER(19,2),
  FEBRUARY_AVE       NUMBER(19,2),
  FEBRUARY_BARVALUE  NUMBER(19,2),
  JANUARY_AVE        NUMBER(19,2),
  JANUARY_BARVALUE   NUMBER(19,2),
  JULY_AVE           NUMBER(19,2),
  JULY_BARVALUE      NUMBER(19,2),
  JUNE_AVE           NUMBER(19,2),
  JUNE_BARVALUE      NUMBER(19,2),
  MARCH_AVE          NUMBER(19,2),
  MARCH_BARVALUE     NUMBER(19,2),
  MAY_AVE            NUMBER(19,2),
  MAY_BARVALUE       NUMBER(19,2),
  NOVEMBER_AVE       NUMBER(19,2),
  NOVEMBER_BARVALUE  NUMBER(19,2),
  OCTOBER_AVE        NUMBER(19,2),
  OCTOBER_BARVALUE   NUMBER(19,2),
  SEPTEMBER_AVE      NUMBER(19,2),
  SEPTEMBER_BARVALUE NUMBER(19,2),
  ENTITY_CREATOR_ID  NUMBER(19),
  RESOURCEPOINT_ID   NUMBER(19)
)
tablespace EPMSDEV
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.B_MEASURED_BENCHMARK
  add primary key (ID)
  using index 
  tablespace EPMSDEV
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.B_MEASURED_BENCHMARK
  add constraint FKCB5C19C17D3296C0 foreign key (ENTITY_CREATOR_ID)
  references FEE_HLJ.S_PRIVILEGE_USER (ID);
alter table FEE_HLJ.B_MEASURED_BENCHMARK
  add constraint FKCB5C19C1F830814E foreign key (RESOURCEPOINT_ID)
  references FEE_HLJ.B_RESOURCE_POINT (ID);

prompt
prompt Creating table B_HISYEAR_MARK
prompt =============================
prompt
create table FEE_HLJ.B_HISYEAR_MARK
(
  ID                 NUMBER(19) not null,
  ENTITY_CODE        VARCHAR2(255 CHAR),
  ENTITY_CREATE_DATE TIMESTAMP(6),
  ENTITY_DESC        VARCHAR2(4000 CHAR),
  FINISH_DATE        TIMESTAMP(6),
  ENTITY_NAME        VARCHAR2(255 CHAR),
  ENTITY_STATUS      VARCHAR2(100 CHAR),
  ALL_BARVALUE       NUMBER(19,2),
  DAY_AVEVALUE       NUMBER(19,2),
  RESOURCEPOINT_ID   NUMBER(19),
  ENTITY_CREATOR_ID  NUMBER(19)
)
tablespace EPMSDEV
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.B_HISYEAR_MARK
  add primary key (ID)
  using index 
  tablespace EPMSDEV
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.B_HISYEAR_MARK
  add constraint FK4D1C32FA7D3296C0 foreign key (ENTITY_CREATOR_ID)
  references FEE_HLJ.S_PRIVILEGE_USER (ID);
alter table FEE_HLJ.B_HISYEAR_MARK
  add constraint FK4D1C32FAF830814E foreign key (RESOURCEPOINT_ID)
  references FEE_HLJ.B_RESOURCE_POINT (ID);

prompt
prompt Creating table B_MARK_HIS
prompt =========================
prompt
create table FEE_HLJ.B_MARK_HIS
(
  ID                   NUMBER(19) not null,
  ENTITY_CODE          VARCHAR2(255 CHAR),
  ENTITY_CREATE_DATE   TIMESTAMP(6),
  ENTITY_DESC          VARCHAR2(4000 CHAR),
  FINISH_DATE          TIMESTAMP(6),
  ENTITY_NAME          VARCHAR2(255 CHAR),
  ENTITY_STATUS        VARCHAR2(100 CHAR),
  ALL_BARVALUE         NUMBER(19,2),
  APRIL_AVE            NUMBER(19,2),
  APRIL_BARVALUE       NUMBER(19,2),
  AUGUST_AVE           NUMBER(19,2),
  AUGUST_BARVALUE      NUMBER(19,2),
  DECEMBER_AVE         NUMBER(19,2),
  DECEMBER_BARVALUE    NUMBER(19,2),
  FEBRUARY_AVE         NUMBER(19,2),
  FEBRUARY_BARVALUE    NUMBER(19,2),
  IP                   VARCHAR2(255 CHAR),
  JANUARY_AVE          NUMBER(19,2),
  JANUARY_BARVALUE     NUMBER(19,2),
  JULY_AVE             NUMBER(19,2),
  JULY_BARVALUE        NUMBER(19,2),
  JUNE_AVE             NUMBER(19,2),
  JUNE_BARVALUE        NUMBER(19,2),
  MARCH_AVE            NUMBER(19,2),
  MARCH_BARVALUE       NUMBER(19,2),
  MARKTYPE             VARCHAR2(255 CHAR),
  MAY_AVE              NUMBER(19,2),
  MAY_BARVALUE         NUMBER(19,2),
  METHOD               VARCHAR2(255 CHAR),
  NOVEMBER_AVE         NUMBER(19,2),
  NOVEMBER_BARVALUE    NUMBER(19,2),
  OCTOBER_AVE          NUMBER(19,2),
  OCTOBER_BARVALUE     NUMBER(19,2),
  PRICE_CEILING        NUMBER(10,4),
  PRICE_LOWER          NUMBER(10,4),
  SEPTEMBER_AVE        NUMBER(19,2),
  SEPTEMBER_BARVALUE   NUMBER(19,2),
  HISYEARMARK_ID       NUMBER(19),
  RESOURCEPOINT_ID     NUMBER(19),
  HISMONTHMARK_ID      NUMBER(19),
  DIRECTPOWERTARIFF_ID NUMBER(19),
  CITY_ID              NUMBER(19),
  ENTITY_CREATOR_ID    NUMBER(19),
  MEASUREDMARK_ID      NUMBER(19)
)
tablespace EPMSDEV
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.B_MARK_HIS
  add primary key (ID)
  using index 
  tablespace EPMSDEV
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.B_MARK_HIS
  add constraint FK98381A5D43A891CD foreign key (HISYEARMARK_ID)
  references FEE_HLJ.B_HISYEAR_MARK (ID);
alter table FEE_HLJ.B_MARK_HIS
  add constraint FK98381A5D4DB34251 foreign key (MEASUREDMARK_ID)
  references FEE_HLJ.B_MEASURED_BENCHMARK (ID);
alter table FEE_HLJ.B_MARK_HIS
  add constraint FK98381A5D5B82F8A7 foreign key (HISMONTHMARK_ID)
  references FEE_HLJ.B_HISMONTH_MARK (ID);
alter table FEE_HLJ.B_MARK_HIS
  add constraint FK98381A5D7D3296C0 foreign key (ENTITY_CREATOR_ID)
  references FEE_HLJ.S_PRIVILEGE_USER (ID);
alter table FEE_HLJ.B_MARK_HIS
  add constraint FK98381A5DD74E11AD foreign key (CITY_ID)
  references FEE_HLJ.C_ORGANIZATION (ID);
alter table FEE_HLJ.B_MARK_HIS
  add constraint FK98381A5DE187D07D foreign key (DIRECTPOWERTARIFF_ID)
  references FEE_HLJ.B_DIRECT_POWER_TARIFF (ID);
alter table FEE_HLJ.B_MARK_HIS
  add constraint FK98381A5DF830814E foreign key (RESOURCEPOINT_ID)
  references FEE_HLJ.B_RESOURCE_POINT (ID);

prompt
prompt Creating table B_HISMONTH_MARK_B_MARK_HIS
prompt =========================================
prompt
create table FEE_HLJ.B_HISMONTH_MARK_B_MARK_HIS
(
  B_HISMONTH_MARK_ID NUMBER(19) not null,
  MEASUREDHIS_ID     NUMBER(19) not null
)
tablespace EPMSDEV
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.B_HISMONTH_MARK_B_MARK_HIS
  add unique (MEASUREDHIS_ID)
  using index 
  tablespace EPMSDEV
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.B_HISMONTH_MARK_B_MARK_HIS
  add constraint FKC2C0243B4FB42FA6 foreign key (MEASUREDHIS_ID)
  references FEE_HLJ.B_MARK_HIS (ID);
alter table FEE_HLJ.B_HISMONTH_MARK_B_MARK_HIS
  add constraint FKC2C0243B5D31A7C1 foreign key (B_HISMONTH_MARK_ID)
  references FEE_HLJ.B_HISMONTH_MARK (ID);

prompt
prompt Creating table B_HISYEAR_MARK_B_MARK_HIS
prompt ========================================
prompt
create table FEE_HLJ.B_HISYEAR_MARK_B_MARK_HIS
(
  B_HISYEAR_MARK_ID NUMBER(19) not null,
  MEASUREDHIS_ID    NUMBER(19) not null
)
tablespace EPMSDEV
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.B_HISYEAR_MARK_B_MARK_HIS
  add unique (MEASUREDHIS_ID)
  using index 
  tablespace EPMSDEV
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.B_HISYEAR_MARK_B_MARK_HIS
  add constraint FKB8427CC24FB42FA6 foreign key (MEASUREDHIS_ID)
  references FEE_HLJ.B_MARK_HIS (ID);
alter table FEE_HLJ.B_HISYEAR_MARK_B_MARK_HIS
  add constraint FKB8427CC26BEB482F foreign key (B_HISYEAR_MARK_ID)
  references FEE_HLJ.B_HISYEAR_MARK (ID);

prompt
prompt Creating table B_INTERFACE_INFO
prompt ===============================
prompt
create table FEE_HLJ.B_INTERFACE_INFO
(
  ID               NUMBER(19) not null,
  CURRENT_DATE     TIMESTAMP(6),
  CURRENT_PAGE     NUMBER(19),
  DESCRIPTION      VARCHAR2(255 CHAR),
  IDENTIFIER_CODE  VARCHAR2(255 CHAR),
  INTERFACE_NAME   VARCHAR2(255 CHAR),
  INTERFACE_TYPE   VARCHAR2(255 CHAR),
  IS_FILELOG       NUMBER(1),
  IS_OPEN          NUMBER(1),
  LAST_EFFECT_DATE TIMESTAMP(6),
  LOG_PATH         VARCHAR2(255 CHAR),
  METHOD_NAME      VARCHAR2(255 CHAR),
  PAGE_SIZE        NUMBER(19),
  SERVER_CODE      VARCHAR2(255 CHAR),
  SYSTEM_NAME      VARCHAR2(255 CHAR),
  TOTAL_PAGE       NUMBER(19),
  TOTAL_RECORD     NUMBER(19),
  URL              VARCHAR2(255 CHAR),
  USER_ID          VARCHAR2(255 CHAR),
  USER_NAME        VARCHAR2(255 CHAR),
  USER_PWD         VARCHAR2(255 CHAR)
)
tablespace EPMSDEV
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.B_INTERFACE_INFO
  add primary key (ID)
  using index 
  tablespace EPMSDEV
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table B_INTERFACE_RUN_LOG
prompt ==================================
prompt
create table FEE_HLJ.B_INTERFACE_RUN_LOG
(
  ID                NUMBER(19) not null,
  DATA_TYPE         VARCHAR2(255 CHAR),
  PARAM_DATE_FROM   TIMESTAMP(6),
  PARAM_DATE_TO     TIMESTAMP(6),
  PARAMENTER        VARCHAR2(4000 CHAR),
  RESULT            NUMBER(19),
  RESULT_INFO       VARCHAR2(255 CHAR),
  RUN_DATE          TIMESTAMP(6),
  INTERFACE_INFO_ID NUMBER(19)
)
tablespace EPMSDEV
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.B_INTERFACE_RUN_LOG
  add primary key (ID)
  using index 
  tablespace EPMSDEV
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.B_INTERFACE_RUN_LOG
  add constraint FK57D17F6D29BEEB65 foreign key (INTERFACE_INFO_ID)
  references FEE_HLJ.B_INTERFACE_INFO (ID);

prompt
prompt Creating table B_INTERFACE_OUTLIERS
prompt ===================================
prompt
create table FEE_HLJ.B_INTERFACE_OUTLIERS
(
  ID                      NUMBER(19) not null,
  ATTRIBUTE1              VARCHAR2(200 CHAR),
  ATTRIBUTE2              VARCHAR2(200 CHAR),
  ATTRIBUTE3              VARCHAR2(200 CHAR),
  ATTRIBUTE4              VARCHAR2(200 CHAR),
  ATTRIBUTE5              VARCHAR2(200 CHAR),
  BUSINESS_CODE           VARCHAR2(100 CHAR),
  EXCEPTION_SPECIFICATION VARCHAR2(1000 CHAR),
  OUTLIERS_CODE           VARCHAR2(100 CHAR),
  RUN_DATE                TIMESTAMP(6),
  TRANSFER_STATUS         NUMBER(19),
  INTERFACE_RUN_LOG_ID    NUMBER(19)
)
tablespace EPMSDEV
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.B_INTERFACE_OUTLIERS
  add primary key (ID)
  using index 
  tablespace EPMSDEV
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.B_INTERFACE_OUTLIERS
  add constraint FK73EABBBE8E95B0DA foreign key (INTERFACE_RUN_LOG_ID)
  references FEE_HLJ.B_INTERFACE_RUN_LOG (ID);

prompt
prompt Creating table B_RESOURCE_TYPE_OWN
prompt ==================================
prompt
create table FEE_HLJ.B_RESOURCE_TYPE_OWN
(
  ID           NUMBER(19) not null,
  TYPE_CODE    VARCHAR2(255 CHAR),
  TYPE_DESC    VARCHAR2(255 CHAR),
  DELETED_FLAG NUMBER(1),
  TYPE_NAME    VARCHAR2(255 CHAR),
  PRIORITY     NUMBER(10)
)
tablespace EPMSDEV
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.B_RESOURCE_TYPE_OWN
  add primary key (ID)
  using index 
  tablespace EPMSDEV
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table C_TOWER_BIG_SORT
prompt ===============================
prompt
create table FEE_HLJ.C_TOWER_BIG_SORT
(
  ID           NUMBER(19) not null,
  TYPE_CODE    VARCHAR2(255 CHAR),
  TYPE_DESC    VARCHAR2(255 CHAR),
  DELETED_FLAG NUMBER(1),
  TYPE_NAME    VARCHAR2(255 CHAR),
  PRIORITY     NUMBER(10)
)
tablespace EPMSDEV
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.C_TOWER_BIG_SORT
  add primary key (ID)
  using index 
  tablespace EPMSDEV
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table C_TOWER_SMALL_SORT
prompt =================================
prompt
create table FEE_HLJ.C_TOWER_SMALL_SORT
(
  ID           NUMBER(19) not null,
  TYPE_CODE    VARCHAR2(255 CHAR),
  TYPE_DESC    VARCHAR2(255 CHAR),
  DELETED_FLAG NUMBER(1),
  TYPE_NAME    VARCHAR2(255 CHAR),
  PRIORITY     NUMBER(10)
)
tablespace EPMSDEV
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.C_TOWER_SMALL_SORT
  add primary key (ID)
  using index 
  tablespace EPMSDEV
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table C_CHECKSHEET_PACK_MANAGE
prompt =======================================
prompt
create table FEE_HLJ.C_CHECKSHEET_PACK_MANAGE
(
  ID                   NUMBER(19) not null,
  ENTITY_CODE          VARCHAR2(255 CHAR),
  ENTITY_CREATE_DATE   TIMESTAMP(6),
  ENTITY_DESC          VARCHAR2(4000 CHAR),
  FINISH_DATE          TIMESTAMP(6),
  ENTITY_NAME          VARCHAR2(255 CHAR),
  ENTITY_STATUS        VARCHAR2(100 CHAR),
  DELETED_FLAG         NUMBER(1),
  COST_BIG             VARCHAR2(255 CHAR),
  COST_SMALL           VARCHAR2(255 CHAR),
  RESOURCE_TYPE        VARCHAR2(1 CHAR),
  APPLY_ORG_ID         NUMBER(19),
  APPLY_DEPT_ID        NUMBER(19),
  ATTACHMENT_UNIT_ID   NUMBER(19),
  ENTITY_CREATOR_ID    NUMBER(19),
  WORKFLOW_ACTIVITY_ID NUMBER(19),
  MONTH                VARCHAR2(255 CHAR),
  PAYMENT_AMOUNT       NUMBER(10,4),
  YEAR                 VARCHAR2(255 CHAR),
  PROVIDER_ID          NUMBER(19),
  JIANSHE_KOUKUAN      NUMBER(10,4),
  WEIHU_KOUKUAN        NUMBER(10,4),
  SMALL_SORT_ID        NUMBER(19),
  BIG_SORT_ID          NUMBER(19),
  HANSHUIE             NUMBER(21,4),
  SHIFU                NUMBER(21,4),
  TIAOZHENG            NUMBER(21,4)
)
tablespace EPMSDEV
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.C_CHECKSHEET_PACK_MANAGE
  add primary key (ID)
  using index 
  tablespace EPMSDEV
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.C_CHECKSHEET_PACK_MANAGE
  add constraint FK69F2EABF3726EA47 foreign key (PROVIDER_ID)
  references FEE_HLJ.C_PROVIDER (ID);
alter table FEE_HLJ.C_CHECKSHEET_PACK_MANAGE
  add constraint FK69F2EABF6755F7C0 foreign key (BIG_SORT_ID)
  references FEE_HLJ.C_TOWER_BIG_SORT (ID);
alter table FEE_HLJ.C_CHECKSHEET_PACK_MANAGE
  add constraint FK69F2EABF7D3296C0 foreign key (ENTITY_CREATOR_ID)
  references FEE_HLJ.S_PRIVILEGE_USER (ID);
alter table FEE_HLJ.C_CHECKSHEET_PACK_MANAGE
  add constraint FK69F2EABF967622C2 foreign key (APPLY_DEPT_ID)
  references FEE_HLJ.C_ORGANIZATION (ID);
alter table FEE_HLJ.C_CHECKSHEET_PACK_MANAGE
  add constraint FK69F2EABFA29A3F85 foreign key (APPLY_ORG_ID)
  references FEE_HLJ.C_ORGANIZATION (ID);
alter table FEE_HLJ.C_CHECKSHEET_PACK_MANAGE
  add constraint FK69F2EABFD027F00E foreign key (SMALL_SORT_ID)
  references FEE_HLJ.C_TOWER_SMALL_SORT (ID);
alter table FEE_HLJ.C_CHECKSHEET_PACK_MANAGE
  add constraint FK69F2EABFDEFD0F5 foreign key (WORKFLOW_ACTIVITY_ID)
  references FEE_HLJ.W_WORKFLOW_ACTIVITY (ID);
alter table FEE_HLJ.C_CHECKSHEET_PACK_MANAGE
  add constraint FK69F2EABFF7258E38 foreign key (ATTACHMENT_UNIT_ID)
  references FEE_HLJ.B_ATTACHMENT_UNIT (ID);

prompt
prompt Creating table C_RENT_BIG_SORT
prompt ==============================
prompt
create table FEE_HLJ.C_RENT_BIG_SORT
(
  ID           NUMBER(19) not null,
  TYPE_CODE    VARCHAR2(255 CHAR),
  TYPE_DESC    VARCHAR2(255 CHAR),
  DELETED_FLAG NUMBER(1),
  TYPE_NAME    VARCHAR2(255 CHAR),
  PRIORITY     NUMBER(10)
)
tablespace EPMSDEV
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.C_RENT_BIG_SORT
  add primary key (ID)
  using index 
  tablespace EPMSDEV
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table C_RENT_SMALL_SORT
prompt ================================
prompt
create table FEE_HLJ.C_RENT_SMALL_SORT
(
  ID           NUMBER(19) not null,
  TYPE_CODE    VARCHAR2(255 CHAR),
  TYPE_DESC    VARCHAR2(255 CHAR),
  DELETED_FLAG NUMBER(1),
  TYPE_NAME    VARCHAR2(255 CHAR),
  PRIORITY     NUMBER(10)
)
tablespace EPMSDEV
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.C_RENT_SMALL_SORT
  add primary key (ID)
  using index 
  tablespace EPMSDEV
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table B_OWN_SITE_RENT_PAY_APPLY
prompt ========================================
prompt
create table FEE_HLJ.B_OWN_SITE_RENT_PAY_APPLY
(
  ID                      NUMBER(19) not null,
  ENTITY_CODE             VARCHAR2(255 CHAR),
  ENTITY_CREATE_DATE      TIMESTAMP(6),
  ENTITY_DESC             VARCHAR2(4000 CHAR),
  FINISH_DATE             TIMESTAMP(6),
  ENTITY_NAME             VARCHAR2(255 CHAR),
  ENTITY_STATUS           VARCHAR2(100 CHAR),
  DELETED_FLAG            NUMBER(1),
  ALL_RENT                NUMBER(10,4),
  AVERAGE_RENT            NUMBER(10,4),
  PAYMENT_AMOUNT          NUMBER(10,4),
  PAYMENT_BEGIN_DATE      TIMESTAMP(6),
  PAYMENT_END_DATE        TIMESTAMP(6),
  PERIOD                  NUMBER(19,2),
  PROVIDER_NAME           VARCHAR2(255 CHAR),
  ENTITY_CREATOR_ID       NUMBER(19),
  WORKFLOW_ACTIVITY_ID    NUMBER(19),
  BIG_SORT_ID             NUMBER(19),
  APPLY_ORG_ID            NUMBER(19),
  APPLY_DEPT_ID           NUMBER(19),
  SMALL_SORT_ID           NUMBER(19),
  CONTRACT_ID             NUMBER(19),
  ATTACHMENT_UNIT_ID      NUMBER(19),
  CHECK_SHEET_PACK_MANAGE NUMBER(19),
  IS_PUSH                 NUMBER(1),
  PROVIDER_ID             NUMBER(19),
  RESOURCE_TYPE_ID        NUMBER(19),
  RESOURCE_SCENE_ID       NUMBER(19),
  XIAOYI                  NUMBER(19,2),
  FU_DU                   VARCHAR2(255 CHAR),
  XIAO_YI_BI              VARCHAR2(255 CHAR),
  BZLX                    VARCHAR2(255 CHAR)
)
tablespace EPMSDEV
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.B_OWN_SITE_RENT_PAY_APPLY
  add primary key (ID)
  using index 
  tablespace EPMSDEV
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.B_OWN_SITE_RENT_PAY_APPLY
  add constraint FK173ED073231B4613 foreign key (CHECK_SHEET_PACK_MANAGE)
  references FEE_HLJ.C_CHECKSHEET_PACK_MANAGE (ID);
alter table FEE_HLJ.B_OWN_SITE_RENT_PAY_APPLY
  add constraint FK173ED0732CE229A foreign key (RESOURCE_SCENE_ID)
  references FEE_HLJ.C_RESOURCE_SCENE (ID);
alter table FEE_HLJ.B_OWN_SITE_RENT_PAY_APPLY
  add constraint FK173ED0733726EA47 foreign key (PROVIDER_ID)
  references FEE_HLJ.C_PROVIDER (ID);
alter table FEE_HLJ.B_OWN_SITE_RENT_PAY_APPLY
  add constraint FK173ED0734D830370 foreign key (BIG_SORT_ID)
  references FEE_HLJ.C_RENT_BIG_SORT (ID);
alter table FEE_HLJ.B_OWN_SITE_RENT_PAY_APPLY
  add constraint FK173ED07356960AA7 foreign key (CONTRACT_ID)
  references FEE_HLJ.B_CONTRACT (ID);
alter table FEE_HLJ.B_OWN_SITE_RENT_PAY_APPLY
  add constraint FK173ED0737D3296C0 foreign key (ENTITY_CREATOR_ID)
  references FEE_HLJ.S_PRIVILEGE_USER (ID);
alter table FEE_HLJ.B_OWN_SITE_RENT_PAY_APPLY
  add constraint FK173ED073967622C2 foreign key (APPLY_DEPT_ID)
  references FEE_HLJ.C_ORGANIZATION (ID);
alter table FEE_HLJ.B_OWN_SITE_RENT_PAY_APPLY
  add constraint FK173ED07396B322F4 foreign key (RESOURCE_TYPE_ID)
  references FEE_HLJ.B_RESOURCE_TYPE_OWN (ID);
alter table FEE_HLJ.B_OWN_SITE_RENT_PAY_APPLY
  add constraint FK173ED073A29A3F85 foreign key (APPLY_ORG_ID)
  references FEE_HLJ.C_ORGANIZATION (ID);
alter table FEE_HLJ.B_OWN_SITE_RENT_PAY_APPLY
  add constraint FK173ED073DEFD0F5 foreign key (WORKFLOW_ACTIVITY_ID)
  references FEE_HLJ.W_WORKFLOW_ACTIVITY (ID);
alter table FEE_HLJ.B_OWN_SITE_RENT_PAY_APPLY
  add constraint FK173ED073DF40CFBE foreign key (SMALL_SORT_ID)
  references FEE_HLJ.C_RENT_SMALL_SORT (ID);
alter table FEE_HLJ.B_OWN_SITE_RENT_PAY_APPLY
  add constraint FK173ED073F7258E38 foreign key (ATTACHMENT_UNIT_ID)
  references FEE_HLJ.B_ATTACHMENT_UNIT (ID);

prompt
prompt Creating table C_BUSINESS_BIG_SORT
prompt ==================================
prompt
create table FEE_HLJ.C_BUSINESS_BIG_SORT
(
  ID           NUMBER(19) not null,
  TYPE_CODE    VARCHAR2(255 CHAR),
  TYPE_DESC    VARCHAR2(255 CHAR),
  DELETED_FLAG NUMBER(1),
  TYPE_NAME    VARCHAR2(255 CHAR),
  PRIORITY     NUMBER(10)
)
tablespace EPMSDEV
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.C_BUSINESS_BIG_SORT
  add primary key (ID)
  using index 
  tablespace EPMSDEV
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table C_BUSINESS_SMALL_SORT
prompt ====================================
prompt
create table FEE_HLJ.C_BUSINESS_SMALL_SORT
(
  ID           NUMBER(19) not null,
  TYPE_CODE    VARCHAR2(255 CHAR),
  TYPE_DESC    VARCHAR2(255 CHAR),
  DELETED_FLAG NUMBER(1),
  TYPE_NAME    VARCHAR2(255 CHAR),
  PRIORITY     NUMBER(10)
)
tablespace EPMSDEV
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.C_BUSINESS_SMALL_SORT
  add primary key (ID)
  using index 
  tablespace EPMSDEV
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table B_PAYMENT_APPLY
prompt ==============================
prompt
create table FEE_HLJ.B_PAYMENT_APPLY
(
  ID                         NUMBER(19) not null,
  ENTITY_CODE                VARCHAR2(255 CHAR),
  ENTITY_CREATE_DATE         TIMESTAMP(6),
  ENTITY_DESC                VARCHAR2(4000 CHAR),
  FINISH_DATE                TIMESTAMP(6),
  ENTITY_NAME                VARCHAR2(255 CHAR),
  ENTITY_STATUS              VARCHAR2(100 CHAR),
  DELETED_FLAG               NUMBER(1),
  CONTRACT_NAME              VARCHAR2(255 CHAR),
  ELEC_EXCEED_RATIO          NUMBER(10,4),
  ELECTROVALENCE             NUMBER(10,4),
  HIS_MONTHMARK_POWER        NUMBER(10,4),
  HIS_YEARMARK_POWER         NUMBER(10,4),
  PAYMENT_AMOUNT             NUMBER(20,4),
  POWER_EXCEED_RATIO         NUMBER(10,4),
  POWER_SUPPLY_TYPE          VARCHAR2(255 CHAR),
  PROVIDER_NAME              VARCHAR2(255 CHAR),
  RATEDMARK_POWER            NUMBER(10,4),
  SMART_METER_POWER          NUMBER(10,4),
  WATTAGE                    NUMBER(20,4),
  WORK_TYPE                  VARCHAR2(100 CHAR),
  WORKFLOW_ACTIVITY_ID       NUMBER(19),
  RESOURCE_UNIT_ID           NUMBER(19),
  ATTACHMENT_UNIT_ID         NUMBER(19),
  PAYMENT_SORT_ID            NUMBER(19),
  SMALL_SORT_ID              NUMBER(19),
  BIG_SORT_ID                NUMBER(19),
  APPLY_DEPT_ID              NUMBER(19),
  APPLY_ORG_ID               NUMBER(19),
  ENTITY_CREATOR_ID          NUMBER(19),
  PAYMENT_TYPE               VARCHAR2(255 CHAR),
  CONTRACT_ID                NUMBER(19),
  CONTRACT_CODE              VARCHAR2(255 CHAR),
  MEASURED_POWER             NUMBER(10,4),
  PROVIDER_ID                NUMBER(19),
  CITY_ID                    NUMBER(19),
  REGION_ID                  NUMBER(19),
  CHECK_SHEET_PACK_MANAGE_ID NUMBER(19),
  IS_PUSH                    NUMBER(1),
  SUPPLYTYPE_ID              NUMBER(19),
  BZLX                       VARCHAR2(100 CHAR),
  JFLX                       VARCHAR2(255),
  QTFY                       VARCHAR2(255),
  WLDFJE                     NUMBER(20,4)
)
tablespace EPMSDEV
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.B_PAYMENT_APPLY
  add primary key (ID)
  using index 
  tablespace EPMSDEV
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.B_PAYMENT_APPLY
  add constraint FKA0087AD83726EA47 foreign key (PROVIDER_ID)
  references FEE_HLJ.C_PROVIDER (ID);
alter table FEE_HLJ.B_PAYMENT_APPLY
  add constraint FKA0087AD880CE429 foreign key (BIG_SORT_ID)
  references FEE_HLJ.C_BUSINESS_BIG_SORT (ID);
alter table FEE_HLJ.B_PAYMENT_APPLY
  add constraint FKA0087AD8967622C2 foreign key (APPLY_DEPT_ID)
  references FEE_HLJ.C_ORGANIZATION (ID);
alter table FEE_HLJ.B_PAYMENT_APPLY
  add constraint FKA0087AD8999A617 foreign key (SMALL_SORT_ID)
  references FEE_HLJ.C_BUSINESS_SMALL_SORT (ID);
alter table FEE_HLJ.B_PAYMENT_APPLY
  add constraint FKA0087AD8A29A3F85 foreign key (APPLY_ORG_ID)
  references FEE_HLJ.C_ORGANIZATION (ID);
alter table FEE_HLJ.B_PAYMENT_APPLY
  add constraint FKA0087AD8A642F552 foreign key (SUPPLYTYPE_ID)
  references FEE_HLJ.C_POWER_SUPPLY_TYPE (ID);
alter table FEE_HLJ.B_PAYMENT_APPLY
  add constraint FKA0087AD8ACEBAB84 foreign key (REGION_ID)
  references FEE_HLJ.C_ORGANIZATION (ID);
alter table FEE_HLJ.B_PAYMENT_APPLY
  add constraint FKA0087AD8B34FFCE4 foreign key (RESOURCE_UNIT_ID)
  references FEE_HLJ.B_RESOURCE_UNIT (ID);
alter table FEE_HLJ.B_PAYMENT_APPLY
  add constraint FKA0087AD8D0E8B65 foreign key (CHECK_SHEET_PACK_MANAGE_ID)
  references FEE_HLJ.C_CHECKSHEET_PACK_MANAGE (ID);
alter table FEE_HLJ.B_PAYMENT_APPLY
  add constraint FKA0087AD8D74E11AD foreign key (CITY_ID)
  references FEE_HLJ.C_ORGANIZATION (ID);
alter table FEE_HLJ.B_PAYMENT_APPLY
  add constraint FKA0087AD8FA8B43F5 foreign key (PAYMENT_SORT_ID)
  references FEE_HLJ.C_PAYMENT_SORT (ID);

prompt
prompt Creating table C_TOWER_PROVIDER_TYPE
prompt ====================================
prompt
create table FEE_HLJ.C_TOWER_PROVIDER_TYPE
(
  ID           NUMBER(19) not null,
  TYPE_CODE    VARCHAR2(255 CHAR),
  TYPE_DESC    VARCHAR2(255 CHAR),
  DELETED_FLAG NUMBER(1),
  TYPE_NAME    VARCHAR2(255 CHAR),
  PRIORITY     NUMBER(10)
)
tablespace EPMSDEV
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.C_TOWER_PROVIDER_TYPE
  add primary key (ID)
  using index 
  tablespace EPMSDEV
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table B_TOWER_RENT_APPLY
prompt =================================
prompt
create table FEE_HLJ.B_TOWER_RENT_APPLY
(
  ID                      NUMBER(19) not null,
  ENTITY_CODE             VARCHAR2(255 CHAR),
  ENTITY_CREATE_DATE      TIMESTAMP(6),
  ENTITY_DESC             VARCHAR2(4000 CHAR),
  FINISH_DATE             TIMESTAMP(6),
  ENTITY_NAME             VARCHAR2(255 CHAR),
  ENTITY_STATUS           VARCHAR2(100 CHAR),
  DELETED_FLAG            NUMBER(1),
  PAYMENT_AMOUNT          NUMBER(10,4),
  PROVIDER_NAME           VARCHAR2(255 CHAR),
  APPLY_DEPT_ID           NUMBER(19),
  APPLY_ORG_ID            NUMBER(19),
  WORKFLOW_ACTIVITY_ID    NUMBER(19),
  ATTACHMENT_UNIT_ID      NUMBER(19),
  ENTITY_CREATOR_ID       NUMBER(19),
  BIG_SORT_ID             NUMBER(19),
  SMALL_SORT_ID           NUMBER(19),
  PROVIDER_TYPE_ID        NUMBER(19),
  CHECK_SHEET_PACK_MANAGE NUMBER(19),
  IS_PUSH                 NUMBER(1),
  PROVIDER_ID             NUMBER(19),
  PROPERTY_TYPE           VARCHAR2(255 CHAR),
  ZONG_TIAOZHENG          NUMBER(21,4)
)
tablespace EPMSDEV
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.B_TOWER_RENT_APPLY
  add primary key (ID)
  using index 
  tablespace EPMSDEV
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.B_TOWER_RENT_APPLY
  add constraint FKAB52041B231B4613 foreign key (CHECK_SHEET_PACK_MANAGE)
  references FEE_HLJ.C_CHECKSHEET_PACK_MANAGE (ID);
alter table FEE_HLJ.B_TOWER_RENT_APPLY
  add constraint FKAB52041B3726EA47 foreign key (PROVIDER_ID)
  references FEE_HLJ.C_PROVIDER (ID);
alter table FEE_HLJ.B_TOWER_RENT_APPLY
  add constraint FKAB52041B4D830370 foreign key (BIG_SORT_ID)
  references FEE_HLJ.C_RENT_BIG_SORT (ID);
alter table FEE_HLJ.B_TOWER_RENT_APPLY
  add constraint FKAB52041B7D3296C0 foreign key (ENTITY_CREATOR_ID)
  references FEE_HLJ.S_PRIVILEGE_USER (ID);
alter table FEE_HLJ.B_TOWER_RENT_APPLY
  add constraint FKAB52041B967622C2 foreign key (APPLY_DEPT_ID)
  references FEE_HLJ.C_ORGANIZATION (ID);
alter table FEE_HLJ.B_TOWER_RENT_APPLY
  add constraint FKAB52041BA29A3F85 foreign key (APPLY_ORG_ID)
  references FEE_HLJ.C_ORGANIZATION (ID);
alter table FEE_HLJ.B_TOWER_RENT_APPLY
  add constraint FKAB52041BDEFD0F5 foreign key (WORKFLOW_ACTIVITY_ID)
  references FEE_HLJ.W_WORKFLOW_ACTIVITY (ID);
alter table FEE_HLJ.B_TOWER_RENT_APPLY
  add constraint FKAB52041BDF40CFBE foreign key (SMALL_SORT_ID)
  references FEE_HLJ.C_RENT_SMALL_SORT (ID);
alter table FEE_HLJ.B_TOWER_RENT_APPLY
  add constraint FKAB52041BF7258E38 foreign key (ATTACHMENT_UNIT_ID)
  references FEE_HLJ.B_ATTACHMENT_UNIT (ID);
alter table FEE_HLJ.B_TOWER_RENT_APPLY
  add constraint FKAB52041BFB3F5DF8 foreign key (PROVIDER_TYPE_ID)
  references FEE_HLJ.C_TOWER_PROVIDER_TYPE (ID);

prompt
prompt Creating table C_VAT_INVOICE_SORT
prompt =================================
prompt
create table FEE_HLJ.C_VAT_INVOICE_SORT
(
  ID           NUMBER(19) not null,
  TYPE_CODE    VARCHAR2(255 CHAR),
  TYPE_DESC    VARCHAR2(255 CHAR),
  DELETED_FLAG NUMBER(1),
  TYPE_NAME    VARCHAR2(255 CHAR),
  PRIORITY     NUMBER(10)
)
tablespace EPMSDEV
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.C_VAT_INVOICE_SORT
  add primary key (ID)
  using index 
  tablespace EPMSDEV
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table B_INVOICE_ITEM
prompt =============================
prompt
create table FEE_HLJ.B_INVOICE_ITEM
(
  ID                         NUMBER(19) not null,
  ENTITY_CODE                VARCHAR2(255 CHAR),
  ENTITY_CREATE_DATE         TIMESTAMP(6),
  ENTITY_DESC                VARCHAR2(4000 CHAR),
  FINISH_DATE                TIMESTAMP(6),
  ENTITY_NAME                VARCHAR2(255 CHAR),
  ENTITY_STATUS              VARCHAR2(100 CHAR),
  INVOICE_AMOUNT             NUMBER(20,4),
  IS_CREDIT_NOTE             NUMBER(1),
  IS_VAT_INVOICE             NUMBER(1),
  REMUNERATION               NUMBER(20,4),
  TAXATION                   NUMBER(20,4),
  PAYMENT_APPLY_ID           NUMBER(19),
  ENTITY_CREATOR_ID          NUMBER(19),
  INVOICE_SORT_ID            NUMBER(19),
  RENTPAY_APPLY_ID           NUMBER(19),
  TOWERRENT_APPLY_ID         NUMBER(19),
  CHECK_SHEET_PACK_MANAGE_ID NUMBER(19)
)
tablespace EPMSDEV
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.B_INVOICE_ITEM
  add primary key (ID)
  using index 
  tablespace EPMSDEV
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.B_INVOICE_ITEM
  add constraint FKC1587DA23922535F foreign key (PAYMENT_APPLY_ID)
  references FEE_HLJ.B_PAYMENT_APPLY (ID);
alter table FEE_HLJ.B_INVOICE_ITEM
  add constraint FKC1587DA25796B1C3 foreign key (TOWERRENT_APPLY_ID)
  references FEE_HLJ.B_TOWER_RENT_APPLY (ID);
alter table FEE_HLJ.B_INVOICE_ITEM
  add constraint FKC1587DA27D3296C0 foreign key (ENTITY_CREATOR_ID)
  references FEE_HLJ.S_PRIVILEGE_USER (ID);
alter table FEE_HLJ.B_INVOICE_ITEM
  add constraint FKC1587DA28CA82BFE foreign key (INVOICE_SORT_ID)
  references FEE_HLJ.C_VAT_INVOICE_SORT (ID);
alter table FEE_HLJ.B_INVOICE_ITEM
  add constraint FKC1587DA2D0E8B65 foreign key (CHECK_SHEET_PACK_MANAGE_ID)
  references FEE_HLJ.C_CHECKSHEET_PACK_MANAGE (ID);
alter table FEE_HLJ.B_INVOICE_ITEM
  add constraint FKC1587DA2FD68C696 foreign key (RENTPAY_APPLY_ID)
  references FEE_HLJ.B_OWN_SITE_RENT_PAY_APPLY (ID);

prompt
prompt Creating table B_MESSAGE
prompt ========================
prompt
create table FEE_HLJ.B_MESSAGE
(
  ID          NUMBER(19) not null,
  CONTENT     VARCHAR2(4000 CHAR),
  CREATEDATE  TIMESTAMP(6),
  HANDLEDATE  TIMESTAMP(6),
  MESSAGETYPE NUMBER(10),
  SOURCE_CODE VARCHAR2(255 CHAR),
  STATUS      VARCHAR2(255 CHAR),
  TITLE       VARCHAR2(255 CHAR),
  URL         VARCHAR2(255 CHAR),
  CREATOR_ID  NUMBER(19),
  ACCEPTOR_ID NUMBER(19)
)
tablespace EPMSDEV
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.B_MESSAGE
  add primary key (ID)
  using index 
  tablespace EPMSDEV
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table B_METER_MANAGE
prompt =============================
prompt
create table FEE_HLJ.B_METER_MANAGE
(
  ID                 NUMBER(19) not null,
  ENTITY_CODE        VARCHAR2(255 CHAR),
  ENTITY_CREATE_DATE TIMESTAMP(6),
  ENTITY_DESC        VARCHAR2(4000 CHAR),
  FINISH_DATE        TIMESTAMP(6),
  ENTITY_NAME        VARCHAR2(255 CHAR),
  ENTITY_STATUS      VARCHAR2(100 CHAR),
  INSTALLATION_TIME  TIMESTAMP(6),
  ISRESET            NUMBER(1),
  METER_CODE         VARCHAR2(225 CHAR),
  METER_MAX          NUMBER(10),
  METER_RATE         NUMBER(10),
  RATIO_RATE         NUMBER(19,6),
  RESOURCE_POINT_ID  NUMBER(19),
  REGION_ID          NUMBER(19),
  CITY_ID            NUMBER(19),
  ENTITY_CREATOR_ID  NUMBER(19),
  METER_UNIT_ID      NUMBER(19),
  ISFANZHUAN         NUMBER(1),
  NEW_AMMETER_VALUE  NUMBER(10,4),
  OLD_AMMETER_VALUE  NUMBER(10,4),
  OTHERS             VARCHAR2(255 CHAR),
  POWER_LOSS         NUMBER(10,4),
  ATTACHMENT_UNIT_ID NUMBER(19),
  IP                 VARCHAR2(255 CHAR),
  METHOD             VARCHAR2(255 CHAR),
  CHECK_DATE         TIMESTAMP(6)
)
tablespace EPMSDEV
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.B_METER_MANAGE
  add primary key (ID)
  using index 
  tablespace EPMSDEV
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.B_METER_MANAGE
  add constraint FKA51C6BD877896DD4 foreign key (METER_UNIT_ID)
  references FEE_HLJ.B_METER_UINT (ID);
alter table FEE_HLJ.B_METER_MANAGE
  add constraint FKA51C6BD8784C851 foreign key (RESOURCE_POINT_ID)
  references FEE_HLJ.B_RESOURCE_POINT (ID);
alter table FEE_HLJ.B_METER_MANAGE
  add constraint FKA51C6BD87D3296C0 foreign key (ENTITY_CREATOR_ID)
  references FEE_HLJ.S_PRIVILEGE_USER (ID);
alter table FEE_HLJ.B_METER_MANAGE
  add constraint FKA51C6BD8ACEBAB84 foreign key (REGION_ID)
  references FEE_HLJ.C_ORGANIZATION (ID);
alter table FEE_HLJ.B_METER_MANAGE
  add constraint FKA51C6BD8D74E11AD foreign key (CITY_ID)
  references FEE_HLJ.C_ORGANIZATION (ID);
alter table FEE_HLJ.B_METER_MANAGE
  add constraint FKA51C6BD8F7258E38 foreign key (ATTACHMENT_UNIT_ID)
  references FEE_HLJ.B_ATTACHMENT_UNIT (ID);

prompt
prompt Creating table B_METER_MANAGE_HIS
prompt =================================
prompt
create table FEE_HLJ.B_METER_MANAGE_HIS
(
  ID                 NUMBER(19) not null,
  ENTITY_CODE        VARCHAR2(255 CHAR),
  ENTITY_CREATE_DATE TIMESTAMP(6),
  ENTITY_DESC        VARCHAR2(4000 CHAR),
  FINISH_DATE        TIMESTAMP(6),
  ENTITY_NAME        VARCHAR2(255 CHAR),
  ENTITY_STATUS      VARCHAR2(100 CHAR),
  INSTALLATION_TIME  TIMESTAMP(6),
  ISRESET            NUMBER(1),
  METER_CODE         VARCHAR2(225 CHAR),
  METER_MAX          NUMBER(10),
  METER_RATE         NUMBER(10),
  RATIO_RATE         NUMBER(19,2),
  ENTITY_CREATOR_ID  NUMBER(19),
  METERMANAGE_ID     NUMBER(19),
  REGION_ID          NUMBER(19),
  CITY_ID            NUMBER(19),
  RESOURCE_POINT_ID  NUMBER(19),
  IP                 VARCHAR2(255 CHAR),
  METHOD             VARCHAR2(255 CHAR)
)
tablespace EPMSDEV
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.B_METER_MANAGE_HIS
  add primary key (ID)
  using index 
  tablespace EPMSDEV
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.B_METER_MANAGE_HIS
  add constraint FKA6FF82AB784C851 foreign key (RESOURCE_POINT_ID)
  references FEE_HLJ.B_RESOURCE_POINT (ID);
alter table FEE_HLJ.B_METER_MANAGE_HIS
  add constraint FKA6FF82AB7D3296C0 foreign key (ENTITY_CREATOR_ID)
  references FEE_HLJ.S_PRIVILEGE_USER (ID);
alter table FEE_HLJ.B_METER_MANAGE_HIS
  add constraint FKA6FF82AB84D0772B foreign key (METERMANAGE_ID)
  references FEE_HLJ.B_METER_MANAGE (ID);
alter table FEE_HLJ.B_METER_MANAGE_HIS
  add constraint FKA6FF82ABACEBAB84 foreign key (REGION_ID)
  references FEE_HLJ.C_ORGANIZATION (ID);
alter table FEE_HLJ.B_METER_MANAGE_HIS
  add constraint FKA6FF82ABD74E11AD foreign key (CITY_ID)
  references FEE_HLJ.C_ORGANIZATION (ID);

prompt
prompt Creating table B_RESOURCE_REIM_ITEM
prompt ===================================
prompt
create table FEE_HLJ.B_RESOURCE_REIM_ITEM
(
  ID                    NUMBER(19) not null,
  ENTITY_CODE           VARCHAR2(255 CHAR),
  ENTITY_CREATE_DATE    TIMESTAMP(6),
  ENTITY_DESC           VARCHAR2(4000 CHAR),
  FINISH_DATE           TIMESTAMP(6),
  ENTITY_NAME           VARCHAR2(255 CHAR),
  ENTITY_STATUS         VARCHAR2(100 CHAR),
  ACTUAL_PAYMENT_AMOUNT NUMBER(10,4),
  AMORTIZATION_RATIO    NUMBER(10,4),
  ELECTRIC_METER_RATE   NUMBER(10,4),
  NEW_AMMETER_VALUE     NUMBER(10,4),
  OLD_AMMETER_VALUE     NUMBER(10,4),
  POWER_LOSS            NUMBER(10,4),
  WITHDRAW_POWER        NUMBER(10,4),
  PAYMENT_APPLY_ID      NUMBER(19),
  ENTITY_CREATOR_ID     NUMBER(19),
  RESOURCE_POINT_ID     NUMBER(19),
  OTHERS                VARCHAR2(255 CHAR),
  ISFANZHUAN            NUMBER(1),
  RESOURCE_WATTAGE      NUMBER(21,4),
  HIS_MONTHMARK_POWER   NUMBER(10,4),
  HIS_YEARMARK_POWER    NUMBER(10,4),
  MEASURED_POWER        NUMBER(10,4),
  POWER_EXCEED_RATIO    NUMBER(10,4),
  RATEDMARK_POWER       NUMBER(10,4),
  SMART_METER_POWER     NUMBER(10,4),
  ELEC_EXCEED_RATIO     NUMBER(10,4),
  CHECK_DATE            TIMESTAMP(6),
  BAOZHANG_DATE         TIMESTAMP(6)
)
tablespace EPMSDEV
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.B_RESOURCE_REIM_ITEM
  add primary key (ID)
  using index 
  tablespace EPMSDEV
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.B_RESOURCE_REIM_ITEM
  add constraint FKE8E2BBC73922535F foreign key (PAYMENT_APPLY_ID)
  references FEE_HLJ.B_PAYMENT_APPLY (ID);
alter table FEE_HLJ.B_RESOURCE_REIM_ITEM
  add constraint FKE8E2BBC7784C851 foreign key (RESOURCE_POINT_ID)
  references FEE_HLJ.B_RESOURCE_POINT (ID);
alter table FEE_HLJ.B_RESOURCE_REIM_ITEM
  add constraint FKE8E2BBC77D3296C0 foreign key (ENTITY_CREATOR_ID)
  references FEE_HLJ.S_PRIVILEGE_USER (ID);

prompt
prompt Creating table B_METER_METERUNITT
prompt =================================
prompt
create table FEE_HLJ.B_METER_METERUNITT
(
  ID                   NUMBER(19) not null,
  ENTITY_CODE          VARCHAR2(255 CHAR),
  ENTITY_CREATE_DATE   TIMESTAMP(6),
  ENTITY_DESC          VARCHAR2(4000 CHAR),
  FINISH_DATE          TIMESTAMP(6),
  ENTITY_NAME          VARCHAR2(255 CHAR),
  ENTITY_STATUS        VARCHAR2(100 CHAR),
  METER_CODE           VARCHAR2(255 CHAR),
  NEW_AMMETER_VALUE    NUMBER(10,4),
  OLD_AMMETER_VALUE    NUMBER(10,4),
  RESOURCEREIM_ITEM_ID NUMBER(19),
  ENTITY_CREATOR_ID    NUMBER(19),
  CHECK_DATE           TIMESTAMP(6),
  GONGSHI              VARCHAR2(255 CHAR),
  ISFANZHUAN           NUMBER(1),
  OTHERS               VARCHAR2(255 CHAR),
  POWER_LOSS           NUMBER(10,4)
)
tablespace EPMSDEV
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.B_METER_METERUNITT
  add primary key (ID)
  using index 
  tablespace EPMSDEV
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.B_METER_METERUNITT
  add constraint FK845C61A7D3296C0 foreign key (ENTITY_CREATOR_ID)
  references FEE_HLJ.S_PRIVILEGE_USER (ID);
alter table FEE_HLJ.B_METER_METERUNITT
  add constraint FK845C61AE0F9B357 foreign key (RESOURCEREIM_ITEM_ID)
  references FEE_HLJ.B_RESOURCE_REIM_ITEM (ID);

prompt
prompt Creating table C_RECOVERY_RENTAL_FEE
prompt ====================================
prompt
create table FEE_HLJ.C_RECOVERY_RENTAL_FEE
(
  ID           NUMBER(19) not null,
  TYPE_CODE    VARCHAR2(255 CHAR),
  TYPE_DESC    VARCHAR2(255 CHAR),
  DELETED_FLAG NUMBER(1),
  TYPE_NAME    VARCHAR2(255 CHAR),
  PRIORITY     NUMBER(10)
)
tablespace EPMSDEV
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.C_RECOVERY_RENTAL_FEE
  add primary key (ID)
  using index 
  tablespace EPMSDEV
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table B_RECOVERY_INFORMATION
prompt =====================================
prompt
create table FEE_HLJ.B_RECOVERY_INFORMATION
(
  ID                      NUMBER(19) not null,
  ENTITY_CODE             VARCHAR2(255 CHAR),
  ENTITY_CREATE_DATE      TIMESTAMP(6),
  ENTITY_DESC             VARCHAR2(4000 CHAR),
  FINISH_DATE             TIMESTAMP(6),
  ENTITY_NAME             VARCHAR2(255 CHAR),
  ENTITY_STATUS           VARCHAR2(100 CHAR),
  DELETED_FLAG            NUMBER(1),
  LEASE_RECOVERED         NUMBER(10,2),
  ALREADY_LEASE_RECOVERED NUMBER(10,2),
  NOTE                    VARCHAR2(255 CHAR),
  RECOVERY_BILL_NUMBER    VARCHAR2(255 CHAR),
  RECOVERY_MEASURES       VARCHAR2(255 CHAR),
  RECOVERY_RENTAL_FEE_ID  NUMBER(19),
  APPLY_ORG_ID            NUMBER(19),
  ENTITY_CREATOR_ID       NUMBER(19),
  WORKFLOW_ACTIVITY_ID    NUMBER(19),
  APPLY_DEPT_ID           NUMBER(19),
  ATTACHMENT_UNIT_ID      NUMBER(19)
)
tablespace EPMSDEV
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.B_RECOVERY_INFORMATION
  add primary key (ID)
  using index 
  tablespace EPMSDEV
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.B_RECOVERY_INFORMATION
  add constraint FK8212273F7D3296C0 foreign key (ENTITY_CREATOR_ID)
  references FEE_HLJ.S_PRIVILEGE_USER (ID);
alter table FEE_HLJ.B_RECOVERY_INFORMATION
  add constraint FK8212273F967622C2 foreign key (APPLY_DEPT_ID)
  references FEE_HLJ.C_ORGANIZATION (ID);
alter table FEE_HLJ.B_RECOVERY_INFORMATION
  add constraint FK8212273FA29A3F85 foreign key (APPLY_ORG_ID)
  references FEE_HLJ.C_ORGANIZATION (ID);
alter table FEE_HLJ.B_RECOVERY_INFORMATION
  add constraint FK8212273FBABDA403 foreign key (RECOVERY_RENTAL_FEE_ID)
  references FEE_HLJ.C_RECOVERY_RENTAL_FEE (ID);
alter table FEE_HLJ.B_RECOVERY_INFORMATION
  add constraint FK8212273FDEFD0F5 foreign key (WORKFLOW_ACTIVITY_ID)
  references FEE_HLJ.W_WORKFLOW_ACTIVITY (ID);
alter table FEE_HLJ.B_RECOVERY_INFORMATION
  add constraint FK8212273FF7258E38 foreign key (ATTACHMENT_UNIT_ID)
  references FEE_HLJ.B_ATTACHMENT_UNIT (ID);

prompt
prompt Creating table C_LEASE_TYPE
prompt ===========================
prompt
create table FEE_HLJ.C_LEASE_TYPE
(
  ID           NUMBER(19) not null,
  TYPE_CODE    VARCHAR2(255 CHAR),
  TYPE_DESC    VARCHAR2(255 CHAR),
  DELETED_FLAG NUMBER(1),
  TYPE_NAME    VARCHAR2(255 CHAR),
  PRIORITY     NUMBER(10)
)
tablespace EPMSDEV
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.C_LEASE_TYPE
  add primary key (ID)
  using index 
  tablespace EPMSDEV
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table C_SITE_TYPE
prompt ==========================
prompt
create table FEE_HLJ.C_SITE_TYPE
(
  ID           NUMBER(19) not null,
  TYPE_CODE    VARCHAR2(255 CHAR),
  TYPE_DESC    VARCHAR2(255 CHAR),
  DELETED_FLAG NUMBER(1),
  TYPE_NAME    VARCHAR2(255 CHAR),
  PRIORITY     NUMBER(10)
)
tablespace EPMSDEV
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.C_SITE_TYPE
  add primary key (ID)
  using index 
  tablespace EPMSDEV
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table B_SITE_BASIC_INFORMATION
prompt =======================================
prompt
create table FEE_HLJ.B_SITE_BASIC_INFORMATION
(
  ID                   NUMBER(19) not null,
  ENTITY_CODE          VARCHAR2(255 CHAR),
  ENTITY_CREATE_DATE   TIMESTAMP(6),
  ENTITY_DESC          VARCHAR2(4000 CHAR),
  FINISH_DATE          TIMESTAMP(6),
  ENTITY_NAME          VARCHAR2(255 CHAR),
  ENTITY_STATUS        VARCHAR2(100 CHAR),
  DELETED_FLAG         NUMBER(1),
  DESIGNATED_AREA      VARCHAR2(255 CHAR),
  PROVINCE_NAME        VARCHAR2(255 CHAR),
  SITE_AREA            VARCHAR2(255 CHAR),
  SITE_CODE            VARCHAR2(255 CHAR),
  SITE_LOCATION        VARCHAR2(255 CHAR),
  SITE_NAME            VARCHAR2(255 CHAR),
  WORKFLOW_ACTIVITY_ID NUMBER(19),
  APPLY_DEPT_ID        NUMBER(19),
  APPLY_ORG_ID         NUMBER(19),
  REGION_ID            NUMBER(19),
  ENTITY_CREATOR_ID    NUMBER(19),
  CITY_ID              NUMBER(19),
  ATTACHMENT_UNIT_ID   NUMBER(19),
  SITE_TYPE_ID         NUMBER(19),
  LEASE_TYPE_ID        NUMBER(19)
)
tablespace EPMSDEV
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.B_SITE_BASIC_INFORMATION
  add primary key (ID)
  using index 
  tablespace EPMSDEV
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.B_SITE_BASIC_INFORMATION
  add constraint FK8D4388204545AFB8 foreign key (SITE_TYPE_ID)
  references FEE_HLJ.C_SITE_TYPE (ID);
alter table FEE_HLJ.B_SITE_BASIC_INFORMATION
  add constraint FK8D4388207D3296C0 foreign key (ENTITY_CREATOR_ID)
  references FEE_HLJ.S_PRIVILEGE_USER (ID);
alter table FEE_HLJ.B_SITE_BASIC_INFORMATION
  add constraint FK8D438820880400A0 foreign key (LEASE_TYPE_ID)
  references FEE_HLJ.C_LEASE_TYPE (ID);
alter table FEE_HLJ.B_SITE_BASIC_INFORMATION
  add constraint FK8D438820967622C2 foreign key (APPLY_DEPT_ID)
  references FEE_HLJ.C_ORGANIZATION (ID);
alter table FEE_HLJ.B_SITE_BASIC_INFORMATION
  add constraint FK8D438820A29A3F85 foreign key (APPLY_ORG_ID)
  references FEE_HLJ.C_ORGANIZATION (ID);
alter table FEE_HLJ.B_SITE_BASIC_INFORMATION
  add constraint FK8D438820ACEBAB84 foreign key (REGION_ID)
  references FEE_HLJ.C_ORGANIZATION (ID);
alter table FEE_HLJ.B_SITE_BASIC_INFORMATION
  add constraint FK8D438820D74E11AD foreign key (CITY_ID)
  references FEE_HLJ.C_ORGANIZATION (ID);
alter table FEE_HLJ.B_SITE_BASIC_INFORMATION
  add constraint FK8D438820DEFD0F5 foreign key (WORKFLOW_ACTIVITY_ID)
  references FEE_HLJ.W_WORKFLOW_ACTIVITY (ID);
alter table FEE_HLJ.B_SITE_BASIC_INFORMATION
  add constraint FK8D438820F7258E38 foreign key (ATTACHMENT_UNIT_ID)
  references FEE_HLJ.B_ATTACHMENT_UNIT (ID);

prompt
prompt Creating table B_NEWRENT_PARAMETER
prompt ==================================
prompt
create table FEE_HLJ.B_NEWRENT_PARAMETER
(
  ID                   NUMBER(19) not null,
  ENTITY_CODE          VARCHAR2(255 CHAR),
  ENTITY_CREATE_DATE   TIMESTAMP(6),
  ENTITY_DESC          VARCHAR2(4000 CHAR),
  FINISH_DATE          TIMESTAMP(6),
  ENTITY_NAME          VARCHAR2(255 CHAR),
  ENTITY_STATUS        VARCHAR2(100 CHAR),
  DELETED_FLAG         NUMBER(1),
  PAYMENT_ID           NUMBER(19),
  ENTITY_CREATOR_ID    NUMBER(19),
  APPLY_ORG_ID         NUMBER(19),
  ATTACHMENT_UNIT_ID   NUMBER(19),
  SITE_BASIC_ID        NUMBER(19),
  CONTRACT_ID          NUMBER(19),
  RECOVERY_ID          NUMBER(19),
  WORKFLOW_ACTIVITY_ID NUMBER(19),
  APPLY_DEPT_ID        NUMBER(19)
)
tablespace EPMSDEV
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.B_NEWRENT_PARAMETER
  add primary key (ID)
  using index 
  tablespace EPMSDEV
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.B_NEWRENT_PARAMETER
  add constraint FKAA0FBD262360E918 foreign key (SITE_BASIC_ID)
  references FEE_HLJ.B_SITE_BASIC_INFORMATION (ID);
alter table FEE_HLJ.B_NEWRENT_PARAMETER
  add constraint FKAA0FBD265DCCCB73 foreign key (CONTRACT_ID)
  references FEE_HLJ.B_CONTRACT_INFORMATION (ID);
alter table FEE_HLJ.B_NEWRENT_PARAMETER
  add constraint FKAA0FBD266842DE81 foreign key (RECOVERY_ID)
  references FEE_HLJ.B_RECOVERY_INFORMATION (ID);
alter table FEE_HLJ.B_NEWRENT_PARAMETER
  add constraint FKAA0FBD267D3296C0 foreign key (ENTITY_CREATOR_ID)
  references FEE_HLJ.S_PRIVILEGE_USER (ID);
alter table FEE_HLJ.B_NEWRENT_PARAMETER
  add constraint FKAA0FBD26967622C2 foreign key (APPLY_DEPT_ID)
  references FEE_HLJ.C_ORGANIZATION (ID);
alter table FEE_HLJ.B_NEWRENT_PARAMETER
  add constraint FKAA0FBD26A29A3F85 foreign key (APPLY_ORG_ID)
  references FEE_HLJ.C_ORGANIZATION (ID);
alter table FEE_HLJ.B_NEWRENT_PARAMETER
  add constraint FKAA0FBD26ADB488D8 foreign key (PAYMENT_ID)
  references FEE_HLJ.B_ACCOUNT_PAYMENT_INFORMATION (ID);
alter table FEE_HLJ.B_NEWRENT_PARAMETER
  add constraint FKAA0FBD26DEFD0F5 foreign key (WORKFLOW_ACTIVITY_ID)
  references FEE_HLJ.W_WORKFLOW_ACTIVITY (ID);
alter table FEE_HLJ.B_NEWRENT_PARAMETER
  add constraint FKAA0FBD26F7258E38 foreign key (ATTACHMENT_UNIT_ID)
  references FEE_HLJ.B_ATTACHMENT_UNIT (ID);

prompt
prompt Creating table B_OWN_PRICE_BENCHMARK
prompt ====================================
prompt
create table FEE_HLJ.B_OWN_PRICE_BENCHMARK
(
  ID                 NUMBER(19) not null,
  ENTITY_CODE        VARCHAR2(255 CHAR),
  ENTITY_CREATE_DATE TIMESTAMP(6),
  ENTITY_DESC        VARCHAR2(4000 CHAR),
  FINISH_DATE        TIMESTAMP(6),
  ENTITY_NAME        VARCHAR2(255 CHAR),
  ENTITY_STATUS      VARCHAR2(100 CHAR),
  LEVER_COST         NUMBER(19,2),
  RESOURCE_SCENE_ID  NUMBER(19),
  RESOURCE_SORT_ID   NUMBER(19),
  ENTITY_CREATOR_ID  NUMBER(19),
  CITY_ID            NUMBER(19)
)
tablespace EPMSDEV
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.B_OWN_PRICE_BENCHMARK
  add primary key (ID)
  using index 
  tablespace EPMSDEV
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.B_OWN_PRICE_BENCHMARK
  add constraint FKF1ED27712CE229A foreign key (RESOURCE_SCENE_ID)
  references FEE_HLJ.C_RESOURCE_SCENE (ID);
alter table FEE_HLJ.B_OWN_PRICE_BENCHMARK
  add constraint FKF1ED277170220C9A foreign key (RESOURCE_SORT_ID)
  references FEE_HLJ.C_RESOURCE_SORT (ID);
alter table FEE_HLJ.B_OWN_PRICE_BENCHMARK
  add constraint FKF1ED27717D3296C0 foreign key (ENTITY_CREATOR_ID)
  references FEE_HLJ.S_PRIVILEGE_USER (ID);
alter table FEE_HLJ.B_OWN_PRICE_BENCHMARK
  add constraint FKF1ED2771D74E11AD foreign key (CITY_ID)
  references FEE_HLJ.C_ORGANIZATION (ID);

prompt
prompt Creating table B_PAYMENT_AUDIT
prompt ==============================
prompt
create table FEE_HLJ.B_PAYMENT_AUDIT
(
  ID                   NUMBER(19) not null,
  ENTITY_CODE          VARCHAR2(255 CHAR),
  ENTITY_CREATE_DATE   TIMESTAMP(6),
  ENTITY_DESC          VARCHAR2(4000 CHAR),
  FINISH_DATE          TIMESTAMP(6),
  ENTITY_NAME          VARCHAR2(255 CHAR),
  ENTITY_STATUS        VARCHAR2(100 CHAR),
  DELETED_FLAG         NUMBER(1),
  WORK_TYPE            VARCHAR2(100 CHAR),
  ENTITY_CREATOR_ID    NUMBER(19),
  APPLY_ORG_ID         NUMBER(19),
  ATTACHMENT_UNIT_ID   NUMBER(19),
  WORKFLOW_ACTIVITY_ID NUMBER(19),
  APPLY_DEPT_ID        NUMBER(19),
  APPLY_ID             NUMBER(19)
)
tablespace EPMSDEV
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.B_PAYMENT_AUDIT
  add primary key (ID)
  using index 
  tablespace EPMSDEV
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.B_PAYMENT_AUDIT
  add constraint FKA00A934573886D46 foreign key (APPLY_ID)
  references FEE_HLJ.B_PAYMENT_APPLY (ID);
alter table FEE_HLJ.B_PAYMENT_AUDIT
  add constraint FKA00A93457D3296C0 foreign key (ENTITY_CREATOR_ID)
  references FEE_HLJ.S_PRIVILEGE_USER (ID);
alter table FEE_HLJ.B_PAYMENT_AUDIT
  add constraint FKA00A9345967622C2 foreign key (APPLY_DEPT_ID)
  references FEE_HLJ.C_ORGANIZATION (ID);
alter table FEE_HLJ.B_PAYMENT_AUDIT
  add constraint FKA00A9345A29A3F85 foreign key (APPLY_ORG_ID)
  references FEE_HLJ.C_ORGANIZATION (ID);
alter table FEE_HLJ.B_PAYMENT_AUDIT
  add constraint FKA00A9345DEFD0F5 foreign key (WORKFLOW_ACTIVITY_ID)
  references FEE_HLJ.W_WORKFLOW_ACTIVITY (ID);
alter table FEE_HLJ.B_PAYMENT_AUDIT
  add constraint FKA00A9345F7258E38 foreign key (ATTACHMENT_UNIT_ID)
  references FEE_HLJ.B_ATTACHMENT_UNIT (ID);

prompt
prompt Creating table B_POWERPAYMENT_LEDGER
prompt ====================================
prompt
create table FEE_HLJ.B_POWERPAYMENT_LEDGER
(
  ID                   NUMBER(19) not null,
  ENTITY_CODE          VARCHAR2(255 CHAR),
  ENTITY_CREATE_DATE   TIMESTAMP(6),
  ENTITY_DESC          VARCHAR2(4000 CHAR),
  FINISH_DATE          TIMESTAMP(6),
  ENTITY_NAME          VARCHAR2(255 CHAR),
  ENTITY_STATUS        VARCHAR2(100 CHAR),
  DELETED_FLAG         NUMBER(1),
  BAOZHANG_BIANHAO     VARCHAR2(255 CHAR),
  BAOZHANG_JIEZHI      VARCHAR2(255 CHAR),
  BAOZHANG_NAME        VARCHAR2(255 CHAR),
  BAOZHANG_QISHI       TIMESTAMP(6),
  BAOZHANG_SHIJIAN     VARCHAR2(255 CHAR),
  BEIZHU               VARCHAR2(4000 CHAR),
  BEIZHU1              VARCHAR2(255 CHAR),
  CHANQUAN_GUISHU      VARCHAR2(255 CHAR),
  DANJIA               VARCHAR2(255 CHAR),
  DIANBIAO_BEISHU      VARCHAR2(255 CHAR),
  DIANBIAOHAO          VARCHAR2(255 CHAR),
  DIANLIANG            VARCHAR2(255 CHAR),
  DIANSUN              VARCHAR2(255 CHAR),
  FENGGE_BILI          VARCHAR2(255 CHAR),
  GONGDIAN_FANGSHI     VARCHAR2(255 CHAR),
  HETONG_BIANMA        VARCHAR2(255 CHAR),
  HETONG_MINGCHENG     VARCHAR2(255 CHAR),
  HETONG_RIQI          VARCHAR2(255 CHAR),
  IS_GONGXIANG         VARCHAR2(255 CHAR),
  IS_ZAIWANG           VARCHAR2(255 CHAR),
  JIANSHE_MIANJI       VARCHAR2(255 CHAR),
  JIANZHU_JIEGOU       VARCHAR2(255 CHAR),
  JIAOFEI_FANGSHI      VARCHAR2(255 CHAR),
  JIESUAN_ZHOUQI       VARCHAR2(255 CHAR),
  JINE                 VARCHAR2(255 CHAR),
  JINE_NO              VARCHAR2(255 CHAR),
  JINGBANREN           VARCHAR2(255 CHAR),
  JIZHAN_LEIBIE        VARCHAR2(255 CHAR),
  LEIJI                VARCHAR2(255 CHAR),
  NEW_DIANBIAO         VARCHAR2(255 CHAR),
  OLD_DIANBIAO         VARCHAR2(255 CHAR),
  PAY_NAME             VARCHAR2(255 CHAR),
  PAY_USER_NAME        VARCHAR2(255 CHAR),
  SHUJU_LAIYUAN        VARCHAR2(255 CHAR),
  START_GONGXIANG      VARCHAR2(255 CHAR),
  TIETA_ZIYUAN         VARCHAR2(255 CHAR),
  TIETA_ZHANMING       VARCHAR2(255 CHAR),
  WEIHU_DENGJI         VARCHAR2(255 CHAR),
  APPLY_DEPT_ID        NUMBER(19),
  ACCOUNTCELL_ID       NUMBER(19),
  ATTACHMENT_UNIT_ID   NUMBER(19),
  CITY_ID              NUMBER(19),
  RESOURCEPOINT_ID     NUMBER(19),
  ENTITY_CREATOR_ID    NUMBER(19),
  REGION_ID            NUMBER(19),
  APPLY_ORG_ID         NUMBER(19),
  WORKFLOW_ACTIVITY_ID NUMBER(19)
)
tablespace EPMSDEV
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.B_POWERPAYMENT_LEDGER
  add primary key (ID)
  using index 
  tablespace EPMSDEV
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.B_POWERPAYMENT_LEDGER
  add constraint FK3F88AAAA7D3296C0 foreign key (ENTITY_CREATOR_ID)
  references FEE_HLJ.S_PRIVILEGE_USER (ID);
alter table FEE_HLJ.B_POWERPAYMENT_LEDGER
  add constraint FK3F88AAAA967622C2 foreign key (APPLY_DEPT_ID)
  references FEE_HLJ.C_ORGANIZATION (ID);
alter table FEE_HLJ.B_POWERPAYMENT_LEDGER
  add constraint FK3F88AAAAA29A3F85 foreign key (APPLY_ORG_ID)
  references FEE_HLJ.C_ORGANIZATION (ID);
alter table FEE_HLJ.B_POWERPAYMENT_LEDGER
  add constraint FK3F88AAAAACEBAB84 foreign key (REGION_ID)
  references FEE_HLJ.C_ORGANIZATION (ID);
alter table FEE_HLJ.B_POWERPAYMENT_LEDGER
  add constraint FK3F88AAAAD74E11AD foreign key (CITY_ID)
  references FEE_HLJ.C_ORGANIZATION (ID);
alter table FEE_HLJ.B_POWERPAYMENT_LEDGER
  add constraint FK3F88AAAADEFD0F5 foreign key (WORKFLOW_ACTIVITY_ID)
  references FEE_HLJ.W_WORKFLOW_ACTIVITY (ID);
alter table FEE_HLJ.B_POWERPAYMENT_LEDGER
  add constraint FK3F88AAAAE1D322DF foreign key (ACCOUNTCELL_ID)
  references FEE_HLJ.B_ACCOUNT_CELL (ID);
alter table FEE_HLJ.B_POWERPAYMENT_LEDGER
  add constraint FK3F88AAAAF7258E38 foreign key (ATTACHMENT_UNIT_ID)
  references FEE_HLJ.B_ATTACHMENT_UNIT (ID);
alter table FEE_HLJ.B_POWERPAYMENT_LEDGER
  add constraint FK3F88AAAAF830814E foreign key (RESOURCEPOINT_ID)
  references FEE_HLJ.B_RESOURCE_POINT (ID);

prompt
prompt Creating table B_POWER_PAYMENT_LEDGER
prompt =====================================
prompt
create table FEE_HLJ.B_POWER_PAYMENT_LEDGER
(
  ID                   NUMBER(19) not null,
  ENTITY_CODE          VARCHAR2(255 CHAR),
  ENTITY_CREATE_DATE   TIMESTAMP(6),
  ENTITY_DESC          VARCHAR2(4000 CHAR),
  FINISH_DATE          TIMESTAMP(6),
  ENTITY_NAME          VARCHAR2(255 CHAR),
  ENTITY_STATUS        VARCHAR2(100 CHAR),
  DELETED_FLAG         NUMBER(1),
  BAOZHANG_BIANHAO     VARCHAR2(255 CHAR),
  BAOZHANG_JIEZHI      VARCHAR2(255 CHAR),
  BAOZHANG_NAME        VARCHAR2(255 CHAR),
  BAOZHANG_QISHI       TIMESTAMP(6),
  BAOZHANG_SHIJIAN     VARCHAR2(255 CHAR),
  BEIZHU               VARCHAR2(4000 CHAR),
  BEIZHU1              VARCHAR2(255 CHAR),
  CHANQUAN_GUISHU      VARCHAR2(255 CHAR),
  DANJIA               VARCHAR2(255 CHAR),
  DIANBIAO_BEISHU      VARCHAR2(255 CHAR),
  DIANBIAOHAO          VARCHAR2(255 CHAR),
  DIANLIANG            VARCHAR2(255 CHAR),
  DIANSUN              VARCHAR2(255 CHAR),
  FENGGE_BILI          VARCHAR2(255 CHAR),
  GONGDIAN_FANGSHI     VARCHAR2(255 CHAR),
  HETONG_BIANMA        VARCHAR2(255 CHAR),
  HETONG_MINGCHENG     VARCHAR2(255 CHAR),
  HETONG_RIQI          VARCHAR2(255 CHAR),
  IS_GONGXIANG         VARCHAR2(255 CHAR),
  IS_ZAIWANG           VARCHAR2(255 CHAR),
  JIANSHE_MIANJI       VARCHAR2(255 CHAR),
  JIANZHU_JIEGOU       VARCHAR2(255 CHAR),
  JIAOFEI_FANGSHI      VARCHAR2(255 CHAR),
  JIESUAN_ZHOUQI       VARCHAR2(255 CHAR),
  JINE                 VARCHAR2(255 CHAR),
  JINE_NO              VARCHAR2(255 CHAR),
  JINGBANREN           VARCHAR2(255 CHAR),
  JIZHAN_LEIBIE        VARCHAR2(255 CHAR),
  LEIJI                VARCHAR2(255 CHAR),
  NEW_DIANBIAO         VARCHAR2(255 CHAR),
  OLD_DIANBIAO         VARCHAR2(255 CHAR),
  PAY_NAME             VARCHAR2(255 CHAR),
  PAY_USER_NAME        VARCHAR2(255 CHAR),
  START_GONGXIANG      VARCHAR2(255 CHAR),
  TIETA_ZIYUAN         VARCHAR2(255 CHAR),
  TIETA_ZHANMING       VARCHAR2(255 CHAR),
  WEIHU_DENGJI         VARCHAR2(255 CHAR),
  CITY_ID              NUMBER(19),
  REGION_ID            NUMBER(19),
  APPLY_ORG_ID         NUMBER(19),
  APPLY_DEPT_ID        NUMBER(19),
  RESOURCEPOINT_ID     NUMBER(19),
  ATTACHMENT_UNIT_ID   NUMBER(19),
  WORKFLOW_ACTIVITY_ID NUMBER(19),
  ENTITY_CREATOR_ID    NUMBER(19)
)
tablespace EPMSDEV
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.B_POWER_PAYMENT_LEDGER
  add primary key (ID)
  using index 
  tablespace EPMSDEV
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.B_POWER_PAYMENT_LEDGER
  add constraint FK6EC0EBF97D3296C0 foreign key (ENTITY_CREATOR_ID)
  references FEE_HLJ.S_PRIVILEGE_USER (ID);
alter table FEE_HLJ.B_POWER_PAYMENT_LEDGER
  add constraint FK6EC0EBF9967622C2 foreign key (APPLY_DEPT_ID)
  references FEE_HLJ.C_ORGANIZATION (ID);
alter table FEE_HLJ.B_POWER_PAYMENT_LEDGER
  add constraint FK6EC0EBF9A29A3F85 foreign key (APPLY_ORG_ID)
  references FEE_HLJ.C_ORGANIZATION (ID);
alter table FEE_HLJ.B_POWER_PAYMENT_LEDGER
  add constraint FK6EC0EBF9ACEBAB84 foreign key (REGION_ID)
  references FEE_HLJ.C_ORGANIZATION (ID);
alter table FEE_HLJ.B_POWER_PAYMENT_LEDGER
  add constraint FK6EC0EBF9D74E11AD foreign key (CITY_ID)
  references FEE_HLJ.C_ORGANIZATION (ID);
alter table FEE_HLJ.B_POWER_PAYMENT_LEDGER
  add constraint FK6EC0EBF9DEFD0F5 foreign key (WORKFLOW_ACTIVITY_ID)
  references FEE_HLJ.W_WORKFLOW_ACTIVITY (ID);
alter table FEE_HLJ.B_POWER_PAYMENT_LEDGER
  add constraint FK6EC0EBF9F7258E38 foreign key (ATTACHMENT_UNIT_ID)
  references FEE_HLJ.B_ATTACHMENT_UNIT (ID);
alter table FEE_HLJ.B_POWER_PAYMENT_LEDGER
  add constraint FK6EC0EBF9F830814E foreign key (RESOURCEPOINT_ID)
  references FEE_HLJ.B_RESOURCE_POINT (ID);

prompt
prompt Creating table S_MODULE_ICON
prompt ============================
prompt
create table FEE_HLJ.S_MODULE_ICON
(
  ID       NUMBER(19) not null,
  PRIORITY NUMBER(10),
  TYPE     VARCHAR2(255 CHAR),
  URL      VARCHAR2(512 CHAR)
)
tablespace EPMSDEV
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.S_MODULE_ICON
  add primary key (ID)
  using index 
  tablespace EPMSDEV
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table S_MODULE
prompt =======================
prompt
create table FEE_HLJ.S_MODULE
(
  DTYPE             VARCHAR2(31 CHAR) not null,
  MODULE_ID         NUMBER(19) not null,
  ISLEAF_FLAG       NUMBER(1),
  ISROOT_FLAG       NUMBER(1),
  ACTIVE_FLAG       NUMBER(1),
  MODULE_CODE       VARCHAR2(100 CHAR),
  MODULE_DESC       VARCHAR2(1000 CHAR),
  MODULE_INDEX      NUMBER(10),
  DELETE_FLAG       NUMBER(1),
  MODULE_LEVEL      NUMBER(10),
  MODULE_NAME       VARCHAR2(100 CHAR),
  MODULE_TYPE       VARCHAR2(50 CHAR),
  MODULE_URL        VARCHAR2(500 CHAR),
  COOPERATION_URL   VARCHAR2(500 CHAR),
  CURRENT_COUNT_SQL VARCHAR2(4000 CHAR),
  HEIGHT            NUMBER(10),
  IN_WIN            NUMBER(1),
  TOTAL_COUNT_SQL   VARCHAR2(4000 CHAR),
  WIDTH             NUMBER(10),
  ICON_ID           NUMBER(19),
  PARENT_MODULE_ID  NUMBER(19)
)
tablespace EPMSDEV
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.S_MODULE
  add primary key (MODULE_ID)
  using index 
  tablespace EPMSDEV
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.S_MODULE
  add constraint FKBE2CBB8EF44F830 foreign key (ICON_ID)
  references FEE_HLJ.S_MODULE_ICON (ID);

prompt
prompt Creating table B_QUICK_MENU
prompt ===========================
prompt
create table FEE_HLJ.B_QUICK_MENU
(
  ID        NUMBER(19) not null,
  PRIORITY  NUMBER(10),
  USER_ID   NUMBER(19),
  MODULE_ID NUMBER(19)
)
tablespace EPMSDEV
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.B_QUICK_MENU
  add primary key (ID)
  using index 
  tablespace EPMSDEV
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.B_QUICK_MENU
  add constraint FK96F9F86E1EB5BEA6 foreign key (MODULE_ID)
  references FEE_HLJ.S_MODULE (MODULE_ID);
alter table FEE_HLJ.B_QUICK_MENU
  add constraint FK96F9F86EFEC5CE5 foreign key (USER_ID)
  references FEE_HLJ.S_PRIVILEGE_USER (ID);

prompt
prompt Creating table B_REIMBURSEMENT_COLLECT
prompt ======================================
prompt
create table FEE_HLJ.B_REIMBURSEMENT_COLLECT
(
  ID                 NUMBER(19) not null,
  ENTITY_CODE        VARCHAR2(255 CHAR),
  ENTITY_CREATE_DATE TIMESTAMP(6),
  ENTITY_DESC        VARCHAR2(4000 CHAR),
  FINISH_DATE        TIMESTAMP(6),
  ENTITY_NAME        VARCHAR2(255 CHAR),
  ENTITY_STATUS      VARCHAR2(100 CHAR),
  CITY_ID            NUMBER(19),
  REGION_ID          NUMBER(19),
  RESOURCE_UNIT_ID   NUMBER(19),
  ENTITY_CREATOR_ID  NUMBER(19),
  POWER_EXCEED_RATIO NUMBER(10,4)
)
tablespace EPMSDEV
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.B_REIMBURSEMENT_COLLECT
  add primary key (ID)
  using index 
  tablespace EPMSDEV
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.B_REIMBURSEMENT_COLLECT
  add constraint FKDBE2E9067D3296C0 foreign key (ENTITY_CREATOR_ID)
  references FEE_HLJ.S_PRIVILEGE_USER (ID);
alter table FEE_HLJ.B_REIMBURSEMENT_COLLECT
  add constraint FKDBE2E906ACEBAB84 foreign key (REGION_ID)
  references FEE_HLJ.C_ORGANIZATION (ID);
alter table FEE_HLJ.B_REIMBURSEMENT_COLLECT
  add constraint FKDBE2E906B34FFCE4 foreign key (RESOURCE_UNIT_ID)
  references FEE_HLJ.B_RESOURCE_UNIT (ID);
alter table FEE_HLJ.B_REIMBURSEMENT_COLLECT
  add constraint FKDBE2E906D74E11AD foreign key (CITY_ID)
  references FEE_HLJ.C_ORGANIZATION (ID);

prompt
prompt Creating table B_REIMBURSEMEN_LIST
prompt ==================================
prompt
create table FEE_HLJ.B_REIMBURSEMEN_LIST
(
  ID                     NUMBER(19) not null,
  ENTITY_CODE            VARCHAR2(255 CHAR),
  ENTITY_CREATE_DATE     TIMESTAMP(6),
  ENTITY_DESC            VARCHAR2(4000 CHAR),
  FINISH_DATE            TIMESTAMP(6),
  ENTITY_NAME            VARCHAR2(255 CHAR),
  ENTITY_STATUS          VARCHAR2(100 CHAR),
  DELETED_FLAG           NUMBER(1),
  TASK_CODE              VARCHAR2(255 CHAR),
  TASK_NAME              VARCHAR2(255 CHAR),
  ATTACHMENT_UNIT_ID     NUMBER(19),
  WORKFLOW_ACTIVITY_ID   NUMBER(19),
  APPLY_ORG_ID           NUMBER(19),
  ENTITY_CREATOR_ID      NUMBER(19),
  OWNSITERENTPAYAPPLY_ID NUMBER(19),
  APPLY_DEPT_ID          NUMBER(19)
)
tablespace EPMSDEV
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.B_REIMBURSEMEN_LIST
  add primary key (ID)
  using index 
  tablespace EPMSDEV
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.B_REIMBURSEMEN_LIST
  add constraint FKBFB71DA47D3296C0 foreign key (ENTITY_CREATOR_ID)
  references FEE_HLJ.S_PRIVILEGE_USER (ID);
alter table FEE_HLJ.B_REIMBURSEMEN_LIST
  add constraint FKBFB71DA4967622C2 foreign key (APPLY_DEPT_ID)
  references FEE_HLJ.C_ORGANIZATION (ID);
alter table FEE_HLJ.B_REIMBURSEMEN_LIST
  add constraint FKBFB71DA4A29A3F85 foreign key (APPLY_ORG_ID)
  references FEE_HLJ.C_ORGANIZATION (ID);
alter table FEE_HLJ.B_REIMBURSEMEN_LIST
  add constraint FKBFB71DA4D87CCB88 foreign key (OWNSITERENTPAYAPPLY_ID)
  references FEE_HLJ.B_OWN_SITE_RENT_PAY_APPLY (ID);
alter table FEE_HLJ.B_REIMBURSEMEN_LIST
  add constraint FKBFB71DA4DEFD0F5 foreign key (WORKFLOW_ACTIVITY_ID)
  references FEE_HLJ.W_WORKFLOW_ACTIVITY (ID);
alter table FEE_HLJ.B_REIMBURSEMEN_LIST
  add constraint FKBFB71DA4F7258E38 foreign key (ATTACHMENT_UNIT_ID)
  references FEE_HLJ.B_ATTACHMENT_UNIT (ID);

prompt
prompt Creating table B_RENT_RE_POINT
prompt ==============================
prompt
create table FEE_HLJ.B_RENT_RE_POINT
(
  ID                 NUMBER(19) not null,
  ENTITY_CODE        VARCHAR2(255 CHAR),
  ENTITY_CREATE_DATE TIMESTAMP(6),
  ENTITY_DESC        VARCHAR2(4000 CHAR),
  FINISH_DATE        TIMESTAMP(6),
  ENTITY_NAME        VARCHAR2(255 CHAR),
  ENTITY_STATUS      VARCHAR2(100 CHAR),
  ENTITY_CREATOR_ID  NUMBER(19)
)
tablespace EPMSDEV
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.B_RENT_RE_POINT
  add primary key (ID)
  using index 
  tablespace EPMSDEV
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.B_RENT_RE_POINT
  add constraint FKF142F9AD7D3296C0 foreign key (ENTITY_CREATOR_ID)
  references FEE_HLJ.S_PRIVILEGE_USER (ID);

prompt
prompt Creating table B_RENT_ROOM_INFORMATION
prompt ======================================
prompt
create table FEE_HLJ.B_RENT_ROOM_INFORMATION
(
  ID                 NUMBER(19) not null,
  ENTITY_CODE        VARCHAR2(255 CHAR),
  ENTITY_CREATE_DATE TIMESTAMP(6),
  ENTITY_DESC        VARCHAR2(4000 CHAR),
  FINISH_DATE        TIMESTAMP(6),
  ENTITY_NAME        VARCHAR2(255 CHAR),
  ENTITY_STATUS      VARCHAR2(100 CHAR),
  ENTITY_CREATOR_ID  NUMBER(19)
)
tablespace EPMSDEV
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.B_RENT_ROOM_INFORMATION
  add primary key (ID)
  using index 
  tablespace EPMSDEV
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.B_RENT_ROOM_INFORMATION
  add constraint FKE83C8FF17D3296C0 foreign key (ENTITY_CREATOR_ID)
  references FEE_HLJ.S_PRIVILEGE_USER (ID);

prompt
prompt Creating table C_BUILDING1_TYPE
prompt ===============================
prompt
create table FEE_HLJ.C_BUILDING1_TYPE
(
  ID           NUMBER(19) not null,
  TYPE_CODE    VARCHAR2(255 CHAR),
  TYPE_DESC    VARCHAR2(255 CHAR),
  DELETED_FLAG NUMBER(1),
  TYPE_NAME    VARCHAR2(255 CHAR),
  PRIORITY     NUMBER(10)
)
tablespace EPMSDEV
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.C_BUILDING1_TYPE
  add primary key (ID)
  using index 
  tablespace EPMSDEV
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table C_BUILDING2_TYPE
prompt ===============================
prompt
create table FEE_HLJ.C_BUILDING2_TYPE
(
  ID           NUMBER(19) not null,
  TYPE_CODE    VARCHAR2(255 CHAR),
  TYPE_DESC    VARCHAR2(255 CHAR),
  DELETED_FLAG NUMBER(1),
  TYPE_NAME    VARCHAR2(255 CHAR),
  PRIORITY     NUMBER(10)
)
tablespace EPMSDEV
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.C_BUILDING2_TYPE
  add primary key (ID)
  using index 
  tablespace EPMSDEV
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table B_REPORT_APPLY
prompt =============================
prompt
create table FEE_HLJ.B_REPORT_APPLY
(
  ID                   NUMBER(19) not null,
  ENTITY_CODE          VARCHAR2(255 CHAR),
  ENTITY_CREATE_DATE   TIMESTAMP(6),
  ENTITY_DESC          VARCHAR2(4000 CHAR),
  FINISH_DATE          TIMESTAMP(6),
  ENTITY_NAME          VARCHAR2(255 CHAR),
  ENTITY_STATUS        VARCHAR2(100 CHAR),
  DELETED_FLAG         NUMBER(1),
  IS_OWNERPOWER        NUMBER(1),
  ACREAGE              NUMBER(10,4),
  ADDRESS              VARCHAR2(255 CHAR),
  ANNUAL_RENT          NUMBER(19,2),
  APPLY_CONTENT        VARCHAR2(1024 CHAR),
  BENEFIT              VARCHAR2(500 CHAR),
  BUDGET_ACCOUNT       NUMBER(19,2),
  BUDGET__DESC         VARCHAR2(1024 CHAR),
  END_DATE             TIMESTAMP(6),
  IS_CERTIFICATE       NUMBER(1),
  IS_CONDITION         NUMBER(1),
  IS_INTEGRATED_TOWER  NUMBER(1),
  IS_RENTCONTELEC      NUMBER(1),
  IS_ENTRUST           NUMBER(1),
  IS_OTHERFEE          NUMBER(1),
  LATITUDE             NUMBER(20,10),
  LESSOR               VARCHAR2(255 CHAR),
  LONGITUDE            NUMBER(20,10),
  OMMONSTATION         VARCHAR2(255 CHAR),
  ONE_CONTENT          VARCHAR2(1024 CHAR),
  OTHER_INSTRUCTIONS   VARCHAR2(500 CHAR),
  PROJECT_NAME         VARCHAR2(500 CHAR),
  PROJECT_NUMBER       VARCHAR2(50 CHAR),
  SECURITIES           VARCHAR2(500 CHAR),
  START_DATE           TIMESTAMP(6),
  TOTAL_ACCOUNT        NUMBER(19,2),
  UNITPRICE            NUMBER(19,2),
  PAYTYPE_ID           NUMBER(19),
  VICEPROVIDER_ID      NUMBER(19),
  BUILDING1TYPE_ID     NUMBER(19),
  PAYMENTCYCLE_ID      NUMBER(19),
  BUILDING2TYPE_ID     NUMBER(19),
  RANTCONTRACT_ID      NUMBER(19),
  APPLY_DEPT_ID        NUMBER(19),
  ENTITY_CREATOR_ID    NUMBER(19),
  ATTACHMENT_UNIT_ID   NUMBER(19),
  APPLY_ORG_ID         NUMBER(19),
  RESOURCESCENE_ID     NUMBER(19),
  RESOURCE_UNIT_ID     NUMBER(19),
  MAINPROVIDER_ID      NUMBER(19),
  WORKFLOW_ACTIVITY_ID NUMBER(19),
  IS_BEAUTIFY_TOWER    NUMBER(1),
  IS_OWNER_POWER       NUMBER(1)
)
tablespace EPMSDEV
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.B_REPORT_APPLY
  add primary key (ID)
  using index 
  tablespace EPMSDEV
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.B_REPORT_APPLY
  add constraint FK38F3816030AF46EE foreign key (MAINPROVIDER_ID)
  references FEE_HLJ.C_PROVIDER (ID);
alter table FEE_HLJ.B_REPORT_APPLY
  add constraint FK38F38160468C2947 foreign key (PAYMENTCYCLE_ID)
  references FEE_HLJ.C_PAYMENT_CYCLE (ID);
alter table FEE_HLJ.B_REPORT_APPLY
  add constraint FK38F381605BAB71D7 foreign key (BUILDING1TYPE_ID)
  references FEE_HLJ.C_BUILDING1_TYPE (ID);
alter table FEE_HLJ.B_REPORT_APPLY
  add constraint FK38F381607D3296C0 foreign key (ENTITY_CREATOR_ID)
  references FEE_HLJ.S_PRIVILEGE_USER (ID);
alter table FEE_HLJ.B_REPORT_APPLY
  add constraint FK38F381608C0358D2 foreign key (VICEPROVIDER_ID)
  references FEE_HLJ.C_PROVIDER (ID);
alter table FEE_HLJ.B_REPORT_APPLY
  add constraint FK38F38160967622C2 foreign key (APPLY_DEPT_ID)
  references FEE_HLJ.C_ORGANIZATION (ID);
alter table FEE_HLJ.B_REPORT_APPLY
  add constraint FK38F38160A29A3F85 foreign key (APPLY_ORG_ID)
  references FEE_HLJ.C_ORGANIZATION (ID);
alter table FEE_HLJ.B_REPORT_APPLY
  add constraint FK38F38160ABB64DE3 foreign key (RESOURCE_UNIT_ID)
  references FEE_HLJ.B_RESOURCE_UNIT (ID);
alter table FEE_HLJ.B_REPORT_APPLY
  add constraint FK38F38160C39AB637 foreign key (BUILDING2TYPE_ID)
  references FEE_HLJ.C_BUILDING2_TYPE (ID);
alter table FEE_HLJ.B_REPORT_APPLY
  add constraint FK38F38160DEFD0F5 foreign key (WORKFLOW_ACTIVITY_ID)
  references FEE_HLJ.W_WORKFLOW_ACTIVITY (ID);
alter table FEE_HLJ.B_REPORT_APPLY
  add constraint FK38F38160E6733ECD foreign key (PAYTYPE_ID)
  references FEE_HLJ.C_PAY_TYPE (ID);
alter table FEE_HLJ.B_REPORT_APPLY
  add constraint FK38F38160E8207B52 foreign key (RANTCONTRACT_ID)
  references FEE_HLJ.B_CONTRACT (ID);
alter table FEE_HLJ.B_REPORT_APPLY
  add constraint FK38F38160F379DB97 foreign key (RESOURCESCENE_ID)
  references FEE_HLJ.C_RESOURCE_SCENE (ID);
alter table FEE_HLJ.B_REPORT_APPLY
  add constraint FK38F38160F7258E38 foreign key (ATTACHMENT_UNIT_ID)
  references FEE_HLJ.B_ATTACHMENT_UNIT (ID);

prompt
prompt Creating table B_REPORT_APPLY_ADJUST
prompt ====================================
prompt
create table FEE_HLJ.B_REPORT_APPLY_ADJUST
(
  ID                   NUMBER(19) not null,
  ENTITY_CODE          VARCHAR2(255 CHAR),
  ENTITY_CREATE_DATE   TIMESTAMP(6),
  ENTITY_DESC          VARCHAR2(4000 CHAR),
  FINISH_DATE          TIMESTAMP(6),
  ENTITY_NAME          VARCHAR2(255 CHAR),
  ENTITY_STATUS        VARCHAR2(100 CHAR),
  DELETED_FLAG         NUMBER(1),
  IS_OWNER_POWER       NUMBER(1),
  ACREAGE              NUMBER(10,4),
  ADDRESS              VARCHAR2(255 CHAR),
  ANNUAL_RENT          NUMBER(19,2),
  APPLY_CONTENT        VARCHAR2(1024 CHAR),
  BENEFIT              VARCHAR2(500 CHAR),
  BUDGET_ACCOUNT       NUMBER(19,2),
  BUDGET__DESC         VARCHAR2(1024 CHAR),
  END_DATE             TIMESTAMP(6),
  IS_CERTIFICATE       NUMBER(1),
  IS_CONDITION         NUMBER(1),
  IS_INTEGRATED_TOWER  NUMBER(1),
  IS_RENTCONTELEC      NUMBER(1),
  IS_ENTRUST           NUMBER(1),
  IS_OTHERFEE          NUMBER(1),
  LATITUDE             NUMBER(20,10),
  LESSOR               VARCHAR2(255 CHAR),
  LONGITUDE            NUMBER(20,10),
  RESOURCE_NATURE      VARCHAR2(255 CHAR),
  ONE_CONTENT          VARCHAR2(1024 CHAR),
  OTHER_INSTRUCTIONS   VARCHAR2(500 CHAR),
  PROJECT_NAME         VARCHAR2(500 CHAR),
  PROJECT_NUMBER       VARCHAR2(50 CHAR),
  SECURITIES           VARCHAR2(500 CHAR),
  START_DATE           TIMESTAMP(6),
  TOTAL_ACCOUNT        NUMBER(19,2),
  UNITPRICE            NUMBER(19,2),
  APPLY_ORG_ID         NUMBER(19),
  ATTACHMENT_UNIT_ID   NUMBER(19),
  APPLY_DEPT_ID        NUMBER(19),
  BUILDING2TYPE_ID     NUMBER(19),
  WORKFLOW_ACTIVITY_ID NUMBER(19),
  BUILDING1TYPE_ID     NUMBER(19),
  PAYTYPE_ID           NUMBER(19),
  MAINPROVIDER_ID      NUMBER(19),
  VICEPROVIDER_ID      NUMBER(19),
  REPORTAPPLY_ID       NUMBER(19),
  PAYMENTCYCLE_ID      NUMBER(19),
  RANTCONTRACT_ID      NUMBER(19),
  RESOURCESCENE_ID     NUMBER(19),
  RESOURCE_UNIT_ID     NUMBER(19),
  ENTITY_CREATOR_ID    NUMBER(19),
  IS_OWNERPOWER        NUMBER(1),
  IS_BEAUTIFY_TOWER    NUMBER(1),
  OMMON_STATION        VARCHAR2(255 CHAR)
)
tablespace EPMSDEV
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.B_REPORT_APPLY_ADJUST
  add primary key (ID)
  using index 
  tablespace EPMSDEV
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.B_REPORT_APPLY_ADJUST
  add constraint FKE1C8536E2527CCF4 foreign key (REPORTAPPLY_ID)
  references FEE_HLJ.C_BUILDING1_TYPE (ID);
alter table FEE_HLJ.B_REPORT_APPLY_ADJUST
  add constraint FKE1C8536E30AF46EE foreign key (MAINPROVIDER_ID)
  references FEE_HLJ.C_PROVIDER (ID);
alter table FEE_HLJ.B_REPORT_APPLY_ADJUST
  add constraint FKE1C8536E468C2947 foreign key (PAYMENTCYCLE_ID)
  references FEE_HLJ.C_PAYMENT_CYCLE (ID);
alter table FEE_HLJ.B_REPORT_APPLY_ADJUST
  add constraint FKE1C8536E5BAB71D7 foreign key (BUILDING1TYPE_ID)
  references FEE_HLJ.C_BUILDING1_TYPE (ID);
alter table FEE_HLJ.B_REPORT_APPLY_ADJUST
  add constraint FKE1C8536E7D3296C0 foreign key (ENTITY_CREATOR_ID)
  references FEE_HLJ.S_PRIVILEGE_USER (ID);
alter table FEE_HLJ.B_REPORT_APPLY_ADJUST
  add constraint FKE1C8536E8C0358D2 foreign key (VICEPROVIDER_ID)
  references FEE_HLJ.C_PROVIDER (ID);
alter table FEE_HLJ.B_REPORT_APPLY_ADJUST
  add constraint FKE1C8536E967622C2 foreign key (APPLY_DEPT_ID)
  references FEE_HLJ.C_ORGANIZATION (ID);
alter table FEE_HLJ.B_REPORT_APPLY_ADJUST
  add constraint FKE1C8536EA29A3F85 foreign key (APPLY_ORG_ID)
  references FEE_HLJ.C_ORGANIZATION (ID);
alter table FEE_HLJ.B_REPORT_APPLY_ADJUST
  add constraint FKE1C8536EC39AB637 foreign key (BUILDING2TYPE_ID)
  references FEE_HLJ.C_BUILDING2_TYPE (ID);
alter table FEE_HLJ.B_REPORT_APPLY_ADJUST
  add constraint FKE1C8536ECFF0963A foreign key (RESOURCE_UNIT_ID)
  references FEE_HLJ.B_RESOURCE_UNIT (ID);
alter table FEE_HLJ.B_REPORT_APPLY_ADJUST
  add constraint FKE1C8536EDEFD0F5 foreign key (WORKFLOW_ACTIVITY_ID)
  references FEE_HLJ.W_WORKFLOW_ACTIVITY (ID);
alter table FEE_HLJ.B_REPORT_APPLY_ADJUST
  add constraint FKE1C8536EE6733ECD foreign key (PAYTYPE_ID)
  references FEE_HLJ.C_PAY_TYPE (ID);
alter table FEE_HLJ.B_REPORT_APPLY_ADJUST
  add constraint FKE1C8536EE8207B52 foreign key (RANTCONTRACT_ID)
  references FEE_HLJ.B_CONTRACT (ID);
alter table FEE_HLJ.B_REPORT_APPLY_ADJUST
  add constraint FKE1C8536EF379DB97 foreign key (RESOURCESCENE_ID)
  references FEE_HLJ.C_RESOURCE_SCENE (ID);
alter table FEE_HLJ.B_REPORT_APPLY_ADJUST
  add constraint FKE1C8536EF7258E38 foreign key (ATTACHMENT_UNIT_ID)
  references FEE_HLJ.B_ATTACHMENT_UNIT (ID);

prompt
prompt Creating table B_REPORT_APPLY_MANAGE
prompt ====================================
prompt
create table FEE_HLJ.B_REPORT_APPLY_MANAGE
(
  ID                   NUMBER(19) not null,
  ENTITY_CODE          VARCHAR2(255 CHAR),
  ENTITY_CREATE_DATE   TIMESTAMP(6),
  ENTITY_DESC          VARCHAR2(4000 CHAR),
  FINISH_DATE          TIMESTAMP(6),
  ENTITY_NAME          VARCHAR2(255 CHAR),
  ENTITY_STATUS        VARCHAR2(100 CHAR),
  DELETED_FLAG         NUMBER(1),
  IS_OWNERPOWER        NUMBER(1),
  ACREAGE              NUMBER(10,4),
  RESOURCE_NATURE      VARCHAR2(255 CHAR),
  ANNUAL_RENT          NUMBER(19,2),
  APPLY_CONTENT        VARCHAR2(1024 CHAR),
  BENEFIT              VARCHAR2(500 CHAR),
  BUDGET_ACCOUNT       NUMBER(19,2),
  BUDGET__DESC         VARCHAR2(1024 CHAR),
  END_DATE             TIMESTAMP(6),
  IS_CERTIFICATE       NUMBER(1),
  IS_CONDITION         NUMBER(1),
  IS_INTEGRATED_TOWER  NUMBER(1),
  IS_RENTCONTELEC      NUMBER(1),
  IS_BEAUTIFY_TOWER    NUMBER(1),
  IS_ENTRUST           NUMBER(1),
  IS_OTHERFEE          NUMBER(1),
  LATITUDE             NUMBER(20,10),
  LESSOR               VARCHAR2(255 CHAR),
  LONGITUDE            NUMBER(20,10),
  OMMONSTATION         VARCHAR2(255 CHAR),
  ONE_CONTENT          VARCHAR2(1024 CHAR),
  OTHER_INSTRUCTIONS   VARCHAR2(500 CHAR),
  PROJECT_NAME         VARCHAR2(500 CHAR),
  PROJECT_NUMBER       VARCHAR2(50 CHAR),
  SECURITIES           VARCHAR2(500 CHAR),
  START_DATE           TIMESTAMP(6),
  TOTAL_ACCOUNT        NUMBER(19,2),
  UNITPRICE            NUMBER(19,2),
  RESOURCESCENE_ID     NUMBER(19),
  PAYMENTCYCLE_ID      NUMBER(19),
  APPLY_DEPT_ID        NUMBER(19),
  MAINPROVIDER_ID      NUMBER(19),
  WORKFLOW_ACTIVITY_ID NUMBER(19),
  BUILDING1TYPE_ID     NUMBER(19),
  REPORTAPPLY_ID       NUMBER(19),
  VICEPROVIDER_ID      NUMBER(19),
  ENTITY_CREATOR_ID    NUMBER(19),
  RESOURCE_UNIT_ID     NUMBER(19),
  ATTACHMENT_UNIT_ID   NUMBER(19),
  APPLY_ORG_ID         NUMBER(19),
  PAYTYPE_ID           NUMBER(19),
  BUILDING2TYPE_ID     NUMBER(19)
)
tablespace EPMSDEV
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.B_REPORT_APPLY_MANAGE
  add primary key (ID)
  using index 
  tablespace EPMSDEV
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.B_REPORT_APPLY_MANAGE
  add constraint FKF619B9442527CCF4 foreign key (REPORTAPPLY_ID)
  references FEE_HLJ.C_BUILDING1_TYPE (ID);
alter table FEE_HLJ.B_REPORT_APPLY_MANAGE
  add constraint FKF619B94430AF46EE foreign key (MAINPROVIDER_ID)
  references FEE_HLJ.C_PROVIDER (ID);
alter table FEE_HLJ.B_REPORT_APPLY_MANAGE
  add constraint FKF619B944468C2947 foreign key (PAYMENTCYCLE_ID)
  references FEE_HLJ.C_PAYMENT_CYCLE (ID);
alter table FEE_HLJ.B_REPORT_APPLY_MANAGE
  add constraint FKF619B9445BAB71D7 foreign key (BUILDING1TYPE_ID)
  references FEE_HLJ.C_BUILDING1_TYPE (ID);
alter table FEE_HLJ.B_REPORT_APPLY_MANAGE
  add constraint FKF619B9447D3296C0 foreign key (ENTITY_CREATOR_ID)
  references FEE_HLJ.S_PRIVILEGE_USER (ID);
alter table FEE_HLJ.B_REPORT_APPLY_MANAGE
  add constraint FKF619B9448C0358D2 foreign key (VICEPROVIDER_ID)
  references FEE_HLJ.C_PROVIDER (ID);
alter table FEE_HLJ.B_REPORT_APPLY_MANAGE
  add constraint FKF619B944967622C2 foreign key (APPLY_DEPT_ID)
  references FEE_HLJ.C_ORGANIZATION (ID);
alter table FEE_HLJ.B_REPORT_APPLY_MANAGE
  add constraint FKF619B944A29A3F85 foreign key (APPLY_ORG_ID)
  references FEE_HLJ.C_ORGANIZATION (ID);
alter table FEE_HLJ.B_REPORT_APPLY_MANAGE
  add constraint FKF619B944ABB64DE3 foreign key (RESOURCE_UNIT_ID)
  references FEE_HLJ.B_RESOURCE_UNIT (ID);
alter table FEE_HLJ.B_REPORT_APPLY_MANAGE
  add constraint FKF619B944C39AB637 foreign key (BUILDING2TYPE_ID)
  references FEE_HLJ.C_BUILDING2_TYPE (ID);
alter table FEE_HLJ.B_REPORT_APPLY_MANAGE
  add constraint FKF619B944DEFD0F5 foreign key (WORKFLOW_ACTIVITY_ID)
  references FEE_HLJ.W_WORKFLOW_ACTIVITY (ID);
alter table FEE_HLJ.B_REPORT_APPLY_MANAGE
  add constraint FKF619B944E6733ECD foreign key (PAYTYPE_ID)
  references FEE_HLJ.C_PAY_TYPE (ID);
alter table FEE_HLJ.B_REPORT_APPLY_MANAGE
  add constraint FKF619B944F379DB97 foreign key (RESOURCESCENE_ID)
  references FEE_HLJ.C_RESOURCE_SCENE (ID);
alter table FEE_HLJ.B_REPORT_APPLY_MANAGE
  add constraint FKF619B944F7258E38 foreign key (ATTACHMENT_UNIT_ID)
  references FEE_HLJ.B_ATTACHMENT_UNIT (ID);

prompt
prompt Creating table B_RESOURCE_ITEM
prompt ==============================
prompt
create table FEE_HLJ.B_RESOURCE_ITEM
(
  ID                 NUMBER(19) not null,
  ENTITY_CODE        VARCHAR2(255 CHAR),
  ENTITY_CREATE_DATE TIMESTAMP(6),
  ENTITY_DESC        VARCHAR2(4000 CHAR),
  FINISH_DATE        TIMESTAMP(6),
  ENTITY_NAME        VARCHAR2(255 CHAR),
  ENTITY_STATUS      VARCHAR2(100 CHAR),
  RESOURCE_UNIT_ID   NUMBER(19),
  RESOURCEPOINT_ID   NUMBER(19),
  ENTITY_CREATOR_ID  NUMBER(19)
)
tablespace EPMSDEV
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.B_RESOURCE_ITEM
  add primary key (ID)
  using index 
  tablespace EPMSDEV
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.B_RESOURCE_ITEM
  add constraint FKA13BEB877D3296C0 foreign key (ENTITY_CREATOR_ID)
  references FEE_HLJ.S_PRIVILEGE_USER (ID);
alter table FEE_HLJ.B_RESOURCE_ITEM
  add constraint FKA13BEB87B34FFCE4 foreign key (RESOURCE_UNIT_ID)
  references FEE_HLJ.B_RESOURCE_UNIT (ID);
alter table FEE_HLJ.B_RESOURCE_ITEM
  add constraint FKA13BEB87F830814E foreign key (RESOURCEPOINT_ID)
  references FEE_HLJ.B_RESOURCE_POINT (ID);

prompt
prompt Creating table B_ROOM_ORDER
prompt ===========================
prompt
create table FEE_HLJ.B_ROOM_ORDER
(
  ID                   NUMBER(19) not null,
  ENTITY_CODE          VARCHAR2(255 CHAR),
  ENTITY_CREATE_DATE   TIMESTAMP(6),
  ENTITY_DESC          VARCHAR2(4000 CHAR),
  FINISH_DATE          TIMESTAMP(6),
  ENTITY_NAME          VARCHAR2(255 CHAR),
  ENTITY_STATUS        VARCHAR2(100 CHAR),
  DELETED_FLAG         NUMBER(1),
  ENTITY_CREATOR_ID    NUMBER(19),
  ATTACHMENT_UNIT_ID   NUMBER(19),
  APPLY_ORG_ID         NUMBER(19),
  WORKFLOW_ACTIVITY_ID NUMBER(19),
  APPLY_DEPT_ID        NUMBER(19)
)
tablespace EPMSDEV
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.B_ROOM_ORDER
  add primary key (ID)
  using index 
  tablespace EPMSDEV
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.B_ROOM_ORDER
  add constraint FK7E57BEE77D3296C0 foreign key (ENTITY_CREATOR_ID)
  references FEE_HLJ.S_PRIVILEGE_USER (ID);
alter table FEE_HLJ.B_ROOM_ORDER
  add constraint FK7E57BEE7967622C2 foreign key (APPLY_DEPT_ID)
  references FEE_HLJ.C_ORGANIZATION (ID);
alter table FEE_HLJ.B_ROOM_ORDER
  add constraint FK7E57BEE7A29A3F85 foreign key (APPLY_ORG_ID)
  references FEE_HLJ.C_ORGANIZATION (ID);
alter table FEE_HLJ.B_ROOM_ORDER
  add constraint FK7E57BEE7DEFD0F5 foreign key (WORKFLOW_ACTIVITY_ID)
  references FEE_HLJ.W_WORKFLOW_ACTIVITY (ID);
alter table FEE_HLJ.B_ROOM_ORDER
  add constraint FK7E57BEE7F7258E38 foreign key (ATTACHMENT_UNIT_ID)
  references FEE_HLJ.B_ATTACHMENT_UNIT (ID);

prompt
prompt Creating table B_ROOM_ORDER_ADJUST
prompt ==================================
prompt
create table FEE_HLJ.B_ROOM_ORDER_ADJUST
(
  ID                   NUMBER(19) not null,
  ENTITY_CODE          VARCHAR2(255 CHAR),
  ENTITY_CREATE_DATE   TIMESTAMP(6),
  ENTITY_DESC          VARCHAR2(4000 CHAR),
  FINISH_DATE          TIMESTAMP(6),
  ENTITY_NAME          VARCHAR2(255 CHAR),
  ENTITY_STATUS        VARCHAR2(100 CHAR),
  DELETED_FLAG         NUMBER(1),
  WORKFLOW_ACTIVITY_ID NUMBER(19),
  APPLY_ORG_ID         NUMBER(19),
  ATTACHMENT_UNIT_ID   NUMBER(19),
  APPLY_DEPT_ID        NUMBER(19),
  ENTITY_CREATOR_ID    NUMBER(19)
)
tablespace EPMSDEV
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.B_ROOM_ORDER_ADJUST
  add primary key (ID)
  using index 
  tablespace EPMSDEV
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.B_ROOM_ORDER_ADJUST
  add constraint FK29EF33E77D3296C0 foreign key (ENTITY_CREATOR_ID)
  references FEE_HLJ.S_PRIVILEGE_USER (ID);
alter table FEE_HLJ.B_ROOM_ORDER_ADJUST
  add constraint FK29EF33E7967622C2 foreign key (APPLY_DEPT_ID)
  references FEE_HLJ.C_ORGANIZATION (ID);
alter table FEE_HLJ.B_ROOM_ORDER_ADJUST
  add constraint FK29EF33E7A29A3F85 foreign key (APPLY_ORG_ID)
  references FEE_HLJ.C_ORGANIZATION (ID);
alter table FEE_HLJ.B_ROOM_ORDER_ADJUST
  add constraint FK29EF33E7DEFD0F5 foreign key (WORKFLOW_ACTIVITY_ID)
  references FEE_HLJ.W_WORKFLOW_ACTIVITY (ID);
alter table FEE_HLJ.B_ROOM_ORDER_ADJUST
  add constraint FK29EF33E7F7258E38 foreign key (ATTACHMENT_UNIT_ID)
  references FEE_HLJ.B_ATTACHMENT_UNIT (ID);

prompt
prompt Creating table B_SCHEDULE_ACTIVITY
prompt ==================================
prompt
create table FEE_HLJ.B_SCHEDULE_ACTIVITY
(
  ID                 NUMBER(19) not null,
  ENTITY_CODE        VARCHAR2(255 CHAR),
  ENTITY_CREATE_DATE TIMESTAMP(6),
  ENTITY_DESC        VARCHAR2(4000 CHAR),
  FINISH_DATE        TIMESTAMP(6),
  ENTITY_NAME        VARCHAR2(255 CHAR),
  ENTITY_STATUS      VARCHAR2(100 CHAR),
  ENTITY_CREATOR_ID  NUMBER(19),
  ATTACHMENT_UNIT_ID NUMBER(19)
)
tablespace EPMSDEV
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.B_SCHEDULE_ACTIVITY
  add primary key (ID)
  using index 
  tablespace EPMSDEV
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.B_SCHEDULE_ACTIVITY
  add constraint FK463CE11A7D3296C0 foreign key (ENTITY_CREATOR_ID)
  references FEE_HLJ.S_PRIVILEGE_USER (ID);
alter table FEE_HLJ.B_SCHEDULE_ACTIVITY
  add constraint FK463CE11AF7258E38 foreign key (ATTACHMENT_UNIT_ID)
  references FEE_HLJ.B_ATTACHMENT_UNIT (ID);

prompt
prompt Creating table B_SCHEDULE_UNIT
prompt ==============================
prompt
create table FEE_HLJ.B_SCHEDULE_UNIT
(
  ID                 NUMBER(19) not null,
  ENTITY_CODE        VARCHAR2(255 CHAR),
  ENTITY_CREATE_DATE TIMESTAMP(6),
  ENTITY_DESC        VARCHAR2(4000 CHAR),
  FINISH_DATE        TIMESTAMP(6),
  ENTITY_NAME        VARCHAR2(255 CHAR),
  ENTITY_STATUS      VARCHAR2(100 CHAR),
  ENTITY_CREATOR_ID  NUMBER(19)
)
tablespace EPMSDEV
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.B_SCHEDULE_UNIT
  add primary key (ID)
  using index 
  tablespace EPMSDEV
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.B_SCHEDULE_UNIT
  add constraint FK9B4E850F7D3296C0 foreign key (ENTITY_CREATOR_ID)
  references FEE_HLJ.S_PRIVILEGE_USER (ID);

prompt
prompt Creating table C_DUTY_ORG
prompt =========================
prompt
create table FEE_HLJ.C_DUTY_ORG
(
  ID           NUMBER(19) not null,
  TYPE_CODE    VARCHAR2(255 CHAR),
  TYPE_DESC    VARCHAR2(255 CHAR),
  DELETED_FLAG NUMBER(1),
  TYPE_NAME    VARCHAR2(255 CHAR),
  PRIORITY     NUMBER(10)
)
tablespace EPMSDEV
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.C_DUTY_ORG
  add primary key (ID)
  using index 
  tablespace EPMSDEV
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table C_SCHEDULE_TYPE
prompt ==============================
prompt
create table FEE_HLJ.C_SCHEDULE_TYPE
(
  ID           NUMBER(19) not null,
  TYPE_CODE    VARCHAR2(128 CHAR),
  TYPE_DESC    VARCHAR2(512 CHAR),
  DELETED_FLAG NUMBER(10),
  TYPE_NAME    VARCHAR2(255 CHAR),
  PRIORITY     NUMBER(10),
  HAS_ACTIVITY NUMBER(10),
  LEVEL_NO     NUMBER(10),
  ORDER_ID     NUMBER(38,2),
  ACTIVITY_URL VARCHAR2(255 CHAR),
  TYPE         NUMBER(10),
  SPECIALTY_ID NUMBER(38,2),
  PARENT_ID    NUMBER(38,2),
  CREATE_URL   VARCHAR2(255 CHAR)
)
tablespace EPMSDEV
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.C_SCHEDULE_TYPE
  add primary key (ID)
  using index 
  tablespace EPMSDEV
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table B_SCHEDULE
prompt =========================
prompt
create table FEE_HLJ.B_SCHEDULE
(
  ID                         NUMBER(19) not null,
  ENTITY_CODE                VARCHAR2(255 CHAR),
  ENTITY_CREATE_DATE         TIMESTAMP(6),
  ENTITY_DESC                VARCHAR2(4000 CHAR),
  FINISH_DATE                TIMESTAMP(6),
  ENTITY_NAME                VARCHAR2(255 CHAR),
  ENTITY_STATUS              VARCHAR2(100 CHAR),
  AWOKE_DATE                 TIMESTAMP(6),
  BEGIN_DATE                 TIMESTAMP(6),
  END_DATE                   TIMESTAMP(6),
  HAS_ACTIVITY               NUMBER(1),
  IS_REQUIRED                NUMBER(1),
  PLAN_BEGIN_DATE            TIMESTAMP(6),
  PLAN_END_DATE              TIMESTAMP(6),
  PROGRESS                   NUMBER(19,2),
  WRITE_PLAN_BEGIN_DATE_FLAG NUMBER(19),
  WRITE_PLAN_END_DATE_FLAG   NUMBER(19),
  SCHEDULE_TYPE_ID           NUMBER(19),
  DUTY_ORG_ID                NUMBER(19),
  SCHEDULE_UNIT_ID           NUMBER(19),
  SCHEDULE_ACTIVITY_ID       NUMBER(19),
  ENTITY_CREATOR_ID          NUMBER(19)
)
tablespace EPMSDEV
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.B_SCHEDULE
  add primary key (ID)
  using index 
  tablespace EPMSDEV
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.B_SCHEDULE
  add constraint FK5FE911D42678C0EC foreign key (SCHEDULE_ACTIVITY_ID)
  references FEE_HLJ.B_SCHEDULE_ACTIVITY (ID);
alter table FEE_HLJ.B_SCHEDULE
  add constraint FK5FE911D47D3296C0 foreign key (ENTITY_CREATOR_ID)
  references FEE_HLJ.S_PRIVILEGE_USER (ID);
alter table FEE_HLJ.B_SCHEDULE
  add constraint FK5FE911D4A798660C foreign key (SCHEDULE_TYPE_ID)
  references FEE_HLJ.C_SCHEDULE_TYPE (ID);
alter table FEE_HLJ.B_SCHEDULE
  add constraint FK5FE911D4B0407B2A foreign key (DUTY_ORG_ID)
  references FEE_HLJ.C_DUTY_ORG (ID);
alter table FEE_HLJ.B_SCHEDULE
  add constraint FK5FE911D4C95DC9CC foreign key (SCHEDULE_UNIT_ID)
  references FEE_HLJ.B_SCHEDULE_UNIT (ID);

prompt
prompt Creating table B_SCHEDULE_TEMPLATE_EXTENSION
prompt ============================================
prompt
create table FEE_HLJ.B_SCHEDULE_TEMPLATE_EXTENSION
(
  ID          NUMBER(19) not null,
  DUTY_ORG_ID NUMBER(19)
)
tablespace EPMSDEV
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.B_SCHEDULE_TEMPLATE_EXTENSION
  add primary key (ID)
  using index 
  tablespace EPMSDEV
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table C_TOWER_RESOURE_TYPE
prompt ===================================
prompt
create table FEE_HLJ.C_TOWER_RESOURE_TYPE
(
  ID           NUMBER(19) not null,
  TYPE_CODE    VARCHAR2(255 CHAR),
  TYPE_DESC    VARCHAR2(255 CHAR),
  DELETED_FLAG NUMBER(1),
  TYPE_NAME    VARCHAR2(255 CHAR),
  PRIORITY     NUMBER(10)
)
tablespace EPMSDEV
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.C_TOWER_RESOURE_TYPE
  add primary key (ID)
  using index 
  tablespace EPMSDEV
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table B_SINGLE_STATION_COST_POLE
prompt =========================================
prompt
create table FEE_HLJ.B_SINGLE_STATION_COST_POLE
(
  ID                   NUMBER(19) not null,
  ENTITY_CODE          VARCHAR2(255 CHAR),
  ENTITY_CREATE_DATE   TIMESTAMP(6),
  ENTITY_DESC          VARCHAR2(4000 CHAR),
  FINISH_DATE          TIMESTAMP(6),
  ENTITY_NAME          VARCHAR2(255 CHAR),
  ENTITY_STATUS        VARCHAR2(100 CHAR),
  DELETED_FLAG         NUMBER(1),
  COST                 NUMBER(19,2),
  CITY_ID              NUMBER(19),
  RESOURE_ID           NUMBER(19),
  APPLY_ORG_ID         NUMBER(19),
  ENTITY_CREATOR_ID    NUMBER(19),
  ATTACHMENT_UNIT_ID   NUMBER(19),
  WORKFLOW_ACTIVITY_ID NUMBER(19),
  APPLY_DEPT_ID        NUMBER(19)
)
tablespace EPMSDEV
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.B_SINGLE_STATION_COST_POLE
  add primary key (ID)
  using index 
  tablespace EPMSDEV
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.B_SINGLE_STATION_COST_POLE
  add constraint FKA607D4A5744585BB foreign key (RESOURE_ID)
  references FEE_HLJ.C_TOWER_RESOURE_TYPE (ID);
alter table FEE_HLJ.B_SINGLE_STATION_COST_POLE
  add constraint FKA607D4A57D3296C0 foreign key (ENTITY_CREATOR_ID)
  references FEE_HLJ.S_PRIVILEGE_USER (ID);
alter table FEE_HLJ.B_SINGLE_STATION_COST_POLE
  add constraint FKA607D4A5967622C2 foreign key (APPLY_DEPT_ID)
  references FEE_HLJ.C_ORGANIZATION (ID);
alter table FEE_HLJ.B_SINGLE_STATION_COST_POLE
  add constraint FKA607D4A5A29A3F85 foreign key (APPLY_ORG_ID)
  references FEE_HLJ.C_ORGANIZATION (ID);
alter table FEE_HLJ.B_SINGLE_STATION_COST_POLE
  add constraint FKA607D4A5D74E11AD foreign key (CITY_ID)
  references FEE_HLJ.C_ORGANIZATION (ID);
alter table FEE_HLJ.B_SINGLE_STATION_COST_POLE
  add constraint FKA607D4A5DEFD0F5 foreign key (WORKFLOW_ACTIVITY_ID)
  references FEE_HLJ.W_WORKFLOW_ACTIVITY (ID);
alter table FEE_HLJ.B_SINGLE_STATION_COST_POLE
  add constraint FKA607D4A5F7258E38 foreign key (ATTACHMENT_UNIT_ID)
  references FEE_HLJ.B_ATTACHMENT_UNIT (ID);

prompt
prompt Creating table B_START_RENT
prompt ===========================
prompt
create table FEE_HLJ.B_START_RENT
(
  ID                   NUMBER(19) not null,
  ENTITY_CODE          VARCHAR2(255 CHAR),
  ENTITY_CREATE_DATE   TIMESTAMP(6),
  ENTITY_DESC          VARCHAR2(4000 CHAR),
  FINISH_DATE          TIMESTAMP(6),
  ENTITY_NAME          VARCHAR2(255 CHAR),
  ENTITY_STATUS        VARCHAR2(100 CHAR),
  DELETED_FLAG         NUMBER(1),
  ENTITY_CREATOR_ID    NUMBER(19),
  APPLY_DEPT_ID        NUMBER(19),
  ATTACHMENT_UNIT_ID   NUMBER(19),
  APPLY_ORG_ID         NUMBER(19),
  WORKFLOW_ACTIVITY_ID NUMBER(19)
)
tablespace EPMSDEV
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.B_START_RENT
  add primary key (ID)
  using index 
  tablespace EPMSDEV
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.B_START_RENT
  add constraint FK4BDDB1337D3296C0 foreign key (ENTITY_CREATOR_ID)
  references FEE_HLJ.S_PRIVILEGE_USER (ID);
alter table FEE_HLJ.B_START_RENT
  add constraint FK4BDDB133967622C2 foreign key (APPLY_DEPT_ID)
  references FEE_HLJ.C_ORGANIZATION (ID);
alter table FEE_HLJ.B_START_RENT
  add constraint FK4BDDB133A29A3F85 foreign key (APPLY_ORG_ID)
  references FEE_HLJ.C_ORGANIZATION (ID);
alter table FEE_HLJ.B_START_RENT
  add constraint FK4BDDB133DEFD0F5 foreign key (WORKFLOW_ACTIVITY_ID)
  references FEE_HLJ.W_WORKFLOW_ACTIVITY (ID);
alter table FEE_HLJ.B_START_RENT
  add constraint FK4BDDB133F7258E38 foreign key (ATTACHMENT_UNIT_ID)
  references FEE_HLJ.B_ATTACHMENT_UNIT (ID);

prompt
prompt Creating table B_START_RENT_ADJUST
prompt ==================================
prompt
create table FEE_HLJ.B_START_RENT_ADJUST
(
  ID                   NUMBER(19) not null,
  ENTITY_CODE          VARCHAR2(255 CHAR),
  ENTITY_CREATE_DATE   TIMESTAMP(6),
  ENTITY_DESC          VARCHAR2(4000 CHAR),
  FINISH_DATE          TIMESTAMP(6),
  ENTITY_NAME          VARCHAR2(255 CHAR),
  ENTITY_STATUS        VARCHAR2(100 CHAR),
  DELETED_FLAG         NUMBER(1),
  ENTITY_CREATOR_ID    NUMBER(19),
  APPLY_DEPT_ID        NUMBER(19),
  ATTACHMENT_UNIT_ID   NUMBER(19),
  WORKFLOW_ACTIVITY_ID NUMBER(19),
  APPLY_ORG_ID         NUMBER(19)
)
tablespace EPMSDEV
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.B_START_RENT_ADJUST
  add primary key (ID)
  using index 
  tablespace EPMSDEV
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.B_START_RENT_ADJUST
  add constraint FKC00E541B7D3296C0 foreign key (ENTITY_CREATOR_ID)
  references FEE_HLJ.S_PRIVILEGE_USER (ID);
alter table FEE_HLJ.B_START_RENT_ADJUST
  add constraint FKC00E541B967622C2 foreign key (APPLY_DEPT_ID)
  references FEE_HLJ.C_ORGANIZATION (ID);
alter table FEE_HLJ.B_START_RENT_ADJUST
  add constraint FKC00E541BA29A3F85 foreign key (APPLY_ORG_ID)
  references FEE_HLJ.C_ORGANIZATION (ID);
alter table FEE_HLJ.B_START_RENT_ADJUST
  add constraint FKC00E541BDEFD0F5 foreign key (WORKFLOW_ACTIVITY_ID)
  references FEE_HLJ.W_WORKFLOW_ACTIVITY (ID);
alter table FEE_HLJ.B_START_RENT_ADJUST
  add constraint FKC00E541BF7258E38 foreign key (ATTACHMENT_UNIT_ID)
  references FEE_HLJ.B_ATTACHMENT_UNIT (ID);

prompt
prompt Creating table C_PROPERTY_RIGHT_TYPE
prompt ====================================
prompt
create table FEE_HLJ.C_PROPERTY_RIGHT_TYPE
(
  ID           NUMBER(19) not null,
  TYPE_CODE    VARCHAR2(255 CHAR),
  TYPE_DESC    VARCHAR2(255 CHAR),
  DELETED_FLAG NUMBER(1),
  TYPE_NAME    VARCHAR2(255 CHAR),
  PRIORITY     NUMBER(10)
)
tablespace EPMSDEV
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.C_PROPERTY_RIGHT_TYPE
  add primary key (ID)
  using index 
  tablespace EPMSDEV
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table C_PROPERTY_RIGHT_TYPE_RENT
prompt =========================================
prompt
create table FEE_HLJ.C_PROPERTY_RIGHT_TYPE_RENT
(
  ID           NUMBER(19) not null,
  TYPE_CODE    VARCHAR2(255 CHAR),
  TYPE_DESC    VARCHAR2(255 CHAR),
  DELETED_FLAG NUMBER(1),
  TYPE_NAME    VARCHAR2(255 CHAR),
  PRIORITY     NUMBER(10)
)
tablespace EPMSDEV
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.C_PROPERTY_RIGHT_TYPE_RENT
  add primary key (ID)
  using index 
  tablespace EPMSDEV
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table B_TASKSTART_RENT
prompt ===============================
prompt
create table FEE_HLJ.B_TASKSTART_RENT
(
  ID                    NUMBER(19) not null,
  ENTITY_CODE           VARCHAR2(255 CHAR),
  ENTITY_CREATE_DATE    TIMESTAMP(6),
  ENTITY_DESC           VARCHAR2(4000 CHAR),
  FINISH_DATE           TIMESTAMP(6),
  ENTITY_NAME           VARCHAR2(255 CHAR),
  ENTITY_STATUS         VARCHAR2(100 CHAR),
  ADDRESS               VARCHAR2(255 CHAR),
  ANTENNA_NUMBER        VARCHAR2(50 CHAR),
  BACKUP_DURATION       VARCHAR2(10 CHAR),
  BBU_PLACED            NUMBER(1),
  BBU_SERVER_FEE        VARCHAR2(50 CHAR),
  BUILT_AREA            VARCHAR2(255 CHAR),
  DEMAND_NUMBER         VARCHAR2(255 CHAR),
  EXTRA_BATTERY_FEE     VARCHAR2(50 CHAR),
  EXTRA_SERVER_FEE      VARCHAR2(50 CHAR),
  HANGING_HIGH          VARCHAR2(150 CHAR),
  IS_CHOICE_POWER       VARCHAR2(10 CHAR),
  IS_ONTOWER            VARCHAR2(10 CHAR),
  IS_POWER_CONDITIONS   VARCHAR2(10 CHAR),
  ISRRU_ONTOWER         VARCHAR2(10 CHAR),
  LATITUDE              VARCHAR2(50 CHAR),
  LONGITUDE             VARCHAR2(50 CHAR),
  LUMP_SUM_TARIFF       VARCHAR2(50 CHAR),
  MAINTENANCE_FEE       VARCHAR2(50 CHAR),
  MAINTEN_FEED_ISCOUNT  VARCHAR2(50 CHAR),
  MAINTEN_LEVEL         VARCHAR2(10 CHAR),
  OLIPOWER_SUPPORT      VARCHAR2(50 CHAR),
  OLISERVER_FEE         VARCHAR2(50 CHAR),
  OTHER_FEE             VARCHAR2(50 CHAR),
  OTHER_FEE_DESCRIPTION VARCHAR2(50 CHAR),
  POWERIN_FEE           VARCHAR2(50 CHAR),
  POWERINFEE_DISCOUNT   VARCHAR2(50 CHAR),
  POWER_SUPPORT         VARCHAR2(50 CHAR),
  PRODUCT_SCENE         VARCHAR2(255 CHAR),
  PRODUCT_TYPE          VARCHAR2(255 CHAR),
  PRODUCT_CONFIG        VARCHAR2(150 CHAR),
  PRODUCT_NUMBER        VARCHAR2(50 CHAR),
  ROOM_DATUM_PRICE      VARCHAR2(50 CHAR),
  ROOM_SHARE_USERS      VARCHAR2(50 CHAR),
  ROOM_SHARE_DISCOUNT   VARCHAR2(50 CHAR),
  ROOM_ADD_USERS        VARCHAR2(50 CHAR),
  ROOM_CONFIG           VARCHAR2(150 CHAR),
  SERVER_END_DATE       TIMESTAMP(6),
  SERVER_START_DATE     TIMESTAMP(6),
  SHARE_INFO            VARCHAR2(255 CHAR),
  SITE_FEE              VARCHAR2(50 CHAR),
  SITE_FEE_DISCOUNT     VARCHAR2(50 CHAR),
  SYSTEM_NUMBER         VARCHAR2(50 CHAR),
  TASK_CODE             VARCHAR2(255 CHAR),
  TASK_NAME             VARCHAR2(456 CHAR),
  TOTAL_SERVICE_FEE     VARCHAR2(50 CHAR),
  TOTAL_SERVICE_FEE_NO  VARCHAR2(50 CHAR),
  TOWER_DATUM_PRICE     VARCHAR2(50 CHAR),
  TOWER_SHARE_USERS     VARCHAR2(50 CHAR),
  TOWER_SHARE_DISCOUNT  VARCHAR2(50 CHAR),
  TOWER_TASK_CODE       VARCHAR2(255 CHAR),
  TOWER_TYPE            VARCHAR2(150 CHAR),
  TOWER_ADD_USERS       VARCHAR2(50 CHAR),
  WBSTASK_NAME          VARCHAR2(255 CHAR),
  ATTACHMENT_UNIT_ID    NUMBER(19),
  ENTITY_CREATOR_ID     NUMBER(19),
  REGION_ID             NUMBER(19),
  PROPERTYTYPE_ID       NUMBER(19),
  PROPERTYTYPE_RENT_ID  NUMBER(19)
)
tablespace EPMSDEV
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.B_TASKSTART_RENT
  add primary key (ID)
  using index 
  tablespace EPMSDEV
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.B_TASKSTART_RENT
  add constraint FK33CA3DF83A9D0D6B foreign key (PROPERTYTYPE_ID)
  references FEE_HLJ.C_PROPERTY_RIGHT_TYPE (ID);
alter table FEE_HLJ.B_TASKSTART_RENT
  add constraint FK33CA3DF87D3296C0 foreign key (ENTITY_CREATOR_ID)
  references FEE_HLJ.S_PRIVILEGE_USER (ID);
alter table FEE_HLJ.B_TASKSTART_RENT
  add constraint FK33CA3DF8ACEBAB84 foreign key (REGION_ID)
  references FEE_HLJ.C_ORGANIZATION (ID);
alter table FEE_HLJ.B_TASKSTART_RENT
  add constraint FK33CA3DF8F7258E38 foreign key (ATTACHMENT_UNIT_ID)
  references FEE_HLJ.B_ATTACHMENT_UNIT (ID);
alter table FEE_HLJ.B_TASKSTART_RENT
  add constraint PROPERTYTYPERENTID foreign key (PROPERTYTYPE_RENT_ID)
  references FEE_HLJ.C_PROPERTY_RIGHT_TYPE_RENT (ID);

prompt
prompt Creating table B_START_RENT_TEMP
prompt ================================
prompt
create table FEE_HLJ.B_START_RENT_TEMP
(
  ID                    NUMBER(19) not null,
  ENTITY_CODE           VARCHAR2(255 CHAR),
  ENTITY_CREATE_DATE    TIMESTAMP(6),
  ENTITY_DESC           VARCHAR2(4000 CHAR),
  FINISH_DATE           TIMESTAMP(6),
  ENTITY_NAME           VARCHAR2(255 CHAR),
  ENTITY_STATUS         VARCHAR2(100 CHAR),
  ADDRESS               VARCHAR2(255 CHAR),
  ANTENNA_NUMBER        VARCHAR2(50 CHAR),
  BACKUP_DURATION       VARCHAR2(10 CHAR),
  BBU_PLACED            NUMBER(1),
  BBU_SERVER_FEE        VARCHAR2(50 CHAR),
  BUILT_AREA            VARCHAR2(255 CHAR),
  DEMAND_NUMBER         VARCHAR2(255 CHAR),
  EXTRA_BATTERY_FEE     VARCHAR2(50 CHAR),
  EXTRA_SERVER_FEE      VARCHAR2(50 CHAR),
  HANGING_HIGH          VARCHAR2(150 CHAR),
  IS_CHOICE_POWER       VARCHAR2(10 CHAR),
  IS_ONTOWER            VARCHAR2(10 CHAR),
  IS_POWER_CONDITIONS   VARCHAR2(10 CHAR),
  ISRRU_ONTOWER         VARCHAR2(10 CHAR),
  LATITUDE              VARCHAR2(50 CHAR),
  LONGITUDE             VARCHAR2(50 CHAR),
  LUMP_SUM_TARIFF       VARCHAR2(50 CHAR),
  MAINTENANCE_FEE       VARCHAR2(50 CHAR),
  MAINTEN_FEED_ISCOUNT  VARCHAR2(50 CHAR),
  MAINTEN_LEVEL         VARCHAR2(10 CHAR),
  OLIPOWER_SUPPORT      VARCHAR2(50 CHAR),
  OLISERVER_FEE         VARCHAR2(50 CHAR),
  OTHER_FEE             VARCHAR2(50 CHAR),
  OTHER_FEE_DESCRIPTION VARCHAR2(50 CHAR),
  POWERIN_FEE           VARCHAR2(50 CHAR),
  POWERINFEE_DISCOUNT   VARCHAR2(50 CHAR),
  POWER_SUPPORT         VARCHAR2(50 CHAR),
  PRODUCT_SCENE         VARCHAR2(255 CHAR),
  PRODUCT_TYPE          VARCHAR2(255 CHAR),
  PRODUCT_CONFIG        VARCHAR2(150 CHAR),
  PRODUCT_NUMBER        VARCHAR2(50 CHAR),
  ROOM_DATUM_PRICE      VARCHAR2(50 CHAR),
  ROOM_SHARE_USERS      VARCHAR2(50 CHAR),
  ROOM_SHARE_DISCOUNT   VARCHAR2(50 CHAR),
  ROOM_ADD_USERS        VARCHAR2(50 CHAR),
  ROOM_CONFIG           VARCHAR2(150 CHAR),
  SERVER_END_DATE       TIMESTAMP(6),
  SERVER_START_DATE     TIMESTAMP(6),
  SHARE_INFO            VARCHAR2(255 CHAR),
  SITE_FEE              VARCHAR2(50 CHAR),
  SITE_FEE_DISCOUNT     VARCHAR2(50 CHAR),
  SYSTEM_NUMBER         VARCHAR2(50 CHAR),
  TASK_CODE             VARCHAR2(255 CHAR),
  TASK_NAME             VARCHAR2(456 CHAR),
  TOTAL_SERVICE_FEE     VARCHAR2(50 CHAR),
  TOTAL_SERVICE_FEE_NO  VARCHAR2(50 CHAR),
  TOWER_DATUM_PRICE     VARCHAR2(50 CHAR),
  TOWER_SHARE_USERS     VARCHAR2(50 CHAR),
  TOWER_SHARE_DISCOUNT  VARCHAR2(50 CHAR),
  TOWER_TASK_CODE       VARCHAR2(255 CHAR),
  TOWER_TYPE            VARCHAR2(150 CHAR),
  TOWER_ADD_USERS       VARCHAR2(50 CHAR),
  WBSTASK_NAME          VARCHAR2(255 CHAR),
  STARTRENT_ID          NUMBER(19),
  ATTACHMENT_UNIT_ID    NUMBER(19),
  ENTITY_CREATOR_ID     NUMBER(19),
  PROPERTYTYPE_ID       NUMBER(19),
  REGION_ID             NUMBER(19),
  PROPERTYTYPE_RENT_ID  NUMBER(19)
)
tablespace EPMSDEV
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.B_START_RENT_TEMP
  add primary key (ID)
  using index 
  tablespace EPMSDEV
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.B_START_RENT_TEMP
  add constraint FKFC8113603A9D0D6B foreign key (PROPERTYTYPE_ID)
  references FEE_HLJ.C_PROPERTY_RIGHT_TYPE (ID);
alter table FEE_HLJ.B_START_RENT_TEMP
  add constraint FKFC8113607534EC14 foreign key (STARTRENT_ID)
  references FEE_HLJ.B_TASKSTART_RENT (ID);
alter table FEE_HLJ.B_START_RENT_TEMP
  add constraint FKFC8113607D3296C0 foreign key (ENTITY_CREATOR_ID)
  references FEE_HLJ.S_PRIVILEGE_USER (ID);
alter table FEE_HLJ.B_START_RENT_TEMP
  add constraint FKFC811360ACEBAB84 foreign key (REGION_ID)
  references FEE_HLJ.C_ORGANIZATION (ID);
alter table FEE_HLJ.B_START_RENT_TEMP
  add constraint FKFC811360F7258E38 foreign key (ATTACHMENT_UNIT_ID)
  references FEE_HLJ.B_ATTACHMENT_UNIT (ID);
alter table FEE_HLJ.B_START_RENT_TEMP
  add constraint TEMPPROPERTYTYPERENTID foreign key (PROPERTYTYPE_RENT_ID)
  references FEE_HLJ.C_PROPERTY_RIGHT_TYPE_RENT (ID);

prompt
prompt Creating table B_TOWER_MAINTAIN_COE
prompt ===================================
prompt
create table FEE_HLJ.B_TOWER_MAINTAIN_COE
(
  ID                 NUMBER(19) not null,
  ENTITY_CODE        VARCHAR2(255 CHAR),
  ENTITY_CREATE_DATE TIMESTAMP(6),
  ENTITY_DESC        VARCHAR2(4000 CHAR),
  FINISH_DATE        TIMESTAMP(6),
  ENTITY_NAME        VARCHAR2(255 CHAR),
  ENTITY_STATUS      VARCHAR2(100 CHAR),
  PARM               NUMBER(21,4),
  REGION_ID          NUMBER(19),
  CITY_ID            NUMBER(19),
  ENTITY_CREATOR_ID  NUMBER(19),
  DPARM              NUMBER(21,4)
)
tablespace EPMSDEV
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.B_TOWER_MAINTAIN_COE
  add primary key (ID)
  using index 
  tablespace EPMSDEV
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.B_TOWER_MAINTAIN_COE
  add constraint FKDF30F9387D3296C0 foreign key (ENTITY_CREATOR_ID)
  references FEE_HLJ.S_PRIVILEGE_USER (ID);
alter table FEE_HLJ.B_TOWER_MAINTAIN_COE
  add constraint FKDF30F938ACEBAB84 foreign key (REGION_ID)
  references FEE_HLJ.C_ORGANIZATION (ID);
alter table FEE_HLJ.B_TOWER_MAINTAIN_COE
  add constraint FKDF30F938D74E11AD foreign key (CITY_ID)
  references FEE_HLJ.C_ORGANIZATION (ID);

prompt
prompt Creating table B_USER_CUSTOMIZE_RELATIONS
prompt =========================================
prompt
create table FEE_HLJ.B_USER_CUSTOMIZE_RELATIONS
(
  USER_ID         NUMBER(19) not null,
  CURRENT_USER_ID NUMBER(19) not null
)
tablespace EPMSDEV
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table C_PAYMENT_TYPE
prompt =============================
prompt
create table FEE_HLJ.C_PAYMENT_TYPE
(
  ID           NUMBER(19) not null,
  TYPE_CODE    VARCHAR2(255 CHAR),
  TYPE_DESC    VARCHAR2(255 CHAR),
  DELETED_FLAG NUMBER(1),
  TYPE_NAME    VARCHAR2(255 CHAR),
  PRIORITY     NUMBER(10)
)
tablespace EPMSDEV
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.C_PAYMENT_TYPE
  add primary key (ID)
  using index 
  tablespace EPMSDEV
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table C_WARING_TYPE
prompt ============================
prompt
create table FEE_HLJ.C_WARING_TYPE
(
  ID           NUMBER(19) not null,
  TYPE_CODE    VARCHAR2(255 CHAR),
  TYPE_DESC    VARCHAR2(255 CHAR),
  DELETED_FLAG NUMBER(1),
  TYPE_NAME    VARCHAR2(255 CHAR),
  PRIORITY     NUMBER(10)
)
tablespace EPMSDEV
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.C_WARING_TYPE
  add primary key (ID)
  using index 
  tablespace EPMSDEV
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table B_WARING_MARK
prompt ============================
prompt
create table FEE_HLJ.B_WARING_MARK
(
  ID                 NUMBER(19) not null,
  ENTITY_CODE        VARCHAR2(255 CHAR),
  ENTITY_CREATE_DATE TIMESTAMP(6),
  ENTITY_DESC        VARCHAR2(4000 CHAR),
  FINISH_DATE        TIMESTAMP(6),
  ENTITY_NAME        VARCHAR2(255 CHAR),
  ENTITY_STATUS      VARCHAR2(100 CHAR),
  WARING_CONTENT     VARCHAR2(255 CHAR),
  WARING_URL         VARCHAR2(255 CHAR),
  MESSAGE_ID         NUMBER(19),
  WARING_TYPE_ID     NUMBER(19),
  PAYMENT_TYPE_ID    NUMBER(19),
  ENTITY_CREATOR_ID  NUMBER(19)
)
tablespace EPMSDEV
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.B_WARING_MARK
  add primary key (ID)
  using index 
  tablespace EPMSDEV
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.B_WARING_MARK
  add constraint FK12B03957D3296C0 foreign key (ENTITY_CREATOR_ID)
  references FEE_HLJ.S_PRIVILEGE_USER (ID);
alter table FEE_HLJ.B_WARING_MARK
  add constraint FK12B03957E3BECF foreign key (WARING_TYPE_ID)
  references FEE_HLJ.C_WARING_TYPE (ID);
alter table FEE_HLJ.B_WARING_MARK
  add constraint FK12B0395CE82C12F foreign key (MESSAGE_ID)
  references FEE_HLJ.B_MESSAGE (ID);
alter table FEE_HLJ.B_WARING_MARK
  add constraint FK12B0395E3531E7 foreign key (PAYMENT_TYPE_ID)
  references FEE_HLJ.C_PAYMENT_TYPE (ID);

prompt
prompt Creating table B_WARING_MARK_DETAIL
prompt ===================================
prompt
create table FEE_HLJ.B_WARING_MARK_DETAIL
(
  ID             NUMBER(19) not null,
  CITY_ID        NUMBER(19),
  WARING_MARK_ID NUMBER(19),
  REGION_ID      NUMBER(19)
)
tablespace EPMSDEV
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.B_WARING_MARK_DETAIL
  add primary key (ID)
  using index 
  tablespace EPMSDEV
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.B_WARING_MARK_DETAIL
  add constraint FKD3E4D03B6CBF31EF foreign key (WARING_MARK_ID)
  references FEE_HLJ.B_WARING_MARK (ID);
alter table FEE_HLJ.B_WARING_MARK_DETAIL
  add constraint FKD3E4D03BACEBAB84 foreign key (REGION_ID)
  references FEE_HLJ.C_ORGANIZATION (ID);
alter table FEE_HLJ.B_WARING_MARK_DETAIL
  add constraint FKD3E4D03BD74E11AD foreign key (CITY_ID)
  references FEE_HLJ.C_ORGANIZATION (ID);

prompt
prompt Creating table B_WBSTASK_BASIC_MANAGE
prompt =====================================
prompt
create table FEE_HLJ.B_WBSTASK_BASIC_MANAGE
(
  ID                   NUMBER(19) not null,
  ENTITY_CODE          VARCHAR2(255 CHAR),
  ENTITY_CREATE_DATE   TIMESTAMP(6),
  ENTITY_DESC          VARCHAR2(4000 CHAR),
  FINISH_DATE          TIMESTAMP(6),
  ENTITY_NAME          VARCHAR2(255 CHAR),
  ENTITY_STATUS        VARCHAR2(100 CHAR),
  DELETED_FLAG         NUMBER(1),
  WORKFLOW_ACTIVITY_ID NUMBER(19),
  APPLY_DEPT_ID        NUMBER(19),
  APPLY_ORG_ID         NUMBER(19),
  ENTITY_CREATOR_ID    NUMBER(19),
  ATTACHMENT_UNIT_ID   NUMBER(19),
  PROPERTY_TYPE        VARCHAR2(255 CHAR)
)
tablespace EPMSDEV
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.B_WBSTASK_BASIC_MANAGE
  add primary key (ID)
  using index 
  tablespace EPMSDEV
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.B_WBSTASK_BASIC_MANAGE
  add constraint FKA4D99CC57D3296C0 foreign key (ENTITY_CREATOR_ID)
  references FEE_HLJ.S_PRIVILEGE_USER (ID);
alter table FEE_HLJ.B_WBSTASK_BASIC_MANAGE
  add constraint FKA4D99CC5967622C2 foreign key (APPLY_DEPT_ID)
  references FEE_HLJ.C_ORGANIZATION (ID);
alter table FEE_HLJ.B_WBSTASK_BASIC_MANAGE
  add constraint FKA4D99CC5A29A3F85 foreign key (APPLY_ORG_ID)
  references FEE_HLJ.C_ORGANIZATION (ID);
alter table FEE_HLJ.B_WBSTASK_BASIC_MANAGE
  add constraint FKA4D99CC5DEFD0F5 foreign key (WORKFLOW_ACTIVITY_ID)
  references FEE_HLJ.W_WORKFLOW_ACTIVITY (ID);
alter table FEE_HLJ.B_WBSTASK_BASIC_MANAGE
  add constraint FKA4D99CC5F7258E38 foreign key (ATTACHMENT_UNIT_ID)
  references FEE_HLJ.B_ATTACHMENT_UNIT (ID);

prompt
prompt Creating table C_CONSTRUCTION_TYPE
prompt ==================================
prompt
create table FEE_HLJ.C_CONSTRUCTION_TYPE
(
  ID           NUMBER(19) not null,
  TYPE_CODE    VARCHAR2(255 CHAR),
  TYPE_DESC    VARCHAR2(255 CHAR),
  DELETED_FLAG NUMBER(1),
  TYPE_NAME    VARCHAR2(255 CHAR),
  PRIORITY     NUMBER(10)
)
tablespace EPMSDEV
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.C_CONSTRUCTION_TYPE
  add primary key (ID)
  using index 
  tablespace EPMSDEV
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table C_PRODUCT_MOLD_TYPE
prompt ==================================
prompt
create table FEE_HLJ.C_PRODUCT_MOLD_TYPE
(
  ID           NUMBER(19) not null,
  TYPE_CODE    VARCHAR2(255 CHAR),
  TYPE_DESC    VARCHAR2(255 CHAR),
  DELETED_FLAG NUMBER(1),
  TYPE_NAME    VARCHAR2(255 CHAR),
  PRIORITY     NUMBER(10)
)
tablespace EPMSDEV
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.C_PRODUCT_MOLD_TYPE
  add primary key (ID)
  using index 
  tablespace EPMSDEV
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table C_PRODUCT_TYPE
prompt =============================
prompt
create table FEE_HLJ.C_PRODUCT_TYPE
(
  ID           NUMBER(19) not null,
  TYPE_CODE    VARCHAR2(255 CHAR),
  TYPE_DESC    VARCHAR2(255 CHAR),
  DELETED_FLAG NUMBER(1),
  TYPE_NAME    VARCHAR2(255 CHAR),
  PRIORITY     NUMBER(10)
)
tablespace EPMSDEV
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 16K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.C_PRODUCT_TYPE
  add primary key (ID)
  using index 
  tablespace EPMSDEV
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table C_ROOM_TYPE
prompt ==========================
prompt
create table FEE_HLJ.C_ROOM_TYPE
(
  ID           NUMBER(19) not null,
  TYPE_CODE    VARCHAR2(255 CHAR),
  TYPE_DESC    VARCHAR2(255 CHAR),
  DELETED_FLAG NUMBER(1),
  TYPE_NAME    VARCHAR2(255 CHAR),
  PRIORITY     NUMBER(10)
)
tablespace EPMSDEV
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.C_ROOM_TYPE
  add primary key (ID)
  using index 
  tablespace EPMSDEV
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table C_SITE_ATTRIBUTE_TYPE
prompt ====================================
prompt
create table FEE_HLJ.C_SITE_ATTRIBUTE_TYPE
(
  ID           NUMBER(19) not null,
  TYPE_CODE    VARCHAR2(255 CHAR),
  TYPE_DESC    VARCHAR2(255 CHAR),
  DELETED_FLAG NUMBER(1),
  TYPE_NAME    VARCHAR2(255 CHAR),
  PRIORITY     NUMBER(10)
)
tablespace EPMSDEV
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.C_SITE_ATTRIBUTE_TYPE
  add primary key (ID)
  using index 
  tablespace EPMSDEV
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table B_WBSTASK_BASIC_INFO
prompt ===================================
prompt
create table FEE_HLJ.B_WBSTASK_BASIC_INFO
(
  ID                   NUMBER(19) not null,
  ENTITY_CODE          VARCHAR2(255 CHAR),
  ENTITY_CREATE_DATE   TIMESTAMP(6),
  ENTITY_DESC          VARCHAR2(4000 CHAR),
  FINISH_DATE          TIMESTAMP(6),
  ENTITY_NAME          VARCHAR2(255 CHAR),
  ENTITY_STATUS        VARCHAR2(100 CHAR),
  ANTENNA1_NUMBER      NUMBER(10),
  ANTENNA2_NUMBER      NUMBER(10),
  ANTENNA3_NUMBER      NUMBER(10),
  CONSTRUCTION_FEE     NUMBER(19,2),
  COVERAGE_AREA        NUMBER(19,4),
  IS_ADD               NUMBER(1),
  ISBBUONROOM1         NUMBER(1),
  ISBBUONROOM2         NUMBER(1),
  ISBBUONROOM3         NUMBER(1),
  ISBBUONROOMTYPE1     VARCHAR2(255 CHAR),
  ISBBUONROOMTYPE2     VARCHAR2(255 CHAR),
  ISBBUONROOMTYPE3     VARCHAR2(255 CHAR),
  ISRRUONTOWER1        NUMBER(1),
  ISRRUONTOWER2        NUMBER(1),
  ISRRUONTOWER3        NUMBER(1),
  OIL_FEE              NUMBER(19,2),
  POWERIN_FEE          NUMBER(19,2),
  PRODUCT1_HIGH        NUMBER(19,4),
  PRODUCT1_SYSTEM      NUMBER(10),
  PRODUCT2_HIGH        NUMBER(19,4),
  PRODUCT2_SYSTEM      NUMBER(10),
  PRODUCT3_HIGH        NUMBER(19,4),
  PRODUCT3_SYSTEM      NUMBER(10),
  PRODUCT_NUMBER       NUMBER(19,2),
  RESOURCE_NAME        VARCHAR2(255 CHAR),
  ROOM_SHARE_NUM       NUMBER(10),
  SITE_FEE             NUMBER(19,2),
  STEEL_ON_FRAME       NUMBER(1),
  TOWER_SHARE_NUM      NUMBER(10),
  WIND_PRESSURE        NUMBER(19,4),
  TOWERTYPE_ID         NUMBER(19),
  CONSTRUCTIONTYPE_ID  NUMBER(19),
  CITY_ID              NUMBER(19),
  PROPERTYTYPE_ID      NUMBER(19),
  ROOMTYPE_ID          NUMBER(19),
  ROOMDETAILTYPE_ID    NUMBER(19),
  TOWERDETAILTYPE_ID   NUMBER(19),
  ENTITY_CREATOR_ID    NUMBER(19),
  CITYTYPE_ID          NUMBER(19),
  REGION_ID            NUMBER(19),
  POWERIN_BUILD_FEE    NUMBER(19,2),
  MANAGE_ID            NUMBER(19),
  ADJUST_INVEST        VARCHAR2(255 CHAR),
  ANCHOR_TENANT        VARCHAR2(255 CHAR),
  BASE_STATION         VARCHAR2(255 CHAR),
  BUSINESS_CODE        VARCHAR2(255 CHAR),
  DEVICE_STANDARD      VARCHAR2(255 CHAR),
  ELECTRIC_FEE         NUMBER(19,2),
  EXCLUSIVE_SHARING    VARCHAR2(255 CHAR),
  HIGH_RANGE           VARCHAR2(255 CHAR),
  IS_DISMANTLE         NUMBER(1),
  IS_INTEGRATE         NUMBER(1),
  IS_LEASE             NUMBER(1),
  IS_MACHINEROOM       NUMBER(1),
  IS_OIL_SERVICE       NUMBER(1),
  IS_POWER_SERVICE     NUMBER(1),
  IS_RRU               NUMBER(1),
  IS_SENIOR            NUMBER(1),
  IS_SIGN              NUMBER(1),
  IS_TOWER             NUMBER(1),
  IS_TOWERROOM         NUMBER(1),
  IS_UP_TOWER          NUMBER(1),
  MAINTENANCE_FEE      NUMBER(19,2),
  MANUAL_DATE          TIMESTAMP(6),
  OIL_USE_FEE          NUMBER(19,2),
  OPERATOR_CODE        VARCHAR2(255 CHAR),
  PHYSICS_CODE         VARCHAR2(255 CHAR),
  POWER_MOLD           VARCHAR2(255 CHAR),
  RENT_DATE            TIMESTAMP(6),
  ROOM_NAME            VARCHAR2(255 CHAR),
  ROOM_RENTAL_FEE      NUMBER(19,2),
  SERVICE_FEE          NUMBER(19,2),
  SITE_FEE_TAX         NUMBER(19,2),
  SUP_RENTAL_FEE       NUMBER(19,2),
  TOWER_NAME           VARCHAR2(255 CHAR),
  TOWER_RENTAL_FEE     NUMBER(19,2),
  WIND_RANGE           VARCHAR2(255 CHAR),
  ROOM_SHARING         VARCHAR2(255 CHAR),
  TEL_END_DATE         TIMESTAMP(6),
  UNI_END_DATE         TIMESTAMP(6),
  PRODUCT_TYPE_ID      NUMBER(19),
  UNI_MOLD_TYPE_ID     NUMBER(19),
  PRODUCT_MOLD_TYPE_ID NUMBER(19),
  TEL_MOLD_TYPE_ID     NUMBER(19),
  BENCHMARK_FEE        NUMBER(19,2),
  EL_LUMP_FEE          NUMBER(19,2),
  EL_SERVICE_FEE       NUMBER(19,2),
  ELECTRIC_LUMP_FEE    NUMBER(19,2),
  FIELD_FEE            NUMBER(19,2),
  GUARANTEE_FEE        NUMBER(19,2),
  M_DISCOUNT_FEE       NUMBER(19,2),
  MAINTAIN_FEE         NUMBER(19,2),
  MICROWAVE_FEE        NUMBER(19,2),
  OTHER_FEE            NUMBER(19,2),
  WLAN_FEE             NUMBER(19,2),
  TELE_ISNET           NUMBER(1),
  UNION_ISNET          NUMBER(1),
  TEL_LEASE_DATE       TIMESTAMP(6),
  UNI_LEASE_DATE       TIMESTAMP(6),
  TOWERROOM_TYPE       NUMBER(19),
  SCENE                NUMBER(19),
  SYSTEM_NUMBER        NUMBER(19,2),
  DTYPE                VARCHAR2(31 CHAR),
  SITE_ATTRIBUTE_ID    NUMBER(19),
  PRODUCT_KIND_TYPE_ID NUMBER(19),
  PRODUCT1_NUMBER      NUMBER(19,2),
  PRODUCT2_NUMBER      NUMBER(19,2),
  PRODUCT3_NUMBER      NUMBER(19,2)
)
tablespace EPMSDEV
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.B_WBSTASK_BASIC_INFO
  add primary key (ID)
  using index 
  tablespace EPMSDEV
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.B_WBSTASK_BASIC_INFO
  add constraint FKE3210C2E13E6951B foreign key (ROOMDETAILTYPE_ID)
  references FEE_HLJ.C_ROOM_DETAIL_TYPE (ID);
alter table FEE_HLJ.B_WBSTASK_BASIC_INFO
  add constraint FKE3210C2E1E97C936 foreign key (SCENE)
  references FEE_HLJ.C_CITY_CATEGORY (ID);
alter table FEE_HLJ.B_WBSTASK_BASIC_INFO
  add constraint FKE3210C2E21E5F38B foreign key (TOWERROOM_TYPE)
  references FEE_HLJ.C_ROOM_TYPE (ID);
alter table FEE_HLJ.B_WBSTASK_BASIC_INFO
  add constraint FKE3210C2E26B1DF04 foreign key (SITE_ATTRIBUTE_ID)
  references FEE_HLJ.C_SITE_ATTRIBUTE_TYPE (ID);
alter table FEE_HLJ.B_WBSTASK_BASIC_INFO
  add constraint FKE3210C2E26D130B9 foreign key (TOWERDETAILTYPE_ID)
  references FEE_HLJ.C_TOWER_DETAIL_TYPE (ID);
alter table FEE_HLJ.B_WBSTASK_BASIC_INFO
  add constraint FKE3210C2E2E0C1E85 foreign key (CONSTRUCTIONTYPE_ID)
  references FEE_HLJ.C_CONSTRUCTION_TYPE (ID);
alter table FEE_HLJ.B_WBSTASK_BASIC_INFO
  add constraint FKE3210C2E3A9D0D6B foreign key (PROPERTYTYPE_ID)
  references FEE_HLJ.C_PROPERTY_RIGHT_TYPE (ID);
alter table FEE_HLJ.B_WBSTASK_BASIC_INFO
  add constraint FKE3210C2E40263E21 foreign key (PRODUCT_KIND_TYPE_ID)
  references FEE_HLJ.C_TOWER_TYPE (ID);
alter table FEE_HLJ.B_WBSTASK_BASIC_INFO
  add constraint FKE3210C2E6BADB4CC foreign key (UNI_MOLD_TYPE_ID)
  references FEE_HLJ.C_PRODUCT_MOLD_TYPE (ID);
alter table FEE_HLJ.B_WBSTASK_BASIC_INFO
  add constraint FKE3210C2E6FE7781 foreign key (TEL_MOLD_TYPE_ID)
  references FEE_HLJ.C_PRODUCT_MOLD_TYPE (ID);
alter table FEE_HLJ.B_WBSTASK_BASIC_INFO
  add constraint FKE3210C2E7C4FC78 foreign key (PRODUCT_TYPE_ID)
  references FEE_HLJ.C_PRODUCT_TYPE (ID);
alter table FEE_HLJ.B_WBSTASK_BASIC_INFO
  add constraint FKE3210C2E7D3296C0 foreign key (ENTITY_CREATOR_ID)
  references FEE_HLJ.S_PRIVILEGE_USER (ID);
alter table FEE_HLJ.B_WBSTASK_BASIC_INFO
  add constraint FKE3210C2EACEBAB84 foreign key (REGION_ID)
  references FEE_HLJ.C_ORGANIZATION (ID);
alter table FEE_HLJ.B_WBSTASK_BASIC_INFO
  add constraint FKE3210C2ED74E11AD foreign key (CITY_ID)
  references FEE_HLJ.C_ORGANIZATION (ID);
alter table FEE_HLJ.B_WBSTASK_BASIC_INFO
  add constraint FKE3210C2EDE8CD579 foreign key (TOWERTYPE_ID)
  references FEE_HLJ.C_TOWER_TYPE (ID);
alter table FEE_HLJ.B_WBSTASK_BASIC_INFO
  add constraint FKE3210C2EEE10E32D foreign key (PRODUCT_MOLD_TYPE_ID)
  references FEE_HLJ.C_PRODUCT_MOLD_TYPE (ID);
alter table FEE_HLJ.B_WBSTASK_BASIC_INFO
  add constraint FKE3210C2EF15AB5B foreign key (ROOMTYPE_ID)
  references FEE_HLJ.C_ROOM_TYPE (ID);
alter table FEE_HLJ.B_WBSTASK_BASIC_INFO
  add constraint FKE3210C2EF43C991F foreign key (CITYTYPE_ID)
  references FEE_HLJ.C_CITY_CATEGORY (ID);
alter table FEE_HLJ.B_WBSTASK_BASIC_INFO
  add constraint FKE3210C2EFE2636F foreign key (MANAGE_ID)
  references FEE_HLJ.B_WBSTASK_BASIC_MANAGE (ID);

prompt
prompt Creating table B_WBSTASK_BASIC_INFO_HIS
prompt =======================================
prompt
create table FEE_HLJ.B_WBSTASK_BASIC_INFO_HIS
(
  ID                   NUMBER(19) not null,
  ENTITY_CODE          VARCHAR2(255 CHAR),
  ENTITY_CREATE_DATE   TIMESTAMP(6),
  ENTITY_DESC          VARCHAR2(4000 CHAR),
  FINISH_DATE          TIMESTAMP(6),
  ENTITY_NAME          VARCHAR2(255 CHAR),
  ENTITY_STATUS        VARCHAR2(100 CHAR),
  ADJUST_INVEST        NUMBER(19,2),
  ANCHOR_TENANT        VARCHAR2(255 CHAR),
  ANTENNA1_NUMBER      NUMBER(10),
  ANTENNA2_NUMBER      NUMBER(10),
  ANTENNA3_NUMBER      NUMBER(10),
  BASE_STATION         VARCHAR2(255 CHAR),
  BENCHMARK_FEE        NUMBER(19,2),
  BUSINESS_CODE        VARCHAR2(255 CHAR),
  CONSTRUCTION_FEE     NUMBER(19,2),
  COVERAGE_AREA        NUMBER(19,4),
  DEVICE_STANDARD      VARCHAR2(255 CHAR),
  EL_LUMP_FEE          NUMBER(19,2),
  EL_SERVICE_FEE       NUMBER(19,2),
  ELECTRIC_FEE         NUMBER(19,2),
  ELECTRIC_LUMP_FEE    NUMBER(19,2),
  EXCLUSIVE_SHARING    VARCHAR2(255 CHAR),
  FIELD_FEE            NUMBER(19,2),
  GUARANTEE_FEE        NUMBER(19,2),
  HIGH_RANGE           VARCHAR2(255 CHAR),
  HIS_CREATE_DATE      TIMESTAMP(6),
  IS_DISMANTLE         NUMBER(1),
  IS_INTEGRATE         NUMBER(1),
  IS_LEASE             NUMBER(1),
  IS_MACHINEROOM       NUMBER(1),
  IS_OIL_SERVICE       NUMBER(1),
  IS_POWER_SERVICE     NUMBER(1),
  IS_RRU               NUMBER(1),
  IS_SENIOR            NUMBER(1),
  IS_SIGN              NUMBER(1),
  IS_TOWER             NUMBER(1),
  IS_TOWERROOM         NUMBER(1),
  IS_UP_TOWER          NUMBER(1),
  IS_ADD               NUMBER(1),
  ISBBUONROOM1         NUMBER(1),
  ISBBUONROOM2         NUMBER(1),
  ISBBUONROOM3         NUMBER(1),
  ISBBUONROOMTYPE1     VARCHAR2(255 CHAR),
  ISBBUONROOMTYPE2     VARCHAR2(255 CHAR),
  ISBBUONROOMTYPE3     VARCHAR2(255 CHAR),
  ISRRUONTOWER1        NUMBER(1),
  ISRRUONTOWER2        NUMBER(1),
  ISRRUONTOWER3        NUMBER(1),
  M_DISCOUNT_FEE       NUMBER(19,2),
  MAINTAIN_FEE         NUMBER(19,2),
  MAINTENANCE_FEE      NUMBER(19,2),
  MANUAL_DATE          TIMESTAMP(6),
  MICROWAVE_FEE        NUMBER(19,2),
  MONTH                VARCHAR2(255 CHAR),
  OIL_USE_FEE          NUMBER(19,2),
  OIL_FEE              NUMBER(19,2),
  OPERATOR_CODE        VARCHAR2(255 CHAR),
  OTHER_FEE            NUMBER(19,2),
  PHYSICS_CODE         VARCHAR2(255 CHAR),
  POWERIN_BUILD_FEE    NUMBER(19,2),
  POWERIN_FEE          NUMBER(19,2),
  POWER_MOLD           VARCHAR2(255 CHAR),
  PRODUCT1_HIGH        NUMBER(19,4),
  PRODUCT1_SYSTEM      NUMBER(10),
  PRODUCT2_HIGH        NUMBER(19,4),
  PRODUCT2_SYSTEM      NUMBER(10),
  PRODUCT3_HIGH        NUMBER(19,4),
  PRODUCT3_SYSTEM      NUMBER(10),
  PRODUCT_NUMBER       NUMBER(10),
  RENT_DATE            TIMESTAMP(6),
  RESOURCE_NAME        VARCHAR2(255 CHAR),
  ROOM_NAME            VARCHAR2(255 CHAR),
  ROOM_RENTAL_FEE      NUMBER(19,2),
  ROOM_SHARING         VARCHAR2(255 CHAR),
  ROOM_SHARE_NUM       NUMBER(10),
  SERVICE_FEE          NUMBER(19,2),
  SITE_FEE_TAX         NUMBER(19,2),
  SITE_FEE             NUMBER(19,2),
  STEEL_ON_FRAME       NUMBER(1),
  SUP_RENTAL_FEE       NUMBER(19,2),
  SYSTEM_NUMBER        NUMBER(19,2),
  TEL_END_DATE         TIMESTAMP(6),
  TEL_LEASE_DATE       TIMESTAMP(6),
  TELE_ISNET           NUMBER(1),
  TOWER_NAME           VARCHAR2(255 CHAR),
  TOWER_RENTAL_FEE     NUMBER(19,2),
  TOWER_SHARE_NUM      NUMBER(10),
  UNI_END_DATE         TIMESTAMP(6),
  UNI_LEASE_DATE       TIMESTAMP(6),
  UNION_ISNET          NUMBER(1),
  WIND_PRESSURE        NUMBER(19,4),
  WIND_RANGE           VARCHAR2(255 CHAR),
  WLAN_FEE             NUMBER(19,2),
  YEAR                 VARCHAR2(255 CHAR),
  CONSTRUCTIONTYPE_ID  NUMBER(19),
  PRODUCT_TYPE_ID      NUMBER(19),
  PROPERTYTYPE_ID      NUMBER(19),
  UNI_MOLD_TYPE_ID     NUMBER(19),
  REGION_ID            NUMBER(19),
  ENTITY_CREATOR_ID    NUMBER(19),
  CITYTYPE_ID          NUMBER(19),
  TEL_MOLD_TYPE_ID     NUMBER(19),
  ROOMDETAILTYPE_ID    NUMBER(19),
  PRODUCT_MOLD_TYPE_ID NUMBER(19),
  BASIC_INFO_ID        NUMBER(19),
  MANAGE_ID            NUMBER(19),
  CITY_ID              NUMBER(19),
  PRODUCT_KIND_TYPE_ID NUMBER(19),
  TOWERTYPE_ID         NUMBER(19),
  SCENE                NUMBER(19),
  TOWERROOM_TYPE       NUMBER(19),
  SITE_ATTRIBUTE_ID    NUMBER(19),
  TOWERDETAILTYPE_ID   NUMBER(19),
  ROOMTYPE_ID          NUMBER(19),
  PRODUCT1_NUMBER      NUMBER(19,2),
  PRODUCT2_NUMBER      NUMBER(19,2),
  PRODUCT3_NUMBER      NUMBER(19,2)
)
tablespace EPMSDEV
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.B_WBSTASK_BASIC_INFO_HIS
  add primary key (ID)
  using index 
  tablespace EPMSDEV
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.B_WBSTASK_BASIC_INFO_HIS
  add constraint FK1670080113E6951B foreign key (ROOMDETAILTYPE_ID)
  references FEE_HLJ.C_ROOM_DETAIL_TYPE (ID);
alter table FEE_HLJ.B_WBSTASK_BASIC_INFO_HIS
  add constraint FK167008011E97C936 foreign key (SCENE)
  references FEE_HLJ.C_CITY_CATEGORY (ID);
alter table FEE_HLJ.B_WBSTASK_BASIC_INFO_HIS
  add constraint FK1670080121E5F38B foreign key (TOWERROOM_TYPE)
  references FEE_HLJ.C_ROOM_TYPE (ID);
alter table FEE_HLJ.B_WBSTASK_BASIC_INFO_HIS
  add constraint FK1670080126B1DF04 foreign key (SITE_ATTRIBUTE_ID)
  references FEE_HLJ.C_SITE_ATTRIBUTE_TYPE (ID);
alter table FEE_HLJ.B_WBSTASK_BASIC_INFO_HIS
  add constraint FK1670080126D130B9 foreign key (TOWERDETAILTYPE_ID)
  references FEE_HLJ.C_TOWER_DETAIL_TYPE (ID);
alter table FEE_HLJ.B_WBSTASK_BASIC_INFO_HIS
  add constraint FK167008012E0C1E85 foreign key (CONSTRUCTIONTYPE_ID)
  references FEE_HLJ.C_CONSTRUCTION_TYPE (ID);
alter table FEE_HLJ.B_WBSTASK_BASIC_INFO_HIS
  add constraint FK167008013A9D0D6B foreign key (PROPERTYTYPE_ID)
  references FEE_HLJ.C_PROPERTY_RIGHT_TYPE (ID);
alter table FEE_HLJ.B_WBSTASK_BASIC_INFO_HIS
  add constraint FK1670080140263E21 foreign key (PRODUCT_KIND_TYPE_ID)
  references FEE_HLJ.C_TOWER_TYPE (ID);
alter table FEE_HLJ.B_WBSTASK_BASIC_INFO_HIS
  add constraint FK167008016BADB4CC foreign key (UNI_MOLD_TYPE_ID)
  references FEE_HLJ.C_PRODUCT_MOLD_TYPE (ID);
alter table FEE_HLJ.B_WBSTASK_BASIC_INFO_HIS
  add constraint FK167008016FE7781 foreign key (TEL_MOLD_TYPE_ID)
  references FEE_HLJ.C_PRODUCT_MOLD_TYPE (ID);
alter table FEE_HLJ.B_WBSTASK_BASIC_INFO_HIS
  add constraint FK167008017C4FC78 foreign key (PRODUCT_TYPE_ID)
  references FEE_HLJ.C_PRODUCT_TYPE (ID);
alter table FEE_HLJ.B_WBSTASK_BASIC_INFO_HIS
  add constraint FK167008017D3296C0 foreign key (ENTITY_CREATOR_ID)
  references FEE_HLJ.S_PRIVILEGE_USER (ID);
alter table FEE_HLJ.B_WBSTASK_BASIC_INFO_HIS
  add constraint FK16700801A7C04395 foreign key (BASIC_INFO_ID)
  references FEE_HLJ.B_WBSTASK_BASIC_INFO (ID);
alter table FEE_HLJ.B_WBSTASK_BASIC_INFO_HIS
  add constraint FK16700801ACEBAB84 foreign key (REGION_ID)
  references FEE_HLJ.C_ORGANIZATION (ID);
alter table FEE_HLJ.B_WBSTASK_BASIC_INFO_HIS
  add constraint FK16700801CBE39C36 foreign key (SITE_ATTRIBUTE_ID)
  references FEE_HLJ.C_PROPERTY_RIGHT_TYPE (ID)
  disable;
alter table FEE_HLJ.B_WBSTASK_BASIC_INFO_HIS
  add constraint FK16700801D74E11AD foreign key (CITY_ID)
  references FEE_HLJ.C_ORGANIZATION (ID);
alter table FEE_HLJ.B_WBSTASK_BASIC_INFO_HIS
  add constraint FK16700801DE8CD579 foreign key (TOWERTYPE_ID)
  references FEE_HLJ.C_TOWER_TYPE (ID);
alter table FEE_HLJ.B_WBSTASK_BASIC_INFO_HIS
  add constraint FK16700801EE10E32D foreign key (PRODUCT_MOLD_TYPE_ID)
  references FEE_HLJ.C_PRODUCT_MOLD_TYPE (ID);
alter table FEE_HLJ.B_WBSTASK_BASIC_INFO_HIS
  add constraint FK16700801F15AB5B foreign key (ROOMTYPE_ID)
  references FEE_HLJ.C_ROOM_TYPE (ID);
alter table FEE_HLJ.B_WBSTASK_BASIC_INFO_HIS
  add constraint FK16700801F43C991F foreign key (CITYTYPE_ID)
  references FEE_HLJ.C_CITY_CATEGORY (ID);
alter table FEE_HLJ.B_WBSTASK_BASIC_INFO_HIS
  add constraint FK16700801FE2636F foreign key (MANAGE_ID)
  references FEE_HLJ.B_WBSTASK_BASIC_MANAGE (ID);

prompt
prompt Creating table B_WBSSYS_ORDER
prompt =============================
prompt
create table FEE_HLJ.B_WBSSYS_ORDER
(
  ID                           NUMBER(19) not null,
  ENTITY_CODE                  VARCHAR2(255 CHAR),
  ENTITY_CREATE_DATE           TIMESTAMP(6),
  ENTITY_DESC                  VARCHAR2(4000 CHAR),
  FINISH_DATE                  TIMESTAMP(6),
  ENTITY_NAME                  VARCHAR2(255 CHAR),
  ENTITY_STATUS                VARCHAR2(100 CHAR),
  ALL_SERVER_FEE               NUMBER(19,2),
  COUNT_ALL_SERVER_FEE         NUMBER(19,2),
  CONUT_OTHER_FEE1             NUMBER(19,2),
  COUNT_DATUM_ALL_PRICE        NUMBER(19,2),
  COUNT_END_SHARES_PRICE       NUMBER(19,2),
  COUNT_MONTH_SERVICE_FEE      NUMBER(19,2),
  COUNT_OIL_CHARGE             NUMBER(19,2),
  COUNT_POWERIN_DISCOUNT_FEE   NUMBER(19,2),
  COUNT_ROOM_END_SHARES_PRICE  NUMBER(19,2),
  COUNT_SITE_DISCOUNT_FEE      NUMBER(19,2),
  DATUM_ALL_PRICE              NUMBER(19,2),
  END_SHARES_PRICE             NUMBER(19,2),
  MONTH                        VARCHAR2(255 CHAR),
  MONTH_SERVICE_FEE            NUMBER(19,2),
  OIL_CHARGE                   NUMBER(19,2),
  OTHER_FEE1                   NUMBER(19,2),
  POWERIN_DISCOUNT_FEE         NUMBER(19,2),
  ROOM_END_SHARES_PRICE        NUMBER(19,2),
  SITE_DISCOUNT_FEE            NUMBER(19,2),
  TASK_CODE                    VARCHAR2(255 CHAR),
  YEAR                         VARCHAR2(255 CHAR),
  ENTITY_CREATOR_ID            NUMBER(19),
  BASICINFO_ID                 NUMBER(19),
  TOWERRENT_APPLY_ID           NUMBER(19),
  ALL_SERVER_FEE_MOBILE        NUMBER(19,2),
  ALL_SERVER_FEE_TOWER         NUMBER(19,2),
  BATTERY_FEE                  NUMBER(19,2),
  BATTERY_FEE_MOBILE           NUMBER(19,2),
  BATTERY_FEE_TOWER            NUMBER(19,2),
  BBU_INTOWER_COSTS            NUMBER(19,2),
  BBU_INTOWER_COSTS_MOBILE     NUMBER(19,2),
  BBU_INTOWER_COSTS_TOWER      NUMBER(19,2),
  CONUT_MICROWAVE_FEE          NUMBER(19,2),
  CONUT_WLAN_FEE               NUMBER(19,2),
  COUNT_BATTERY_FEE            NUMBER(19,2),
  COUNT_BBU_INTOWER_COSTS      NUMBER(19,2),
  COUNT_ELECTRICITY_CHARGE     NUMBER(19,2),
  COUNT_MORE_THAN              NUMBER(19,2),
  COUNT_OIL_SERVICE_FEE        NUMBER(19,2),
  DATUM_ALL_PRICE_MOBILE       NUMBER(19,2),
  DATUM_ALL_PRICE_TOWER        NUMBER(19,2),
  ELECTRICITY_CHARGE           NUMBER(19,2),
  ELECTRICITY_CHARGE_MOBILE    NUMBER(19,2),
  ELECTRICITY_CHARGE_TOWER     NUMBER(19,2),
  END_SHARES_PRICE_MOBILE      NUMBER(19,2),
  END_SHARES_PRICE_TOWER       NUMBER(19,2),
  MICROWAVE_FEE                NUMBER(19,2),
  MICROWAVE_FEE_MOBILE         NUMBER(19,2),
  MICROWAVE_FEE_TOWER          NUMBER(19,2),
  MONTH_SERVICE_FEE_MOBILE     NUMBER(19,2),
  MONTH_SERVICE_FEE_TOWER      NUMBER(19,2),
  MORE_THAN                    NUMBER(19,2),
  MORE_THAN_MOBILE             NUMBER(19,2),
  MORE_THAN_TOWER              NUMBER(19,2),
  OIL_CHARGE_MOBILE            NUMBER(19,2),
  OIL_CHARGE_TOWER             NUMBER(19,2),
  OIL_SERVICE_FEE              NUMBER(19,2),
  OIL_SERVICE_FEE_MOBILE       NUMBER(19,2),
  OIL_SERVICE_FEE_TOWER        NUMBER(19,2),
  OTHER_FEE_MOBILE1            NUMBER(19,2),
  OTHER_FEE_TOWER1             NUMBER(19,2),
  POWERIN_DISCOUNT_FEE_MOBILE  NUMBER(19,2),
  POWERIN_DISCOUNT_FEE_TOWER   NUMBER(19,2),
  ROOM_END_SHARES_PRICE_MOBILE NUMBER(19,2),
  ROOM_END_SHARES_PRICE_TOWER  NUMBER(19,2),
  SITE_DISCOUNT_FEE_MOBILE     NUMBER(19,2),
  SITE_DISCOUNT_FEE_TOWER      NUMBER(19,2),
  WLAN_FEE                     NUMBER(19,2),
  WLAN_FEE_MOBILE              NUMBER(19,2),
  WLAN_FEE_TOWER               NUMBER(19,2),
  CHAMBER_FEE                  NUMBER(19,2),
  CHAMBER_FEE_MOBILE           NUMBER(19,2),
  CHAMBER_FEE_TOWER            NUMBER(19,2),
  COUNT_CHAMBER_FEE            NUMBER(19,2),
  COUNT_ENERGY_CHARGE_FEE      NUMBER(19,2),
  COUNT_TOTAL_SERVICE_FEE      NUMBER(19,2),
  ENERGY_CHARGE_FEE            NUMBER(19,2),
  ENERGY_CHARGE_FEE_MOBILE     NUMBER(19,2),
  ENERGY_CHARGE_FEE_TOWER      NUMBER(19,2),
  TOTAL_SERVICE_FEE            NUMBER(19,2),
  TOTAL_SERVICE_FEE_MOBILE     NUMBER(19,2),
  TOTAL_SERVICE_FEE_TOWER      NUMBER(19,2),
  MONTH_SERVICE_FEE_TOTAL      NUMBER(19,2),
  BASICINFO_HIS_ID             NUMBER(19),
  AUDIT_RESULTS                VARCHAR2(456 CHAR),
  DEMAND_NUMBER                VARCHAR2(255 CHAR),
  SERCHARGE_MEASURE            NUMBER(19,2),
  TASK_NAME                    VARCHAR2(456 CHAR),
  ORDER_ID                     NUMBER(19),
  ATTACHMENT_UNIT_ID           NUMBER(19),
  TERRITORIALCITY_ID           NUMBER(19)
)
tablespace EPMSDEV
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.B_WBSSYS_ORDER
  add primary key (ID)
  using index 
  tablespace EPMSDEV
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.B_WBSSYS_ORDER
  add constraint FK4C5E6DD15796B1C3 foreign key (TOWERRENT_APPLY_ID)
  references FEE_HLJ.B_TOWER_RENT_APPLY (ID);
alter table FEE_HLJ.B_WBSSYS_ORDER
  add constraint FK4C5E6DD17D3296C0 foreign key (ENTITY_CREATOR_ID)
  references FEE_HLJ.S_PRIVILEGE_USER (ID);
alter table FEE_HLJ.B_WBSSYS_ORDER
  add constraint FK4C5E6DD18D3292B8 foreign key (BASICINFO_ID)
  references FEE_HLJ.B_WBSTASK_BASIC_INFO (ID);
alter table FEE_HLJ.B_WBSSYS_ORDER
  add constraint FK4C5E6DD1BB1F2D83 foreign key (BASICINFO_HIS_ID)
  references FEE_HLJ.B_WBSTASK_BASIC_INFO_HIS (ID);
alter table FEE_HLJ.B_WBSSYS_ORDER
  add constraint FK4C5E6DD1BB27379C foreign key (ORDER_ID)
  references FEE_HLJ.B_ACER_STATION_ORDER_DETAIL (ID);
alter table FEE_HLJ.B_WBSSYS_ORDER
  add constraint FK4C5E6DD1C1589258 foreign key (TERRITORIALCITY_ID)
  references FEE_HLJ.C_ORGANIZATION (ID);
alter table FEE_HLJ.B_WBSSYS_ORDER
  add constraint FK4C5E6DD1F7258E38 foreign key (ATTACHMENT_UNIT_ID)
  references FEE_HLJ.B_ATTACHMENT_UNIT (ID);

prompt
prompt Creating table B_WBSTASK_ADJUST_INFO
prompt ====================================
prompt
create table FEE_HLJ.B_WBSTASK_ADJUST_INFO
(
  ID                 NUMBER(19) not null,
  ENTITY_CODE        VARCHAR2(255 CHAR),
  ENTITY_CREATE_DATE TIMESTAMP(6),
  ENTITY_DESC        VARCHAR2(4000 CHAR),
  FINISH_DATE        TIMESTAMP(6),
  ENTITY_NAME        VARCHAR2(255 CHAR),
  ENTITY_STATUS      VARCHAR2(100 CHAR),
  BEGIN_DATE         TIMESTAMP(6),
  END_DATE           TIMESTAMP(6),
  TOWER_SHARE_NUM    NUMBER(10),
  TASKINFO_ID        NUMBER(19),
  ENTITY_CREATOR_ID  NUMBER(19),
  ROOM_SHARE_NUM     NUMBER(10),
  TASKINFO_HIS_ID    NUMBER(19)
)
tablespace EPMSDEV
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.B_WBSTASK_ADJUST_INFO
  add primary key (ID)
  using index 
  tablespace EPMSDEV
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.B_WBSTASK_ADJUST_INFO
  add constraint FK7F5F0B4F7D3296C0 foreign key (ENTITY_CREATOR_ID)
  references FEE_HLJ.S_PRIVILEGE_USER (ID);
alter table FEE_HLJ.B_WBSTASK_ADJUST_INFO
  add constraint FK7F5F0B4F84B65181 foreign key (TASKINFO_ID)
  references FEE_HLJ.B_WBSTASK_BASIC_INFO (ID);
alter table FEE_HLJ.B_WBSTASK_ADJUST_INFO
  add constraint FK7F5F0B4FB9A45FCC foreign key (TASKINFO_HIS_ID)
  references FEE_HLJ.B_WBSTASK_BASIC_INFO_HIS (ID);

prompt
prompt Creating table B_WBSTASK_BASIC_ADJUST
prompt =====================================
prompt
create table FEE_HLJ.B_WBSTASK_BASIC_ADJUST
(
  ID                   NUMBER(19) not null,
  ENTITY_CODE          VARCHAR2(255 CHAR),
  ENTITY_CREATE_DATE   TIMESTAMP(6),
  ENTITY_DESC          VARCHAR2(4000 CHAR),
  FINISH_DATE          TIMESTAMP(6),
  ENTITY_NAME          VARCHAR2(255 CHAR),
  ENTITY_STATUS        VARCHAR2(100 CHAR),
  DELETED_FLAG         NUMBER(1),
  ATTACHMENT_UNIT_ID   NUMBER(19),
  ENTITY_CREATOR_ID    NUMBER(19),
  APPLY_DEPT_ID        NUMBER(19),
  APPLY_ORG_ID         NUMBER(19),
  WORKFLOW_ACTIVITY_ID NUMBER(19),
  PROPERTY_TYPE        VARCHAR2(255 CHAR)
)
tablespace EPMSDEV
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.B_WBSTASK_BASIC_ADJUST
  add primary key (ID)
  using index 
  tablespace EPMSDEV
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.B_WBSTASK_BASIC_ADJUST
  add constraint FK5A41EB2F7D3296C0 foreign key (ENTITY_CREATOR_ID)
  references FEE_HLJ.S_PRIVILEGE_USER (ID);
alter table FEE_HLJ.B_WBSTASK_BASIC_ADJUST
  add constraint FK5A41EB2F967622C2 foreign key (APPLY_DEPT_ID)
  references FEE_HLJ.C_ORGANIZATION (ID);
alter table FEE_HLJ.B_WBSTASK_BASIC_ADJUST
  add constraint FK5A41EB2FA29A3F85 foreign key (APPLY_ORG_ID)
  references FEE_HLJ.C_ORGANIZATION (ID);
alter table FEE_HLJ.B_WBSTASK_BASIC_ADJUST
  add constraint FK5A41EB2FDEFD0F5 foreign key (WORKFLOW_ACTIVITY_ID)
  references FEE_HLJ.W_WORKFLOW_ACTIVITY (ID);
alter table FEE_HLJ.B_WBSTASK_BASIC_ADJUST
  add constraint FK5A41EB2FF7258E38 foreign key (ATTACHMENT_UNIT_ID)
  references FEE_HLJ.B_ATTACHMENT_UNIT (ID);

prompt
prompt Creating table B_WBSTASK_ADJUST_ITEM
prompt ====================================
prompt
create table FEE_HLJ.B_WBSTASK_ADJUST_ITEM
(
  ID                   NUMBER(19) not null,
  ENTITY_CODE          VARCHAR2(255 CHAR),
  ENTITY_CREATE_DATE   TIMESTAMP(6),
  ENTITY_DESC          VARCHAR2(4000 CHAR),
  FINISH_DATE          TIMESTAMP(6),
  ENTITY_NAME          VARCHAR2(255 CHAR),
  ENTITY_STATUS        VARCHAR2(100 CHAR),
  OIL_FEE              NUMBER(19,2),
  POWERIN_FEE          NUMBER(19,2),
  SITE_FEE             NUMBER(19,2),
  PARENT_ADJUST_ID     NUMBER(19),
  WBSTASK_INFO_ID      NUMBER(19),
  ENTITY_CREATOR_ID    NUMBER(19),
  POWERIN_BUILD_FEE    NUMBER(19,2),
  ATTACHMENT_UNIT_ID   NUMBER(19),
  CONSTRUCTION_FEE     NUMBER(19,2),
  ANTENNA1_NUMBER      NUMBER(10),
  ANTENNA2_NUMBER      NUMBER(10),
  ANTENNA3_NUMBER      NUMBER(10),
  BASE_STATION         VARCHAR2(255 CHAR),
  COVERAGE_AREA        NUMBER(19,4),
  DEVICE_STANDARD      VARCHAR2(255 CHAR),
  HIGH_RANGE           VARCHAR2(255 CHAR),
  IS_INTEGRATE         NUMBER(1),
  IS_LEASE             NUMBER(1),
  IS_MACHINEROOM       NUMBER(1),
  IS_OIL_SERVICE       NUMBER(1),
  IS_POWER_SERVICE     NUMBER(1),
  IS_SENIOR            NUMBER(1),
  IS_SIGN              NUMBER(1),
  IS_TOWERROOM         NUMBER(1),
  IS_UP_TOWER          NUMBER(1),
  IS_ADD               NUMBER(1),
  PRODUCT1_HIGH        NUMBER(19,4),
  PRODUCT1_SYSTEM      NUMBER(10),
  PRODUCT2_HIGH        NUMBER(19,4),
  PRODUCT2_SYSTEM      NUMBER(10),
  PRODUCT3_HIGH        NUMBER(19,4),
  PRODUCT3_SYSTEM      NUMBER(10),
  ROOM_NAME            VARCHAR2(255 CHAR),
  STEEL_ON_FRAME       NUMBER(1),
  TEL_END_DATE         TIMESTAMP(6),
  TEL_LEASE_DATE       TIMESTAMP(6),
  TOWER_NAME           VARCHAR2(255 CHAR),
  UNI_END_DATE         TIMESTAMP(6),
  UNI_LEASE_DATE       TIMESTAMP(6),
  ROOMDETAILTYPE_ID    NUMBER(19),
  UNI_MOLD_TYPE_ID     NUMBER(19),
  TEL_MOLD_TYPE_ID     NUMBER(19),
  PRODUCT_MOLD_TYPE_ID NUMBER(19),
  ROOMTYPE_ID          NUMBER(19),
  BENCHMARK_FEE        NUMBER(19,2),
  EL_LUMP_FEE          NUMBER(19,2),
  EL_SERVICE_FEE       NUMBER(19,2),
  ELECTRIC_FEE         NUMBER(19,2),
  ELECTRIC_LUMP_FEE    NUMBER(19,2),
  FIELD_FEE            NUMBER(19,2),
  GUARANTEE_FEE        NUMBER(19,2),
  M_DISCOUNT_FEE       NUMBER(19,2),
  MAINTAIN_FEE         NUMBER(19,2),
  MAINTENANCE_FEE      NUMBER(19,2),
  MICROWAVE_FEE        NUMBER(19,2),
  OIL_USE_FEE          NUMBER(19,2),
  OTHER_FEE            NUMBER(19,2),
  ROOM_RENTAL_FEE      NUMBER(19,2),
  SERVICE_FEE          NUMBER(19,2),
  SITE_FEE_TAX         NUMBER(19,2),
  SUP_RENTAL_FEE       NUMBER(19,2),
  TOWER_RENTAL_FEE     NUMBER(19,2),
  WLAN_FEE             NUMBER(19,2),
  TOWERROOM_TYPE       NUMBER(19),
  SYSTEM_NUMBER        NUMBER(19,2),
  PRODUCT1_NUMBER      NUMBER(19,2),
  PRODUCT2_NUMBER      NUMBER(19,2),
  PRODUCT3_NUMBER      NUMBER(19,2),
  PRODUCT_NUMBER       NUMBER(19,2)
)
tablespace EPMSDEV
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.B_WBSTASK_ADJUST_ITEM
  add primary key (ID)
  using index 
  tablespace EPMSDEV
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.B_WBSTASK_ADJUST_ITEM
  add constraint FKE2C8C99413E6951B foreign key (ROOMDETAILTYPE_ID)
  references FEE_HLJ.C_ROOM_DETAIL_TYPE (ID);
alter table FEE_HLJ.B_WBSTASK_ADJUST_ITEM
  add constraint FKE2C8C994175DCF4 foreign key (WBSTASK_INFO_ID)
  references FEE_HLJ.B_WBSTASK_BASIC_INFO (ID);
alter table FEE_HLJ.B_WBSTASK_ADJUST_ITEM
  add constraint FKE2C8C99421E5F38B foreign key (TOWERROOM_TYPE)
  references FEE_HLJ.C_ROOM_TYPE (ID);
alter table FEE_HLJ.B_WBSTASK_ADJUST_ITEM
  add constraint FKE2C8C9946BADB4CC foreign key (UNI_MOLD_TYPE_ID)
  references FEE_HLJ.C_PRODUCT_MOLD_TYPE (ID);
alter table FEE_HLJ.B_WBSTASK_ADJUST_ITEM
  add constraint FKE2C8C9946FE7781 foreign key (TEL_MOLD_TYPE_ID)
  references FEE_HLJ.C_PRODUCT_MOLD_TYPE (ID);
alter table FEE_HLJ.B_WBSTASK_ADJUST_ITEM
  add constraint FKE2C8C9947D3296C0 foreign key (ENTITY_CREATOR_ID)
  references FEE_HLJ.S_PRIVILEGE_USER (ID);
alter table FEE_HLJ.B_WBSTASK_ADJUST_ITEM
  add constraint FKE2C8C994ABEC4370 foreign key (PARENT_ADJUST_ID)
  references FEE_HLJ.B_WBSTASK_BASIC_ADJUST (ID);
alter table FEE_HLJ.B_WBSTASK_ADJUST_ITEM
  add constraint FKE2C8C994EE10E32D foreign key (PRODUCT_MOLD_TYPE_ID)
  references FEE_HLJ.C_PRODUCT_MOLD_TYPE (ID);
alter table FEE_HLJ.B_WBSTASK_ADJUST_ITEM
  add constraint FKE2C8C994F15AB5B foreign key (ROOMTYPE_ID)
  references FEE_HLJ.C_ROOM_TYPE (ID);
alter table FEE_HLJ.B_WBSTASK_ADJUST_ITEM
  add constraint FKE2C8C994F7258E38 foreign key (ATTACHMENT_UNIT_ID)
  references FEE_HLJ.B_ATTACHMENT_UNIT (ID);

prompt
prompt Creating table B_WBSTASK_BASIC_INFO_TEMP
prompt ========================================
prompt
create table FEE_HLJ.B_WBSTASK_BASIC_INFO_TEMP
(
  ID                   NUMBER(19) not null,
  ENTITY_CODE          VARCHAR2(255 CHAR),
  ENTITY_CREATE_DATE   TIMESTAMP(6),
  ENTITY_DESC          VARCHAR2(4000 CHAR),
  FINISH_DATE          TIMESTAMP(6),
  ENTITY_NAME          VARCHAR2(255 CHAR),
  ENTITY_STATUS        VARCHAR2(100 CHAR),
  ADJUST_INVEST        NUMBER(19,2),
  ANCHOR_TENANT        VARCHAR2(255 CHAR),
  ANTENNA1_NUMBER      NUMBER(10),
  ANTENNA2_NUMBER      NUMBER(10),
  ANTENNA3_NUMBER      NUMBER(10),
  BASE_STATION         VARCHAR2(255 CHAR),
  BENCHMARK_FEE        NUMBER(19,2),
  BUSINESS_CODE        VARCHAR2(255 CHAR),
  CONSTRUCTION_FEE     NUMBER(19,2),
  COVERAGE_AREA        NUMBER(19,4),
  DEVICE_STANDARD      VARCHAR2(255 CHAR),
  EL_LUMP_FEE          NUMBER(19,2),
  EL_SERVICE_FEE       NUMBER(19,2),
  ELECTRIC_FEE         NUMBER(19,2),
  ELECTRIC_LUMP_FEE    NUMBER(19,2),
  EXCLUSIVE_SHARING    VARCHAR2(255 CHAR),
  FIELD_FEE            NUMBER(19,2),
  GUARANTEE_FEE        NUMBER(19,2),
  HIGH_RANGE           VARCHAR2(255 CHAR),
  IS_DISMANTLE         NUMBER(1),
  IS_INTEGRATE         NUMBER(1),
  IS_LEASE             NUMBER(1),
  IS_MACHINEROOM       NUMBER(1),
  IS_OIL_SERVICE       NUMBER(1),
  IS_POWER_SERVICE     NUMBER(1),
  IS_RRU               NUMBER(1),
  IS_SENIOR            NUMBER(1),
  IS_SIGN              NUMBER(1),
  IS_TOWER             NUMBER(1),
  IS_TOWERROOM         NUMBER(1),
  IS_UP_TOWER          NUMBER(1),
  IS_ADD               NUMBER(1),
  ISBBUONROOM1         NUMBER(1),
  ISBBUONROOM2         NUMBER(1),
  ISBBUONROOM3         NUMBER(1),
  ISBBUONROOMTYPE1     VARCHAR2(255 CHAR),
  ISBBUONROOMTYPE2     VARCHAR2(255 CHAR),
  ISBBUONROOMTYPE3     VARCHAR2(255 CHAR),
  ISRRUONTOWER1        NUMBER(1),
  ISRRUONTOWER2        NUMBER(1),
  ISRRUONTOWER3        NUMBER(1),
  M_DISCOUNT_FEE       NUMBER(19,2),
  MAINTAIN_FEE         NUMBER(19,2),
  MAINTENANCE_FEE      NUMBER(19,2),
  MANUAL_DATE          TIMESTAMP(6),
  MICROWAVE_FEE        NUMBER(19,2),
  OIL_USE_FEE          NUMBER(19,2),
  OIL_FEE              NUMBER(19,2),
  OPERATOR_CODE        VARCHAR2(255 CHAR),
  OTHER_FEE            NUMBER(19,2),
  PHYSICS_CODE         VARCHAR2(255 CHAR),
  POWERIN_BUILD_FEE    NUMBER(19,2),
  POWERIN_FEE          NUMBER(19,2),
  POWER_MOLD           VARCHAR2(255 CHAR),
  PRODUCT1_HIGH        NUMBER(19,4),
  PRODUCT1_SYSTEM      NUMBER(10),
  PRODUCT2_HIGH        NUMBER(19,4),
  PRODUCT2_SYSTEM      NUMBER(10),
  PRODUCT3_HIGH        NUMBER(19,4),
  PRODUCT3_SYSTEM      NUMBER(10),
  PRODUCT_NUMBER       NUMBER(10),
  RENT_DATE            TIMESTAMP(6),
  RESOURCE_NAME        VARCHAR2(255 CHAR),
  ROOM_NAME            VARCHAR2(255 CHAR),
  ROOM_RENTAL_FEE      NUMBER(19,2),
  ROOM_SHARING         VARCHAR2(255 CHAR),
  ROOM_SHARE_NUM       NUMBER(10),
  SERVICE_FEE          NUMBER(19,2),
  SITE_FEE_TAX         NUMBER(19,2),
  SITE_FEE             NUMBER(19,2),
  STEEL_ON_FRAME       NUMBER(1),
  SUP_RENTAL_FEE       NUMBER(19,2),
  SYSTEM_NUMBER        NUMBER(19,2),
  TEL_END_DATE         TIMESTAMP(6),
  TEL_LEASE_DATE       TIMESTAMP(6),
  TELE_ISNET           NUMBER(1),
  TOWER_NAME           VARCHAR2(255 CHAR),
  TOWER_RENTAL_FEE     NUMBER(19,2),
  TOWER_SHARE_NUM      NUMBER(10),
  UNI_END_DATE         TIMESTAMP(6),
  UNI_LEASE_DATE       TIMESTAMP(6),
  UNION_ISNET          NUMBER(1),
  WIND_PRESSURE        NUMBER(19,4),
  WIND_RANGE           VARCHAR2(255 CHAR),
  WLAN_FEE             NUMBER(19,2),
  ROOMDETAILTYPE_ID    NUMBER(19),
  TOWERROOM_TYPE       NUMBER(19),
  SCENE                NUMBER(19),
  TOWERTYPE_ID         NUMBER(19),
  TOWERDETAILTYPE_ID   NUMBER(19),
  CITYTYPE_ID          NUMBER(19),
  CONSTRUCTIONTYPE_ID  NUMBER(19),
  CITY_ID              NUMBER(19),
  PROPERTYTYPE_ID      NUMBER(19),
  PRODUCT_MOLD_TYPE_ID NUMBER(19),
  MANAGE_ID            NUMBER(19),
  TEL_MOLD_TYPE_ID     NUMBER(19),
  REGION_ID            NUMBER(19),
  ENTITY_CREATOR_ID    NUMBER(19),
  PRODUCT_TYPE_ID      NUMBER(19),
  ROOMTYPE_ID          NUMBER(19),
  UNI_MOLD_TYPE_ID     NUMBER(19),
  BASICINFO_ID         NUMBER(19),
  PRODUCT_KIND_TYPE_ID NUMBER(19),
  SITE_ATTRIBUTE_ID    NUMBER(19),
  PRODUCT1_NUMBER      NUMBER(19,2),
  PRODUCT2_NUMBER      NUMBER(19,2),
  PRODUCT3_NUMBER      NUMBER(19,2)
)
tablespace EPMSDEV
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.B_WBSTASK_BASIC_INFO_TEMP
  add primary key (ID)
  using index 
  tablespace EPMSDEV
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.B_WBSTASK_BASIC_INFO_TEMP
  add constraint FKB7965D4513E6951B foreign key (ROOMDETAILTYPE_ID)
  references FEE_HLJ.C_ROOM_DETAIL_TYPE (ID);
alter table FEE_HLJ.B_WBSTASK_BASIC_INFO_TEMP
  add constraint FKB7965D451E97C936 foreign key (SCENE)
  references FEE_HLJ.C_CITY_CATEGORY (ID);
alter table FEE_HLJ.B_WBSTASK_BASIC_INFO_TEMP
  add constraint FKB7965D4521E5F38B foreign key (TOWERROOM_TYPE)
  references FEE_HLJ.C_ROOM_TYPE (ID);
alter table FEE_HLJ.B_WBSTASK_BASIC_INFO_TEMP
  add constraint FKB7965D4526D130B9 foreign key (TOWERDETAILTYPE_ID)
  references FEE_HLJ.C_TOWER_DETAIL_TYPE (ID);
alter table FEE_HLJ.B_WBSTASK_BASIC_INFO_TEMP
  add constraint FKB7965D452E0C1E85 foreign key (CONSTRUCTIONTYPE_ID)
  references FEE_HLJ.C_CONSTRUCTION_TYPE (ID);
alter table FEE_HLJ.B_WBSTASK_BASIC_INFO_TEMP
  add constraint FKB7965D453A9D0D6B foreign key (PROPERTYTYPE_ID)
  references FEE_HLJ.C_PROPERTY_RIGHT_TYPE (ID);
alter table FEE_HLJ.B_WBSTASK_BASIC_INFO_TEMP
  add constraint FKB7965D456BADB4CC foreign key (UNI_MOLD_TYPE_ID)
  references FEE_HLJ.C_PRODUCT_MOLD_TYPE (ID);
alter table FEE_HLJ.B_WBSTASK_BASIC_INFO_TEMP
  add constraint FKB7965D456FE7781 foreign key (TEL_MOLD_TYPE_ID)
  references FEE_HLJ.C_PRODUCT_MOLD_TYPE (ID);
alter table FEE_HLJ.B_WBSTASK_BASIC_INFO_TEMP
  add constraint FKB7965D457C4FC78 foreign key (PRODUCT_TYPE_ID)
  references FEE_HLJ.C_PRODUCT_TYPE (ID);
alter table FEE_HLJ.B_WBSTASK_BASIC_INFO_TEMP
  add constraint FKB7965D457D3296C0 foreign key (ENTITY_CREATOR_ID)
  references FEE_HLJ.S_PRIVILEGE_USER (ID);
alter table FEE_HLJ.B_WBSTASK_BASIC_INFO_TEMP
  add constraint FKB7965D45984E7047 foreign key (PRODUCT_KIND_TYPE_ID)
  references FEE_HLJ.C_TOWER_TYPE (ID);
alter table FEE_HLJ.B_WBSTASK_BASIC_INFO_TEMP
  add constraint FKB7965D45ACEBAB84 foreign key (REGION_ID)
  references FEE_HLJ.C_ORGANIZATION (ID);
alter table FEE_HLJ.B_WBSTASK_BASIC_INFO_TEMP
  add constraint FKB7965D45CBE39C36 foreign key (SITE_ATTRIBUTE_ID)
  references FEE_HLJ.C_PROPERTY_RIGHT_TYPE (ID)
  disable;
alter table FEE_HLJ.B_WBSTASK_BASIC_INFO_TEMP
  add constraint FKB7965D45D74E11AD foreign key (CITY_ID)
  references FEE_HLJ.C_ORGANIZATION (ID);
alter table FEE_HLJ.B_WBSTASK_BASIC_INFO_TEMP
  add constraint FKB7965D45DE8CD579 foreign key (TOWERTYPE_ID)
  references FEE_HLJ.C_TOWER_TYPE (ID);
alter table FEE_HLJ.B_WBSTASK_BASIC_INFO_TEMP
  add constraint FKB7965D45EE10E32D foreign key (PRODUCT_MOLD_TYPE_ID)
  references FEE_HLJ.C_PRODUCT_MOLD_TYPE (ID);
alter table FEE_HLJ.B_WBSTASK_BASIC_INFO_TEMP
  add constraint FKB7965D45F15AB5B foreign key (ROOMTYPE_ID)
  references FEE_HLJ.C_ROOM_TYPE (ID);
alter table FEE_HLJ.B_WBSTASK_BASIC_INFO_TEMP
  add constraint FKB7965D45F43C991F foreign key (CITYTYPE_ID)
  references FEE_HLJ.C_CITY_CATEGORY (ID);
alter table FEE_HLJ.B_WBSTASK_BASIC_INFO_TEMP
  add constraint FKB7965D45FE2636A foreign key (BASICINFO_ID)
  references FEE_HLJ.B_WBSTASK_BASIC_INFO (ID);
alter table FEE_HLJ.B_WBSTASK_BASIC_INFO_TEMP
  add constraint FKB7965D45FE2636F foreign key (MANAGE_ID)
  references FEE_HLJ.B_WBSTASK_BASIC_MANAGE (ID);

prompt
prompt Creating table B_WBSTASK_ORDER
prompt ==============================
prompt
create table FEE_HLJ.B_WBSTASK_ORDER
(
  ID                          NUMBER(19) not null,
  ENTITY_CODE                 VARCHAR2(255 CHAR),
  ENTITY_CREATE_DATE          TIMESTAMP(6),
  ENTITY_DESC                 VARCHAR2(4000 CHAR),
  FINISH_DATE                 TIMESTAMP(6),
  ENTITY_NAME                 VARCHAR2(255 CHAR),
  ENTITY_STATUS               VARCHAR2(100 CHAR),
  ADJUST_DISPUTED_FEE         NUMBER(19,2),
  ADJUST_FEE_REASON           VARCHAR2(1000 CHAR),
  ADJUST_FEE_TYPE             VARCHAR2(100 CHAR),
  ADJUSTMENT_FEE              NUMBER(19,2),
  BATTERY_FEE                 NUMBER(19,2),
  BBU_INTOWER_COSTS           NUMBER(19,2),
  BBU_PLACED_1                NUMBER(1),
  BBU_PLACED_2                NUMBER(1),
  BBU_PLACED_3                NUMBER(1),
  BUSINESSATTRIBUTE           VARCHAR2(125 CHAR),
  CARRYOVER_AMOUNT            NUMBER(19,2),
  CONFIRM_STATUS              VARCHAR2(100 CHAR),
  COUNTY                      VARCHAR2(100 CHAR),
  DATUM_ALL_PRICE             NUMBER(19,2),
  DATUM_DISCOUNT1             NUMBER(19,2),
  DATUM_DISCOUNT2             NUMBER(19,2),
  DATUM_PRICE1                NUMBER(19,2),
  DATUM_PRICE2                NUMBER(19,2),
  DATUM_PRICE3                NUMBER(19,2),
  DATUM_SHARE_DATE1           TIMESTAMP(6),
  DATUM_SHARE_DATE2           TIMESTAMP(6),
  DATUM_SHARED_USERS          NUMBER(10),
  DEMAND_CITIY                VARCHAR2(456 CHAR),
  DEMAND_NUMBER               VARCHAR2(255 CHAR),
  DISCOUNT_1                  NUMBER(19,2),
  DISCOUNT_2                  NUMBER(19,2),
  DISCOUNT_3                  NUMBER(19,2),
  ELECTRICITY_CHARGE          NUMBER(19,2),
  END_SHARES_PRICE            NUMBER(19,2),
  END_TOWER_USERS             NUMBER(10),
  HANGING_HIGH_1              NUMBER(19,2),
  HANGING_HIGH_2              NUMBER(19,2),
  HANGING_HIGH_3              NUMBER(19,2),
  IS_MONTH_CHARGE             NUMBER(1),
  MICROWAVE_FEE               NUMBER(19,2),
  MONTH                       VARCHAR2(100 CHAR),
  MONTH_SERVICE_FEE           NUMBER(19,2),
  MORE_THAN                   NUMBER(19,2),
  OIL_CHARGE                  NUMBER(19,2),
  OIL_MODE                    VARCHAR2(125 CHAR),
  OIL_SERVICE_FEE             NUMBER(19,2),
  ORDER_ATTRIBUTE             VARCHAR2(100 CHAR),
  ORIGIN_OWNER                VARCHAR2(100 CHAR),
  OTHER_FEE1                  NUMBER(19,2),
  OWNER_TYPE                  VARCHAR2(100 CHAR),
  POWERIN_DISCOUNT1           NUMBER(19,2),
  POWERIN_DISCOUNT2           NUMBER(19,2),
  POWERIN_DISCOUNT_FEE        NUMBER(19,2),
  POWERIN_FEE                 NUMBER(19,2),
  POWERIN_SHARE_DATE1         TIMESTAMP(6),
  POWERIN_SHARE_DATE2         TIMESTAMP(6),
  POWERIN_SHARED_USERS        NUMBER(10),
  PRODUCT_NUM_1               NUMBER(19,2),
  PRODUCT_NUM_2               NUMBER(19,2),
  PRODUCT_NUM_3               NUMBER(19,2),
  PRODUCT_TYPE                VARCHAR2(125 CHAR),
  PROVIDER_CITY               VARCHAR2(456 CHAR),
  PROVIDER_NAME               VARCHAR2(456 CHAR),
  RETROACTIVE_FEE             NUMBER(19,2),
  ROOM_END_SHARES_PRICE       NUMBER(19,2),
  ROOM_PRICE1                 NUMBER(19,2),
  ROOM_PRICE2                 NUMBER(19,2),
  ROOM_PRICE3                 NUMBER(19,2),
  ROOM_SHARED_DATE_1          TIMESTAMP(6),
  ROOM_SHARED_DATE2           TIMESTAMP(6),
  ROOM_SHARED_AFTER_RENT1     NUMBER(19,2),
  ROOM_SHARED_AFTER_RENT2     NUMBER(19,2),
  ROOM_SHARED_USERS           NUMBER(10),
  ROOM_TYPE                   VARCHAR2(125 CHAR),
  SERCHARGE_MEASURE           NUMBER(19,2),
  SERVER_DATE                 TIMESTAMP(6),
  SHARED_AFTER_RENT1          NUMBER(19,2),
  SHARED_AFTER_RENT2          NUMBER(19,2),
  SITE_DISCOUNT1              NUMBER(19,2),
  SITE_DISCOUNT2              NUMBER(19,2),
  SITE_DISCOUNT_FEE           NUMBER(19,2),
  SITE_FEE                    NUMBER(19,2),
  SITE_SHARE_DATE1            TIMESTAMP(6),
  SITE_SHARE_DATE2            TIMESTAMP(6),
  SITE_SHARED_USERS           NUMBER(10),
  TASK_CODE                   VARCHAR2(255 CHAR),
  TASK_NAME                   VARCHAR2(456 CHAR),
  TOWER_SHARED_DATE_1         TIMESTAMP(6),
  TOWER_SHARED_DATE2          TIMESTAMP(6),
  WBSTASK_PRICE_1             NUMBER(19,2),
  WBSTASK_PRICE_2             NUMBER(19,2),
  WBSTASK_PRICE_3             NUMBER(19,2),
  WLAN_FEE                    NUMBER(19,2),
  ENTITY_CREATOR_ID           NUMBER(19),
  TERRITORIALCITY_ID          NUMBER(19),
  ALL_SERVER_FEE              NUMBER(19,2),
  SERVER_FEE1                 NUMBER(19,2),
  SERVER_FEE2                 NUMBER(19,2),
  SERVER_FEE3                 NUMBER(19,2),
  SERVER_DISCOUNT1            NUMBER(19,2),
  SERVER_DISCOUNT2            NUMBER(19,2),
  SERVER_SHARE_DATE1          TIMESTAMP(6),
  SERVER_SHARE_DATE2          TIMESTAMP(6),
  SERVER_SHARED_USERS         NUMBER(10),
  ADJUSTED_FEE                NUMBER(19,2),
  IS_COUNT                    NUMBER(10),
  ALL_SERVER_FEE_BACK         NUMBER(19,2),
  ALL_SERVER_FEE_TOTAL        NUMBER(19,2),
  ALL_SERVER_FEE_TOWER        NUMBER(19,2),
  BATTERY_FEE_BACK            NUMBER(19,2),
  BATTERY_FEE_TOTAL           NUMBER(19,2),
  BATTERY_FEE_TOWER           NUMBER(19,2),
  BBU_INTOWER_COSTS_BACK      NUMBER(19,2),
  BBU_INTOWER_COSTS_TOTAL     NUMBER(19,2),
  BBU_INTOWER_COSTS_TOWER     NUMBER(19,2),
  DATUM_ALL_PRICE_BACK        NUMBER(19,2),
  DATUM_ALL_PRICE_TOTAL       NUMBER(19,2),
  DATUM_ALL_PRICE_TOWER       NUMBER(19,2),
  ELECTRICITY_CHARGE_BACK     NUMBER(19,2),
  ELECTRICITY_CHARGE_TOTAL    NUMBER(19,2),
  ELECTRICITY_CHARGE_TOWER    NUMBER(19,2),
  END_SHARES_PRICE_BACK       NUMBER(19,2),
  END_SHARES_PRICE_TOTAL      NUMBER(19,2),
  END_SHARES_PRICE_TOWER      NUMBER(19,2),
  MICROWAVE_FEE_BACK          NUMBER(19,2),
  MICROWAVE_FEE_TOTAL         NUMBER(19,2),
  MICROWAVE_FEE_TOWER         NUMBER(19,2),
  MONTH_SERVICE_FEE_BACK      NUMBER(19,2),
  MONTH_SERVICE_FEE_TOTAL     NUMBER(19,2),
  MONTH_SERVICE_FEE_TOWER     NUMBER(19,2),
  MORE_THAN_BACK              NUMBER(19,2),
  MORE_THAN_TOTAL             NUMBER(19,2),
  MORE_THAN_TOWER             NUMBER(19,2),
  OIL_CHARGE_BACK             NUMBER(19,2),
  OIL_CHARGE_TOTAL            NUMBER(19,2),
  OIL_CHARGE_TOWER            NUMBER(19,2),
  OIL_SERVICE_FEE_BACK        NUMBER(19,2),
  OIL_SERVICE_FEE_TOTAL       NUMBER(19,2),
  OIL_SERVICE_FEE_TOWER       NUMBER(19,2),
  OTHER_FEE_BACK1             NUMBER(19,2),
  OTHER_FEE_TOTAL1            NUMBER(19,2),
  OTHER_FEE_TOWER1            NUMBER(19,2),
  POWERIN_DISCOUNT_FEE_BACK   NUMBER(19,2),
  POWERIN_DISCOUNT_FEE_TOTAL  NUMBER(19,2),
  POWERIN_DISCOUNT_FEE_TOWER  NUMBER(19,2),
  PUNISHMENT_RESP_FEE         NUMBER(19,2),
  ROOM_END_SHARES_PRICE_BACK  NUMBER(19,2),
  ROOM_END_SHARES_PRICE_TOTAL NUMBER(19,2),
  ROOM_END_SHARES_PRICE_TOWER NUMBER(19,2),
  SITE_DISCOUNT_FEE_BACK      NUMBER(19,2),
  SITE_DISCOUNT_FEE_TOTAL     NUMBER(19,2),
  SITE_DISCOUNT_FEE_TOWER     NUMBER(19,2),
  WLAN_FEE_BACK               NUMBER(19,2),
  WLAN_FEE_TOTAL              NUMBER(19,2),
  WLAN_FEE_TOWER              NUMBER(19,2),
  AREA_OF_STRUCTURE           NUMBER(19,2),
  CHAMBER_FEE                 NUMBER(19,2),
  CHAMBER_FEE_BACK            NUMBER(19,2),
  CHAMBER_FEE_TOTAL           NUMBER(19,2),
  CHAMBER_FEE_TOWER           NUMBER(19,2),
  CHAMBER_SHARED_DATE_1       TIMESTAMP(6),
  CHAMBER_SHARED_DATE2        TIMESTAMP(6),
  CHAMBER_SHARED_AFTER_RENT1  NUMBER(19,2),
  CHAMBER_SHARED_AFTER_RENT2  NUMBER(19,2),
  END_CHAMBER_USERS           NUMBER(10),
  ENERGY_CHARGE_FEE           NUMBER(19,2),
  ENERGY_CHARGE_FEE_BACK      NUMBER(19,2),
  ENERGY_CHARGE_FEE_TOTAL     NUMBER(19,2),
  ENERGY_CHARGE_FEE_TOWER     NUMBER(19,2),
  PRODUCT_NUM                 NUMBER(19,2),
  PROPERTY_TYPE               VARCHAR2(255 CHAR),
  SERVER_FEE                  NUMBER(19,2),
  TOTAL_SERVICE_FEE           NUMBER(19,2),
  TOTAL_SERVICE_FEE_BACK      NUMBER(19,2),
  TOTAL_SERVICE_FEE_TOTAL     NUMBER(19,2),
  TOTAL_SERVICE_FEE_TOWER     NUMBER(19,2),
  WBSTASK_PRICE               NUMBER(19,2)
)
tablespace EPMSDEV
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.B_WBSTASK_ORDER
  add primary key (ID)
  using index 
  tablespace EPMSDEV
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.B_WBSTASK_ORDER
  add constraint FK373457DF7D3296C0 foreign key (ENTITY_CREATOR_ID)
  references FEE_HLJ.S_PRIVILEGE_USER (ID);
alter table FEE_HLJ.B_WBSTASK_ORDER
  add constraint FK373457DFC1589258 foreign key (TERRITORIALCITY_ID)
  references FEE_HLJ.C_ORGANIZATION (ID);

prompt
prompt Creating table B_WBSTASK_SETTL
prompt ==============================
prompt
create table FEE_HLJ.B_WBSTASK_SETTL
(
  ID                      NUMBER(19) not null,
  ENTITY_CODE             VARCHAR2(255 CHAR),
  ENTITY_CREATE_DATE      TIMESTAMP(6),
  ENTITY_DESC             VARCHAR2(4000 CHAR),
  FINISH_DATE             TIMESTAMP(6),
  ENTITY_NAME             VARCHAR2(255 CHAR),
  ENTITY_STATUS           VARCHAR2(100 CHAR),
  ADJUST_DISPUTED_FEE     NUMBER(19,2),
  ADJUST_FEE_REASON       VARCHAR2(1000 CHAR),
  ADJUST_FEE_TYPE         VARCHAR2(100 CHAR),
  ADJUSTMENT_FEE          NUMBER(19,2),
  BATTERY_FEE             NUMBER(19,2),
  BBU_INTOWER_COSTS       NUMBER(19,2),
  BBU_PLACED_1            NUMBER(1),
  BBU_PLACED_2            NUMBER(1),
  BBU_PLACED_3            NUMBER(1),
  BUSINESSATTRIBUTE       VARCHAR2(125 CHAR),
  CARRYOVER_AMOUNT        NUMBER(19,2),
  CONFIRM_STATUS          VARCHAR2(100 CHAR),
  COUNTY                  VARCHAR2(100 CHAR),
  DATUM_ALL_PRICE         NUMBER(19,2),
  DATUM_DISCOUNT1         NUMBER(19,2),
  DATUM_DISCOUNT2         NUMBER(19,2),
  DATUM_PRICE1            NUMBER(19,2),
  DATUM_PRICE2            NUMBER(19,2),
  DATUM_PRICE3            NUMBER(19,2),
  DATUM_SHARE_DATE1       TIMESTAMP(6),
  DATUM_SHARE_DATE2       TIMESTAMP(6),
  DATUM_SHARED_USERS      NUMBER(10),
  DEMAND_CITIY            VARCHAR2(456 CHAR),
  DEMAND_NUMBER           VARCHAR2(255 CHAR),
  DISCOUNT_1              NUMBER(19,2),
  DISCOUNT_2              NUMBER(19,2),
  DISCOUNT_3              NUMBER(19,2),
  ELECTRICITY_CHARGE      NUMBER(19,2),
  END_SHARES_PRICE        NUMBER(19,2),
  END_TOWER_USERS         NUMBER(10),
  HANGING_HIGH_1          NUMBER(19,2),
  HANGING_HIGH_2          NUMBER(19,2),
  HANGING_HIGH_3          NUMBER(19,2),
  IS_MONTH_CHARGE         NUMBER(1),
  MICROWAVE_FEE           NUMBER(19,2),
  MONTH                   NUMBER(10),
  MONTH_SERVICE_FEE       NUMBER(19,2),
  MORE_THAN               NUMBER(19,2),
  OIL_CHARGE              NUMBER(19,2),
  OIL_MODE                VARCHAR2(125 CHAR),
  OIL_SERVICE_FEE         NUMBER(19,2),
  ORDER_ATTRIBUTE         VARCHAR2(100 CHAR),
  ORIGIN_OWNER            VARCHAR2(100 CHAR),
  OTHER_FEE1              NUMBER(19,2),
  OWNER_TYPE              VARCHAR2(100 CHAR),
  POWERIN_DISCOUNT1       NUMBER(19,2),
  POWERIN_DISCOUNT2       NUMBER(19,2),
  POWERIN_DISCOUNT_FEE    NUMBER(19,2),
  POWERIN_FEE             NUMBER(19,2),
  POWERIN_SHARE_DATE1     TIMESTAMP(6),
  POWERIN_SHARE_DATE2     TIMESTAMP(6),
  POWERIN_SHARED_USERS    NUMBER(10),
  PRODUCT_NUM_1           NUMBER(19,2),
  PRODUCT_NUM_2           NUMBER(19,2),
  PRODUCT_NUM_3           NUMBER(19,2),
  PRODUCT_TYPE            VARCHAR2(125 CHAR),
  PROVIDER_CITY           VARCHAR2(456 CHAR),
  PROVIDER_NAME           VARCHAR2(456 CHAR),
  RETROACTIVE_FEE         NUMBER(19,2),
  ROOM_END_SHARES_PRICE   NUMBER(19,2),
  ROOM_PRICE1             NUMBER(19,2),
  ROOM_PRICE2             NUMBER(19,2),
  ROOM_PRICE3             NUMBER(19,2),
  ROOM_SHARED_DATE_1      TIMESTAMP(6),
  ROOM_SHARED_DATE2       TIMESTAMP(6),
  ROOM_SHARED_AFTER_RENT1 NUMBER(19,2),
  ROOM_SHARED_AFTER_RENT2 NUMBER(19,2),
  ROOM_SHARED_USERS       NUMBER(10),
  ROOM_TYPE               VARCHAR2(125 CHAR),
  SERCHARGE_MEASURE       NUMBER(19,2),
  SERVER_DATE             TIMESTAMP(6),
  SHARED_AFTER_RENT1      NUMBER(19,2),
  SHARED_AFTER_RENT2      NUMBER(19,2),
  SITE_DISCOUNT1          NUMBER(19,2),
  SITE_DISCOUNT2          NUMBER(19,2),
  SITE_DISCOUNT_FEE       NUMBER(19,2),
  SITE_FEE                NUMBER(19,2),
  SITE_SHARE_DATE1        TIMESTAMP(6),
  SITE_SHARE_DATE2        TIMESTAMP(6),
  SITE_SHARED_USERS       NUMBER(10),
  TASK_CODE               VARCHAR2(255 CHAR),
  TASK_NAME               VARCHAR2(456 CHAR),
  TOWER_SHARED_DATE_1     TIMESTAMP(6),
  TOWER_SHARED_DATE2      TIMESTAMP(6),
  WBSTASK_PRICE_1         NUMBER(19,2),
  WBSTASK_PRICE_2         NUMBER(19,2),
  WBSTASK_PRICE_3         NUMBER(19,2),
  WLAN_FEE                NUMBER(19,2),
  YEAR                    NUMBER(10),
  TERRITORIALCITY_ID      NUMBER(19),
  ENTITY_CREATOR_ID       NUMBER(19)
)
tablespace EPMSDEV
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.B_WBSTASK_SETTL
  add primary key (ID)
  using index 
  tablespace EPMSDEV
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.B_WBSTASK_SETTL
  add constraint FK3929FB0B7D3296C0 foreign key (ENTITY_CREATOR_ID)
  references FEE_HLJ.S_PRIVILEGE_USER (ID);
alter table FEE_HLJ.B_WBSTASK_SETTL
  add constraint FK3929FB0BC1589258 foreign key (TERRITORIALCITY_ID)
  references FEE_HLJ.C_ORGANIZATION (ID);

prompt
prompt Creating table B_WBS_SYS_ORDER
prompt ==============================
prompt
create table FEE_HLJ.B_WBS_SYS_ORDER
(
  ID                   NUMBER(19) not null,
  ENTITY_CODE          VARCHAR2(255 CHAR),
  ENTITY_CREATE_DATE   TIMESTAMP(6),
  ENTITY_DESC          VARCHAR2(4000 CHAR),
  FINISH_DATE          TIMESTAMP(6),
  ENTITY_NAME          VARCHAR2(255 CHAR),
  ENTITY_STATUS        VARCHAR2(100 CHAR),
  AUDIT_RESULTS        VARCHAR2(456 CHAR),
  CALCULATION_PROCESS  VARCHAR2(4000 CHAR),
  DEMAND_NUMBER        VARCHAR2(255 CHAR),
  MONTH                VARCHAR2(255 CHAR),
  PARAM1               VARCHAR2(200 CHAR),
  PARAM10              VARCHAR2(200 CHAR),
  PARAM10_SYSTEM       VARCHAR2(200 CHAR),
  PARAM11              VARCHAR2(200 CHAR),
  PARAM11_SYSTEM       VARCHAR2(200 CHAR),
  PARAM12              VARCHAR2(200 CHAR),
  PARAM12_SYSTEM       VARCHAR2(200 CHAR),
  PARAM13              VARCHAR2(200 CHAR),
  PARAM13_SYSTEM       VARCHAR2(200 CHAR),
  PARAM14              VARCHAR2(200 CHAR),
  PARAM14_SYSTEM       VARCHAR2(200 CHAR),
  PARAM1_SYSTEM        VARCHAR2(200 CHAR),
  PARAM2               VARCHAR2(200 CHAR),
  PARAM2_SYSTEM        VARCHAR2(200 CHAR),
  PARAM3               VARCHAR2(200 CHAR),
  PARAM3_SYSTEM        VARCHAR2(200 CHAR),
  PARAM4               VARCHAR2(200 CHAR),
  PARAM4_SYSTEM        VARCHAR2(200 CHAR),
  PARAM5               VARCHAR2(200 CHAR),
  PARAM5_SYSTEM        VARCHAR2(200 CHAR),
  PARAM6               VARCHAR2(200 CHAR),
  PARAM6_SYSTEM        VARCHAR2(200 CHAR),
  PARAM7               VARCHAR2(200 CHAR),
  PARAM7_SYSTEM        VARCHAR2(200 CHAR),
  PARAM8               VARCHAR2(200 CHAR),
  PARAM8_SYSTEM        VARCHAR2(200 CHAR),
  PARAM9               VARCHAR2(200 CHAR),
  PARAM9_SYSTEM        VARCHAR2(200 CHAR),
  TASK_CODE            VARCHAR2(255 CHAR),
  TASK_NAME            VARCHAR2(456 CHAR),
  TOTAL                VARCHAR2(200 CHAR),
  YEAR                 VARCHAR2(255 CHAR),
  ENTITY_CREATOR_ID    NUMBER(19),
  TOWERRENT_APPLY_ID   NUMBER(19),
  ATTACHMENT_UNIT_ID   NUMBER(19),
  TERRITORIALCITY_ID   NUMBER(19),
  ORDER_ID             NUMBER(19),
  CHANPIN_FUWUFEI      VARCHAR2(456 CHAR),
  CHANPIN_FUWU_BIANHUA VARCHAR2(456 CHAR),
  TIAOZHENG            VARCHAR2(456 CHAR)
)
tablespace EPMSDEV
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.B_WBS_SYS_ORDER
  add primary key (ID)
  using index 
  tablespace EPMSDEV
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.B_WBS_SYS_ORDER
  add constraint FKB239B5C85796B1C3 foreign key (TOWERRENT_APPLY_ID)
  references FEE_HLJ.B_TOWER_RENT_APPLY (ID);
alter table FEE_HLJ.B_WBS_SYS_ORDER
  add constraint FKB239B5C87D3296C0 foreign key (ENTITY_CREATOR_ID)
  references FEE_HLJ.S_PRIVILEGE_USER (ID);
alter table FEE_HLJ.B_WBS_SYS_ORDER
  add constraint FKB239B5C8BB27379C foreign key (ORDER_ID)
  references FEE_HLJ.B_ACER_STATION_ORDER_DETAIL (ID);
alter table FEE_HLJ.B_WBS_SYS_ORDER
  add constraint FKB239B5C8C1589258 foreign key (TERRITORIALCITY_ID)
  references FEE_HLJ.C_ORGANIZATION (ID);
alter table FEE_HLJ.B_WBS_SYS_ORDER
  add constraint FKB239B5C8F7258E38 foreign key (ATTACHMENT_UNIT_ID)
  references FEE_HLJ.B_ATTACHMENT_UNIT (ID);

prompt
prompt Creating table B_WFBUSINESS_ERROR
prompt =================================
prompt
create table FEE_HLJ.B_WFBUSINESS_ERROR
(
  ID         NUMBER(19) not null,
  BUSINESSID NUMBER(19),
  CREATEDATE TIMESTAMP(6),
  ERROR      VARCHAR2(255 CHAR),
  STATUS     VARCHAR2(255 CHAR),
  USERID     NUMBER(19),
  WFTASKID   NUMBER(19)
)
tablespace EPMSDEV
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.B_WFBUSINESS_ERROR
  add primary key (ID)
  using index 
  tablespace EPMSDEV
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table B_WF_AUDIT_CONTENT
prompt =================================
prompt
create table FEE_HLJ.B_WF_AUDIT_CONTENT
(
  ID                 NUMBER(19) not null,
  ENTITY_CODE        VARCHAR2(255 CHAR),
  ENTITY_CREATE_DATE TIMESTAMP(6),
  ENTITY_DESC        VARCHAR2(4000 CHAR),
  FINISH_DATE        TIMESTAMP(6),
  ENTITY_NAME        VARCHAR2(255 CHAR),
  ENTITY_STATUS      VARCHAR2(100 CHAR),
  CONTENT            VARCHAR2(255 CHAR),
  TASK_ID            NUMBER(19),
  USER_ID            NUMBER(19),
  WF_ACT_ID          NUMBER(19),
  ENTITY_CREATOR_ID  NUMBER(19)
)
tablespace EPMSDEV
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.B_WF_AUDIT_CONTENT
  add primary key (ID)
  using index 
  tablespace EPMSDEV
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table B_WF_TASK
prompt ========================
prompt
create table FEE_HLJ.B_WF_TASK
(
  ID             NUMBER(19) not null,
  BEGIN_TIME     TIMESTAMP(6),
  DELETED_FLAG   VARCHAR2(255 CHAR),
  END_TIME       TIMESTAMP(6),
  FLOWINSTANCEID VARCHAR2(255 CHAR),
  NODE_NAME      VARCHAR2(255 CHAR),
  OA_STATE       NUMBER(10),
  PAR_TASK_ID    VARCHAR2(255 CHAR),
  STEPINSTANCEID VARCHAR2(255 CHAR),
  TASKNAME       VARCHAR2(512 CHAR),
  TASK_SHOW      NUMBER(10),
  TASK_TYPE      VARCHAR2(255 CHAR),
  TASK_URL       VARCHAR2(1024 CHAR),
  PRE_WFTASK_ID  NUMBER(19),
  WF_ACT_ID      NUMBER(19),
  USER_ID        NUMBER(19),
  PRE_USER_ID    NUMBER(19),
  TASK_ID        NUMBER(19),
  SIGNIN_TIME    TIMESTAMP(6)
)
tablespace EPMSDEV
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.B_WF_TASK
  add primary key (ID)
  using index 
  tablespace EPMSDEV
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table B_WF_HANDLER_HIS
prompt ===============================
prompt
create table FEE_HLJ.B_WF_HANDLER_HIS
(
  ID             NUMBER(19) not null,
  HANDERDATE     TIMESTAMP(6),
  HANDLERCONTENT VARCHAR2(1024 CHAR),
  NODENAME       VARCHAR2(512 CHAR),
  OPSTR          VARCHAR2(512 CHAR),
  ORGNAME        VARCHAR2(255 CHAR),
  TASKNAME       VARCHAR2(512 CHAR),
  UNAME          VARCHAR2(255 CHAR),
  WF_ACT_ID      NUMBER(19),
  WF_TASK_ID     NUMBER(19),
  USER_ID        NUMBER(19)
)
tablespace EPMSDEV
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.B_WF_HANDLER_HIS
  add primary key (ID)
  using index 
  tablespace EPMSDEV
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.B_WF_HANDLER_HIS
  add constraint FKED84712A325F61C5 foreign key (WF_TASK_ID)
  references FEE_HLJ.B_WF_TASK (ID);

prompt
prompt Creating table C_ATTACHMENT_STAGETYPE
prompt =====================================
prompt
create table FEE_HLJ.C_ATTACHMENT_STAGETYPE
(
  ID                  NUMBER(19) not null,
  ATTACHMENT_STAGE_ID NUMBER(19),
  ATTACHMENT_TYPE_ID  NUMBER(19),
  TYPE_ID             NUMBER(19),
  MUST                NUMBER(19),
  PRIORITY            NUMBER(19)
)
tablespace EPMSDEV
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table C_ATTCHMENT_STAGE
prompt ================================
prompt
create table FEE_HLJ.C_ATTCHMENT_STAGE
(
  ID           NUMBER(19) not null,
  TYPE_CODE    VARCHAR2(255 CHAR),
  TYPE_DESC    VARCHAR2(255 CHAR),
  DELETED_FLAG NUMBER(1),
  TYPE_NAME    VARCHAR2(255 CHAR),
  PRIORITY     NUMBER(10),
  CLASS_NAME   VARCHAR2(255 CHAR)
)
tablespace EPMSDEV
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.C_ATTCHMENT_STAGE
  add primary key (ID)
  using index 
  tablespace EPMSDEV
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table C_ATTCHMENT_TYPE
prompt ===============================
prompt
create table FEE_HLJ.C_ATTCHMENT_TYPE
(
  ID                  NUMBER(19) not null,
  TYPE_CODE           VARCHAR2(255 CHAR),
  TYPE_DESC           VARCHAR2(255 CHAR),
  DELETED_FLAG        NUMBER(1),
  TYPE_NAME           VARCHAR2(255 CHAR),
  PRIORITY            NUMBER(10),
  MUST                NUMBER(19),
  ATTACHMENT_STAGE_ID NUMBER(19),
  ATTACHMENT_UNIT_ID  NUMBER(19)
)
tablespace EPMSDEV
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.C_ATTCHMENT_TYPE
  add primary key (ID)
  using index 
  tablespace EPMSDEV
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.C_ATTCHMENT_TYPE
  add constraint FK2E4E74D1F7258E38 foreign key (ATTACHMENT_UNIT_ID)
  references FEE_HLJ.B_ATTACHMENT_UNIT (ID);

prompt
prompt Creating table C_BIZ_CATEGORY_TYPE
prompt ==================================
prompt
create table FEE_HLJ.C_BIZ_CATEGORY_TYPE
(
  ID              NUMBER(19) not null,
  TYPE_CODE       VARCHAR2(255 CHAR),
  TYPE_DESC       VARCHAR2(255 CHAR),
  DELETED_FLAG    NUMBER(1),
  TYPE_NAME       VARCHAR2(255 CHAR),
  PRIORITY        NUMBER(10),
  CATEGORY        VARCHAR2(255 CHAR),
  CATEGORY_DESC   VARCHAR2(255 CHAR),
  PARENT_CATEGORY VARCHAR2(255 CHAR)
)
tablespace EPMSDEV
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.C_BIZ_CATEGORY_TYPE
  add primary key (ID)
  using index 
  tablespace EPMSDEV
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table C_CALCULATOR
prompt ===========================
prompt
create table FEE_HLJ.C_CALCULATOR
(
  ID             NUMBER(19) not null,
  EXP            VARCHAR2(255 CHAR),
  MODIFY_DATE    TIMESTAMP(6),
  NAME           VARCHAR2(255 CHAR),
  VALUE          NUMBER(19,2),
  MODIFY_USER_ID NUMBER(19),
  DESCRIPTION    VARCHAR2(4000 CHAR),
  CODE           VARCHAR2(255 CHAR)
)
tablespace EPMSDEV
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.C_CALCULATOR
  add primary key (ID)
  using index 
  tablespace EPMSDEV
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.C_CALCULATOR
  add constraint FKF6B4B45EAF882260 foreign key (MODIFY_USER_ID)
  references FEE_HLJ.S_PRIVILEGE_USER (ID);

prompt
prompt Creating table C_CALCULATOR_PARAM
prompt =================================
prompt
create table FEE_HLJ.C_CALCULATOR_PARAM
(
  ID             NUMBER(19) not null,
  DESCRIPTION    VARCHAR2(255 CHAR),
  MODIFY_DATE    TIMESTAMP(6),
  NAME           VARCHAR2(255 CHAR),
  MODIFY_USER_ID NUMBER(19),
  CALCULATOR_ID  NUMBER(19)
)
tablespace EPMSDEV
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.C_CALCULATOR_PARAM
  add primary key (ID)
  using index 
  tablespace EPMSDEV
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.C_CALCULATOR_PARAM
  add constraint FK165BF16CAF882260 foreign key (MODIFY_USER_ID)
  references FEE_HLJ.S_PRIVILEGE_USER (ID);
alter table FEE_HLJ.C_CALCULATOR_PARAM
  add constraint FK165BF16CEC542B2E foreign key (CALCULATOR_ID)
  references FEE_HLJ.C_CALCULATOR (ID);

prompt
prompt Creating table C_CALCULATOR_VARIABLE
prompt ====================================
prompt
create table FEE_HLJ.C_CALCULATOR_VARIABLE
(
  ID             NUMBER(19) not null,
  DESCRIPTION    VARCHAR2(255 CHAR),
  EXP            VARCHAR2(255 CHAR),
  MODIFY_DATE    TIMESTAMP(6),
  NAME           VARCHAR2(255 CHAR),
  CALCULATOR_ID  NUMBER(19),
  MODIFY_USER_ID NUMBER(19)
)
tablespace EPMSDEV
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.C_CALCULATOR_VARIABLE
  add primary key (ID)
  using index 
  tablespace EPMSDEV
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.C_CALCULATOR_VARIABLE
  add constraint FK6537593DAF882260 foreign key (MODIFY_USER_ID)
  references FEE_HLJ.S_PRIVILEGE_USER (ID);
alter table FEE_HLJ.C_CALCULATOR_VARIABLE
  add constraint FK6537593DEC542B2E foreign key (CALCULATOR_ID)
  references FEE_HLJ.C_CALCULATOR (ID);

prompt
prompt Creating table C_CALC_PARAM
prompt ===========================
prompt
create table FEE_HLJ.C_CALC_PARAM
(
  ID           NUMBER(19) not null,
  TYPE_CODE    VARCHAR2(255 CHAR),
  TYPE_DESC    VARCHAR2(255 CHAR),
  DELETED_FLAG NUMBER(1),
  TYPE_NAME    VARCHAR2(255 CHAR),
  PRIORITY     NUMBER(10),
  PARAM_VALUE  VARCHAR2(255 CHAR),
  RIGHTTYPE_ID NUMBER(19)
)
tablespace EPMSDEV
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.C_CALC_PARAM
  add primary key (ID)
  using index 
  tablespace EPMSDEV
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.C_CALC_PARAM
  add constraint FKD1626B7FD43E1B44 foreign key (RIGHTTYPE_ID)
  references FEE_HLJ.C_PROPERTY_RIGHT_TYPE (ID);

prompt
prompt Creating table C_CODE
prompt =====================
prompt
create table FEE_HLJ.C_CODE
(
  ID           NUMBER(19) not null,
  TYPE_CODE    VARCHAR2(255 CHAR),
  TYPE_DESC    VARCHAR2(255 CHAR),
  DELETED_FLAG NUMBER(1),
  TYPE_NAME    VARCHAR2(255 CHAR),
  PRIORITY     NUMBER(10),
  CODE_SQL     VARCHAR2(4000 CHAR)
)
tablespace EPMSDEV
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.C_CODE
  add primary key (ID)
  using index 
  tablespace EPMSDEV
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table C_DEPARTMENT_ARCHIVES
prompt ====================================
prompt
create table FEE_HLJ.C_DEPARTMENT_ARCHIVES
(
  ID                 NUMBER(19) not null,
  TYPE_CODE          VARCHAR2(255 CHAR),
  TYPE_DESC          VARCHAR2(255 CHAR),
  DELETED_FLAG       NUMBER(1),
  TYPE_NAME          VARCHAR2(255 CHAR),
  PRIORITY           NUMBER(10),
  COMPANY_NAME       VARCHAR2(255 CHAR),
  COSTCENTER_CODE    VARCHAR2(255 CHAR),
  COSTCENTER_NAME    VARCHAR2(255 CHAR),
  DEPARTMENT_CODE    VARCHAR2(255 CHAR),
  DEPARTMENT_NAME    VARCHAR2(255 CHAR),
  OA_DEPARTMENT_CODE VARCHAR2(255 CHAR),
  OA_DEPARTMENT_NAME VARCHAR2(255 CHAR)
)
tablespace EPMSDEV
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.C_DEPARTMENT_ARCHIVES
  add primary key (ID)
  using index 
  tablespace EPMSDEV
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table C_DISCOUNT_TYPE
prompt ==============================
prompt
create table FEE_HLJ.C_DISCOUNT_TYPE
(
  ID           NUMBER(19) not null,
  TYPE_CODE    VARCHAR2(255 CHAR),
  TYPE_DESC    VARCHAR2(255 CHAR),
  DELETED_FLAG NUMBER(1),
  TYPE_NAME    VARCHAR2(255 CHAR),
  PRIORITY     NUMBER(10)
)
tablespace EPMSDEV
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.C_DISCOUNT_TYPE
  add primary key (ID)
  using index 
  tablespace EPMSDEV
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table C_DISCOUNT_DETAIL
prompt ================================
prompt
create table FEE_HLJ.C_DISCOUNT_DETAIL
(
  ID              NUMBER(19) not null,
  TYPE_CODE       VARCHAR2(255 CHAR),
  TYPE_DESC       VARCHAR2(255 CHAR),
  DELETED_FLAG    NUMBER(1),
  TYPE_NAME       VARCHAR2(255 CHAR),
  PRIORITY        NUMBER(10),
  DISCOUNT        NUMBER(21,4),
  IS_NEWSHARED    NUMBER(1),
  SHARENUMBER     NUMBER(10),
  PROPERTYTYPE_ID NUMBER(19),
  DISCOUNTTYPE_ID NUMBER(19)
)
tablespace EPMSDEV
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.C_DISCOUNT_DETAIL
  add primary key (ID)
  using index 
  tablespace EPMSDEV
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.C_DISCOUNT_DETAIL
  add constraint FK111295333A9D0D6B foreign key (PROPERTYTYPE_ID)
  references FEE_HLJ.C_PROPERTY_RIGHT_TYPE (ID);
alter table FEE_HLJ.C_DISCOUNT_DETAIL
  add constraint FK11129533666B11B foreign key (DISCOUNTTYPE_ID)
  references FEE_HLJ.C_DISCOUNT_TYPE (ID);

prompt
prompt Creating table C_FLOWTYPE
prompt =========================
prompt
create table FEE_HLJ.C_FLOWTYPE
(
  FLOWTYPE_ID    VARCHAR2(255 CHAR) not null,
  DESCRIPT       VARCHAR2(255 CHAR),
  FLOWTYPE_NAME  VARCHAR2(100 CHAR),
  FLOW_ID        VARCHAR2(255 CHAR),
  MY_WORKFLOW_ID NUMBER(19),
  WORKFLOW_ID    NUMBER(19),
  MODULE_CODE    VARCHAR2(255 CHAR)
)
tablespace EPMSDEV
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.C_FLOWTYPE
  add primary key (FLOWTYPE_ID)
  using index 
  tablespace EPMSDEV
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table C_FLOW_ORG
prompt =========================
prompt
create table FEE_HLJ.C_FLOW_ORG
(
  ID          NUMBER(19) not null,
  DESCRIPT    VARCHAR2(255 CHAR),
  WORKFLOW_ID NUMBER(19),
  FLOWTYPE_ID VARCHAR2(255 CHAR),
  ORG_ID      NUMBER(19)
)
tablespace EPMSDEV
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.C_FLOW_ORG
  add primary key (ID)
  using index 
  tablespace EPMSDEV
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.C_FLOW_ORG
  add constraint FK_ORGFLOW_FLOWTYPE foreign key (FLOWTYPE_ID)
  references FEE_HLJ.C_FLOWTYPE (FLOWTYPE_ID);

prompt
prompt Creating table C_ORG_TYPE
prompt =========================
prompt
create table FEE_HLJ.C_ORG_TYPE
(
  ID           NUMBER(19) not null,
  TYPE_CODE    VARCHAR2(255 CHAR),
  TYPE_DESC    VARCHAR2(255 CHAR),
  DELETED_FLAG NUMBER(1),
  TYPE_NAME    VARCHAR2(255 CHAR),
  PRIORITY     NUMBER(10)
)
tablespace EPMSDEV
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.C_ORG_TYPE
  add primary key (ID)
  using index 
  tablespace EPMSDEV
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table C_PARTNER
prompt ========================
prompt
create table FEE_HLJ.C_PARTNER
(
  ID                         NUMBER(19) not null,
  P_ACCOUNT                  VARCHAR2(50 CHAR),
  P_ACCOUNT_NAME             VARCHAR2(255 CHAR),
  ACTIVE_FLAG                NUMBER(1),
  P_ADDERSS                  VARCHAR2(255 CHAR),
  ADDRESS1                   VARCHAR2(255 CHAR),
  ADDRESS2                   VARCHAR2(255 CHAR),
  P_BUSINESS_SCOPE           VARCHAR2(255 CHAR),
  P_CODE                     VARCHAR2(50 CHAR),
  P_COMPANY_TYPE             VARCHAR2(255 CHAR),
  P_COMPLAINT                VARCHAR2(50 CHAR),
  P_CONTRACT_CODE            VARCHAR2(50 CHAR),
  P_CONTRACT_NAME            VARCHAR2(255 CHAR),
  P_CONTRACT_PERIOD          VARCHAR2(50 CHAR),
  P_CURRENCY                 VARCHAR2(50 CHAR),
  P_DEADLINE                 VARCHAR2(50 CHAR),
  P_FAX                      VARCHAR2(50 CHAR),
  P_GROSS_VALUE              NUMBER(19),
  P_HIGHEST_QUOTA            NUMBER(19),
  P_LOCAL_TAX_NUMBER         VARCHAR2(50 CHAR),
  P_MANAGER                  VARCHAR2(50 CHAR),
  P_NAME                     VARCHAR2(255 CHAR),
  P_NATIONAL_TAX_NUMBER      VARCHAR2(50 CHAR),
  P_ORGANIZATION_CODE_NUMBER VARCHAR2(50 CHAR),
  P_MANAGER_PHONE            VARCHAR2(100 CHAR),
  P_PROFESSIONAL_CATEGORY    VARCHAR2(50 CHAR),
  P_REG_CAPITAL              VARCHAR2(50 CHAR),
  P_REG_TIME                 TIMESTAMP(6),
  P_REGADDRES                VARCHAR2(255 CHAR),
  P_REGISTRATION_NUMBER      VARCHAR2(50 CHAR),
  P_REPRESENTATIVE           VARCHAR2(255 CHAR),
  P_REPRESENTATIVE_ID        VARCHAR2(50 CHAR),
  P_SALESMAN                 VARCHAR2(50 CHAR),
  P_SALESMAN_EMAIL           VARCHAR2(255 CHAR),
  P_SALESMAN_PHONE           VARCHAR2(50 CHAR),
  P_SITE                     VARCHAR2(50 CHAR),
  P_TAX_RATE                 VARCHAR2(50 CHAR),
  P_TAXPAYERS_TYPE           VARCHAR2(50 CHAR),
  P_TELEPHONE                VARCHAR2(50 CHAR),
  P_VALIDITY                 VARCHAR2(50 CHAR),
  DEPARMENT_TYPE_ID          NUMBER(19),
  S_ORG_ID                   NUMBER(19)
)
tablespace EPMSDEV
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.C_PARTNER
  add primary key (ID)
  using index 
  tablespace EPMSDEV
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.C_PARTNER
  add constraint FKB3C370EC31D9D077 foreign key (DEPARMENT_TYPE_ID)
  references FEE_HLJ.C_ORG_TYPE (ID);
alter table FEE_HLJ.C_PARTNER
  add constraint FKB3C370ECB7F502E0 foreign key (S_ORG_ID)
  references FEE_HLJ.C_ORGANIZATION (ID);

prompt
prompt Creating table C_PARTNER_JOB
prompt ============================
prompt
create table FEE_HLJ.C_PARTNER_JOB
(
  ID        NUMBER(19) not null,
  TYPE_CODE VARCHAR2(255 CHAR),
  TYPE_DESC VARCHAR2(255 CHAR),
  TYPE_NAME VARCHAR2(255 CHAR)
)
tablespace EPMSDEV
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.C_PARTNER_JOB
  add primary key (ID)
  using index 
  tablespace EPMSDEV
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table S_ROLE
prompt =====================
prompt
create table FEE_HLJ.S_ROLE
(
  ROLE_ID           NUMBER(19) not null,
  ACTIVE_FLAG       NUMBER(1),
  DESCRIPTION       VARCHAR2(255 CHAR),
  IS_TEAMROLE       NUMBER(1),
  ROLE_NAME         VARCHAR2(100 CHAR),
  ROLE_CODE         VARCHAR2(100 CHAR),
  ORG_TYPE_ID       NUMBER(19),
  ROLE_TYPE_ID      NUMBER(19),
  OPERATOR_ID       NUMBER(19),
  CONSTRUCT_UNIT_ID NUMBER(19)
)
tablespace EPMSDEV
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.S_ROLE
  add primary key (ROLE_ID)
  using index 
  tablespace EPMSDEV
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.S_ROLE
  add unique (ROLE_NAME)
  using index 
  tablespace EPMSDEV
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.S_ROLE
  add unique (ROLE_CODE)
  using index 
  tablespace EPMSDEV
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table C_PARTNER_TYPE
prompt =============================
prompt
create table FEE_HLJ.C_PARTNER_TYPE
(
  ID        NUMBER(19) not null,
  IS_SINGLE NUMBER(1),
  TYPE_ID   NUMBER(19),
  ROLE_ID   NUMBER(19),
  JOB_ID    NUMBER(19)
)
tablespace EPMSDEV
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.C_PARTNER_TYPE
  add primary key (ID)
  using index 
  tablespace EPMSDEV
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.C_PARTNER_TYPE
  add constraint FKE50B8AAD6AC19905 foreign key (ROLE_ID)
  references FEE_HLJ.S_ROLE (ROLE_ID);
alter table FEE_HLJ.C_PARTNER_TYPE
  add constraint FKE50B8AADDD9349D8 foreign key (TYPE_ID)
  references FEE_HLJ.C_ORG_TYPE (ID);

prompt
prompt Creating table C_PARTNER_USER
prompt =============================
prompt
create table FEE_HLJ.C_PARTNER_USER
(
  ID                NUMBER(19) not null,
  ACTIVE_FLAG       NUMBER(1),
  U_DOCUMENT_EXPIRY TIMESTAMP(6),
  U_EDUCATION       VARCHAR2(100 CHAR),
  U_EMAIL           VARCHAR2(100 CHAR),
  U_EXAM_TIME       TIMESTAMP(6),
  U_EXPERIENCE      NUMBER(19),
  U_ID_TYPE         VARCHAR2(100 CHAR),
  U_IS_ADMIN        NUMBER(1),
  U_LOGIN_NAME      VARCHAR2(100 CHAR),
  U_NAME            VARCHAR2(100 CHAR),
  U_NUMBER          VARCHAR2(100 CHAR),
  U_PASS            NUMBER(1),
  U_PASSWORD        VARCHAR2(100 CHAR),
  U_PHONE           VARCHAR2(100 CHAR),
  U_SCORE           NUMBER(19),
  U_SEX             VARCHAR2(100 CHAR),
  USER_ID           NUMBER(19),
  JOB_ID            NUMBER(19),
  ORG_ID            NUMBER(19)
)
tablespace EPMSDEV
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.C_PARTNER_USER
  add primary key (ID)
  using index 
  tablespace EPMSDEV
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.C_PARTNER_USER
  add constraint FKE50BE73EFEC5CE5 foreign key (USER_ID)
  references FEE_HLJ.S_PRIVILEGE_USER (ID);

prompt
prompt Creating table C_PRODUCT_KIND_TYPE
prompt ==================================
prompt
create table FEE_HLJ.C_PRODUCT_KIND_TYPE
(
  ID           NUMBER(19) not null,
  TYPE_CODE    VARCHAR2(255 CHAR),
  TYPE_DESC    VARCHAR2(255 CHAR),
  DELETED_FLAG NUMBER(1),
  TYPE_NAME    VARCHAR2(255 CHAR),
  PRIORITY     NUMBER(10)
)
tablespace EPMSDEV
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.C_PRODUCT_KIND_TYPE
  add primary key (ID)
  using index 
  tablespace EPMSDEV
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table C_ROOMDETAIL_COST
prompt ================================
prompt
create table FEE_HLJ.C_ROOMDETAIL_COST
(
  ID                NUMBER(19) not null,
  TYPE_CODE         VARCHAR2(255 CHAR),
  TYPE_DESC         VARCHAR2(255 CHAR),
  DELETED_FLAG      NUMBER(1),
  TYPE_NAME         VARCHAR2(255 CHAR),
  PRIORITY          NUMBER(10),
  PRICE             NUMBER(21,4),
  ROOMDETAILTYPE_ID NUMBER(19),
  DPRICE            NUMBER(21,4)
)
tablespace EPMSDEV
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.C_ROOMDETAIL_COST
  add primary key (ID)
  using index 
  tablespace EPMSDEV
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.C_ROOMDETAIL_COST
  add constraint FK38D9D74413E6951B foreign key (ROOMDETAILTYPE_ID)
  references FEE_HLJ.C_ROOM_DETAIL_TYPE (ID);

prompt
prompt Creating table C_SCHEDULEWARNING
prompt ================================
prompt
create table FEE_HLJ.C_SCHEDULEWARNING
(
  ID                 NUMBER(19) not null,
  ENTITY_CODE        VARCHAR2(255 CHAR),
  ENTITY_CREATE_DATE TIMESTAMP(6),
  ENTITY_DESC        VARCHAR2(4000 CHAR),
  FINISH_DATE        TIMESTAMP(6),
  ENTITY_NAME        VARCHAR2(255 CHAR),
  ENTITY_STATUS      VARCHAR2(100 CHAR),
  BEFORE_WARN_DAYS   NUMBER(10),
  BEFORE_WARN_RATE   NUMBER(10),
  DELAY_WARN_DAYS    NUMBER(10),
  EMAILWARN          NUMBER(1),
  ISMANAGER          NUMBER(1),
  ISPROJECTMANAGER   NUMBER(1),
  IS_WARN            NUMBER(1),
  READWARN           NUMBER(1),
  ENTITY_CREATOR_ID  NUMBER(19),
  SCHEDULE_TYPE_ID   NUMBER(19)
)
tablespace EPMSDEV
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.C_SCHEDULEWARNING
  add primary key (ID)
  using index 
  tablespace EPMSDEV
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table C_SPECIALTY
prompt ==========================
prompt
create table FEE_HLJ.C_SPECIALTY
(
  ID             NUMBER(19) not null,
  ISLEAF_FLAG    NUMBER(1),
  ISROOT_FLAG    NUMBER(1),
  ACTIVE_FLAG    NUMBER(1),
  PARTY_CODE     VARCHAR2(50 CHAR),
  PARTY_DESC     VARCHAR2(255 CHAR),
  FINACIAL_CODE  VARCHAR2(50 CHAR),
  INNER_CODE     VARCHAR2(50 CHAR),
  LEVEL_NO       NUMBER(10),
  PARTY_NAME     VARCHAR2(255 CHAR),
  PRIORITY       NUMBER(10),
  SPEC_DETAIL_ID VARCHAR2(255 CHAR),
  SPEC_TYPE      VARCHAR2(50 CHAR),
  SPEC_YEAR      NUMBER(10),
  PARENT_ID      NUMBER(19),
  DELETED_FLAG   NUMBER(1),
  IS_REAL_ESTATE NUMBER(1),
  LONG_NAME      VARCHAR2(255 CHAR)
)
tablespace EPMSDEV
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.C_SPECIALTY
  add primary key (ID)
  using index 
  tablespace EPMSDEV
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table C_SCHEDULE_TEMPLETE
prompt ==================================
prompt
create table FEE_HLJ.C_SCHEDULE_TEMPLETE
(
  ID                        NUMBER(19) not null,
  TYPE_CODE                 VARCHAR2(255 CHAR),
  TYPE_DESC                 VARCHAR2(255 CHAR),
  DELETED_FLAG              NUMBER(1),
  TYPE_NAME                 VARCHAR2(255 CHAR),
  PRIORITY                  NUMBER(10),
  ACTIVITY_NAME             VARCHAR2(255 CHAR),
  ACTIVITY_URL              VARCHAR2(255 CHAR),
  ACTUAL_DATE_FROM_ACTIVITY NUMBER(1),
  DURATION                  NUMBER(10),
  EXPERIENCE_VALUE          NUMBER(10),
  FORWARD_DATE              NUMBER(10),
  GRAPHIC_PATH              VARCHAR2(2000 CHAR),
  HAS_ACTIVITY              NUMBER(1),
  IS_AUTOTASK               NUMBER(1),
  IS_LOOK                   NUMBER(1),
  IS_MILESTONE              NUMBER(1),
  IS_REQUIRED               NUMBER(1),
  LEVEL_NO                  NUMBER(10),
  REQUIRED_FLAG             NUMBER(1),
  PRESS_DATE                NUMBER(10),
  PROGRESS                  NUMBER(19,2),
  ROLE_FLAG                 NUMBER(10),
  TYPE                      NUMBER(10),
  WORK_DATE                 NUMBER(10),
  ROOT_TEMPLETE_ID          NUMBER(19),
  SCHEDULE_TYPE_ID          NUMBER(19),
  EXTENSION_ID              NUMBER(19),
  SPECIALTY_ID              NUMBER(19),
  PARENT_ID                 NUMBER(19)
)
tablespace EPMSDEV
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.C_SCHEDULE_TEMPLETE
  add primary key (ID)
  using index 
  tablespace EPMSDEV
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.C_SCHEDULE_TEMPLETE
  add constraint FK27D62B4A122B14CF foreign key (SPECIALTY_ID)
  references FEE_HLJ.C_SPECIALTY (ID);
alter table FEE_HLJ.C_SCHEDULE_TEMPLETE
  add constraint FK27D62B4A3B2A1484 foreign key (PARENT_ID)
  references FEE_HLJ.C_SCHEDULE_TEMPLETE (ID);
alter table FEE_HLJ.C_SCHEDULE_TEMPLETE
  add constraint FK27D62B4A769EFD53 foreign key (ROOT_TEMPLETE_ID)
  references FEE_HLJ.C_SCHEDULE_TEMPLETE (ID);
alter table FEE_HLJ.C_SCHEDULE_TEMPLETE
  add constraint FK27D62B4AA798660C foreign key (SCHEDULE_TYPE_ID)
  references FEE_HLJ.C_SCHEDULE_TYPE (ID);
alter table FEE_HLJ.C_SCHEDULE_TEMPLETE
  add constraint FK27D62B4AED2A3C06 foreign key (EXTENSION_ID)
  references FEE_HLJ.B_SCHEDULE_TEMPLATE_EXTENSION (ID);

prompt
prompt Creating table C_SCHEDULE_TEMPLATE_NEXT
prompt =======================================
prompt
create table FEE_HLJ.C_SCHEDULE_TEMPLATE_NEXT
(
  ID                   NUMBER(19) not null,
  TYPE_CODE            VARCHAR2(255 CHAR),
  TYPE_DESC            VARCHAR2(255 CHAR),
  DELETED_FLAG         NUMBER(1),
  TYPE_NAME            VARCHAR2(255 CHAR),
  PRIORITY             NUMBER(10),
  CONDITION            VARCHAR2(512 CHAR),
  PERSON_CONDITION     VARCHAR2(512 CHAR),
  SCHEDULE_TEMPLATE_ID NUMBER(19),
  SCHEDULE_TYPE_ID     NUMBER(19)
)
tablespace EPMSDEV
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.C_SCHEDULE_TEMPLATE_NEXT
  add primary key (ID)
  using index 
  tablespace EPMSDEV
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.C_SCHEDULE_TEMPLATE_NEXT
  add constraint FK927CE34CA798660C foreign key (SCHEDULE_TYPE_ID)
  references FEE_HLJ.C_SCHEDULE_TYPE (ID);
alter table FEE_HLJ.C_SCHEDULE_TEMPLATE_NEXT
  add constraint FK927CE34CDA8EC50C foreign key (SCHEDULE_TEMPLATE_ID)
  references FEE_HLJ.C_SCHEDULE_TEMPLETE (ID);

prompt
prompt Creating table C_SCHEDULE_TEMPLATE_PRE
prompt ======================================
prompt
create table FEE_HLJ.C_SCHEDULE_TEMPLATE_PRE
(
  SCHEDULE_TEMPLATE_ID NUMBER(19) not null,
  SCHEDULE_TYPE_ID     NUMBER(19) not null
)
tablespace EPMSDEV
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.C_SCHEDULE_TEMPLATE_PRE
  add constraint FKDB6F6B2AA798660C foreign key (SCHEDULE_TYPE_ID)
  references FEE_HLJ.C_SCHEDULE_TYPE (ID);
alter table FEE_HLJ.C_SCHEDULE_TEMPLATE_PRE
  add constraint FKDB6F6B2ADA8EC50C foreign key (SCHEDULE_TEMPLATE_ID)
  references FEE_HLJ.C_SCHEDULE_TEMPLETE (ID);

prompt
prompt Creating table C_SCHEDULE_TEMPLATE_PRENO
prompt ========================================
prompt
create table FEE_HLJ.C_SCHEDULE_TEMPLATE_PRENO
(
  SCHEDULE_TEMPLATE_ID NUMBER(19) not null,
  SCHEDULE_TYPE_ID     NUMBER(19) not null
)
tablespace EPMSDEV
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.C_SCHEDULE_TEMPLATE_PRENO
  add constraint FKBD41566BA798660C foreign key (SCHEDULE_TYPE_ID)
  references FEE_HLJ.C_SCHEDULE_TYPE (ID);
alter table FEE_HLJ.C_SCHEDULE_TEMPLATE_PRENO
  add constraint FKBD41566BDA8EC50C foreign key (SCHEDULE_TEMPLATE_ID)
  references FEE_HLJ.C_SCHEDULE_TEMPLETE (ID);

prompt
prompt Creating table C_SCHEDULE_TEMPLATE_SPEC
prompt =======================================
prompt
create table FEE_HLJ.C_SCHEDULE_TEMPLATE_SPEC
(
  SCHEDULE_TEMPLATE_ID NUMBER(19) not null,
  SPEC_ID              NUMBER(19) not null
)
tablespace EPMSDEV
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.C_SCHEDULE_TEMPLATE_SPEC
  add constraint FK927F5014DA8EC50C foreign key (SCHEDULE_TEMPLATE_ID)
  references FEE_HLJ.C_SCHEDULE_TEMPLETE (ID);
alter table FEE_HLJ.C_SCHEDULE_TEMPLATE_SPEC
  add constraint FK927F5014E4A9CCF2 foreign key (SPEC_ID)
  references FEE_HLJ.C_SPECIALTY (ID);

prompt
prompt Creating table C_STATION_BUILD_COST
prompt ===================================
prompt
create table FEE_HLJ.C_STATION_BUILD_COST
(
  ID           NUMBER(19) not null,
  TYPE_CODE    VARCHAR2(255 CHAR),
  TYPE_DESC    VARCHAR2(255 CHAR),
  DELETED_FLAG NUMBER(1),
  TYPE_NAME    VARCHAR2(255 CHAR),
  PRIORITY     NUMBER(10),
  PRICE        NUMBER(21,4),
  ROOMTYPE_ID  NUMBER(19),
  TOWERTYPE_ID NUMBER(19)
)
tablespace EPMSDEV
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.C_STATION_BUILD_COST
  add primary key (ID)
  using index 
  tablespace EPMSDEV
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.C_STATION_BUILD_COST
  add constraint FK71EBF045DE8CD579 foreign key (TOWERTYPE_ID)
  references FEE_HLJ.C_TOWER_TYPE (ID);
alter table FEE_HLJ.C_STATION_BUILD_COST
  add constraint FK71EBF045F15AB5B foreign key (ROOMTYPE_ID)
  references FEE_HLJ.C_ROOM_TYPE (ID);

prompt
prompt Creating table C_SUPPORTING_BUILD_COST
prompt ======================================
prompt
create table FEE_HLJ.C_SUPPORTING_BUILD_COST
(
  ID           NUMBER(19) not null,
  TYPE_CODE    VARCHAR2(255 CHAR),
  TYPE_DESC    VARCHAR2(255 CHAR),
  DELETED_FLAG NUMBER(1),
  TYPE_NAME    VARCHAR2(255 CHAR),
  PRIORITY     NUMBER(10),
  PRICE        NUMBER(21,4),
  TOWERTYPE_ID NUMBER(19),
  ROOMTYPE_ID  NUMBER(19)
)
tablespace EPMSDEV
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.C_SUPPORTING_BUILD_COST
  add primary key (ID)
  using index 
  tablespace EPMSDEV
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.C_SUPPORTING_BUILD_COST
  add constraint FK9E6C822EDE8CD579 foreign key (TOWERTYPE_ID)
  references FEE_HLJ.C_TOWER_TYPE (ID);
alter table FEE_HLJ.C_SUPPORTING_BUILD_COST
  add constraint FK9E6C822EF15AB5B foreign key (ROOMTYPE_ID)
  references FEE_HLJ.C_ROOM_TYPE (ID);

prompt
prompt Creating table C_TOWER_BUILD_COST
prompt =================================
prompt
create table FEE_HLJ.C_TOWER_BUILD_COST
(
  ID             NUMBER(19) not null,
  TYPE_CODE      VARCHAR2(255 CHAR),
  TYPE_DESC      VARCHAR2(255 CHAR),
  DELETED_FLAG   NUMBER(1),
  TYPE_NAME      VARCHAR2(255 CHAR),
  PRIORITY       NUMBER(10),
  ANTENNA_HEIGHT VARCHAR2(100 CHAR),
  MAXIMUM        NUMBER(19,2),
  MINIMUM        NUMBER(19,2),
  PRICE          NUMBER(21,4),
  TOWERTYPE_ID   NUMBER(19)
)
tablespace EPMSDEV
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.C_TOWER_BUILD_COST
  add primary key (ID)
  using index 
  tablespace EPMSDEV
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.C_TOWER_BUILD_COST
  add constraint FKC9622A50DE8CD579 foreign key (TOWERTYPE_ID)
  references FEE_HLJ.C_TOWER_TYPE (ID);

prompt
prompt Creating table C_TOWER_DETAIL_COST
prompt ==================================
prompt
create table FEE_HLJ.C_TOWER_DETAIL_COST
(
  ID                 NUMBER(19) not null,
  TYPE_CODE          VARCHAR2(255 CHAR),
  TYPE_DESC          VARCHAR2(255 CHAR),
  DELETED_FLAG       NUMBER(1),
  TYPE_NAME          VARCHAR2(255 CHAR),
  PRIORITY           NUMBER(10),
  PRICE              NUMBER(19,2),
  TOWERDETAILTYPE_ID NUMBER(19),
  DPRICE             NUMBER(21,4)
)
tablespace EPMSDEV
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.C_TOWER_DETAIL_COST
  add primary key (ID)
  using index 
  tablespace EPMSDEV
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.C_TOWER_DETAIL_COST
  add constraint FK9CE8EDC926D130B9 foreign key (TOWERDETAILTYPE_ID)
  references FEE_HLJ.C_TOWER_DETAIL_TYPE (ID);

prompt
prompt Creating table C_TOWER_SITE_FEE
prompt ===============================
prompt
create table FEE_HLJ.C_TOWER_SITE_FEE
(
  ID              NUMBER(19) not null,
  TYPE_CODE       VARCHAR2(255 CHAR),
  TYPE_DESC       VARCHAR2(255 CHAR),
  DELETED_FLAG    NUMBER(1),
  TYPE_NAME       VARCHAR2(255 CHAR),
  PRIORITY        NUMBER(10),
  PRICE           NUMBER(19,2),
  ORGANIZATION_ID NUMBER(19),
  CITYTYPE_ID     NUMBER(19),
  PARM            NUMBER(19,2)
)
tablespace EPMSDEV
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.C_TOWER_SITE_FEE
  add primary key (ID)
  using index 
  tablespace EPMSDEV
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.C_TOWER_SITE_FEE
  add constraint FK6770B680F43C991F foreign key (CITYTYPE_ID)
  references FEE_HLJ.C_CITY_CATEGORY (ID);
alter table FEE_HLJ.C_TOWER_SITE_FEE
  add constraint FK6770B680F78DC8E5 foreign key (ORGANIZATION_ID)
  references FEE_HLJ.C_ORGANIZATION (ID);

prompt
prompt Creating table C_WARING_CONFIGURE
prompt =================================
prompt
create table FEE_HLJ.C_WARING_CONFIGURE
(
  ID              NUMBER(19) not null,
  TYPE_CODE       VARCHAR2(255 CHAR),
  TYPE_DESC       VARCHAR2(255 CHAR),
  DELETED_FLAG    NUMBER(1),
  TYPE_NAME       VARCHAR2(255 CHAR),
  PRIORITY        NUMBER(10),
  WARING_DAYS     NUMBER(19),
  PAYMENT_TYPE_ID NUMBER(19),
  WARING_TYPE_ID  NUMBER(19)
)
tablespace EPMSDEV
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.C_WARING_CONFIGURE
  add primary key (ID)
  using index 
  tablespace EPMSDEV
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.C_WARING_CONFIGURE
  add constraint FKF08E053D7E3BECF foreign key (WARING_TYPE_ID)
  references FEE_HLJ.C_WARING_TYPE (ID);
alter table FEE_HLJ.C_WARING_CONFIGURE
  add constraint FKF08E053DE3531E7 foreign key (PAYMENT_TYPE_ID)
  references FEE_HLJ.C_PAYMENT_TYPE (ID);

prompt
prompt Creating table C_WIND_PRESSURE
prompt ==============================
prompt
create table FEE_HLJ.C_WIND_PRESSURE
(
  ID           NUMBER(19) not null,
  TYPE_CODE    VARCHAR2(255 CHAR),
  TYPE_DESC    VARCHAR2(255 CHAR),
  DELETED_FLAG NUMBER(1),
  TYPE_NAME    VARCHAR2(255 CHAR),
  PRIORITY     NUMBER(10),
  MAXIMUM      NUMBER(19,2),
  MINIMUM      NUMBER(19,2),
  PARAM_VALUE  NUMBER(19,2)
)
tablespace EPMSDEV
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.C_WIND_PRESSURE
  add primary key (ID)
  using index 
  tablespace EPMSDEV
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table DW_MONEY_FOR_YEAR
prompt ================================
prompt
create table FEE_HLJ.DW_MONEY_FOR_YEAR
(
  MONTH  VARCHAR2(64),
  MONEY  VARCHAR2(64),
  ITEMID VARCHAR2(64)
)
tablespace EPMSDEV
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table DW_RESOURCE_REIM_ITEM
prompt ====================================
prompt
create table FEE_HLJ.DW_RESOURCE_REIM_ITEM
(
  MONEY  VARCHAR2(64),
  ITEMID VARCHAR2(64),
  MONTH  VARCHAR2(64)
)
tablespace EPMSDEV
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table DW_RESOURCE_REIM_ITEM_HIS
prompt ========================================
prompt
create table FEE_HLJ.DW_RESOURCE_REIM_ITEM_HIS
(
  MONTH  VARCHAR2(64),
  MONEY  VARCHAR2(64),
  ITEMID VARCHAR2(64)
)
tablespace EPMSDEV
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table IF_CONTRACT_EXECT
prompt ================================
prompt
create table FEE_HLJ.IF_CONTRACT_EXECT
(
  ID                   NUMBER(19) not null,
  ATTRIBUTE1           VARCHAR2(1000 CHAR),
  BATCH_NO             VARCHAR2(100 CHAR),
  PAYMENT_CONDITION    VARCHAR2(500 CHAR),
  DIMENSION1           VARCHAR2(100 CHAR),
  DIMENSION2           VARCHAR2(100 CHAR),
  DIMENSION3           VARCHAR2(200 CHAR),
  DIMENSION4           VARCHAR2(500 CHAR),
  DIMENSION5           VARCHAR2(1000 CHAR),
  DIMENSION6           VARCHAR2(4000 CHAR),
  ISCONSPROJECT        VARCHAR2(10 CHAR),
  LAST_UPDATE_DATE     TIMESTAMP(6),
  LINE_NUM             VARCHAR2(100 CHAR),
  PAYMENT_AMOUNT       NUMBER(19,2),
  PAYMENT_SCHEDULE     VARCHAR2(500 CHAR),
  PAYMENT_PROPORTION   VARCHAR2(100 CHAR),
  SCHEDULE_DESCRIPTION VARCHAR2(500 CHAR),
  TAX_AMOUNT           NUMBER(19,2),
  CMS_INFO_ID          NUMBER(19)
)
tablespace EPMSDEV
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.IF_CONTRACT_EXECT
  add primary key (ID)
  using index 
  tablespace EPMSDEV
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table IF_CONTRACT_INFO
prompt ===============================
prompt
create table FEE_HLJ.IF_CONTRACT_INFO
(
  ID                    NUMBER(19) not null,
  BUYER_ID              VARCHAR2(30 CHAR),
  CONTRACT_AMOUNT       NUMBER(19,2),
  CONTRACT_AMOUNT_TOTAL NUMBER(19,2),
  CONTRACT_CATEGORY     VARCHAR2(30 CHAR),
  CONTRACT_CODE         VARCHAR2(200 CHAR),
  CONTRACT_DEPT         VARCHAR2(300 CHAR),
  CONTRACT_DESCRIPTION  VARCHAR2(4000 CHAR),
  CONTRACT_DRAFTER      VARCHAR2(50 CHAR),
  CONTRACT_DRAFTER_ID   VARCHAR2(50 CHAR),
  CONTRACT_NAME         VARCHAR2(500 CHAR),
  CONTRACT_NUM          VARCHAR2(200 CHAR),
  CONTRACT_SOURCE_TYPE  VARCHAR2(150 CHAR),
  CONTRACT_STATUS       VARCHAR2(100 CHAR),
  CONTRACT_TYPE         VARCHAR2(300 CHAR),
  CONTRACT_URL          VARCHAR2(2000 CHAR),
  CONVERSION_RATE       NUMBER(19,2),
  CURRENCY_CODE         VARCHAR2(30 CHAR),
  END_DATE_ACTIVE       TIMESTAMP(6),
  EPMSID                VARCHAR2(150 CHAR),
  EPOID                 VARCHAR2(150 CHAR),
  ERP_TYPE              VARCHAR2(10 CHAR),
  FRAME_FLAG            VARCHAR2(10 CHAR),
  INPUT_NUMBER          VARCHAR2(30 CHAR),
  LAST_UPDATE_DATE      TIMESTAMP(6),
  MODIFTY_DATE          VARCHAR2(400 CHAR),
  ORG_CODE              VARCHAR2(50 CHAR),
  ORG_NAME              VARCHAR2(500 CHAR),
  OU_CODE               VARCHAR2(4000 CHAR),
  OU_CODE_VIRTUAL       VARCHAR2(50 CHAR),
  PARENT_CONTRACT_NUM   VARCHAR2(300 CHAR),
  PARTENT_CONTRACT_NAME VARCHAR2(500 CHAR),
  PARTNER_SIGNN_DATE    TIMESTAMP(6),
  PAYEMNT_TERM          VARCHAR2(4000 CHAR),
  PAYMENT_METHOD        VARCHAR2(300 CHAR),
  PAYMENT_TYPE          VARCHAR2(30 CHAR),
  PROJECT_NAME          VARCHAR2(500 CHAR),
  PROJECT_NUMBER        VARCHAR2(150 CHAR),
  PROMISED_DATE         TIMESTAMP(6),
  REFERENCE1            VARCHAR2(500 CHAR),
  REFERENCE10           VARCHAR2(500 CHAR),
  REFERENCE11           VARCHAR2(500 CHAR),
  REFERENCE12           VARCHAR2(500 CHAR),
  REFERENCE13           VARCHAR2(500 CHAR),
  REFERENCE14           VARCHAR2(500 CHAR),
  REFERENCE15           VARCHAR2(500 CHAR),
  REFERENCE2            VARCHAR2(500 CHAR),
  REFERENCE3            VARCHAR2(500 CHAR),
  REFERENCE4            VARCHAR2(500 CHAR),
  REFERENCE5            VARCHAR2(500 CHAR),
  REFERENCE6            VARCHAR2(500 CHAR),
  REFERENCE7            VARCHAR2(500 CHAR),
  REFERENCE8            VARCHAR2(500 CHAR),
  REFERENCE9            VARCHAR2(500 CHAR),
  SIGNN_DATE            TIMESTAMP(6),
  SOURCING_METHOD       VARCHAR2(50 CHAR),
  START_DATE_ACTIVE     TIMESTAMP(6),
  TAX_AMOUNT            NUMBER(19,2),
  VAT_FLAG              VARCHAR2(30 CHAR),
  VENDOR_NAME           VARCHAR2(500 CHAR),
  VENDOR_NUMBER         VARCHAR2(150 CHAR),
  VENDOR_SITE_ID        NUMBER(19,2),
  IF_CONTRACT_ID        NUMBER(19)
)
tablespace EPMSDEV
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.IF_CONTRACT_INFO
  add primary key (ID)
  using index 
  tablespace EPMSDEV
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.IF_CONTRACT_INFO
  add constraint FK_CONTRACT_INTERFACE foreign key (IF_CONTRACT_ID)
  references FEE_HLJ.B_CONTRACT (ID);

prompt
prompt Creating table IF_CONTRACT_LINE
prompt ===============================
prompt
create table FEE_HLJ.IF_CONTRACT_LINE
(
  ID                  NUMBER(19) not null,
  ACTIVITY_CODE       VARCHAR2(50 CHAR),
  ACTIVITY_NAME       VARCHAR2(500 CHAR),
  AMOUNT              NUMBER(19,2),
  ATTRIBUTE1          VARCHAR2(150 CHAR),
  ATTRIBUTE10         VARCHAR2(150 CHAR),
  ATTRIBUTE11         VARCHAR2(150 CHAR),
  ATTRIBUTE12         VARCHAR2(150 CHAR),
  ATTRIBUTE13         VARCHAR2(150 CHAR),
  ATTRIBUTE14         VARCHAR2(150 CHAR),
  ATTRIBUTE15         VARCHAR2(150 CHAR),
  ATTRIBUTE2          VARCHAR2(150 CHAR),
  ATTRIBUTE3          VARCHAR2(150 CHAR),
  ATTRIBUTE4          VARCHAR2(150 CHAR),
  ATTRIBUTE5          VARCHAR2(150 CHAR),
  ATTRIBUTE6          VARCHAR2(150 CHAR),
  ATTRIBUTE7          VARCHAR2(150 CHAR),
  ATTRIBUTE8          VARCHAR2(150 CHAR),
  ATTRIBUTE9          VARCHAR2(150 CHAR),
  BRAND_CODE          VARCHAR2(50 CHAR),
  BUDGET_ACCOUNT      VARCHAR2(50 CHAR),
  BUDGET_ACCOUNT_NAME VARCHAR2(500 CHAR),
  BUDGET_DEPT_CODE    VARCHAR2(50 CHAR),
  BUDGET_DEPT_NAME    VARCHAR2(500 CHAR),
  BUDGET_MONTH        VARCHAR2(10 CHAR),
  BUDGET_PROJECT_NAME VARCHAR2(500 CHAR),
  BUDGET_PROJECT_NUM  VARCHAR2(50 CHAR),
  BUDGET_QUARTER      VARCHAR2(10 CHAR),
  BUDGET_YEAR         VARCHAR2(10 CHAR),
  CHANNEL_CODE        VARCHAR2(50 CHAR),
  COMPANY_CODE        VARCHAR2(50 CHAR),
  DIMENSION1          VARCHAR2(150 CHAR),
  DIMENSION2          VARCHAR2(150 CHAR),
  DIMENSION3          VARCHAR2(150 CHAR),
  DIMENSION4          VARCHAR2(150 CHAR),
  DIMENSION5          VARCHAR2(150 CHAR),
  DIMENSION6          VARCHAR2(150 CHAR),
  ITEM_DESC           VARCHAR2(500 CHAR),
  LAST_UPDATE_DATE    TIMESTAMP(6),
  LINE_NUM            VARCHAR2(300 CHAR),
  PRICE               NUMBER(19,2),
  PRODUCT_CODE        VARCHAR2(50 CHAR),
  PROJECT_NAME        VARCHAR2(500 CHAR),
  PROJECT_NUMBER      VARCHAR2(50 CHAR),
  QUANTITY            NUMBER(19,2),
  STRATEGY_CODE       VARCHAR2(50 CHAR),
  TAX_AMOUNT          NUMBER(19,2),
  TAX_CODE            VARCHAR2(50 CHAR),
  USERGROUP_CODE      VARCHAR2(50 CHAR),
  CMS_INFO_ID         NUMBER(19)
)
tablespace EPMSDEV
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.IF_CONTRACT_LINE
  add primary key (ID)
  using index 
  tablespace EPMSDEV
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.IF_CONTRACT_LINE
  add constraint FK52D85F5F7105AD30 foreign key (CMS_INFO_ID)
  references FEE_HLJ.IF_CONTRACT_INFO (ID);

prompt
prompt Creating table IF_CONTRACT_PAY
prompt ==============================
prompt
create table FEE_HLJ.IF_CONTRACT_PAY
(
  ID                   NUMBER(19) not null,
  ACTIVITY_CODE        VARCHAR2(100 CHAR),
  AUDIT_AMOUNT_FLAG    VARCHAR2(10 CHAR),
  BATCH_NO             VARCHAR2(100 CHAR),
  BRAND_CODE           VARCHAR2(100 CHAR),
  BUDGET_ACCOUNT       VARCHAR2(100 CHAR),
  BUDGET_ACCOUNT_NAME  VARCHAR2(500 CHAR),
  BUDGET_DEPT_CODE     VARCHAR2(100 CHAR),
  BUDGET_DEPT_NAME     VARCHAR2(500 CHAR),
  BUDGET_PROJECT_NAME  VARCHAR2(500 CHAR),
  BUDGET_PROJECT_NUM   VARCHAR2(100 CHAR),
  CHANNEL_CODE         VARCHAR2(100 CHAR),
  COMPANY_CODE         VARCHAR2(100 CHAR),
  DIMENSION1           VARCHAR2(100 CHAR),
  DIMENSION2           VARCHAR2(100 CHAR),
  DIMENSION3           VARCHAR2(100 CHAR),
  DIMENSION4           VARCHAR2(100 CHAR),
  DIMENSION5           VARCHAR2(100 CHAR),
  DIMENSION6           VARCHAR2(100 CHAR),
  LAST_UPDATE_DATE     TIMESTAMP(6),
  LINE_NUM             VARCHAR2(100 CHAR),
  PAYMENT_AMOUNT       NUMBER(19,2),
  PAYMENT_SCHEDULE     TIMESTAMP(6),
  PAYMENT_PERCENT      VARCHAR2(500 CHAR),
  PAYMENT_STATE        VARCHAR2(100 CHAR),
  PAYMENT_TERMS        VARCHAR2(500 CHAR),
  PAYMENT_TERMS_CODE   VARCHAR2(100 CHAR),
  PRODUCT_CODE         VARCHAR2(100 CHAR),
  SCHEDULE_DESCRIPTION VARCHAR2(500 CHAR),
  STRATEGY_CODE        VARCHAR2(100 CHAR),
  TAX_AMOUNT           NUMBER(19,2),
  USERGROUP_CODE       VARCHAR2(100 CHAR),
  CMS_INFO_ID          NUMBER(19)
)
tablespace EPMSDEV
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.IF_CONTRACT_PAY
  add primary key (ID)
  using index 
  tablespace EPMSDEV
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.IF_CONTRACT_PAY
  add constraint FK1B7263BD7105AD30 foreign key (CMS_INFO_ID)
  references FEE_HLJ.IF_CONTRACT_INFO (ID);

prompt
prompt Creating table IF_FINANCE_RESULT
prompt ================================
prompt
create table FEE_HLJ.IF_FINANCE_RESULT
(
  ID          NUMBER(19) not null,
  BILL_NUM    VARCHAR2(255 CHAR),
  DEFITEM1    VARCHAR2(255 CHAR),
  DEFITEM2    VARCHAR2(255 CHAR),
  DEFITEM3    VARCHAR2(255 CHAR),
  DEFITEM4    VARCHAR2(255 CHAR),
  DEFITEM5    VARCHAR2(255 CHAR),
  DIGEST      VARCHAR2(2000 CHAR),
  PAY_AMOUNT  NUMBER(19,2),
  PAY_DATE    TIMESTAMP(6),
  VBILLNO     VARCHAR2(255 CHAR),
  VBILLSTATUS VARCHAR2(255 CHAR)
)
tablespace EPMSDEV
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.IF_FINANCE_RESULT
  add primary key (ID)
  using index 
  tablespace EPMSDEV
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table IF_OA_FILE
prompt =========================
prompt
create table FEE_HLJ.IF_OA_FILE
(
  ID            NUMBER(19) not null,
  OA_TYPE       VARCHAR2(10 CHAR) not null,
  ADDRESS       VARCHAR2(2000 CHAR),
  APPROVEFILE   VARCHAR2(2000 CHAR),
  APPROVEMONEY  NUMBER(19,2),
  ATT_UNIT_ID   NUMBER(19),
  ATT_UNIT_IDS  VARCHAR2(255 CHAR),
  ATTENDEE      VARCHAR2(2000 CHAR),
  BUSINESS_ID   NUMBER(19) not null,
  COMMISSIONING VARCHAR2(255 CHAR),
  COMMITTIME    TIMESTAMP(6),
  COMPANYTAG    VARCHAR2(10 CHAR),
  COMPLETEDTIME VARCHAR2(30 CHAR),
  CONTENT       VARCHAR2(4000 CHAR) not null,
  CONTENTFLAG   VARCHAR2(10 CHAR) not null,
  CREATE_DATE   TIMESTAMP(6),
  DELIVER       VARCHAR2(255 CHAR),
  DEPTS         VARCHAR2(1000 CHAR),
  DESIGNMONEY   NUMBER(19,2),
  DOCADDRESS    VARCHAR2(500 CHAR),
  DOCCODE       VARCHAR2(255 CHAR),
  DOCUMENTSTATE VARCHAR2(10 CHAR),
  DRAFTDATE     VARCHAR2(100 CHAR),
  DRAFTOR       VARCHAR2(255 CHAR) not null,
  ERROR_MSG     VARCHAR2(1000 CHAR),
  EXIGENCE      VARCHAR2(255 CHAR),
  FILES         VARCHAR2(2000 CHAR),
  FK_SERIALNO   VARCHAR2(255 CHAR),
  GETTIME       TIMESTAMP(6),
  IF_TRANS_OA   VARCHAR2(255 CHAR),
  INSERTTIME    TIMESTAMP(6),
  IS_FINISH     NUMBER(19),
  LATTER        VARCHAR2(255 CHAR) not null,
  LATTERNAME    VARCHAR2(255 CHAR) not null,
  LCGZFILE      VARCHAR2(2000 CHAR),
  MAINDEPT      VARCHAR2(255 CHAR) not null,
  MAINSEND      VARCHAR2(255 CHAR),
  OACLASS       VARCHAR2(255 CHAR),
  PMSTYPE       VARCHAR2(255 CHAR),
  PMSTYPE_ID    VARCHAR2(255 CHAR) not null,
  PROJECTCODE   VARCHAR2(255 CHAR),
  RECEIVE_DATE  TIMESTAMP(6),
  REPORT        VARCHAR2(255 CHAR),
  SECRET        VARCHAR2(255 CHAR) not null,
  SECRETLIMIT   VARCHAR2(64 CHAR),
  STARTTIME     VARCHAR2(30 CHAR),
  STATE         VARCHAR2(10 CHAR),
  TITLE         VARCHAR2(500 CHAR) not null,
  UN_ID         VARCHAR2(255 CHAR)
)
tablespace EPMSDEV
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.IF_OA_FILE
  add primary key (ID)
  using index 
  tablespace EPMSDEV
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table IF_OA_LOG_CHANGE
prompt ===============================
prompt
create table FEE_HLJ.IF_OA_LOG_CHANGE
(
  ID         NUMBER(19) not null,
  CLASSNAME  VARCHAR2(225 CHAR),
  CREATEDATE TIMESTAMP(6),
  KEY        VARCHAR2(225 CHAR),
  OPTTYPE    VARCHAR2(10 CHAR)
)
tablespace EPMSDEV
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.IF_OA_LOG_CHANGE
  add primary key (ID)
  using index 
  tablespace EPMSDEV
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table IF_OA_ORG
prompt ========================
prompt
create table FEE_HLJ.IF_OA_ORG
(
  ID            NUMBER(19) not null,
  DESCRIPTION   VARCHAR2(225 CHAR),
  DISPLAYORDER  VARCHAR2(225 CHAR),
  ERPID         VARCHAR2(225 CHAR),
  INITIALS      VARCHAR2(225 CHAR),
  O             VARCHAR2(225 CHAR),
  OPERATIONTYPE VARCHAR2(225 CHAR),
  ORGLEVEL      VARCHAR2(225 CHAR),
  OU            VARCHAR2(225 CHAR),
  PARENTORGID   VARCHAR2(225 CHAR),
  ST            VARCHAR2(225 CHAR),
  STATUS        VARCHAR2(225 CHAR),
  STYLE         VARCHAR2(225 CHAR),
  MODIFTY_DATE  TIMESTAMP(6),
  L             VARCHAR2(225 CHAR),
  F             VARCHAR2(225 CHAR)
)
tablespace EPMSDEV
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.IF_OA_ORG
  add primary key (ID)
  using index 
  tablespace EPMSDEV
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table IF_OA_PORTALLOG
prompt ==============================
prompt
create table FEE_HLJ.IF_OA_PORTALLOG
(
  ID         NUMBER(19) not null,
  CREATEDATE TIMESTAMP(6),
  DOC_ID     VARCHAR2(100 CHAR),
  DOC_TYPE   VARCHAR2(50 CHAR),
  END_TIME   TIMESTAMP(6),
  FROM_MAN   VARCHAR2(50 CHAR),
  PRI        VARCHAR2(50 CHAR),
  START_TIME TIMESTAMP(6),
  TITLE      VARCHAR2(500 CHAR),
  TYPE       VARCHAR2(50 CHAR),
  URL        VARCHAR2(500 CHAR),
  USER_ID    VARCHAR2(100 CHAR),
  WORK_ID    VARCHAR2(100 CHAR)
)
tablespace EPMSDEV
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.IF_OA_PORTALLOG
  add primary key (ID)
  using index 
  tablespace EPMSDEV
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table IF_OA_USER
prompt =========================
prompt
create table FEE_HLJ.IF_OA_USER
(
  ID             NUMBER(19) not null,
  CATEGORY       VARCHAR2(225 CHAR),
  CN             VARCHAR2(225 CHAR),
  DESCRIPTION    VARCHAR2(225 CHAR),
  DISPLAYORDER   VARCHAR2(225 CHAR),
  DUTY           VARCHAR2(225 CHAR),
  EMPLOYEENUMBER VARCHAR2(225 CHAR),
  EMPLOYEETYPE   VARCHAR2(225 CHAR),
  ERPERSONSTATUS VARCHAR2(225 CHAR),
  GENDER         VARCHAR2(225 CHAR),
  MAIL           VARCHAR2(225 CHAR),
  MOBILE         VARCHAR2(225 CHAR),
  NATION         VARCHAR2(225 CHAR),
  O              VARCHAR2(225 CHAR),
  OPERATIONTYPE  VARCHAR2(225 CHAR),
  PARENTORGID    VARCHAR2(225 CHAR),
  POSITIONLEVEL  VARCHAR2(225 CHAR),
  RELIGION       VARCHAR2(225 CHAR),
  U_ID           VARCHAR2(225 CHAR),
  WORKORG        VARCHAR2(225 CHAR),
  MODIFTY_DATE   TIMESTAMP(6)
)
tablespace EPMSDEV
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.IF_OA_USER
  add primary key (ID)
  using index 
  tablespace EPMSDEV
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table IF_PHYSICAL_TOWER
prompt ================================
prompt
create table FEE_HLJ.IF_PHYSICAL_TOWER
(
  ID                 NUMBER(19) not null,
  ENTITY_CODE        VARCHAR2(255 CHAR),
  ENTITY_CREATE_DATE TIMESTAMP(6),
  ENTITY_DESC        VARCHAR2(4000 CHAR),
  FINISH_DATE        TIMESTAMP(6),
  ENTITY_NAME        VARCHAR2(255 CHAR),
  ENTITY_STATUS      VARCHAR2(100 CHAR),
  ENTITY_CREATOR_ID  NUMBER(19),
  CUID               VARCHAR2(255 CHAR)
)
tablespace EPMSDEV
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.IF_PHYSICAL_TOWER
  add primary key (ID)
  using index 
  tablespace EPMSDEV
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.IF_PHYSICAL_TOWER
  add constraint FKA62D149D7D3296C00 foreign key (ENTITY_CREATOR_ID)
  references FEE_HLJ.S_PRIVILEGE_USER (ID);

prompt
prompt Creating table IF_PORTAL_MSG
prompt ============================
prompt
create table FEE_HLJ.IF_PORTAL_MSG
(
  ID           NUMBER(19) not null,
  CREATE_DATE  VARCHAR2(100 CHAR),
  DELETE_DATE  VARCHAR2(100 CHAR),
  DOCUMENTID   VARCHAR2(255 CHAR),
  DOCUMENTNAME VARCHAR2(255 CHAR),
  FILETYPE     VARCHAR2(255 CHAR),
  FROMMAN      VARCHAR2(255 CHAR),
  MODIFY_DATE  VARCHAR2(100 CHAR),
  PRIORITY     VARCHAR2(255 CHAR),
  STARTTIME    VARCHAR2(255 CHAR),
  TITLE        VARCHAR2(255 CHAR),
  UPDATE_DATE  VARCHAR2(100 CHAR),
  URL          VARCHAR2(255 CHAR),
  USERID       VARCHAR2(255 CHAR),
  WORKID       VARCHAR2(255 CHAR)
)
tablespace EPMSDEV
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.IF_PORTAL_MSG
  add primary key (ID)
  using index 
  tablespace EPMSDEV
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table IF_VENDOR_INFO
prompt =============================
prompt
create table FEE_HLJ.IF_VENDOR_INFO
(
  ID                             NUMBER(19) not null,
  ALLOW_SUBSTITUTE_RECEIPTS_FLAG VARCHAR2(10 CHAR),
  ATTRIBUTE1                     VARCHAR2(200 CHAR),
  COMPANY_CODE                   VARCHAR2(40 CHAR),
  CON_VENDOR_ID                  NUMBER(19,2),
  CREATED_BY                     NUMBER(19,2),
  EMPLOYEE_NAME                  VARCHAR2(100 CHAR),
  EMPLOYEE_NUMBER                VARCHAR2(100 CHAR),
  INACTIVE_DATE                  VARCHAR2(100 CHAR),
  LAST_UPDATE_DATE               VARCHAR2(100 CHAR),
  MODIFTY_DATE                   TIMESTAMP(6),
  ORGCERTNUMBER                  VARCHAR2(100 CHAR),
  PERSON_ID                      NUMBER(19,2),
  REFERENCE1                     VARCHAR2(240 CHAR),
  REFERENCE10                    VARCHAR2(240 CHAR),
  REFERENCE11                    VARCHAR2(240 CHAR),
  REFERENCE12                    VARCHAR2(240 CHAR),
  REFERENCE13                    VARCHAR2(240 CHAR),
  REFERENCE14                    VARCHAR2(240 CHAR),
  REFERENCE15                    VARCHAR2(240 CHAR),
  REFERENCE2                     VARCHAR2(240 CHAR),
  REFERENCE3                     VARCHAR2(240 CHAR),
  REFERENCE4                     VARCHAR2(240 CHAR),
  REFERENCE5                     VARCHAR2(240 CHAR),
  REFERENCE6                     VARCHAR2(240 CHAR),
  REFERENCE7                     VARCHAR2(240 CHAR),
  REFERENCE8                     VARCHAR2(240 CHAR),
  REFERENCE9                     VARCHAR2(240 CHAR),
  VAT_FLAG                       VARCHAR2(100 CHAR),
  VAT_REGISTRATION_NUM           VARCHAR2(100 CHAR),
  VENDOR_CREATION_DATE           VARCHAR2(100 CHAR),
  VENDOR_END_DATE_ACTIVE         VARCHAR2(100 CHAR),
  VENDOR_ID                      NUMBER(19,2),
  VENDOR_NAME                    VARCHAR2(240 CHAR),
  VENDOR_NAME_ALT                VARCHAR2(400 CHAR),
  VENDOR_NUMBER                  VARCHAR2(100 CHAR),
  VENDOR_PUR_TYPE                VARCHAR2(400 CHAR),
  VENDOR_TYPE_DISP               VARCHAR2(100 CHAR),
  VENDOR_TYPE_LOOKUP_CODE        VARCHAR2(100 CHAR)
)
tablespace EPMSDEV
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 128K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.IF_VENDOR_INFO
  add primary key (ID)
  using index 
  tablespace EPMSDEV
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table SMARTMETERBATTERYPOLE
prompt ====================================
prompt
create table FEE_HLJ.SMARTMETERBATTERYPOLE
(
  ID                   NUMBER(19) not null,
  ENTITY_CODE          VARCHAR2(255 CHAR),
  ENTITY_CREATE_DATE   TIMESTAMP(6),
  ENTITY_DESC          VARCHAR2(4000 CHAR),
  FINISH_DATE          TIMESTAMP(6),
  ENTITY_NAME          VARCHAR2(255 CHAR),
  ENTITY_STATUS        VARCHAR2(100 CHAR),
  DELETED_FLAG         NUMBER(1),
  WORKFLOW_ACTIVITY_ID NUMBER(19),
  ATTACHMENT_UNIT_ID   NUMBER(19),
  APPLY_ORG_ID         NUMBER(19),
  APPLY_DEPT_ID        NUMBER(19),
  ENTITY_CREATOR_ID    NUMBER(19)
)
tablespace EPMSDEV
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.SMARTMETERBATTERYPOLE
  add primary key (ID)
  using index 
  tablespace EPMSDEV
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.SMARTMETERBATTERYPOLE
  add constraint FKC0BCFFE57D3296C0 foreign key (ENTITY_CREATOR_ID)
  references FEE_HLJ.S_PRIVILEGE_USER (ID);
alter table FEE_HLJ.SMARTMETERBATTERYPOLE
  add constraint FKC0BCFFE5967622C2 foreign key (APPLY_DEPT_ID)
  references FEE_HLJ.C_ORGANIZATION (ID);
alter table FEE_HLJ.SMARTMETERBATTERYPOLE
  add constraint FKC0BCFFE5A29A3F85 foreign key (APPLY_ORG_ID)
  references FEE_HLJ.C_ORGANIZATION (ID);
alter table FEE_HLJ.SMARTMETERBATTERYPOLE
  add constraint FKC0BCFFE5DEFD0F5 foreign key (WORKFLOW_ACTIVITY_ID)
  references FEE_HLJ.W_WORKFLOW_ACTIVITY (ID);
alter table FEE_HLJ.SMARTMETERBATTERYPOLE
  add constraint FKC0BCFFE5F7258E38 foreign key (ATTACHMENT_UNIT_ID)
  references FEE_HLJ.B_ATTACHMENT_UNIT (ID);

prompt
prompt Creating table SYS_IDCREATOR
prompt ============================
prompt
create table FEE_HLJ.SYS_IDCREATOR
(
  ID        NUMBER(19) not null,
  MAXID     NUMBER(10),
  MEMO      VARCHAR2(255 CHAR),
  TABLENAME VARCHAR2(255 CHAR)
)
tablespace EPMSDEV
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.SYS_IDCREATOR
  add primary key (ID)
  using index 
  tablespace EPMSDEV
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table S_AUDIT_ENTRY
prompt ============================
prompt
create table FEE_HLJ.S_AUDIT_ENTRY
(
  ID                 NUMBER(19) not null,
  CLIENT_IP          VARCHAR2(50 CHAR),
  REQUESTED_DATETIME TIMESTAMP(6),
  REQUESTED_URL      VARCHAR2(255 CHAR),
  USER_ACCOUNT       VARCHAR2(50 CHAR),
  USER_ID            VARCHAR2(50 CHAR),
  USER_NAME          VARCHAR2(50 CHAR),
  AUDIT_TYPE         VARCHAR2(50 CHAR),
  CATEGORY_CODE      VARCHAR2(255 CHAR),
  CATEGORY_NAME      VARCHAR2(255 CHAR),
  CLASS_NAME         VARCHAR2(255 CHAR),
  DURATION           NUMBER(19) not null,
  EXCEPTION          CLOB,
  METHOD_NAME        VARCHAR2(255 CHAR),
  OPER_DATA          CLOB,
  OPER_NAME          VARCHAR2(255 CHAR),
  SUCCEED_FLAG       NUMBER(1)
)
tablespace EPMSDEV
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 384K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.S_AUDIT_ENTRY
  add primary key (ID)
  using index 
  tablespace EPMSDEV
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table S_AUDIT_ENTRY_CODE
prompt =================================
prompt
create table FEE_HLJ.S_AUDIT_ENTRY_CODE
(
  ID   NUMBER,
  CODE VARCHAR2(255),
  NAME VARCHAR2(255),
  TYPE VARCHAR2(255)
)
tablespace EPMSDEV
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table S_CHAMBERTOWER_ADJUST
prompt ====================================
prompt
create table FEE_HLJ.S_CHAMBERTOWER_ADJUST
(
  TOWER_ID  NUMBER(19) not null,
  ADJUST_ID NUMBER(19) not null
)
tablespace EPMSDEV
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.S_CHAMBERTOWER_ADJUST
  add constraint FKFDF83657A0A88E16 foreign key (TOWER_ID)
  references FEE_HLJ.B_WBSTASK_ADJUST_ITEM (ID);
alter table FEE_HLJ.S_CHAMBERTOWER_ADJUST
  add constraint FKFDF83657D44B8CC5 foreign key (ADJUST_ID)
  references FEE_HLJ.B_WBSTASK_BASIC_ADJUST (ID);

prompt
prompt Creating table S_CHANGEADJUST_RENTS
prompt ===================================
prompt
create table FEE_HLJ.S_CHANGEADJUST_RENTS
(
  STARTADJUST_ID NUMBER(19) not null,
  RENT_ID        NUMBER(19) not null
)
tablespace EPMSDEV
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table S_CHANGE_RENTS
prompt =============================
prompt
create table FEE_HLJ.S_CHANGE_RENTS
(
  START_ID NUMBER(19) not null,
  RENT_ID  NUMBER(19) not null
)
tablespace EPMSDEV
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table S_JOB
prompt ====================
prompt
create table FEE_HLJ.S_JOB
(
  ID        NUMBER(19) not null,
  TYPE_CODE VARCHAR2(255 CHAR),
  TYPE_DESC VARCHAR2(255 CHAR),
  TYPE_NAME VARCHAR2(255 CHAR)
)
tablespace EPMSDEV
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.S_JOB
  add primary key (ID)
  using index 
  tablespace EPMSDEV
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table S_MODULE_CONFIG_DETAIL
prompt =====================================
prompt
create table FEE_HLJ.S_MODULE_CONFIG_DETAIL
(
  ID        NUMBER(19) not null,
  COUNT_SQL VARCHAR2(4000 CHAR),
  NAME      VARCHAR2(255 CHAR),
  TYPE      NUMBER(10),
  URL       VARCHAR2(512 CHAR),
  CONFIG_ID NUMBER(19)
)
tablespace EPMSDEV
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.S_MODULE_CONFIG_DETAIL
  add primary key (ID)
  using index 
  tablespace EPMSDEV
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.S_MODULE_CONFIG_DETAIL
  add constraint FKCC647FA74B45AA10 foreign key (CONFIG_ID)
  references FEE_HLJ.S_MODULE (MODULE_ID);

prompt
prompt Creating table S_NEWADJUST_RENTS
prompt ================================
prompt
create table FEE_HLJ.S_NEWADJUST_RENTS
(
  STARTADJUST_ID NUMBER(19) not null,
  RENT_ID        NUMBER(19) not null
)
tablespace EPMSDEV
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table S_NEWTOWER_ADJUST
prompt ================================
prompt
create table FEE_HLJ.S_NEWTOWER_ADJUST
(
  TOWER_ID  NUMBER(19) not null,
  ADJUST_ID NUMBER(19) not null
)
tablespace EPMSDEV
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.S_NEWTOWER_ADJUST
  add constraint FK30DB4B59A0A88E16 foreign key (TOWER_ID)
  references FEE_HLJ.B_WBSTASK_ADJUST_ITEM (ID);
alter table FEE_HLJ.S_NEWTOWER_ADJUST
  add constraint FK30DB4B59D44B8CC5 foreign key (ADJUST_ID)
  references FEE_HLJ.B_WBSTASK_BASIC_ADJUST (ID);

prompt
prompt Creating table S_NEW_RENTS
prompt ==========================
prompt
create table FEE_HLJ.S_NEW_RENTS
(
  START_ID NUMBER(19) not null,
  RENT_ID  NUMBER(19) not null
)
tablespace EPMSDEV
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table S_OPERATION
prompt ==========================
prompt
create table FEE_HLJ.S_OPERATION
(
  OPER_ID     NUMBER(19) not null,
  ISLEAF_FLAG NUMBER(1),
  ISROOT_FLAG NUMBER(1),
  OPER_CODE   VARCHAR2(100 CHAR),
  OPER_DESC   VARCHAR2(1000 CHAR),
  INNER_CODE  VARCHAR2(100 CHAR),
  OPER_LEVEL  NUMBER(10),
  OPER_NAME   VARCHAR2(100 CHAR),
  PARENT_ID   NUMBER(19)
)
tablespace EPMSDEV
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.S_OPERATION
  add primary key (OPER_ID)
  using index 
  tablespace EPMSDEV
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table S_ORDER_ADJUST_TRAN
prompt ==================================
prompt
create table FEE_HLJ.S_ORDER_ADJUST_TRAN
(
  ORDER_ID NUMBER(19) not null,
  TRAN_ID  NUMBER(19) not null
)
tablespace EPMSDEV
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.S_ORDER_ADJUST_TRAN
  add constraint FK4E2B899E4AE55023 foreign key (TRAN_ID)
  references FEE_HLJ.B_ACER_STATION_ORDER_TRAN (ID);
alter table FEE_HLJ.S_ORDER_ADJUST_TRAN
  add constraint FK4E2B899EB5F656DA foreign key (ORDER_ID)
  references FEE_HLJ.B_ACER_STATION_ORDER_ADJUST (ID);

prompt
prompt Creating table S_ORDER_TRAN
prompt ===========================
prompt
create table FEE_HLJ.S_ORDER_TRAN
(
  ORDER_ID NUMBER(19) not null,
  TRAN_ID  NUMBER(19) not null
)
tablespace EPMSDEV
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.S_ORDER_TRAN
  add constraint FKE2C1A4C84AE55023 foreign key (TRAN_ID)
  references FEE_HLJ.B_ACER_STATION_ORDER_TRAN (ID);
alter table FEE_HLJ.S_ORDER_TRAN
  add constraint FKE2C1A4C8D0E87E6B foreign key (ORDER_ID)
  references FEE_HLJ.B_ACER_STATION_ORDER (ID);

prompt
prompt Creating table S_ORIGINADJUST_RENTS
prompt ===================================
prompt
create table FEE_HLJ.S_ORIGINADJUST_RENTS
(
  STARTADJUST_ID NUMBER(19) not null,
  RENT_ID        NUMBER(19) not null
)
tablespace EPMSDEV
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table S_ORIGIN_RENTS
prompt =============================
prompt
create table FEE_HLJ.S_ORIGIN_RENTS
(
  START_ID NUMBER(19) not null,
  RENT_ID  NUMBER(19) not null
)
tablespace EPMSDEV
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table S_POSITION
prompt =========================
prompt
create table FEE_HLJ.S_POSITION
(
  ID        NUMBER(19) not null,
  TYPE_CODE VARCHAR2(255 CHAR),
  TYPE_DESC VARCHAR2(255 CHAR),
  TYPE_NAME VARCHAR2(255 CHAR),
  JOB_ID    NUMBER(19),
  ORG_ID    NUMBER(19)
)
tablespace EPMSDEV
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.S_POSITION
  add primary key (ID)
  using index 
  tablespace EPMSDEV
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table S_RESOURCE
prompt =========================
prompt
create table FEE_HLJ.S_RESOURCE
(
  ID          NUMBER(19) not null,
  REALM_CODE  VARCHAR2(255 CHAR),
  RESOURCE_ID NUMBER(19),
  ROLE_ID     NUMBER(19)
)
tablespace EPMSDEV
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.S_RESOURCE
  add primary key (ID)
  using index 
  tablespace EPMSDEV
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table S_ROLE_TYPE
prompt ==========================
prompt
create table FEE_HLJ.S_ROLE_TYPE
(
  ROLE_TYPE_ID   NUMBER(19) not null,
  ROLE_TYPE_CODE VARCHAR2(255 CHAR),
  ROLE_TYPE_NAME VARCHAR2(1000 CHAR)
)
tablespace EPMSDEV
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.S_ROLE_TYPE
  add primary key (ROLE_TYPE_ID)
  using index 
  tablespace EPMSDEV
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.S_ROLE_TYPE
  add unique (ROLE_TYPE_CODE)
  using index 
  tablespace EPMSDEV
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table S_ROOMADJUST_RENTS
prompt =================================
prompt
create table FEE_HLJ.S_ROOMADJUST_RENTS
(
  STARTADJUST_ID NUMBER(19) not null,
  RENT_ID        NUMBER(19) not null
)
tablespace EPMSDEV
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table S_ROOM_ADJUST_TRAN
prompt =================================
prompt
create table FEE_HLJ.S_ROOM_ADJUST_TRAN
(
  ORDER_ID NUMBER(19) not null,
  TRAN_ID  NUMBER(19) not null
)
tablespace EPMSDEV
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.S_ROOM_ADJUST_TRAN
  add constraint FK41F1BAC34AE55023 foreign key (TRAN_ID)
  references FEE_HLJ.B_ACER_STATION_ORDER_TRAN (ID);
alter table FEE_HLJ.S_ROOM_ADJUST_TRAN
  add constraint FK41F1BAC3A42E47C4 foreign key (ORDER_ID)
  references FEE_HLJ.B_ROOM_ORDER_ADJUST (ID);

prompt
prompt Creating table S_ROOM_ORDER_TRAN
prompt ================================
prompt
create table FEE_HLJ.S_ROOM_ORDER_TRAN
(
  ORDER_ID NUMBER(19) not null,
  TRAN_ID  NUMBER(19) not null
)
tablespace EPMSDEV
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.S_ROOM_ORDER_TRAN
  add constraint FK3B763944AE55023 foreign key (TRAN_ID)
  references FEE_HLJ.B_ACER_STATION_ORDER_TRAN (ID);
alter table FEE_HLJ.S_ROOM_ORDER_TRAN
  add constraint FK3B7639479E6D5 foreign key (ORDER_ID)
  references FEE_HLJ.B_ROOM_ORDER (ID);

prompt
prompt Creating table S_ROOM_RENTS
prompt ===========================
prompt
create table FEE_HLJ.S_ROOM_RENTS
(
  START_ID NUMBER(19) not null,
  RENT_ID  NUMBER(19) not null
)
tablespace EPMSDEV
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table S_SELFADJUST_RENTS
prompt =================================
prompt
create table FEE_HLJ.S_SELFADJUST_RENTS
(
  STARTADJUST_ID NUMBER(19) not null,
  RENT_ID        NUMBER(19) not null
)
tablespace EPMSDEV
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table S_SELF_RENTS
prompt ===========================
prompt
create table FEE_HLJ.S_SELF_RENTS
(
  START_ID NUMBER(19) not null,
  RENT_ID  NUMBER(19) not null
)
tablespace EPMSDEV
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table S_SHAREADJUST_RENTS
prompt ==================================
prompt
create table FEE_HLJ.S_SHAREADJUST_RENTS
(
  STARTADJUST_ID NUMBER(19) not null,
  RENT_ID        NUMBER(19) not null
)
tablespace EPMSDEV
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table S_SHARE_RENTS
prompt ============================
prompt
create table FEE_HLJ.S_SHARE_RENTS
(
  START_ID NUMBER(19) not null,
  RENT_ID  NUMBER(19) not null
)
tablespace EPMSDEV
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table S_STOCKTOWER_ADJUST
prompt ==================================
prompt
create table FEE_HLJ.S_STOCKTOWER_ADJUST
(
  TOWER_ID  NUMBER(19) not null,
  ADJUST_ID NUMBER(19) not null
)
tablespace EPMSDEV
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.S_STOCKTOWER_ADJUST
  add constraint FK6F7ADACFA0A88E16 foreign key (TOWER_ID)
  references FEE_HLJ.B_WBSTASK_ADJUST_ITEM (ID);
alter table FEE_HLJ.S_STOCKTOWER_ADJUST
  add constraint FK6F7ADACFD44B8CC5 foreign key (ADJUST_ID)
  references FEE_HLJ.B_WBSTASK_BASIC_ADJUST (ID);

prompt
prompt Creating table S_SYNONYM_MAPPING
prompt ================================
prompt
create table FEE_HLJ.S_SYNONYM_MAPPING
(
  SYNONYM_NAME          VARCHAR2(255 CHAR) not null,
  ENTITY_BUSINESS_TYPE  VARCHAR2(30 CHAR),
  ENTITY_TABLE_USER     VARCHAR2(30 CHAR),
  MAP_ENTITY_TABLE      VARCHAR2(30 CHAR),
  REF_SYN_BUSINESS_TYPE VARCHAR2(30 CHAR),
  REF_SYNONYM_COLUMN    VARCHAR2(30 CHAR),
  REL_SYNONYM_TABLE     VARCHAR2(30 CHAR),
  SYNONYM_USER          VARCHAR2(30 CHAR)
)
tablespace EPMSDEV
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.S_SYNONYM_MAPPING
  add primary key (SYNONYM_NAME)
  using index 
  tablespace EPMSDEV
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table S_SYSTEM_USER
prompt ============================
prompt
create table FEE_HLJ.S_SYSTEM_USER
(
  ID                   NUMBER(19) not null,
  PARTY_ADDRESS        VARCHAR2(500 CHAR),
  PARTY_CODE           VARCHAR2(50 CHAR),
  PARTY_DESC           VARCHAR2(255 CHAR),
  PARTY_NAME           VARCHAR2(255 CHAR),
  PHONE                VARCHAR2(255 CHAR),
  ACTIVE_FLAG          NUMBER(1),
  EMAIL                VARCHAR2(255 CHAR),
  LOCK_FLAG            NUMBER(1),
  LOGIN_IP             VARCHAR2(255 CHAR),
  LOGIN_NAME           VARCHAR2(20 CHAR),
  MANAGER_ENABLED_FLAG NUMBER(1),
  OA_ACCOUNT           VARCHAR2(255 CHAR),
  ORDER_ID             NUMBER(10),
  LOGIN_PASSWORD       VARCHAR2(50 CHAR),
  PASSWORD_MODIFY_TIME TIMESTAMP(6),
  RELATION_ID          NUMBER(19),
  ROLE_ENABLED_FLAG    NUMBER(1),
  U_ID                 VARCHAR2(100 CHAR),
  CONSTRUCT_UNIT_ID    NUMBER(19),
  LEAF_ORG_ID          NUMBER(19),
  DEPARTMENT_ID        NUMBER(19),
  OFFICE_ID            NUMBER(19)
)
tablespace EPMSDEV
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.S_SYSTEM_USER
  add primary key (ID)
  using index 
  tablespace EPMSDEV
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.S_SYSTEM_USER
  add unique (LOGIN_NAME)
  using index 
  tablespace EPMSDEV
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table S_USER_ROLE_RELATIONS
prompt ====================================
prompt
create table FEE_HLJ.S_USER_ROLE_RELATIONS
(
  USER_ID NUMBER(19) not null,
  ROLE_ID NUMBER(19) not null
)
tablespace EPMSDEV
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.S_USER_ROLE_RELATIONS
  add primary key (USER_ID, ROLE_ID)
  using index 
  tablespace EPMSDEV
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table T_TONGJI
prompt =======================
prompt
create table FEE_HLJ.T_TONGJI
(
  MONTH       VARCHAR2(255 CHAR),
  USERNAME    VARCHAR2(50 CHAR),
  PROJECTNAME VARCHAR2(255 CHAR),
  RENTIAN     NUMBER(10)
)
tablespace EPMSDEV
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table W_APPROVER_LIST
prompt ==============================
prompt
create table FEE_HLJ.W_APPROVER_LIST
(
  ID                 NUMBER(19) not null,
  ENTITY_CODE        VARCHAR2(255 CHAR),
  ENTITY_CREATE_DATE TIMESTAMP(6),
  ENTITY_DESC        VARCHAR2(4000 CHAR),
  FINISH_DATE        TIMESTAMP(6),
  ENTITY_NAME        VARCHAR2(255 CHAR),
  ENTITY_STATUS      VARCHAR2(100 CHAR),
  USER_ID            NUMBER(19),
  ENTITY_CREATOR_ID  NUMBER(19),
  INSTANCE_ID        NUMBER(19)
)
tablespace EPMSDEV
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.W_APPROVER_LIST
  add primary key (ID)
  using index 
  tablespace EPMSDEV
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table W_HANDLE_SIGHT
prompt =============================
prompt
create table FEE_HLJ.W_HANDLE_SIGHT
(
  ID            NUMBER(19) not null,
  DISPOSAL_ID   VARCHAR2(255 CHAR),
  DISPOSAL_NAME VARCHAR2(255 CHAR),
  FLOW_ID       VARCHAR2(255 CHAR),
  HANDLE_SIGHT  VARCHAR2(2048 CHAR),
  ISDEFAULT     NUMBER(1),
  NEXT_NODETYPE VARCHAR2(255 CHAR),
  NODE_ID       NUMBER(19),
  PATH_NO       VARCHAR2(255 CHAR),
  TASKID        NUMBER(19),
  TASK_TYPE     VARCHAR2(255 CHAR),
  XML_PACKAGE   VARCHAR2(2048 CHAR),
  USER_ID       NUMBER(19)
)
tablespace EPMSDEV
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.W_HANDLE_SIGHT
  add primary key (ID)
  using index 
  tablespace EPMSDEV
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table W_INSTANCE
prompt =========================
prompt
create table FEE_HLJ.W_INSTANCE
(
  INSTANCEID        NUMBER(19) not null,
  ACTIONOP          VARCHAR2(255 CHAR),
  CONTENT           CLOB,
  INSTANCEBEGINTIME TIMESTAMP(6),
  INSTANCEENDTIME   TIMESTAMP(6),
  INSTANCENAME      VARCHAR2(255 CHAR),
  INSTANCETIMELIMIT FLOAT,
  PARAMS            CLOB,
  STATE             NUMBER(10),
  USERID            NUMBER(10),
  WORKFLOWID        NUMBER(19)
)
tablespace EPMSDEV
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.W_INSTANCE
  add primary key (INSTANCEID)
  using index 
  tablespace EPMSDEV
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table W_INSTANCE_BAK
prompt =============================
prompt
create table FEE_HLJ.W_INSTANCE_BAK
(
  INSTANCEID        NUMBER(19) not null,
  ACTIONOP          VARCHAR2(255 CHAR),
  CONTENT           CLOB,
  INSTANCEBEGINTIME TIMESTAMP(6),
  INSTANCEENDTIME   TIMESTAMP(6),
  INSTANCENAME      VARCHAR2(255 CHAR),
  INSTANCETIMELIMIT FLOAT,
  PARAMS            CLOB,
  STATE             NUMBER(10),
  USERID            NUMBER(10),
  WORKFLOWID        NUMBER(19)
)
tablespace EPMSDEV
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.W_INSTANCE_BAK
  add primary key (INSTANCEID)
  using index 
  tablespace EPMSDEV
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table W_MODEL
prompt ======================
prompt
create table FEE_HLJ.W_MODEL
(
  MODELID NUMBER(19) not null
)
tablespace EPMSDEV
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.W_MODEL
  add primary key (MODELID)
  using index 
  tablespace EPMSDEV
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table W_NODE
prompt =====================
prompt
create table FEE_HLJ.W_NODE
(
  NODEID         NUMBER(19) not null,
  COMENT         CLOB,
  NODENAME       VARCHAR2(255 CHAR),
  WFNODEID       NUMBER(19),
  XMLDESCRIPTION CLOB,
  WORKFLOWID     NUMBER(19),
  SEQUENCENUMBER NUMBER(19)
)
tablespace EPMSDEV
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.W_NODE
  add primary key (NODEID)
  using index 
  tablespace EPMSDEV
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.W_NODE
  add unique (WFNODEID)
  using index 
  tablespace EPMSDEV
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table W_NODESTATE
prompt ==========================
prompt
create table FEE_HLJ.W_NODESTATE
(
  NODESTATEID     NUMBER(19) not null,
  BACKNODEID      NUMBER(19),
  BACKUSERID      VARCHAR2(255 CHAR),
  COUNTER         NUMBER(10),
  ISFINISH        NUMBER(10),
  MULTIPERSONRULE NUMBER(10),
  NODEBEGINTIME   TIMESTAMP(6),
  NODEENDTIME     TIMESTAMP(6),
  NODETIMELIMIT   FLOAT,
  NODETYPE        NUMBER(10),
  OUTNODECOUNT    NUMBER(10),
  SYNCOUNTER      NUMBER(10),
  NODEID          NUMBER(19),
  INSTANCEID      NUMBER(19)
)
tablespace EPMSDEV
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.W_NODESTATE
  add primary key (NODESTATEID)
  using index 
  tablespace EPMSDEV
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.W_NODESTATE
  add constraint FKFA6D9A078629BBDB foreign key (NODEID)
  references FEE_HLJ.W_NODE (WFNODEID);

prompt
prompt Creating table W_NODESTATE_BAK
prompt ==============================
prompt
create table FEE_HLJ.W_NODESTATE_BAK
(
  NODESTATEID     NUMBER(19) not null,
  COUNTER         NUMBER(10),
  ISFINISH        NUMBER(10),
  MULTIPERSONRULE NUMBER(10),
  NODEBEGINTIME   TIMESTAMP(6),
  NODEENDTIME     TIMESTAMP(6),
  NODETIMELIMIT   FLOAT,
  NODETYPE        NUMBER(10),
  OUTNODECOUNT    NUMBER(10),
  SYNCOUNTER      NUMBER(10),
  INSTANCEID      NUMBER(19),
  NODEID          NUMBER(19)
)
tablespace EPMSDEV
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.W_NODESTATE_BAK
  add primary key (NODESTATEID)
  using index 
  tablespace EPMSDEV
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table W_PARAM
prompt ======================
prompt
create table FEE_HLJ.W_PARAM
(
  PARAMID    NUMBER(10) not null,
  PARAMNAME  VARCHAR2(255 CHAR),
  PARAMTYPE  VARCHAR2(255 CHAR),
  PARAMVALUE VARCHAR2(255 CHAR),
  INSTANCEID NUMBER(19)
)
tablespace EPMSDEV
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.W_PARAM
  add primary key (PARAMID)
  using index 
  tablespace EPMSDEV
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table W_RT_DEFAULTEXCUTER
prompt ==================================
prompt
create table FEE_HLJ.W_RT_DEFAULTEXCUTER
(
  DEFAULTEXCUTERID NUMBER(19) not null,
  RTNODEID         NUMBER(19),
  USERID           NUMBER(19),
  USERNAME         VARCHAR2(255 CHAR)
)
tablespace EPMSDEV
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.W_RT_DEFAULTEXCUTER
  add primary key (DEFAULTEXCUTERID)
  using index 
  tablespace EPMSDEV
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table W_RT_NODE
prompt ========================
prompt
create table FEE_HLJ.W_RT_NODE
(
  RTNODEID   NUMBER(19) not null,
  THENODEID  NUMBER(10),
  TIMELIMIT  FLOAT,
  TIMELIMIT1 FLOAT,
  INSTANCEID NUMBER(19)
)
tablespace EPMSDEV
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.W_RT_NODE
  add primary key (RTNODEID)
  using index 
  tablespace EPMSDEV
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table W_TASK
prompt =====================
prompt
create table FEE_HLJ.W_TASK
(
  TASKID             NUMBER(19) not null,
  BATCHFLAG          NUMBER(10),
  BEGINTIME          TIMESTAMP(6),
  CONSIGNER          NUMBER(10),
  ENDTIME            TIMESTAMP(6),
  MULTIPERSONPRI     NUMBER(10),
  NAME               VARCHAR2(255 CHAR),
  OASTATE            NUMBER(10),
  PLANENDTIME        TIMESTAMP(6),
  FROMTASKID         NUMBER(19),
  REGAIN             NUMBER(10),
  RETURNPRINCIPLE    NUMBER(10),
  STATE              VARCHAR2(255 CHAR),
  TASKSHOW           NUMBER(10),
  TASKTYPE           NUMBER(10),
  TIMELIMIT          FLOAT,
  TIMELIMIT1         FLOAT,
  TIMELIMIT2         FLOAT,
  TIMELIMITRESPONSE  FLOAT,
  TIMELIMITRESPONSE1 FLOAT,
  TIMELIMITRESPONSE2 FLOAT,
  UPDATEVERSION      NUMBER(10),
  URL                VARCHAR2(1024 CHAR),
  NODESTATEID        NUMBER(19),
  ASSIGNUSERID       NUMBER(19),
  PREUSERID          NUMBER(19),
  INSTANCE_ID        NUMBER(19),
  USERID             NUMBER(19),
  AUDITOPTION        NUMBER(10)
)
tablespace EPMSDEV
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.W_TASK
  add primary key (TASKID)
  using index 
  tablespace EPMSDEV
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table W_TASK_BAK
prompt =========================
prompt
create table FEE_HLJ.W_TASK_BAK
(
  TASKID             NUMBER(19) not null,
  BEGINTIME          TIMESTAMP(6),
  ENDTIME            TIMESTAMP(6),
  MULTIPERSONPRI     NUMBER(10),
  NAME               VARCHAR2(255 CHAR),
  STATE              VARCHAR2(255 CHAR),
  TASKSHOW           NUMBER(10),
  TASKTYPE           NUMBER(10),
  TIMELIMIT          FLOAT,
  TIMELIMIT1         FLOAT,
  TIMELIMIT2         FLOAT,
  TIMELIMITRESPONSE  FLOAT,
  TIMELIMITRESPONSE1 FLOAT,
  TIMELIMITRESPONSE2 FLOAT,
  URL                VARCHAR2(1024 CHAR),
  USERID             NUMBER(10),
  NODESTATEID        NUMBER(19),
  PREUSERID          NUMBER(19),
  FROMTASKID         NUMBER(19),
  CONSIGNER          NUMBER(19)
)
tablespace EPMSDEV
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.W_TASK_BAK
  add primary key (TASKID)
  using index 
  tablespace EPMSDEV
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table W_TASK_ENTRUST
prompt =============================
prompt
create table FEE_HLJ.W_TASK_ENTRUST
(
  ID              NUMBER(19) not null,
  CREATE_DATE     TIMESTAMP(6),
  END_DATE        TIMESTAMP(6),
  ENTITY_DESC     VARCHAR2(4000 CHAR),
  PLAN_BEGIN_DATE TIMESTAMP(6),
  PLAN_END_DATE   TIMESTAMP(6),
  STATUS          NUMBER(19),
  WORKFLOWID      NUMBER(19),
  ACCEPTOR_ID     NUMBER(19),
  CREATOR_ID      NUMBER(19)
)
tablespace EPMSDEV
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.W_TASK_ENTRUST
  add primary key (ID)
  using index 
  tablespace EPMSDEV
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.W_TASK_ENTRUST
  add constraint FK4B295D5D3F0B13C5 foreign key (ACCEPTOR_ID)
  references FEE_HLJ.S_PRIVILEGE_USER (ID);
alter table FEE_HLJ.W_TASK_ENTRUST
  add constraint FK4B295D5D6AE860E4 foreign key (CREATOR_ID)
  references FEE_HLJ.S_PRIVILEGE_USER (ID);

prompt
prompt Creating table W_TASK_EXT
prompt =========================
prompt
create table FEE_HLJ.W_TASK_EXT
(
  ID         NUMBER(19) not null,
  STARTTYPE  VARCHAR2(255 CHAR),
  INSTANCEID NUMBER(19),
  TASKID     NUMBER(19)
)
tablespace EPMSDEV
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.W_TASK_EXT
  add primary key (ID)
  using index 
  tablespace EPMSDEV
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table W_TEMPEXCUTER
prompt ============================
prompt
create table FEE_HLJ.W_TEMPEXCUTER
(
  ID     NUMBER(19) not null,
  TASKID NUMBER(19),
  USERID NUMBER(19)
)
tablespace EPMSDEV
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.W_TEMPEXCUTER
  add primary key (ID)
  using index 
  tablespace EPMSDEV
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table W_WORKFLOW
prompt =========================
prompt
create table FEE_HLJ.W_WORKFLOW
(
  WORKFLOWID NUMBER(19) not null,
  CONTENT    CLOB,
  CREATEURL  VARCHAR2(255 CHAR),
  MODELID    NUMBER(19),
  ORDERID    NUMBER(10),
  VALID      NUMBER(10),
  NAME       VARCHAR2(255 CHAR)
)
tablespace EPMSDEV
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table FEE_HLJ.W_WORKFLOW
  add primary key (WORKFLOWID)
  using index 
  tablespace EPMSDEV
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating sequence HIBERNATE_SEQUENCE
prompt ====================================
prompt
create sequence FEE_HLJ.HIBERNATE_SEQUENCE
minvalue 1
maxvalue 999999999999999999999999999
start with 864431
increment by 1
cache 20;

prompt
prompt Creating sequence ORG
prompt =====================
prompt
create sequence FEE_HLJ.ORG
minvalue 1
maxvalue 1000000000
start with 2
increment by 1
cache 20;

prompt
prompt Creating view V_ANNUAL_ELECTRICITY_ORG
prompt ======================================
prompt
create or replace view fee_hlj.v_annual_electricity_org as
select distinct kk.paydate paydate,sum(kk.ww) wattage,sum(kk.pp) paymentAmount, cor.id  cityId, cor.party_name cityName,kk.region region_Id
,kk.regionName  regionName from c_organization cor
left join ( select  to_char(obj.finish_date,'yyyy') as paydate,city.party_name,region.party_name regionName, bres.city_id city,bres.region_id region,bre.resource_wattage ww,obj.payment_amount pp
     from b_payment_apply obj
     left join b_resource_reim_item bre on bre.payment_apply_id=obj.id
     left join b_resource_point bres on bres.id=bre.resource_point_id
     left join c_organization city on city.id=bres.city_id
     left join c_organization region on region.id=bres.region_id
     where obj.entity_status = 'completed'   )kk on kk.city=cor.id

where  1=1
group by  cor.id ,cor.party_name,kk.paydate,kk.region,kk.regionName
order by  sum(kk.pp) desc;

prompt
prompt Creating view V_ANNUAL_ELECTRICITY
prompt ==================================
prompt
create or replace view fee_hlj.v_annual_electricity as
select distinct cor.party_name  regionName, sum(kk.ww) wattage,sum(kk.pp) paymentAmount, cor1.id  cityId, cor1.party_name cityName,cor.id region_Id
 from c_organization cor
left join (select obj.region_id region,obj.wattage ww,obj.payment_amount pp
  from b_payment_apply obj where obj.entity_status='completed')kk on kk.region=cor.id
left join c_organization cor1 on cor1.id=cor.parent_id
where   cor1.parent_id is not  null
group by  cor1.id ,cor1.party_name,cor.id ,cor.party_name


union all
select '合计' as regionName, sum(xx.wattage) wattage,sum(xx.paymentAmount) paymentAmount ,20 as cityId,'' as cityName,21 as region_Id
from v_annual_electricity_org xx
group by '','合计';

prompt
prompt Creating view V_ANNUAL_ELECTRICITY_RATE
prompt =======================================
prompt
create or replace view fee_hlj.v_annual_electricity_rate as
select distinct  cor.id cityId,pp.paydate paydate,cor.party_name cityName,sum(pp.ww) wattage,sum(pp.tt)  paymentAmount from c_organization cor
left join (
     select EXTRACT(YEAR FROM bpa.finish_date)  paydate, bres.city_id, bpa.payment_amount tt,bre.resource_wattage ww  from b_payment_apply bpa
     left join b_resource_reim_item bre on bre.payment_apply_id=bpa.id
     left join b_resource_point bres on bres.id=bre.resource_point_id
     left join c_organization city on city.id=bres.city_id
     where bpa.entity_status = 'completed'
)pp on pp.city_id = cor.id

where cor.parent_id=0
and cor.id > 5 and cor.id<19
group by cor.party_name,cor.id,pp.paydate
order by sum(pp.tt) desc;

prompt
prompt Creating function GET_USER
prompt ==========================
prompt
create or replace function fee_hlj.get_user() return varchar2 is

　　Result varchar2(50);

　　begin

select '11111' into Result from dual
　　return(Result);

　　end get_user();
/

prompt
prompt Creating function UF_GETTOTALDISTRIBUTEMONEY
prompt ============================================
prompt
CREATE OR REPLACE FUNCTION FEE_HLJ."UF_GETTOTALDISTRIBUTEMONEY" (mid number)
return TIMESTAMP
is
rtn TIMESTAMP;

BEGIN
     SELECT
          add_months(to_date(to_char(b.entity_create_date, 'yyyy-MM'), 'yyyy-MM'), ROWNUM) as yearMonth  into rtn
     FROM (select id, entity_create_date, finish_date
             from b_resource_reim_item
             where id in (mid) )b
     where (months_between(to_date(to_char(b.finish_date, 'yyyy-MM'), 'yyyy-MM'),
                           to_date(to_char(b.entity_create_date, 'yyyy-MM'), 'yyyy-MM'))) > 1
   CONNECT BY ROWNUM <
              (select months_between(to_date(to_char(brri.finish_date, 'yyyy-MM'), 'yyyy-MM'),
                                     to_date(to_char(brri.entity_create_date, 'yyyy-MM'), 'yyyy-MM'))
                 from b_resource_reim_item brri
                where brri.id

 in (mid));
  return rtn;

END;
/

prompt
prompt Creating function UF_YYYYMM
prompt ===========================
prompt
CREATE OR REPLACE FUNCTION FEE_HLJ.UF_YYYYMM (mid number)
return VARCHAR2
is
rtn number(19);
rtn1 varchar2(100);
  CURSOR cur  is
SELECT b.id,
          add_months(to_date(to_char(b.entity_create_date, 'yyyy-MM'), 'yyyy-MM'), ROWNUM) as yearMonth
     FROM (select id, entity_create_date, finish_date
             from b_resource_reim_item
             where id =mid )b
     where (months_between(to_date(to_char(b.finish_date, 'yyyy-MM'), 'yyyy-MM'),
                           to_date(to_char(b.entity_create_date, 'yyyy-MM'), 'yyyy-MM'))) > 1
   CONNECT BY ROWNUM <
              (select months_between(to_date(to_char(brri.finish_date, 'yyyy-MM'), 'yyyy-MM'),
                                     to_date(to_char(brri.entity_create_date, 'yyyy-MM'), 'yyyy-MM'))
                 from b_resource_reim_item brri
                where brri.id = mid)
BEGIN
  OPEN cur;
   loop
      fetch cur into rtn1;
      exit when cur%notfound;
      if(rtn is not null)
      then
        rtn := rtn || ',';
      end if;
      rtn := rtn || rtn1;
    end loop;
    close cur;
  return rtn;

END;
/

prompt
prompt Creating procedure SUM_FOR_COL
prompt ==============================
prompt
CREATE OR REPLACE PROCEDURE FEE_HLJ.SUM_FOR_COL
IS
   current_value   NUMBER := 1;
   /*current_value1   varchar2 := '1';*/
   CURSOR cur_column
   IS
      SELECT   '01' AS month,
               mfy.january_Barvalue AS money,
               TO_CHAR (LAST_DAY (TO_DATE ('01', 'mm')), 'dd') AS daycounts,
               mfy.january_Barvalue / TO_CHAR (LAST_DAY (TO_DATE ('01', 'mm')), 'dd')
                  day_money,rri.id as itemId
        FROM   b_measured_benchmark mfy
        left join b_resource_point rp on rp.id=mfy.resourcePoint_id
        left join b_resource_reim_item rri on rri.entity_name=rp.entity_name where rri.id is not null
      UNION
      SELECT   '02' AS month,
               mfy.february_Barvalue AS money,
               TO_CHAR (LAST_DAY (TO_DATE ('02', 'mm')), 'dd') AS daycounts,
               mfy.february_Barvalue / TO_CHAR (LAST_DAY (TO_DATE ('02', 'mm')), 'dd')
                  day_money,rri.id as itemId
        FROM   b_measured_benchmark mfy
         left join b_resource_point rp on rp.id=mfy.resourcePoint_id
        left join b_resource_reim_item rri on rri.entity_name=rp.entity_name where rri.id is not null
      UNION
      SELECT   '03' AS month,
               mfy.march_Barvalue AS money,
               TO_CHAR (LAST_DAY (TO_DATE ('03', 'mm')), 'dd') AS daycounts,
               mfy.march_Barvalue / TO_CHAR (LAST_DAY (TO_DATE ('03', 'mm')), 'dd')
                  day_money,rri.id as itemId
        FROM   b_measured_benchmark mfy
         left join b_resource_point rp on rp.id=mfy.resourcePoint_id
        left join b_resource_reim_item rri on rri.entity_name=rp.entity_name where rri.id is not null
      UNION
      SELECT   '04' AS month,
               mfy.april_Barvalue AS money,
               TO_CHAR (LAST_DAY (TO_DATE ('04', 'mm')), 'dd') AS daycounts,
               mfy.april_Barvalue / TO_CHAR (LAST_DAY (TO_DATE ('04', 'mm')), 'dd')
                  day_money,rri.id as itemId
        FROM   b_measured_benchmark mfy
         left join b_resource_point rp on rp.id=mfy.resourcePoint_id
        left join b_resource_reim_item rri on rri.entity_name=rp.entity_name where rri.id is not null
        UNION
      SELECT   '05' AS month,
               mfy.may_Barvalue AS money,
               TO_CHAR (LAST_DAY (TO_DATE ('05', 'mm')), 'dd') AS daycounts,
               mfy.may_Barvalue / TO_CHAR (LAST_DAY (TO_DATE ('05', 'mm')), 'dd')
                  day_money,rri.id as itemId
        FROM   b_measured_benchmark mfy
         left join b_resource_point rp on rp.id=mfy.resourcePoint_id
        left join b_resource_reim_item rri on rri.entity_name=rp.entity_name where rri.id is not null
        UNION
      SELECT   '06' AS month,
               mfy.june_Barvalue AS money,
               TO_CHAR (LAST_DAY (TO_DATE ('06', 'mm')), 'dd') AS daycounts,
               mfy.june_Barvalue / TO_CHAR (LAST_DAY (TO_DATE ('06', 'mm')), 'dd')
                  day_money,rri.id as itemId
        FROM   b_measured_benchmark mfy
         left join b_resource_point rp on rp.id=mfy.resourcePoint_id
        left join b_resource_reim_item rri on rri.entity_name=rp.entity_name where rri.id is not null
        UNION
      SELECT   '07' AS month,
               mfy.july_Barvalue AS money,
               TO_CHAR (LAST_DAY (TO_DATE ('07', 'mm')), 'dd') AS daycounts,
               mfy.july_Barvalue / TO_CHAR (LAST_DAY (TO_DATE ('07', 'mm')), 'dd')
                  day_money,rri.id as itemId
        FROM   b_measured_benchmark mfy
         left join b_resource_point rp on rp.id=mfy.resourcePoint_id
        left join b_resource_reim_item rri on rri.entity_name=rp.entity_name where rri.id is not null
        UNION
      SELECT   '08' AS month,
               mfy.august_Barvalue AS money,
               TO_CHAR (LAST_DAY (TO_DATE ('08', 'mm')), 'dd') AS daycounts,
               mfy.august_Barvalue / TO_CHAR (LAST_DAY (TO_DATE ('08', 'mm')), 'dd')
                  day_money,rri.id as itemId
        FROM   b_measured_benchmark mfy
         left join b_resource_point rp on rp.id=mfy.resourcePoint_id
        left join b_resource_reim_item rri on rri.entity_name=rp.entity_name where rri.id is not null
        UNION
      SELECT   '09' AS month,
               mfy.september_Barvalue AS money,
               TO_CHAR (LAST_DAY (TO_DATE ('09', 'mm')), 'dd') AS daycounts,
               mfy.september_Barvalue / TO_CHAR (LAST_DAY (TO_DATE ('09', 'mm')), 'dd')
                  day_money,rri.id as itemId
        FROM   b_measured_benchmark mfy
         left join b_resource_point rp on rp.id=mfy.resourcePoint_id
        left join b_resource_reim_item rri on rri.entity_name=rp.entity_name where rri.id is not null
        UNION
      SELECT   '10' AS month,
               mfy.october_Barvalue AS money,
               TO_CHAR (LAST_DAY (TO_DATE ('10', 'mm')), 'dd') AS daycounts,
               mfy.october_Barvalue / TO_CHAR (LAST_DAY (TO_DATE ('10', 'mm')), 'dd')
                  day_money,rri.id as itemId
        FROM   b_measured_benchmark mfy
         left join b_resource_point rp on rp.id=mfy.resourcePoint_id
        left join b_resource_reim_item rri on rri.entity_name=rp.entity_name where rri.id is not null
        UNION
      SELECT   '11' AS month,
               mfy.november_Barvalue AS money,
               TO_CHAR (LAST_DAY (TO_DATE ('11', 'mm')), 'dd') AS daycounts,
               mfy.november_Barvalue / TO_CHAR (LAST_DAY (TO_DATE ('11', 'mm')), 'dd')
                  day_money,rri.id as itemId
        FROM   b_measured_benchmark mfy
         left join b_resource_point rp on rp.id=mfy.resourcePoint_id
        left join b_resource_reim_item rri on rri.entity_name=rp.entity_name where rri.id is not null
        UNION
      SELECT   '12' AS month,
               mfy.december_Barvalue AS money,
               TO_CHAR (LAST_DAY (TO_DATE ('12', 'mm')), 'dd') AS daycounts,
               mfy.december_Barvalue / TO_CHAR (LAST_DAY (TO_DATE ('12', 'mm')), 'dd')
                  day_money,rri.id as itemId
        FROM   b_measured_benchmark mfy
         left join b_resource_point rp on rp.id=mfy.resourcePoint_id
        left join b_resource_reim_item rri on rri.entity_name=rp.entity_name where rri.id is not null
        ;

   CUR             cur_column%ROWTYPE;
BEGIN

   DELETE FROM DW_resource_reim_item;

   OPEN cur_column;

   LOOP
      FETCH cur_column INTO   CUR;

      EXIT WHEN cur_column%NOTFOUND;

      current_value := 1;


      WHILE current_value <= CUR.daycounts

      LOOP

     /* IF current_value <=9 then
        current_value1 :='0'||current_value
        ;*/


         INSERT INTO DW_resource_reim_item (MONTH, MONEY,itemId)
           VALUES   (CUR.month || '-' || current_value, CUR.day_money,CUR.itemId);

         current_value := current_value + 1;
      END LOOP;
   END LOOP;

   CLOSE cur_column;

   COMMIT;
END SUM_FOR_COL;
/

prompt
prompt Creating procedure SUM_FOR_COL_HIS
prompt ==================================
prompt
CREATE OR REPLACE PROCEDURE FEE_HLJ.SUM_FOR_COL_HIS
IS
   current_value   NUMBER := 1;
   /*current_value1   varchar2 := '1';*/
   CURSOR cur_column
   IS
      SELECT   '01' AS month,
               mfy.january_Barvalue AS money,
               TO_CHAR (LAST_DAY (TO_DATE ('01', 'mm')), 'dd') AS daycounts,
               mfy.january_Barvalue / TO_CHAR (LAST_DAY (TO_DATE ('01', 'mm')), 'dd')
                  day_money,rri.id as itemId
        FROM   b_HisMonth_mark mfy
        left join b_resource_point rp on rp.id=mfy.resourcePoint_id
        left join b_resource_reim_item rri on rri.entity_name=rp.entity_name where rri.id is not null
      UNION
      SELECT   '02' AS month,
               mfy.february_Barvalue AS money,
               TO_CHAR (LAST_DAY (TO_DATE ('02', 'mm')), 'dd') AS daycounts,
               mfy.february_Barvalue / TO_CHAR (LAST_DAY (TO_DATE ('02', 'mm')), 'dd')
                  day_money,rri.id as itemId
        FROM   b_HisMonth_mark mfy
         left join b_resource_point rp on rp.id=mfy.resourcePoint_id
        left join b_resource_reim_item rri on rri.entity_name=rp.entity_name where rri.id is not null
      UNION
      SELECT   '03' AS month,
               mfy.march_Barvalue AS money,
               TO_CHAR (LAST_DAY (TO_DATE ('03', 'mm')), 'dd') AS daycounts,
               mfy.march_Barvalue / TO_CHAR (LAST_DAY (TO_DATE ('03', 'mm')), 'dd')
                  day_money,rri.id as itemId
        FROM   b_HisMonth_mark mfy
         left join b_resource_point rp on rp.id=mfy.resourcePoint_id
        left join b_resource_reim_item rri on rri.entity_name=rp.entity_name where rri.id is not null
      UNION
      SELECT   '04' AS month,
               mfy.april_Barvalue AS money,
               TO_CHAR (LAST_DAY (TO_DATE ('04', 'mm')), 'dd') AS daycounts,
               mfy.april_Barvalue / TO_CHAR (LAST_DAY (TO_DATE ('04', 'mm')), 'dd')
                  day_money,rri.id as itemId
        FROM   b_HisMonth_mark mfy
         left join b_resource_point rp on rp.id=mfy.resourcePoint_id
        left join b_resource_reim_item rri on rri.entity_name=rp.entity_name where rri.id is not null
        UNION
      SELECT   '05' AS month,
               mfy.may_Barvalue AS money,
               TO_CHAR (LAST_DAY (TO_DATE ('05', 'mm')), 'dd') AS daycounts,
               mfy.may_Barvalue / TO_CHAR (LAST_DAY (TO_DATE ('05', 'mm')), 'dd')
                  day_money,rri.id as itemId
        FROM   b_HisMonth_mark mfy
         left join b_resource_point rp on rp.id=mfy.resourcePoint_id
        left join b_resource_reim_item rri on rri.entity_name=rp.entity_name where rri.id is not null
        UNION
      SELECT   '06' AS month,
               mfy.june_Barvalue AS money,
               TO_CHAR (LAST_DAY (TO_DATE ('06', 'mm')), 'dd') AS daycounts,
               mfy.june_Barvalue / TO_CHAR (LAST_DAY (TO_DATE ('06', 'mm')), 'dd')
                  day_money,rri.id as itemId
        FROM   b_HisMonth_mark mfy
         left join b_resource_point rp on rp.id=mfy.resourcePoint_id
        left join b_resource_reim_item rri on rri.entity_name=rp.entity_name where rri.id is not null
        UNION
      SELECT   '07' AS month,
               mfy.july_Barvalue AS money,
               TO_CHAR (LAST_DAY (TO_DATE ('07', 'mm')), 'dd') AS daycounts,
               mfy.july_Barvalue / TO_CHAR (LAST_DAY (TO_DATE ('07', 'mm')), 'dd')
                  day_money,rri.id as itemId
        FROM   b_HisMonth_mark mfy
         left join b_resource_point rp on rp.id=mfy.resourcePoint_id
        left join b_resource_reim_item rri on rri.entity_name=rp.entity_name where rri.id is not null
        UNION
      SELECT   '08' AS month,
               mfy.august_Barvalue AS money,
               TO_CHAR (LAST_DAY (TO_DATE ('08', 'mm')), 'dd') AS daycounts,
               mfy.august_Barvalue / TO_CHAR (LAST_DAY (TO_DATE ('08', 'mm')), 'dd')
                  day_money,rri.id as itemId
        FROM   b_HisMonth_mark mfy
         left join b_resource_point rp on rp.id=mfy.resourcePoint_id
        left join b_resource_reim_item rri on rri.entity_name=rp.entity_name where rri.id is not null
        UNION
      SELECT   '09' AS month,
               mfy.september_Barvalue AS money,
               TO_CHAR (LAST_DAY (TO_DATE ('09', 'mm')), 'dd') AS daycounts,
               mfy.september_Barvalue / TO_CHAR (LAST_DAY (TO_DATE ('09', 'mm')), 'dd')
                  day_money,rri.id as itemId
        FROM   b_HisMonth_mark mfy
         left join b_resource_point rp on rp.id=mfy.resourcePoint_id
        left join b_resource_reim_item rri on rri.entity_name=rp.entity_name where rri.id is not null
        UNION
      SELECT   '10' AS month,
               mfy.october_Barvalue AS money,
               TO_CHAR (LAST_DAY (TO_DATE ('10', 'mm')), 'dd') AS daycounts,
               mfy.october_Barvalue / TO_CHAR (LAST_DAY (TO_DATE ('10', 'mm')), 'dd')
                  day_money,rri.id as itemId
        FROM   b_HisMonth_mark mfy
         left join b_resource_point rp on rp.id=mfy.resourcePoint_id
        left join b_resource_reim_item rri on rri.entity_name=rp.entity_name where rri.id is not null
        UNION
      SELECT   '11' AS month,
               mfy.november_Barvalue AS money,
               TO_CHAR (LAST_DAY (TO_DATE ('11', 'mm')), 'dd') AS daycounts,
               mfy.november_Barvalue / TO_CHAR (LAST_DAY (TO_DATE ('11', 'mm')), 'dd')
                  day_money,rri.id as itemId
        FROM   b_HisMonth_mark mfy
         left join b_resource_point rp on rp.id=mfy.resourcePoint_id
        left join b_resource_reim_item rri on rri.entity_name=rp.entity_name where rri.id is not null
        UNION
      SELECT   '12' AS month,
               mfy.december_Barvalue AS money,
               TO_CHAR (LAST_DAY (TO_DATE ('12', 'mm')), 'dd') AS daycounts,
               mfy.december_Barvalue / TO_CHAR (LAST_DAY (TO_DATE ('12', 'mm')), 'dd')
                  day_money,rri.id as itemId
        FROM   b_HisMonth_mark mfy
         left join b_resource_point rp on rp.id=mfy.resourcePoint_id
        left join b_resource_reim_item rri on rri.entity_name=rp.entity_name where rri.id is not null
        ;

   CUR             cur_column%ROWTYPE;
BEGIN

   DELETE FROM DW_resource_reim_item;

   OPEN cur_column;

   LOOP
      FETCH cur_column INTO   CUR;

      EXIT WHEN cur_column%NOTFOUND;

      current_value := 1;


      WHILE current_value <= CUR.daycounts

      LOOP

     /* IF current_value <=9 then
        current_value1 :='0'||current_value
        ;*/


         INSERT INTO DW_resource_reim_item_his (MONTH, MONEY,itemId)
           VALUES   (CUR.month || '-' || current_value, CUR.day_money,CUR.itemId);

         current_value := current_value + 1;
      END LOOP;
   END LOOP;

   CLOSE cur_column;

   COMMIT;
END SUM_FOR_COL_HIS;
/


spool off
