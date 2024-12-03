--liquibase formatted sql

--liquibase formatted sql

--changeset liquibase-docs:tagDatabase-example
--tagDatabase: 'version_1.3'


--changeset asmith:create_order_table_with_tt labels:JIRA-5234
create or replace table order_table (
    orderkey number(38,0),
    custkey number(38,0)
)
data_retention_time_in_days=3
;
--rollback drop table order_table

--changeset asmith:alter_order_table_v1 labels:JIRA-5234
alter table order_table
add brand_id smallint;
--rollback alter table order_table drop column brand_id;
