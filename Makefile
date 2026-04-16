SHELL := bash

.PHONY: ci structure quality go node c cpp ruby shell batch powershell assembly output

ci: structure quality go node c cpp ruby shell batch powershell assembly output

structure:
	./scripts/ci-structure.sh

quality:
	./scripts/ci-source-quality.sh

go:
	./scripts/ci-go.sh

node:
	./scripts/ci-node.sh

c:
	./scripts/ci-c.sh

cpp:
	./scripts/ci-cpp.sh

ruby:
	./scripts/ci-ruby.sh

shell:
	./scripts/ci-shell.sh

batch:
	./scripts/ci-batch.sh

powershell:
	./scripts/ci-powershell.sh

assembly:
	./scripts/ci-assembly.sh

output:
	./scripts/ci-output.sh
