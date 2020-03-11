#!/bin/bash

user="root"
passwd="123456"
tmp_file="temp.sql"
host="127.0.0.1"
port=3306
db_name="db_test"

# 批量创建分表
create_table(){
cat << EOF > $tmp_file
	#$1是传进来的第一个参数
	CREATE TABLE t_test_$1(
		id int primary key auto_increment,
		test_id int not null default 0 comment '测试备注'
	)
        ENGINE = InnoDB
        default CHARSET = utf8
        comment ='表的备注';
EOF
}

table_index=0
while [ $table_index -lt 20 ] ; do
	tbx=`printf "%01d" $table_index`
	create_table $tbx
	cat $tmp_file | mysql -u root -p$passwd -h $host -P $port $db_name
	table_index=`expr $table_index + 1`
done

# 批量修改分表
alter_table(){
cat << EOF > $tmp_file
	alter table t_test_$1 add username varchar(32) NOT NULL after id;
EOF
}
table_index=0
while [ $table_index -lt 20 ] ; do
	tbx=`printf "%01d" $table_index`
	alter_table $tbx
	cat $tmp_file | mysql -u root -p$passwd -h $host -P $port $db_name
	table_index=`expr $table_index + 1`
done