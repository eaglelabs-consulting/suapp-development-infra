VERSION := $(shell git describe --tags --always --dirty="-dev")

.PHONY: devnet-up
devnet-up:
	@docker compose --file ./docker-compose.yaml up --detach

.PHONY: devnet-down
devnet-down:
	@docker compose --file ./docker-compose.yaml down

.PHONY: devnet-kurtosis-up
devnet-kurtosis-up:
	@kurtosis run \
			--enclave eth-devnet \
		github.com/kurtosis-tech/ethereum-package@1.4.0 \
			"$$( cat ./devnet/kurtosis.yaml )"
	@kurtosis service stop eth-devnet mev-flood
	@docker compose --file ./devnet/docker-compose.yaml up --detach

.PHONY: devnet-kurtosis-down
devnet-kurtosis-down:
	@docker compose --file ./devnet/docker-compose.yaml down
	@docker volume rm devnet_suave-blockscout-db-data || true
	@kurtosis enclave stop eth-devnet
	@kurtosis enclave rm eth-devnet
	@kurtosis engine stop