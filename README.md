--------------------------------------
jenkins-slave-centos
--------------------------------------

`FROM centos:7`

# 构建镜像 && 发布镜像
```
$ ./build.sh [tag]
```

#### Installed packages

| Package | Comment |
| ------- | ------- |
| openssh-server | An open source SSH server daemon |
| git | Fast Version Control System |
| unzip |A utility for unpacking zip files |
| lsof | A utility which lists open files on a Linux/UNIX system |
| java-1.8.0-openjdk-headless | OpenJDK Runtime Environment |


#### User

内置jenkins:jenkins用户， 可ssh登录， 开放22端口
