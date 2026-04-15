module github.com/tieukhachngao/funny-for-nodejs-developers

require (
	github.com/go-shadow/moment v0.0.0-20140422073900-e837f27dad94
	github.com/mattn/go-sqlite3 v1.10.0
	github.com/smartystreets/goconvey v1.8.1 // indirect
	github.com/tieukhachngao/funny-for-nodejs-developers/examples/greeter_go v0.0.0
)

go 1.13

replace github.com/tieukhachngao/funny-for-nodejs-developers/examples/greeter_go => ./examples/greeter_go
