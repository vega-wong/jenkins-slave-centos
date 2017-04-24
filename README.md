--------------------------------------
jenkins-slave-centos
--------------------------------------

# 构建镜像
```
$ make build
```
# 发布镜像
```
$ make push
```


#### Installed packages

| Package                     | Comment                                                                          |
|-----------------------------|----------------------------------------------------------------------------------|
| wget                        | weget命令支持                                                                     |
| tar.x86_64                  | 压缩包处理                                                                         |
| which                       | which命令支持                                                                     |
| gcc automake autoconf libtool make c++           | 开发者编译套件                                                |
| openssh-server              | Jenkins communicates via ssh with its slaves.                                    |
| git                         | Most projects use GIT for version control.                                       |

#### User

| uid  | username | password |
|------|----------|----------|
| 1000 | jenkins  | jenkins  |