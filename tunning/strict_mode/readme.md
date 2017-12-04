### 当hive.mapred.mode=strict时，可以禁用三类sql
* 分区表where条件必须有分区键
* order by必须跟limit
* （重点）原RDBMS的DBA很喜欢用where代替join on，例如我自己。不幸的是hive没这么聪明，所以第三类sql就是用where代替join on的sql
