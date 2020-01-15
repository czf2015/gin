package main

import "github.com/gin-gonic/gin"

func main() {
	/*
		// Default returns an Engine instance with the Logger and Recovery middleware already attached.
		func Default() *Engine {
			debugPrintWARNINGDefault()
			engine := New()
			engine.Use(Logger(), Recovery())
			return engine
		}

		func debugPrintWARNINGDefault() {
			debugPrint(`[WARNING] Creating an Engine instance with the Logger and Recovery middleware already attached.`)
		}
	*/
	r := gin.Default()
	r.GET("/ping", func(c *gin.Context) {
		c.JSON(200, gin.H{
			"message": "pong",
		})
	})

	/*
		func (engine *Engine) Run(addr ...string) (err error) {
			defer func() { debugPrintError(err) }()

			address := resolveAddress(addr)
			debugPrint("Listening and serving HTTP on %s\n", address)
			err = http.ListenAndServe(address, engine)
			return
		}
	*/
	r.Run() // listen and serve on 0.0.0.0:8080
}
