SHELL := bash

.PHONY: ci structure go node shell batch powershell

ci: structure go node shell batch powershell

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
