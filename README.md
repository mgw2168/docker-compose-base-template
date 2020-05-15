# docker-compose-base-template
a docker-compose demo

![python](https://img.shields.io/badge/python-3.7.7-green)
![django](https://img.shields.io/badge/django-3.0.5-green)
![docker](https://img.shields.io/badge/docker-19.03.8-yellowgreen)
![docker-compose](https://img.shields.io/badge/docker--compose-1.21.2-orange)
![mysql](https://img.shields.io/badge/mysql-5.7-blue)
![nginx](https://img.shields.io/badge/nginx-1.11.6-yellowgreen)
![redis](https://img.shields.io/badge/redis-5.0-red)

## 1. 运行
docker及docker-compose 安装略

1.写入阿里云镜像软件源
```
add-apt-repository \
   "deb [arch=amd64] http://mirrors.aliyun.com/docker-ce/linux/ubuntu \
    $(lsb_release -cs) \
    stable"
```
2.运行
```dockerfile
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
