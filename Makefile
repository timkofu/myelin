testrun: test run

run:
	@cargo run

test:
	@cargo test

update:
	@cargo update

release: update test

