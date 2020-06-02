# docker-compose-base-template
a docker-compose demo

[![Build Status](https://travis-ci.org/mgw2168/docker-compose-base-template.svg?branch=master)](https://travis-ci.org/mgw2168/docker-compose-base-template)

![python](https://img.shields.io/badge/python-3.7.7-green)
![django](https://img.shields.io/badge/django-3.0.5-green)
![docker](https://img.shields.io/badge/docker-19.03.8-yellowgreen)
![docker-compose](https://img.shields.io/badge/docker--compose-1.21.2-orange)
![mysql](https://img.shields.io/badge/mysql-5.7-blue)
![nginx](https://img.shields.io/badge/nginx-1.11.6-yellowgreen)
![redis](https://img.shields.io/badge/redis-5.0-red)

## 1. 运行
docker及docker-compose 安装略

#### 1.配置国内镜像源

##### 创建或者修改：

`/etc/docker/daemon.json` 加入以下内容：
```
{
    "registry-mirrors": [
        "https://kfwkfulq.mirror.aliyuncs.com",
        "https://2lqq34jg.mirror.aliyuncs.com",
        "https://pee6w651.mirror.aliyuncs.com",
        "https://registry.docker-cn.com",
        "http://hub-mirror.c.163.com"
     ],
    "dns": ["8.8.8.8","8.8.4.4"]
}

```
##### 2.运行
```
docker-compose -f docker-compose.yml up -d --build
```

### 备注：

> 若是Windows环境写的在Linux环境部署

报错:
```
standard_init_linux.go:211: exec user process caused "no such file or directory"
```

解决:

`则需要使用vi编辑器修改docker-entrypoint.sh, fileformat=unix`
