sed -i '/vcpupin/d' *.xml        （查找删除改行）
sed -i '7d' 10.xml    （删除第7行）
sed -i "2iport=22" *.sh  （第2行插入port=22）
sed -i "s/-p1046/-p\${port}/g" *.sh    替换 （不加-i 相当于dry-run）

