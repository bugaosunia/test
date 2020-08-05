#1、实现Mysql 数库表设计，支持中文存储。
CREATE TABLE `departinfo` (
  `name` varchar(100) DEFAULT NULL COMMENT '姓名',
  `sex` varchar(2) DEFAULT NULL COMMENT '性别\r\n',
  `iphone` varchar(11) DEFAULT NULL COMMENT '手机号',
  `workname` varchar(255) DEFAULT NULL COMMENT '岗位名称',
  `age` int(11) DEFAULT NULL COMMENT '年龄'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
#2、支持手机号数据脱敏。
select CONCAT(
     LEFT(iphone, 3),  #手机号前3位
     '********',
     RIGHT(iphone, 3)  #手机号后3位
     ) AS '手机号'
	from departinfo 
#3、SQL 统计各部门的员工人数。
select count(*) from departinfo group by workname
#4、SQL 查询每个部门年龄最大的员工。
select max(age) from departinfo group by worknamew
#5、SQL 手机号模糊查询。
select * from departinfo where iphone like'%'#{iphone}'%'




