column parameter format a30 trunc
column value format a30 trunc
set pages 100

spool q_nls_db_params;
select *
from nls_database_parameters
order by parameter
/
spool off
