# MEGA tools on Docker

This is a dockerfile that creates a container with [github.com/megous/megatools](https://github.com/megous/megatools) in it, allowing you to use [MEGA.co.nz](https://mega.co.nz)'s service without installing anything

## Installation


> docker build -t dancodes/megatools .

## Usage

```
#!/bin/bash

EMAIL=youremail@example.com
PASS=yourpassword

sudo docker run --rm \
         -v "$(pwd):$(pwd)" -w "$(pwd)" \
         -t -i dancodes/megatools megaput \
         -u "$EMAIL" -p "$PASS" \
         sample.sh
```
