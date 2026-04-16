SHELL := bash

.PHONY: ci structure go node c cpp shell batch powershell assembly output

ci: structure go node c cpp shell batch powershell assembly output

structure:
	./scripts/ci-structure.sh

go:
	./scripts/ci-go.sh

node:
	./scripts/ci-node.sh

c:
	./scripts/ci-c.sh

cpp:
	./scripts/ci-cpp.sh

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
