.DEFAULT_GOAL := help
.PHONY: help lint dev dev-down test schema k8s-up k8s-down

help: ## Show available targets
	@grep -E '^[a-zA-Z0-9_-]+:.*?## ' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "  \033[36m%-10s\033[0m %s\n", $$1, $$2}'

lint: ## Run all pre-commit hooks on all files
	uvx pre-commit run --all-files

dev: ## Start the local development stack (M2)
	@echo "Not implemented yet (planned for M2)"; exit 1

dev-down: ## Stop the local development stack (M2)
	@echo "Not implemented yet (planned for M2)"; exit 1

test: ## Run all tests (M1)
	@echo "Not implemented yet (planned for M1)"; exit 1

schema: ## Generate OpenAPI schema and frontend types (M1)
	@echo "Not implemented yet (planned for M1)"; exit 1

k8s-up: ## Create kind cluster and deploy (M4)
	@echo "Not implemented yet (planned for M4)"; exit 1

k8s-down: ## Delete kind cluster (M4)
	@echo "Not implemented yet (planned for M4)"; exit 1
