[![Build Status](https://semaphoreci.com/api/v1/insurance-fraud/merch-it-api/branches/master/shields_badge.svg)](https://semaphoreci.com/insurance-fraud/merch-it-api)

# merch-it-api

API for selling insurances to vandering travellers

## Running

Running is easy, just do:

```bash
docker-compose build
docker-compose run merch-it-api.web rake db:create db:migrate
docker-compose up
```
