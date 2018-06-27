set pages 100
set lines 250


spool plans_g7ds2mn9mcbcs.lst
select plan_table_output
from v$sql s
    ,table(dbms_xplan.display_cursor('g7ds2mn9mcbcs',null,'ADAPTIVE '))
where LAST_ACTIVE_TIME in ( select max(LAST_ACTIVE_TIME) from v$sql where sql_id = 'g7ds2mn9mcbcs' )
/
spool off
