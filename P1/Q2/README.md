The New York City Department of Finance collects data on every parking ticket issued in NYC (10 million per year). This data is made publicly available to aid in ticket resolution and to guide policy makers.
This data can be found from the NYC Open Data website at https://data.cityofnewyork.us/City-Government/Parking-Violations-Issued-Fiscal-Year-2022/pvqr-7yc4.

## Question 2
### What are the most common years and types of cards to be ticketed?

To solve the following problem, we will be utilizing a 3-node Hadoop cluster hosted in Google Cloud to design a MapReduce-based program to analyze the data.
The data is stored in a csv file under the name Parking_Violations_Issued_-_Fiscal_Year_2021.csv.
The test.sh file will be used to run the mapper.py and reducer.py files to analyze the data and produce the answer to the question onto the screen.

To prepare and execute the MapReduce analysis, place the following files in the specified directories at the master node:

 File Name                                          | Directory
--------------------------------------------------- | ---------------------------------------------- 
Parking_Violations_Issued_-_Fiscal_Year_2021.csv	  | /mapreduce-test/mapreduce-test-python/project1
test.sh							                                | /mapreduce-test/mapreduce-test-python/Part1Q2
mapper.py						                                | /mapreduce-test/mapreduce-test-python/Part1Q2
reducer.py						                              | /mapreduce-test/mapreduce-test-python/Part1Q2


To run the MapReduce analysis, 
  - Navigate to the directory /mapreduce-test/mapreduce-test-python/Part1Q2
  - Execute the run file with the command: "bash test.sh"
