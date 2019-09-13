# Overview

The image contains an astra stream server

## Image environment variables

| Variable | Default value | Description |
| -------- | ------------- | ----------- |
| ASTRA_PORT | 8000 | Astra admin port | 
| ASTRA_CONF_FILE | /etc/astra/astra.conf | Path to config file | 
| ASTRA_SCRIPT | | Path to script (if need - see FILE option in astra cli) | 
| ASTRA_DISABLE_OUT | 1 | Disable console output if 1, otherwise enable | 

## License

Without a license file astra will not start

Add license to container on path `/etc/astra/license.txt`

Buy license or get trial:

https://cesbo.com/orders/software/astra/buy/
