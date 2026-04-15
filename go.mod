module github.com/tieukhachngao/funny-for-nodejs-developers

require (
	github.com/apex/log v1.1.1
	github.com/go-shadow/moment v0.0.0-20140422073900-e837f27dad94
	github.com/mattn/go-sqlite3 v1.10.0
	github.com/tieukhachngao/funny-for-nodejs-developers/examples/greeter_go v0.0.0
	github.com/prometheus/common v0.7.0
)

go 1.13

replace github.com/tieukhachngao/funny-for-nodejs-developers/examples/greeter_go => ./examples/greeter_go
