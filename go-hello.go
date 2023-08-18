package main

import "os"

func helloName(name string) string {
	return "Hello " + name
}

func main() {
	// read name from command line
	name := os.Args[1]
	println(helloName(name))
}
