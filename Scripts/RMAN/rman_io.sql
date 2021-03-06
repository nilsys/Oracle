-- 1MB=1048576
-- 1GB = MBx1048576

alter session set nls_date_format='DD-MON-YYYY hh24:mi:ss';
set line 1000
column Device format a5
column type format a10
column filename format a70
column status format a15
column open for 9999999999999999
column close for 9999999999999999
select device_type "Device", type , filename, status, bytes/1048576000 sizeGB
, to_char(open_time, 'mm/dd/yyyy hh24:mi:ss') open,
to_char(close_time,'mm/dd/yyyy hh24:mi:ss') close ,
elapsed_time/6000 ETmts, 
effective_bytes_per_second EPS
 from v$backup_async_io;
