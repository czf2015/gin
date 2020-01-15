module github.com/EDDYCJY/go-gin-example

go 1.13

require (
	github.com/astaxie/beego v1.12.0
	github.com/dgrijalva/jwt-go v3.2.0+incompatible
	github.com/dustin/go-broadcast v0.0.0-20171205050544-f664265f5a66
	github.com/gin-gonic/gin v1.5.0
	github.com/go-ini/ini v1.48.0 // 拉取 go-ini/ini 的依赖包
	github.com/go-playground/universal-translator v0.17.0 // indirect
	github.com/jinzhu/gorm v1.9.11
	github.com/json-iterator/go v1.1.9 // indirect
	github.com/leodido/go-urn v1.2.0 // indirect
	github.com/mattn/go-isatty v0.0.11 // indirect
	github.com/modern-go/concurrent v0.0.0-20180306012644-bacd9c7ef1dd // indirect
	github.com/modern-go/reflect2 v1.0.1 // indirect
	github.com/stretchr/testify v1.4.0
	github.com/unknwon/com v1.0.1
	golang.org/x/sys v0.0.0-20200103143344-a1369afcdac7 // indirect
	google.golang.org/appengine v1.6.5 // indirect
	gopkg.in/go-playground/validator.v9 v9.31.0 // indirect
	gopkg.in/yaml.v2 v2.2.7 // indirect
)

// 解决本地模块读取的问题
// 注：后续每新增一个本地应用目录，你都需要主动去 go.mod 文件里新增一条 replace，
// 如果你漏了，那么编译时会出现报错，找不到那个模块。
replace (
	github.com/EDDYCJY/go-gin-example/conf => G:/projects/gin/pkg/conf

	github.com/EDDYCJY/go-gin-example/middleware => G:/projects/gin/middleware
	github.com/EDDYCJY/go-gin-example/middleware/jwt => G:/projects/gin/middleware/jwt
	github.com/EDDYCJY/go-gin-example/models => G:/projects/gin/models

	github.com/EDDYCJY/go-gin-example/pkg => G:/projects/gin/pkg
	github.com/EDDYCJY/go-gin-example/pkg/e => G:/projects/gin/pkg/e
	github.com/EDDYCJY/go-gin-example/pkg/setting => G:/projects/gin/pkg/setting
	github.com/EDDYCJY/go-gin-example/pkg/util => G:/projects/gin/pkg/util

	github.com/EDDYCJY/go-gin-example/routers => G:/projects/gin/routers
	github.com/EDDYCJY/go-gin-example/routers/api => G:/projects/gin/routers/api
	github.com/EDDYCJY/go-gin-example/routers/api/version1 => G:/projects/gin/routers/api/version1
	github.com/EDDYCJY/go-gin-example/runtime => G:/projects/gin/runtime

)
