column value$ format A30 trunc

spool NLS_CHARACTERSET;
SELECT value$ 
  FROM sys.props$ WHERE name = 'NLS_CHARACTERSET' 
/
spool off
