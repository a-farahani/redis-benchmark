# redis-benchmark

A comprehensive benchmark suite comparing Redis with its alternatives and various deployment strategies.

## Overview

This repository benchmarks the following components:

- **In-Memory Stores**: [Redis](https://redis.io/) vs. alternatives ([DragonflyDB](https://www.dragonflydb.io/), [KeyDB](https://docs.keydb.dev/))
- **Proxy Solutions**: [Camellia](https://github.com/netease-im/camellia) and [Twemproxy](https://github.com/twitter/twemproxy)
- **High Availability**: [Redis Sentinel](https://redis.io/docs/latest/operate/oss_and_stack/management/sentinel/) and [Redis Cluster](https://redis.io/docs/latest/operate/oss_and_stack/management/scaling/)

## Project Structure

Each experiment folder (`01-redis-camellia-srh`, `02-dragonflydb-camellia-srh`, ...) contains:
  - `docker-compose.yml`: Container definitions for the database, proxy, and [SRH](https://github.com/hiett/serverless-redis-http) (Serverless Redis HTTP) bridge
  - `camellia-config` or `twemproxy-config`: Proxy configuration files
  - `benchmark/`: Contains Lua scripts (`srh_raw_get.lua`, `srh_raw_set.lua`, `srh_raw_mixed.lua`) and benchmark commands to run tests with `wrk`

## How to Run a Single Experiment

Example: `01-redis-camellia-srh`

1. From the experiment folder, start services:

```bash
cd 01-redis-camellia-srh
docker-compose up -d
```

2. Confirm SRH (HTTP bridge) is reachable on localhost (port 80 by default in these composes). Then run one of the benchmark commands (requires `wrk`):

```bash
# from the experiment/benchmark directory
wrk -t12 -c100 -d30s -s srh_raw_get.lua http://localhost
```

## License

This project is licensed under the terms of the GNU 3.0. See the [LICENSE](LICENSE) file for details.
