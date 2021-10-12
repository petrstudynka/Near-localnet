# NEAR Localnet
- development environment for NEAR Protocol platform
- requires Linux OS with installed Docker
- wrapped [Nearup](https://github.com/near/nearup) with some tweaking for easier use
- mean to be used with [NEAR CLI](https://docs.near.org/docs/tools/near-cli)

## Usage
First init env with:  
`sh localnet.sh init`  
Init new (clean) env and run it:  
`sh localnet.sh new`  
Stop env:  
`sh localnet.sh stop`  
Start env:  
`sh localnet.sh start`  
Check if env is running on:
[http://127.0.0.1:3030/status](http://127.0.0.1:3030/status)


## Use with NEAR CLI
- the "root" account available is "local"
- example command which creates "test.local" account with deposit of 200 NEAR tokens:
`NEAR_ENV=local near create-account test.local --initialBalance 200 --masterAccount local`