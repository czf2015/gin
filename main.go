package main

import (
	"fmt"
	"net/http"

	"github.com/EDDYCJY/go-gin-example/pkg/setting"
	"github.com/EDDYCJY/go-gin-example/routers"
)

func main() {
	router := routers.InitRouter()

	/*
		type Server struct {
			Addr    string
			Handler Handler
			TLSConfig *tls.Config
			ReadTimeout time.Duration
			ReadHeaderTimeout time.Duration
			WriteTimeout time.Duration
			IdleTimeout time.Duration
			MaxHeaderBytes int
			ConnState func(net.Conn, ConnState)
			ErrorLog *log.Logger
		}
	*/
	s := &http.Server{
		Addr:           fmt.Sprintf(":%d", setting.HTTPPort),
		Handler:        router,
		ReadTimeout:    setting.ReadTimeout,
		WriteTimeout:   setting.WriteTimeout,
		MaxHeaderBytes: 1 << 20,
	}

	/*
		func (srv *Server) ListenAndServe() error {
			addr := srv.Addr
			if addr == "" {
				addr = ":http"
			}
			ln, err := net.Listen("tcp", addr)
			if err != nil {
				return err
			}
			return srv.Serve(tcpKeepAliveListener{ln.(*net.TCPListener)})
		}
	*/
	s.ListenAndServe()
}
