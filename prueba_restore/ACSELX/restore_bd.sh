export FECHA=`date +%Y.%m.%d`
rman catalog rcatalprod/catalogo@bdrman target / cmdfile "restore_bd.sql" msglog "restore_bd_$FECHA.log"
