run {
allocate channel c1 type 'SBT_TAPE';
allocate channel c2 type 'SBT_TAPE';
allocate channel c3 type 'SBT_TAPE';
allocate channel c4 type 'SBT_TAPE';
set DBID=3288643307
SET NEWNAME FOR DATABASE TO '+DG_DATA001';
send 'NSR_ENV=(NSR_SERVER=legato.rimac.com.pe,NSR_CLIENT=rssbbdvul01.rimac.com.pe)';
set until time "to_date('2020-08-29 06:15:00', 'yyyy-mm-dd hh24:mi:ss')";
restore controlfile;
sql 'ALTER DATABASE MOUNT';
restore database;
switch datafile all;
recover database;
release channel c1;
release channel c2;
release channel c3;
release channel c4;
}
