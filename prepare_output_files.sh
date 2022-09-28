#### Compute ensemble mean of the three Flat Earth experiment simulations

dir1='/work/mh1049/k206174/icon-easyms/experiments/sus22F1/outdata';
dir2='/work/mh1049/k206175/icon-easyms/experiments/sus22F2/outdata';
dir3='/work/mh1049/k206182/icon-easyms/experiments/sus22F3/outdata';

for file_name in ./sus22F*.nc;
        do file_name_end=${file_name:9};  
        file_ensmean=/work/mh1049/k206174/icon-easyms/ensemble_mean/sus22F0_ensmean$file_name_end;
        cdo ensmean -O $dir1/sus22F1$file_name_end $dir2/sus22F2$file_name_end $dir3/sus22F3$file_name_end $file_ensmean;
done;


##### Compute average over last 50 yrs
## Control run
# /work/mh1049/k206160/icon-easyms/experiments/sus2200/outdata
cdo -O ymonmean -cat sus2200_atm_2d_ml_23*_orig.nc /work/mh1049/k206174/icon-easyms/jan/ensmean_last50yrs/sus2200_atm_2d_ml_last50yrs.nc;
cdo -O ymonmean -cat sus2200_atm_3d_ml_23*_orig.nc /work/mh1049/k206174/icon-easyms/jan/ensmean_last50yrs/sus2200_atm_3d_ml_last50yrs.nc;

cdo -O timmean -cat sus2200_atm_mon_23*.nc /work/mh1049/k206174/icon-easyms/jan/ensmean_last50yrs/sus2200_atm_mon_last50yrs.nc;
cdo -O ymonmean -cat sus2200_hamocc_23*.nc /work/mh1049/k206174/icon-easyms/jan/ensmean_last50yrs/sus2200_hamocc_last50yrs.nc;

cdo -O timmean -cat sus2200_hamocc_3d_tendencies_23*.nc /work/mh1049/k206174/icon-easyms/jan/ensmean_last50yrs/sus2200_hamocc_3d_tendencies_last50yrs.nc;
cdo -O timmean -cat sus2200_hamocc_EU_tendencies_23*.nc /work/mh1049/k206174/icon-easyms/jan/ensmean_last50yrs/sus2200_hamocc_EU_tendencies_last50yrs.nc;

cdo -O ymonmean -cat sus2200_hamocc_monitor_23*.nc /work/mh1049/k206174/icon-easyms/jan/ensmean_last50yrs/sus2200_hamocc_monitor_last50yrs.nc;
cdo -O timmean -cat sus2200_hamocc_sediment_23*.nc /work/mh1049/k206174/icon-easyms/jan/ensmean_last50yrs/sus2200_hamocc_sediment_last50yrs.nc;

cdo -O ymonmean -cat sus2200_lnd_basic_ml_23*.nc /work/mh1049/k206174/icon-easyms/jan/ensmean_last50yrs/sus2200_lnd_basic_ml_last50yrs.nc;
cdo -O ymonmean -cat sus2200_lnd_mon_23*.nc /work/mh1049/k206174/icon-easyms/jan/ensmean_last50yrs/sus2200_lnd_mon_last50yrs.nc;

cdo -O ymonmean -cat sus2200_oce_mon_23*.nc /work/mh1049/k206174/icon-easyms/jan/ensmean_last50yrs/sus2200_oce_mon_last50yrs.nc;
cdo -O ymonmean -cat sus2200_oce_P1M_2d_23*.nc /work/mh1049/k206174/icon-easyms/jan/ensmean_last50yrs/sus2200_oce_P1M_2d_last50yrs.nc;

cdo -O ymonmean -cat sus2200_oce_P1M_3d_23*.nc /work/mh1049/k206174/icon-easyms/jan/ensmean_last50yrs/sus2200_oce_P1M_3d_last50yrs.nc;
cdo -O ymonmean -cat sus2200_oce_P1M_moc_23*.nc /work/mh1049/k206174/icon-easyms/jan/ensmean_last50yrs/sus2200_oce_P1M_moc_last50yrs.nc;

cdo -O ymonmean -cat sus2200_oce_P1M_sqr_23*.nc /work/mh1049/k206174/icon-easyms/jan/ensmean_last50yrs/sus2200_oce_P1M_sqr_last50yrs.nc;

### Flat Earth Experiments ensemble mean
cdo ymonmean -cat sus22F0_atm_2d_ml_23*.nc ../jan/ensmean_last50yrs/sus22F0_atm_2d_ml_last50yrs.nc;
cdo ymonmean -cat sus22F0_atm_3d_ml_23*.nc ../jan/ensmean_last50yrs/sus22F0_atm_3d_ml_last50yrs.nc;

cdo timmean -cat sus22F0_atm_mon_23*.nc ../jan/ensmean_last50yrs/sus22F0_atm_mon_last50yrs.nc;
cdo ymonmean -cat sus22F0_hamocc_23*.nc ../jan/ensmean_last50yrs/sus22F0_hamocc_last50yrs.nc;

cdo timmean -cat sus22F0_hamocc_3d_tendencies_23*.nc ../jan/ensmean_last50yrs/sus22F0_hamocc_3d_tendencies_last50yrs.nc;
cdo timmean -cat sus22F0_hamocc_EU_tendencies_23*.nc ../jan/ensmean_last50yrs/sus22F0_hamocc_EU_tendencies_last50yrs.nc;

cdo ymonmean -cat sus22F0_hamocc_monitor_23*.nc ../jan/ensmean_last50yrs/sus22F0_hamocc_monitor_last50yrs.nc;
cdo timmean -cat sus22F0_hamocc_sediment_23*.nc ../jan/ensmean_last50yrs/sus22F0_hamocc_sediment_last50yrs.nc;

cdo ymonmean -cat sus22F0_lnd_basic_ml_23*.nc ../jan/ensmean_last50yrs/sus22F0_lnd_basic_ml_last50yrs.nc;
cdo ymonmean -cat sus22F0_lnd_mon_23*.nc ../jan/ensmean_last50yrs/sus22F0_lnd_mon_last50yrs.nc;

cdo ymonmean -cat sus22F0_oce_mon_23*.nc ../jan/ensmean_last50yrs/sus22F0_oce_mon_last50yrs.nc;
cdo ymonmean -cat sus22F0_oce_P1M_2d_23*.nc ../jan/ensmean_last50yrs/sus22F0_oce_P1M_2d_last50yrs.nc;

cdo ymonmean -cat sus22F0_oce_P1M_3d_23*.nc ../jan/ensmean_last50yrs/sus22F0_oce_P1M_3d_last50yrs.nc;
cdo ymonmean -cat sus22F0_oce_P1M_moc_23*.nc ../jan/ensmean_last50yrs/sus22F0_oce_P1M_moc_last50yrs.nc;

cdo ymonmean -cat sus22F0_oce_P1M_sqr_23*.nc ../jan/ensmean_last50yrs/sus22F0_oce_P1M_sqr_last50yrs.nc;

#### Setgrid
## Control Run
cdo setgrid,icon_grid_0030_R02B03_G.nc sus2200_atm_2d_ml_last50yrs.nc sus2200_atm_2d_ml_last50yrs_setgrid.nc;
cdo setgrid,icon_grid_0030_R02B03_G.nc sus2200_atm_3d_ml_last50yrs.nc sus2200_atm_3d_ml_last50yrs_setgrid.nc;

cdo setgrid,icon_grid_0036_R02B04_O.nc sus2200_hamocc_3d_tendencies_last50yrs.nc sus2200_hamocc_3d_tendencies_last50yrs_setgrid.nc;
cdo setgrid,icon_grid_0036_R02B04_O.nc sus2200_hamocc_EU_tendencies_last50yrs.nc sus2200_hamocc_EU_tendencies_last50yrs_setgrid.nc;

cdo setgrid,icon_grid_0036_R02B04_O.nc sus2200_hamocc_last50yrs.nc sus2200_hamocc_last50yrs_setgrid.nc;
cdo setgrid,icon_grid_0036_R02B04_O.nc sus2200_hamocc_sediment_last50yrs.nc sus2200_hamocc_sediment_last50yrs_setgrid.nc;

cdo setgrid,icon_grid_0030_R02B03_G.nc sus2200_lnd_basic_ml_last50yrs.nc sus2200_lnd_basic_ml_last50yrs_setgrid.nc;

cdo setgrid,icon_grid_0036_R02B04_O.nc sus2200_oce_P1M_2d_last50yrs.nc sus2200_oce_P1M_2d_last50yrs_setgrid.nc;
cdo setgrid,icon_grid_0036_R02B04_O.nc sus2200_oce_P1M_3d_last50yrs.nc sus2200_oce_P1M_3d_last50yrs_setgrid.nc;
cdo setgrid,icon_grid_0036_R02B04_O.nc sus2200_oce_P1M_sqr_last50yrs.nc sus2200_oce_P1M_sqr_last50yrs_setgrid.nc;

## Flat Earth Experiments ensemble mean
cdo setgrid,icon_grid_0030_R02B03_G.nc sus22F0_atm_2d_ml_last50yrs.nc sus22F0_atm_2d_ml_last50yrs_setgrid.nc;
cdo setgrid,icon_grid_0030_R02B03_G.nc sus22F0_atm_3d_ml_last50yrs.nc sus22F0_atm_3d_ml_last50yrs_setgrid.nc;

cdo setgrid,icon_grid_0036_R02B04_O.nc sus22F0_hamocc_3d_tendencies_last50yrs.nc sus22F0_hamocc_3d_tendencies_last50yrs_setgrid.nc;
cdo setgrid,icon_grid_0036_R02B04_O.nc sus22F0_hamocc_EU_tendencies_last50yrs.nc sus22F0_hamocc_EU_tendencies_last50yrs_setgrid.nc;

cdo setgrid,icon_grid_0036_R02B04_O.nc sus22F0_hamocc_last50yrs.nc sus22F0_hamocc_last50yrs_setgrid.nc;
cdo setgrid,icon_grid_0036_R02B04_O.nc sus22F0_hamocc_sediment_last50yrs.nc sus22F0_hamocc_sediment_last50yrs_setgrid.nc;

cdo setgrid,icon_grid_0030_R02B03_G.nc sus22F0_lnd_basic_ml_last50yrs.nc sus22F0_lnd_basic_ml_last50yrs_setgrid.nc;

cdo setgrid,icon_grid_0036_R02B04_O.nc sus22F0_oce_P1M_2d_last50yrs.nc sus22F0_oce_P1M_2d_last50yrs_setgrid.nc;
cdo setgrid,icon_grid_0036_R02B04_O.nc sus22F0_oce_P1M_3d_last50yrs.nc sus22F0_oce_P1M_3d_last50yrs_setgrid.nc;
cdo setgrid,icon_grid_0036_R02B04_O.nc sus22F0_oce_P1M_sqr_last50yrs.nc sus22F0_oce_P1M_sqr_last50yrs_setgrid.nc;


#### Select variables and compress for GitHub

cdo select,name=rho sus2200_oce_P1M_3d_last50yrs_setgrid.nc ../data_sel/sus2200_oce_P1M_3d_last50yrs_setgrid_sel.nc;
cdo select,name=so sus22F0_oce_P1M_2d_last50yrs_setgrid.nc ../data_sel/sus22F0_oce_P1M_2d_last50yrs_setgrid_sel.nc;
cdo select,name=so sus2200_oce_P1M_2d_last50yrs_setgrid.nc ../data_sel/sus2200_oce_P1M_2d_last50yrs_setgrid_sel.nc;
cdo select,name=atlantic_moc,pacific_moc,global_hfbasin,atlantic_hfbasin,pacific_hfbasin sus2200_oce_P1M_moc_last50yrs.nc ../data_sel/sus2200_oce_P1M_moc_last50yrs_sel.nc;
cdo select,name=atlantic_moc,pacific_moc,global_hfbasin,atlantic_hfbasin,pacific_hfbasin sus22F0_oce_P1M_moc_last50yrs.nc ../data_sel/sus22F0_oce_P1M_moc_last50yrs_sel.nc;

cdo -O select,name=orog,tas,rsut,rlut,rsdt,albedo,sic,psl,prw,pr,evspsbl,co2_flux_wtr,co2_flux_lnd,uas,vas,clt sus22F0_atm_2d_ml_last50yrs_setgrid.nc ../data_sel/sus22F0_atm_2d_ml_last50yrs_setgrid_sel.nc;
cdo -O select,name=orog,tas,rsut,rlut,rsdt,albedo,sic,psl,prw,pr,evspsbl,co2_flux_wtr,co2_flux_lnd,uas,vas,clt sus2200_atm_2d_ml_last50yrs_setgrid.nc ../data_sel/sus2200_atm_2d_ml_last50yrs_setgrid_sel.nc;
cdo select,name=zg,ua,va,pfull,ta,hus sus22F0_atm_3d_ml_last50yrs_setgrid.nc ../data_sel/sus22F0_atm_3d_ml_last50yrs_setgrid_sel.nc;
cdo select,name=zg,ua,va,pfull,ta,hus sus2200_atm_3d_ml_last50yrs_setgrid.nc ../data_sel/sus2200_atm_3d_ml_last50yrs_setgrid_sel.nc;
cdo select,name=co2_gmean sus22F0_atm_mon_last50yrs.nc ../data_sel/sus22F0_atm_mon_last50yrs_sel.nc;
cdo select,name=co2_gmean sus2200_atm_mon_last50yrs.nc ../data_sel/sus2200_atm_mon_last50yrs_sel.nc;

cdo select,name=hydro_discharge_ocean_box,pheno_lai_box sus22F0_lnd_basic_ml_last50yrs_setgrid.nc ../data_sel/sus22F0_lnd_basic_ml_last50yrs_setgrid_sel.nc;
cdo select,name=hydro_discharge_ocean_box,pheno_lai_box sus2200_lnd_basic_ml_last50yrs_setgrid.nc ../data_sel/sus2200_lnd_basic_ml_last50yrs_setgrid_sel.nc;

cdo select,name=global_net_co2_flux sus22F0_hamocc_monitor_last50yrs.nc ../data_sel/sus22F0_hamocc_monitor_last50yrs_sel.nc;
cdo select,name=global_net_co2_flux sus2200_hamocc_monitor_last50yrs.nc ../data_sel/sus2200_hamocc_monitor_last50yrs_sel.nc;

cd ../data_sel/;
for ii in *.nc; do
    ncks -O -7 -L 1 --baa=4 --ppc default=3 --no_alphabetize $ii $ii;
done;
cd ../data/



