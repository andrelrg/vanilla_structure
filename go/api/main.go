package main

import (
	"common"
	"config"
	"fmt"
	"log"
	"net/http"
)

func main() {

	log.SetFlags(log.Lshortfile | log.LstdFlags)

	var err error
	config.CONFIG, err = common.ReadConfig()
	common.PanicIfNotNull(err)

	var a App
	a.Initialize()

	a.Router.Use(apmgorilla.Middleware())

	fmt.Println("Waiting routes...")
	log.Fatal(http.ListenAndServe(":80", apmhttp.Wrap(a.Router)))
}
