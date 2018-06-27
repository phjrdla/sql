set lines 200
set pages 50

col owner          format a10 trunc
col task_name      format a40 trunc
col description    format a40 wrap
col execution_name format a10 trunc
col execution_type format a20 trunc
col status_message format a20 wrap
col error_message  format a20 wrap
col advisor_name   format a20 wrap
col exec_start	   format a15 
col exec_end	   format a15 

select owner
      ,task_name
	  ,execution_name
	  ,to_char(execution_start, 'DD-MON-YY HH24:MI') exec_start	  
	  ,to_char(execution_end,   'DD-MON-YY HH24:MI') exec_end
	  ,(execution_end - execution_start)*24*60*60 Duration_sec
	  ,execution_type
	  ,advisor_name
	  ,status_message
from dba_advisor_executions
/
