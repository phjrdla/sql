set timing on
exec dbms_stats.gather_schema_stats(user, options=>'GATHER AUTO', degree=>8, cascade=>true);