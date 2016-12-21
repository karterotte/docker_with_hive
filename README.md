# Run Hadoop Cluster and Hive within Docker Containers
## 项目介绍：
在下述基础上添加了hive

[基于Docker搭建Hadoop集群之升级版](http://kiwenlau.com/2016/06/12/160612-hadoop-cluster-docker-update/)


![](https://raw.githubusercontent.com/kiwenlau/hadoop-cluster-docker/master/hadoop-cluster-docker.png)

## 使用方法：
### 1. 下载GitHub仓库
```
git clone git@github.com:karterotte/docker_with_hive.git
cd docker_with_hive
```

### 2. 建立docker镜像（会很耗时............）
`docker build -t hadoop-master:1.0`

**注意：如果这里镜像名称不同的话需要在start-container.sh脚本中更改Container名称**

### 3. 运行start-container.sh脚本
`./start-container.sh`

关于脚本的设置可以参考上述链接中的介绍，正常输出如下：
```
start hadoop-master container...
start hadoop-slave1 container...
start hadoop-slave2 container...
root@hadoop-master:~#
```

		* 启动了3个容器，1个master, 2个slave
		* 运行后就进入了hadoop-master容器的/root目录
   
### 4. 启动hadoop
`./start-hadoop.sh`

### 5. 验证hadoop：运行wordcount
`./run-wordcount.sh`

### 6. 运行hive，并验证
```
root@hadoop-master:~#hive
hive> show databases;
```
正常输出如下：
```
OK
default
Time taken: 1.02 seconds, Fetched: 1 row(s)
```


