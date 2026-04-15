package main

import (
	"fmt"
	"os"
	"sync"
	"time"
)

func asyncMethod(value string) chan interface{} {
	ch := make(chan interface{}, 1)
	go func() {
		time.Sleep(1 * time.Second)
		ch <- "resolved: " + value
		close(ch)
	}()

	return ch
}

func resolveAll(ch ...chan interface{}) chan interface{} {
	var wg sync.WaitGroup
	res := make([]string, len(ch))
	resCh := make(chan interface{}, 1)

	go func() {
		for i, c := range ch {
			wg.Add(1)
			go func(j int, ifcCh chan interface{}) {
				ifc := <-ifcCh
				switch v := ifc.(type) {
				case error:
					resCh <- v
				case string:
					res[j] = v
				}
				wg.Done()
			}(i, c)
		}

		wg.Wait()
		resCh <- res
		close(resCh)
	}()

	return resCh
}

func main() {
	result := <-asyncMethod("foo")
	switch v := result.(type) {
	case string:
		fmt.Println(v)
	case error:
		fmt.Fprintln(os.Stderr, v)
	}

	result = <-resolveAll(
		asyncMethod("A"),
		asyncMethod("B"),
		asyncMethod("C"),
	)

	switch v := result.(type) {
	case []string:
		fmt.Println(v)
	case error:
		fmt.Fprintln(os.Stderr, v)
	}
}
