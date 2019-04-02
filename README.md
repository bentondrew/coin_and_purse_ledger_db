# Coin & Purse Ledger DB ![MoneyBag](./img/moneybag.png)

## Overview

The database for the ledger service.

## Docker image build command

### Local build
```Bash
docker build -t coin_and_purse_ledger_db:0.1.0 .
```

## Image run command
This should primarily be deployed with the docker-compose file in the
[app repo.](https://github.com/Drewan-Tech/coin_and_purse_app)

Following is an example of a direct run command.
* Note: This requires a previously deployed network _appnet_.
```Bash
docker run --name ledgerdb --network appnet -e POSTGRES_PASSWORD=test -e POSTGRES_USER=superledger -d coin_and_purse_ledger_db:0.1.0
```

## Container Connection Command
Example connection given for the above command. Should be modified
based on the actual deployment.
```Bash
docker run -it --rm --network=appnet postgres:11.1-alpine psql -h ledgerdb -U superledger
```

## Versions

| Version | Comment|
| ---:|:---|
| 0.1.0 | Initial database and user configuration for the ledger service. |
