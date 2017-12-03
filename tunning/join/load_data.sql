drop table smalltb;
create table smalltb(
id int, 
name string)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
STORED AS TEXTFILE;

load data local inpath '/tmp/smalltb.txt' into table smalltb;

drop table bigtb;
create table bigtb(
id int, 
name string)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
STORED AS TEXTFILE;

load data local inpath '/tmp/bigtb.txt' into table bigtb;
