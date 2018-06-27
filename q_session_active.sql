set lines  200
set pages 500

select sid
      ,username
	  ,command
	  ,state
	  ,status 
	  ,program
  from v$session
 where status = 'ACTIVE'
/
