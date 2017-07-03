package main

import (
	"log"
	"net/http"
)

func main() {
	port := "8080"
	fs := http.FileServer(http.Dir("public"))
	http.Handle("/", fs)

	log.Println("Listening on ", port)
	http.ListenAndServe(":"+port, nil)
}
