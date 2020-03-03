restore_bd_skip.sql
run
{
allocate channel c1 type 'SBT_TAPE';
allocate channel c2 type 'SBT_TAPE';
allocate channel c3 type 'SBT_TAPE';
allocate channel c4 type 'SBT_TAPE';
send 'NSR_ENV=(NSR_SERVER=legato.rimac.com.pe,NSR_CLIENT=minerva.rimac.com.pe)';
set until time "to_date('2019-04-02 18:00:00', 'yyyy-mm-dd hh24:mi:ss')";
recover database skip tablespace 'INDX_PROD_TRANS_BIG','INDX_PROD_NOTRANS_BIG','DATA_PROD_NOTRANS_BIG','INDX_PROD_TRANS_MED','TBSD_AUDIT','DATA_PROD_TRANS_BIG','INDX_PROD_NOTRANS_MED','TBSD_MCRITICO_ESP','DATA_PROD_SSD_BIG','TBSD_MVPROD_BIG','TBSI_PROD_SMA','DATA_PROD_TRANS_MED','TBSD_PROD_SMA','TBSD_OTHERS_BIG','TBSD_PROD_MED','TBSD_OTHERS_MED','TBSD_EVENTUAL_NOR','DATA_PROD_NOTRANS_MED','TBSD_EVENTUAL_EBIG','TBSD_MCRITICO_NOR','TEMP_PROD_NOTRANS_BIG','TBSD_OTHERS_SMA','TBSD_WEB_MED','TBSD_MCRITI_MED';
}