package main

import (
	"fmt"
	"log"
	"net/http"
	"os"
)

func main() {
	if len(os.Args) > 1 && os.Args[1] == "version" {
		fmt.Println("0.1.0")
		return
	}

	if len(os.Args) > 1 && os.Args[1] == "--help" {
		fmt.Println("Yet another pizzashop")
		return
	}

	port := "8080"
	fs := http.FileServer(http.Dir("public"))
	http.Handle("/", fs)

	log.Println("Listening on", port)
	http.ListenAndServe(":"+port, nil)
}
