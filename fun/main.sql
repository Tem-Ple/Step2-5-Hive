select explode(split('aaa bbb  ccc dddd e     ffffff','\\s+')) as test;

select parse_url('http://facebook.com/path/p1.php?query=1', 'PROTOCOL');   --http
select parse_url('http://facebook.com/path/p1.php?query=1', 'HOST');       ---facebook.com
select parse_url('http://facebook.com/path/p1.php?query=1', 'REF');        ---null
select parse_url('http://facebook.com/path/p1.php?query=1', 'PATH');       ---/path/p1.php
select parse_url('http://facebook.com/path/p1.php?query=1', 'QUERY');      ---null
select parse_url('http://facebook.com/path/p1.php?query=1', 'FILE');       ---/path/p1.php?query=1
select parse_url('http://facebook.com/path/p1.php?query=1', 'AUTHORITY');  ---facebook.com
select parse_url('http://facebook.com/path/p1.php?query=1', 'USERINFO');   ---null

select parse_url_tuple('http://facebook.com/path/p1.php?query=1', 'PROTOCOL', 'PATH'); 
--注意parse_url_tuple和parse_url的区别

