64λubuntu�±��� hadoop2.6.5 native lib 
��Ҫprotoc 2.5.0�汾�����Դ�wget https://github.com/google/protobuf/releases/download/v2.5.0/protobuf-2.5.0.tar.gz���ذ�װ 

��װ������
hugh@hugh-virtual-machine:/usr/local/protobuf-2.5.0$ protoc --version 
protoc: error while loading shared libraries: libprotoc.so.8: cannot open shared object file: No such file or directory
���� 

����취Ϊ��
# cat /etc/ld.so.conf
include ld.so.conf.d/*.conf
# echo "/usr/local/lib" >> /etc/ld.so.conf
# ldconfig

hive on spark �İ�װ�Ƚϸ��� ����Ҫ���±���spark without hive�İ汾��ͬʱ��hadoop�İ汾��spark�İ汾Ҫ��Ҳ�Ƚϸ�