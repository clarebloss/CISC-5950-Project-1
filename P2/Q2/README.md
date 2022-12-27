The NBA collects mass amounts of data on shots taken during games, including who took the shot, where on the floor the shot was taken from, who was the nearest defender, how far away the nearest defender was, time on the shot clock, and much more.
This data can be found for the 2014-2015 season on Kaggle at the following link: https://www.kaggle.com/dansbecker/nba-shot-logs.

For each player, we define the comfortable zone of shooting as a matrix of {SHOT_DIST, CLOSE_DEF_DIST, SHOT_CLOCK}.

## Question 2
### Develop a MapReduce-based algorithm to classify each player's records into 4 comfortable zones. Considering the hit rate, which zone is best for James HArden, Chris Paul, Stephen Curry, and Lebron James?

To solve the following problem, we will be utilizing a 3-node Hadoop cluster hosted in Google Cloud to design a MapReduce-based program to analyze the data.
The data is stored in a csv file under the name shot_logs.csv.
The test.sh file will be used to run the mapper.py and reducer.py files to analyze the data and produce the answer to the question onto the screen.

To prepare and execute the MapReduce analysis, place the following files in the specified directories at the master node:

 File Name                                          | Directory
--------------------------------------------------- | ---------------------------------------------- 
shot_logs.csv  			                                | /mapreduce-test/mapreduce-test-python/project1/shot_logs.csv
test.sh				                                      | /mapreduce-test/mapreduce-test-python/Part2Q2
mapper_init_centroids.py	                          | /mapreduce-test/mapreduce-test-python/Part2Q2
reducer_init_centroids.py	                          | /mapreduce-test/mapreduce-test-python/Part2Q2
mapper.py			                                      | /mapreduce-test/mapreduce-test-python/Part2Q2
reducer.py			                                    | /mapreduce-test/mapreduce-test-python/Part2Q2
mapper2.py			                                    | /mapreduce-test/mapreduce-test-python/Part2Q2
reducer2.py			                                    | /mapreduce-test/mapreduce-test-python/Part2Q2
stop_condition.py		                                | /mapreduce-test/mapreduce-test-python/Part2Q2
centroids.txt			                                  | /mapreduce-test/mapreduce-test-python/Part2Q2



To run the MapReduce analysis, 
  - Navigate to the directory /mapreduce-test/mapreduce-test-python/Part2Q2
  - Execute the run file with the command: "bash test.sh"
