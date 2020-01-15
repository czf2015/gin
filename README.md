
## 项目结构
    conf：用于存储配置文件
    middleware：应用中间件
    models：应用数据库模型
    pkg：第三方包
    routers 路由逻辑处理
    runtime：应用运行时数据

gin/
├── conf
│   └── app.ini
├── main.go
├── middleware
│   └── jwt
│       └── jwt.go
├── models
│   ├── article.go
│   ├── auth.go
│   ├── models.go
│   └── tag.go
├── pkg
│   ├── e
│   │   ├── code.go
│   │   └── msg.go
│   ├── setting
│   │   └── setting.go
│   └── util
│       ├── jwt.go
│       └── pagination.go
├── routers
│   ├── api
│   │   ├── auth.go
│   │   └── v1
│   │       ├── article.go
│   │       └── tag.go
│   └── router.go
├── runtime



gorm所支持的回调方法：

    创建：BeforeSave、BeforeCreate、AfterCreate、AfterSave
    更新：BeforeSave、BeforeUpdate、AfterUpdate、AfterSave
    删除：BeforeDelete、AfterDelete
    查询：AfterFind
