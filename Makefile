.PHONY: test

default: test

test:
	@(terraform init && terraform validate && echo "√ All ok") || exit 1

fmt:
	@if [ `terraform fmt -write=false| wc -c` -ne 0 ]; then echo "Some terraform files need be formatted: ";terraform fmt -write=false; exit 1; fi