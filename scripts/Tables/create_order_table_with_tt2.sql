--liquibase formatted sql

--changeset asmith:create_order_table_with_tt labels:JIRA-5234
create or replace table order_table_02 (
    orderkey number(38,0),
    custkey number(38,0)
)
data_retention_time_in_days=3
;
--rollback drop table order_table_02

--changeset asmith:alter_order_table_v1 labels:JIRA-5234
alter table order_table_02
add brand_id smallint;
--rollback alter table order_table_02 drop column brand_id;
