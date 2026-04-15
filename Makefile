SHELL := bash

.PHONY: ci structure go node shell batch powershell output

ci: structure go node shell batch powershell output

structure:
	./scripts/ci-structure.sh

go:
	./scripts/ci-go.sh

node:
	./scripts/ci-node.sh

shell:
	./scripts/ci-shell.sh

batch:
	./scripts/ci-batch.sh

powershell:
	./scripts/ci-powershell.sh

output:
	./scripts/ci-output.sh
