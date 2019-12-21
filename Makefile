all: test

test:
	helm upgrade -i test-chart --namespace test-namespace -f values.yaml -f test-values.yaml . --dry-run --debug
