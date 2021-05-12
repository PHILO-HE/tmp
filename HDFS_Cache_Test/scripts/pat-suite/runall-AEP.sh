#! /bin/bash

##################################orc#################################
:<<!
/hadoop/pat-suite/workload/cache.sh /hive/tpcds_bin_partitioned_orc_2000.db orc_2000
sleep 600
/root/.cmd/dropCache
/hadoop/pat-suite/auto.sh tpcds-run-orc-2000
sleep 60
echo "orc-2000-aep runid:" >> info
runid=$(cat /hadoop/pat-suite/runid)
echo $runid >> info
/hadoop/pat-suite/workload/dropCache.sh
mv info /hadoop/pat-suite/results/$runid
sleep 600

/root/.cmd/dropCache
/hadoop/pat-suite/auto.sh tpcds-run-orc-2000
echo "orc-2000-hdd runid:" >> info
runid=$(cat /hadoop/pat-suite/runid)
echo $runid >> info
mv info /hadoop/pat-suite/results/$runid
sleep 600
!

##################################parquet#################################

/hadoop/pat-suite/workload/cache.sh /hive/tpcds_bin_partitioned_parquet_2000.db parquet_2000
sleep 600
/root/.cmd/dropCache
/hadoop/pat-suite/auto.sh tpcds-run-parquet-2000
sleep 60
echo "parquet-2000-aep runid:" >> info
runid=$(cat /hadoop/pat-suite/runid)
echo $runid >> info
/hadoop/pat-suite/workload/dropCache.sh
mv info /hadoop/pat-suite/results/$runid
sleep 600

/root/.cmd/dropCache
/hadoop/pat-suite/auto.sh tpcds-run-parquet-2000
echo "parquet-2000-hdd runid:" >> info
runid=$(cat /hadoop/pat-suite/runid)
echo $runid >> info
mv info /hadoop/pat-suite/results/$runid
sleep 600

##################################text#################################

/hadoop/pat-suite/workload/cache.sh /user/root/tpcds/2000 text_2000
sleep 600
/root/.cmd/dropCache
/hadoop/pat-suite/auto.sh tpcds-run-text-2000
sleep 60
echo "text-2000-aep runid:" >> info
runid=$(cat /hadoop/pat-suite/runid)
echo $runid >> info
/hadoop/pat-suite/workload/dropCache.sh
mv info /hadoop/pat-suite/results/$runid
sleep 600

/root/.cmd/dropCache
/hadoop/pat-suite/auto.sh tpcds-run-text-2000
echo "text-2000-hdd runid:" >> info
runid=$(cat /hadoop/pat-suite/runid)
echo $runid >> info
cat /hadoop/pat-suite/runid >> info
mv info /hadoop/pat-suite/results/$runid
sleep 600
