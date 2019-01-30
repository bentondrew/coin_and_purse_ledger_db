# coin_and_purse_ledger_db
The database for the ledger service.

## Docker image build command

### Local build
```Bash
docker build -t coin_and_purse_ledger_db:0.0.1 .
```

## Image run command

```Bash
docker run --name coin-and-purse-ledger-db --network appnet -e POSTGRES_PASSWORD=test -e POSTGRES_USER=superledger -d coin_and_purse_ledger_db:0.0.1
```
