#1��ʵ��Mysql �������ƣ�֧�����Ĵ洢��
CREATE TABLE `departinfo` (
  `name` varchar(100) DEFAULT NULL COMMENT '����',
  `sex` varchar(2) DEFAULT NULL COMMENT '�Ա�\r\n',
  `iphone` varchar(11) DEFAULT NULL COMMENT '�ֻ���',
  `workname` varchar(255) DEFAULT NULL COMMENT '��λ����',
  `age` int(11) DEFAULT NULL COMMENT '����'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
#2��֧���ֻ�������������
select CONCAT(
     LEFT(iphone, 3),  #�ֻ���ǰ3λ
     '********',
     RIGHT(iphone, 3)  #�ֻ��ź�3λ
     ) AS '���֤��'
	from departinfo 
#3��SQL ͳ�Ƹ����ŵ�Ա��������
select count(*) from departinfo group by workname
#4��SQL ��ѯÿ��������������Ա����
select max(age) from departinfo group by worknamew
#5��SQL �ֻ���ģ����ѯ��
select * from departinfo where iphone like'%'#{iphone}'%'




