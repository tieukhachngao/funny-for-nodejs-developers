package main

import (
	"fmt"
	"sync"
)

type MyEmitter map[string]chan string

func main() {
	myEmitter := MyEmitter{}
	myEmitter["my-event"] = make(chan string)
	myEmitter["my-other-event"] = make(chan string)

	var wg sync.WaitGroup
	wg.Add(2)

	go func() {
		for i := 0; i < 2; i++ {
			select {
			case msg := <-myEmitter["my-event"]:
				fmt.Println(msg)
				wg.Done()
			case msg := <-myEmitter["my-other-event"]:
				fmt.Println(msg)
				wg.Done()
			}
		}
	}()

	myEmitter["my-event"] <- "hello world"
	myEmitter["my-other-event"] <- "hello other world"
	wg.Wait()
}
