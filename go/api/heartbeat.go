package controllers

import (
	"encoding/json"
	"net/http"
)

type heartbeatResponse struct {
	Status string `json:"status"`
	Code   int    `json:"code"`
}

//Heartbeat Verify if it's all set.
func Heartbeat(w http.ResponseWriter, r *http.Request) {
	w.Header().Set("Content-Type", "application/json")

	json.NewEncoder(w).Encode(heartbeatResponse{Status: "OK", Code: 200})

}
