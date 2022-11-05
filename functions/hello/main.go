package main

import (
	"fmt"
	"os" 
)

func main() {

	fmt.Println("👋 Hello World from Go 🌍")
	args := os.Args
	argsWithoutCaller := os.Args[1:]

	fmt.Println(args)
	fmt.Println(argsWithoutCaller)

}