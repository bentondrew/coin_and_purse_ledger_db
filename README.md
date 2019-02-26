# coin_and_purse_ledger_db
The database for the ledger service.

## Docker image build command

### Local build
```Bash
docker build -t coin_and_purse_ledger_db:0.0.1 .
```

## Image run command

```Bash
docker run --name ledgerdb --network appnet -e POSTGRES_PASSWORD=test -e POSTGRES_USER=superledger -d coin_and_purse_ledger_db:0.0.1
```

## Container Connection Command

```Bash
docker run -it --rm --network=appnet postgres:11.1-alpine psql -h ledgerdb -U superledger
```
