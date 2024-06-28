testrun: test run

run:
	@go run -race myelin.makobu.name

test:
	@go test ./...

update:
	@go get -u ./...
	@go mod tidy

release: test
