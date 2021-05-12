action=""
conf="/root/hadoop/pat-suite/modifyDFS_conf"
hadoop_home=$HADOOP_HOME

function help() {
	echo "Conf dir: $conf"
	echo "Hadoop home: $hadoop_home"
	echo "Usage: modifyDFS.sh actions"
	echo "Actions:"
	echo -e "\t addAepCache"
	echo -e "\t addDramCache"
	echo -e "\t removeCache"
}

function addAepCache() {
	\cp -f $conf/hdfs-site.xml.aep $hadoop_home/etc/hadoop/hdfs-site.xml
	scp $conf/hdfs-site.xml.aep root@sr113:~/hadoop/etc/hadoop/hdfs-site.xml
	bash $hadoop_home/sbin/stop-dfs.sh
	bash $hadoop_home/sbin/start-dfs.sh
}

function removeCache() {
	\cp -f $conf/hdfs-site.xml.hdd $hadoop_home/etc/hadoop/hdfs-site.xml
	scp $conf/hdfs-site.xml.hdd root@sr113:~/hadoop/etc/hadoop/hdfs-site.xml
	bash $hadoop_home/sbin/stop-dfs.sh
	bash $hadoop_home/sbin/start-dfs.sh
}

if [ "$1" == "" ]
then
	help
elif [ "$1" == "removeCache" ]
then
	removeCache
elif [ "$1" == "addAepCache" ]
then
	addAepCache
fi
