sed -i '/vcpupin/d' *.xml        （查找删除改行）
sed -i '7d' 10.xml    （删除第7行）
sed -i "2iport=22" *.sh  （第2行插入port=22）
sed -i "s/-p1046/-p\${port}/g" *.sh    替换 （不加-i 相当于dry-run）

1. Sed简介
sed
是一种在线编辑器，它一次处理一行内容。处理时，把当前处理的行存储在临时缓冲区中，称为“模式空间”（pattern
space），接着用sed命令处理缓冲区中的内容，处理完成后，把缓冲区的内容送往屏幕。接着处理下一行，这样不断重复，直到文件末尾。文件内容并没有
改变，除非你使用重定向存储输出。Sed主要用来自动编辑一个或多个文件；简化对文件的反复操作；编写转换程序等.
Centos4的sed版本sed-4.1.5-5.fc6
2. 定址
可以通过定址来定位你所希望编辑的行，该地址用数字构成，用逗号分隔的两个行数表示以这两行为起止的行的范围（包括行数表示的那两行）。如1，3表示1，2，3行，美元符号($)表示最后一行。范围可以通过数据，正则表达式或者二者结合的方式确定.
3. Sed命令
调用sed命令有两种形式：
1
2
3
* sed [options] 'command' file(s)
 
* sed [options] -f scriptfile file(s)
一种是直接写命令，一种是将命令写到文件再调用
4. 选项[options]
-e command, –expression=command
##允许多次编辑。
-n, –quiet, –silent
##取消默认输出（默认输出文件全文）
-f, –filer=script-file引导sed脚本文件名。
##调用命令文件
-i，
##直接修改文件

5.命令[command]
我们采用案例方法来讲述这部分：
使用的案例文件为1233.txt内容如下：
ipcpu@ubuntu:~$ cat 1233.txt
first
second
third
five
ipcpu@ubuntu:~$
 
============打印匹配的行============
p  打印模板块的行。
1
2
3
4
5
6
7
8
9
10
11
12
13
14
15
16
ipcpu@ubuntu:~$ cat 1233.txt
first
second
third
five
ipcpu@ubuntu:~$
 
ipcpu@ubuntu:~$ sed '/second/p' 1233.txt
first
second
second
third
five
ipcpu@ubuntu:~$ sed -n '/second/p' 1233.txt
second
ipcpu@ubuntu:~$
sed默认会把所有行打印出来，匹配上second会执行p再打印一遍
============添加和插入文本 ============
a  在行后面添加文本
i  在航前面添加文本
1
2
3
4
5
6
7
8
9
10
11
12
13
14
15
16
17
18
19
20
21
22
23
24
25
26
27
28
29
30
31
32
33
34
ipcpu@ubuntu:~$ sed '$a \
> oo \
> last line ' 1233.txt
first
second
third
five
oo
last line
ipcpu@ubuntu:~$
注意此处的反斜线\表示回车，在反斜线后必须按下回车
 
ipcpu@ubuntu:~$ sed '3a four' 1233.txt
first
second
third
four
five
在第三行后面加入内容
ipcpu@ubuntu:~$ sed '1i zero' 1233.txt
zero
first
second
third
five
在第一行前面插入内容
ipcpu@ubuntu:~$ sed '/five/i four' 1233.txt
first
second
third
four
five
ipcpu@ubuntu:~$
在five前面插入一行，内容为four
============删除行 ============
d 删除行
1
2
3
4
5
6
7
8
9
10
11
12
13
14
15
16
17
18
19
20
21
22
23
24
25
26
27
28
29
30
31
ipcpu@ubuntu:~$ sed '1,3d' 1233.txt
five
删除1到3行
ipcpu@ubuntu:~$ sed '$d' 1233.txt
first
second
third
删除最后一行
ipcpu@ubuntu:~$ sed '2d' 1233.txt
first
third
five
删除第2行
ipcpu@ubuntu:~$ sed '/^th/d' 1233.txt
first
second
five
删除th开头的行
ipcpu@ubuntu:~$ sed '/^$/d' 1233.txt
first
second
third
five
删除空行
ipcpu@ubuntu:~$ sed 's/^..//' 1233.txt
rst
cond 2nd
ird
ve
ipcpu@ubuntu:~$
删除每行的前两个字符
============替换============
s 替换
1
2
3
4
5
6
7
8
9
10
11
12
13
14
15
16
17
18
19
20
21
22
23
24
25
26
ipcpu@ubuntu:~$ sed 's/f/F/g' 1233.txt
First
second
third
Five
将所有的f替换成大写F
 
ipcpu@ubuntu:~$ sed '1,2 s/d$/&dd/' 1233.txt
first
seconddd
third
five
在1-2行中，所有以d结尾字段后附加一个dd
 
ipcpu@ubuntu:~$ sed '/first/ s/st/ST/' 1233.txt
firST
second
third
five
ipcpu@ubuntu:~$
在含有first的行中，把st换成大写ST
ipcpu@ubuntu:~$ cat box
it is a box.
ipcpu@ubuntu:~$ sed 's/ /\t/g' box
it      is      a       box.
将文中所有空格替换成TAB
============转换============
y 转换
1
2
3
4
5
6
ipcpu@ubuntu:~$ sed 'y/five/six1/' 1233.txt
sirst
s1cond 2nd
third
six1
通常用于大小写转换，要求长度必须一致。功能与s基本一致。
============指定行的范围============
，逗号
1
2
3
4
5
6
7
8
9
10
11
12
ipcpu@ubuntu:~$ sed -n '/second/,/five/ p' 1233.txt
second
third
five
输出second和five中间的数据，此处不加-n会出现重复
 
ipcpu@ubuntu:~$ sed '/second/,/five/ s/i/IIII/' 1233.txt
first
second
thIIIIrd
fIIIIve
修改second和five中间的数据，用III替换i
============多次编辑============
e 多次编辑
1
2
3
4
5
ipcpu@ubuntu:~$ sed -e '1d' -e 's/^sec/2nd/' 1233.txt
2ndond
third
five
ipcpu@ubuntu:~$
============读写文件============
r  读文件
w 写文件
1
2
3
4
5
6
7
8
9
10
11
12
13
14
15
16
ipcpu@ubuntu:~$ sed '/second/r box' 1233.txt
first
second
it is a box.
third
five
匹配上second后，在其后读入文件
ipcpu@ubuntu:~$ sed '/second/w write' 1233.txt
first
second
third
five
ipcpu@ubuntu:~$ cat write
second
ipcpu@ubuntu:~$
匹配上second后把该行写入到文件
============提前退出============
q提前退出
sed
默认读取整个文件，并只在到达末尾时才停止。不过，您可以使用退出命令提前停止处理。只能指定一条退出命令，而处理将一直持续直到满足调用退出命令的条件。
例如，仅在文件的前五行上执行替换，然后退出：
1
2
3
4
5
6
7
8
9
10
$ sed '
> /two/ s/1/2/
> /three/ s/1/3/
> 5q' sample_one
one 1
two 2
three 3
one 1
two 2
$
============其他命令
暂存与取用
h 和 g
暂存和互换
x
参考资料：
http://blog.csdn.net/thimin/article/details/1802738 ' ''
