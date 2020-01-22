package main

import (
	c "controllers"

	"net/http"

	"github.com/gorilla/mux"
)

//App Responsable for the MS execution.
type App struct {
	Router *mux.Router
}

//Initialize responsable to store the config Information for the Appication usage.
func (a *App) Initialize() {
	a.Router = mux.NewRouter()
	a.InitRoutes()
}

//InitRoutes Responsable to define the routes.
func (a *App) InitRoutes() {
	a.Router.Handle("/heartbeat", http.HandlerFunc(c.Heartbeat))
}
