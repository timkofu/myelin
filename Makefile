.PHONY: test update doc doc_view release

test:
	@cd myelin; time --format '\nSeconds: %e\n' pytest --config-file=../pytest.ini --numprocesses=auto

update:
	@poetry update

doc:
	@rm -fr doc/technical; pdoc myelin --no-show-source --output-directory doc/technical

doc_view:
	@cd doc/technical; python -m http.server 2024

release: test doc
