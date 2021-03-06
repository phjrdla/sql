SELECT USERNAME, 
       TERMINAL, 
       PROGRAM, 
       SQL_ID, 
       LOGON_TIME, 
       ROUND((SYSDATE-LOGON_TIME)*(24*60),1) as MINUTES_LOGGED_ON, 
       ROUND(LAST_CALL_ET/60,1) as Minutes_FOR_CURRENT_SQL  
  From v$session 
 WHERE STATUS='ACTIVE' 
   AND USERNAME IS NOT NULL
ORDER BY MINUTES_LOGGED_ON DESC;