# SUAPP Development Infra

A repository to easily run a local infrastructure for Suave Applications Development.

This setup is extracted from [suapp-examples](https://github.com/flashbots/suapp-examples/tree/bf735798f18821f080da90f221b40ee60f2b60a2).

## Start the local devnet

### TL;DR

1. Install prerequisites:

   - [Docker](https://docs.docker.com/engine/install/)
   - [Kurtosis](https://docs.kurtosis.com/install/)

2. Run

    ```bash
    # Launch kurtosis devnet + sidecar docker-compose with SUAVE
    make devnet-up

    <!-- # Point SUAVE examples to the devnet
    export BUILDER_URL=http://el-4-geth-builder-lighthouse:8545
    export L1_PRIVKEY=bcdf20249abf0ed6d944c0288fad489e33f66b3960d9e6229c1cd214ed3bbe31 -->

    <!-- # Run
    go run examples/app-ofa-private/main.go -->

    # Tear-down
    make devnet-down
    ```

### Details

Above setup will (among other things) deploy:

- SUAVE devnet RPC on `http://127.0.0.1:8545`
- Eth devnet RPC on `http://127.0.0.1:8555`
- SUAVE explorer on `http://127.0.0.1:8080`
- Eth explorer on `http://127.0.0.1:18080`
- MEV Boost Relay Overview on `http://127.0.0.1:9060`

All Eth components are provisioned by `ethereum-package` from kurtosis.
Please check `https://github.com/kurtosis-tech/ethereum-package` for more info.