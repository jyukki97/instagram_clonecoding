package main

import (
	"go_server/src/rest"
	"log"
)

func main() {
	log.Println("Main log...")
	log.Fatal(rest.RunApi("127.0.0.1:8000"))
}