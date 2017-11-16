64位ubuntu下编译 hadoop2.6.5 native lib 
需要protoc 2.5.0版本，可以从wget https://github.com/google/protobuf/releases/download/v2.5.0/protobuf-2.5.0.tar.gz下载安装 

安装后会出现
hugh@hugh-virtual-machine:/usr/local/protobuf-2.5.0$ protoc --version 
protoc: error while loading shared libraries: libprotoc.so.8: cannot open shared object file: No such file or directory
错误 

解决办法为：
# cat /etc/ld.so.conf
include ld.so.conf.d/*.conf
# echo "/usr/local/lib" >> /etc/ld.so.conf
# ldconfig

hive on spark 的安装比较复杂 ，需要重新编译spark without hive的版本，同时对hadoop的版本和spark的版本要求也比较高