#!/bin/sh
../../start.sh
/usr/local/hadoop/bin/hdfs dfs -rm -r /Part1Q2/input/
/usr/local/hadoop/bin/hdfs dfs -rm -r /Part1Q2/output/
/usr/local/hadoop/bin/hdfs dfs -mkdir -p /Part1Q2/input/
/usr/local/hadoop/bin/hdfs dfs -copyFromLocal ../../mapreduce-test-python/project1/Parking_Violations_Issued_-_Fiscal_Year_2021.csv /Part1Q2/input/
/usr/local/hadoop/bin/hadoop jar /usr/local/hadoop/share/hadoop/tools/lib/hadoop-streaming-3.3.1.jar \
-file ../../mapreduce-test-python/Part1Q2/mapper.py -mapper ../../mapreduce-test-python/Part1Q2/mapper.py \
-file ../../mapreduce-test-python/Part1Q2/reducer.py -reducer ../../mapreduce-test-python/Part1Q2/reducer.py \
-input /Part1Q2/input/* -output /Part1Q2/output/
/usr/local/hadoop/bin/hdfs dfs -cat /Part1Q2/output/part-00000
/usr/local/hadoop/bin/hdfs dfs -rm -r /Part1Q2/input/
/usr/local/hadoop/bin/hdfs dfs -rm -r /Part1Q2/output/
../../stop.sh
