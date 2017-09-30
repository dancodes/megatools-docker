# MEGAtools on Docker

This is a dockerfile that creates a container with [github.com/megous/megatools](https://github.com/megous/megatools) in it, allowing you to use [MEGA.co.nz](https://mega.co.nz)'s storage without installing any extra packages.

## Install

> docker pull dancodes/megatools

## Build

> docker build -t megatools .

## Usage

```
#!/bin/bash

EMAIL=youremail@example.com
PASS=yourpassword
FILE=README.md

docker run --rm \
         -v "$(pwd):$(pwd)" -w "$(pwd)" \
         -t -i dancodes/megatools \
         megaput \
         -u "$EMAIL" -p "$PASS" \
         "$FILE"
```
