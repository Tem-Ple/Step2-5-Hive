create table docs (line string);

load data inpath '/test.txt' overwrite into table docs;

drop table word_counts;
create table word_counts
as
select word, count(1) as count
from (select explode(split(line, '\\s')) as word from docs) w
group by word;
