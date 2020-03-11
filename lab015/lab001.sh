#!/bin/bash

user="root"
passwd="123456"
tmp_file="temp.sql"
host="127.0.0.1"
port=3306

# 创建数据库
create_database(){
cat << EOF > $tmp_file
    # 判断有无数据库，没有则创建
    CREATE DATABASE IF NOT EXISTS db_test DEFAULT CHARACTER SET utf8
EOF
}

create_database
cat $tmp_file | mysql -u root -p$passwd -h $host -P $port

# 创建表
db_name="db_test"
create_table(){
cat << EOF > $tmp_file
	CREATE TABLE t_test(
		id int primary key auto_increment,
		test_id int not null default 0 comment '测试备注'
	)
        ENGINE = InnoDB
        default CHARSET = utf8
        comment ='表的备注';
EOF
}

create_table
cat $tmp_file | mysql -u root -p$passwd -h $host -P $port $db_name

# 修改表，加一个字段
alter_table() {
cat <<EOF >$tmp_file
	alter table t_test add username varchar(32) NOT NULL after id;
EOF
}

alter_table
cat $tmp_file | mysql -u root -p$passwd -h $host -P $port $db_name