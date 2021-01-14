all: test

test:
	helm upgrade -i test-chart --namespace test-namespace -f values.yaml -f test-values.yaml . --dry-run --debug

test_cron:
	helm upgrade -i test-chart --namespace test-namespace -f values.yaml -f test-cron-values.yaml . --dry-run --debug

test_migrate:
	helm upgrade -i test-chart --namespace test-namespace -f values.yaml -f test-migrate-values.yaml . --dry-run --debug
