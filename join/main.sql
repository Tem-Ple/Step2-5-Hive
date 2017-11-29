-- 重点！！！
-- 《Hive编程指南》说到：Hive假定表的大小从左往右依次递增，所以会把除了最后一张表之外的表cache起来，然后扫面最后的大表进行计算
-- 为了证明来造点数据做个实验

select b.id as id1, s.id as id2, b.name
from bigtb b 
join smalltb s
on b.id=s.id
limit 10;
-- Time taken: 204.782 seconds, Fetched: 10 row(s)

select b.id as id1, s.id as id2, b.name
from smalltb s
join bigtb b
on b.id=s.id
limit 10;
-- Time taken: 198.57 seconds, Fetched: 10 row(s)

select /*+STREAMTABLE(b)*/ b.id as id1, s.id as id2, b.name
from bigtb b
join smalltb s
on b.id=s.id
limit 10;

select /*+STREAMTABLE(s)*/ b.id as id1, s.id as id2, b.name
from bigtb b
join smalltb s
on b.id=s.id
limit 10;

-- 测下来，性能并没有什么卵区别，要么这书瞎扯的，要么我测试方法不对，反正对于大表要写后面这点我持怀疑态度。
-- 关于大小表join优化可查阅：http://blog.csdn.net/xiewenbo/article/details/24886689
