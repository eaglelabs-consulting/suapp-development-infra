# SUAPP Development Infra

A repository to easily run a local infrastructure for Suave Applications Development.

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
