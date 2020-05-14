# docker-compose-base-template
a docker-compose demo

## 1. 运行

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
