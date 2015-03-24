# MEGAtools on Docker

This is a dockerfile that creates a container with [github.com/megous/megatools](https://github.com/megous/megatools) in it, allowing you to use [MEGA.co.nz](https://mega.co.nz)'s storage without installing any extra packages.

## Install

> docker pull dancodes/megatools

## Build

> docker build -t dancodes/megatools .

## Usage

```
#!/bin/bash

EMAIL=youremail@example.com
PASS=yourpassword
FILE=README.md

sudo docker run --rm \
         -v "$(pwd):$(pwd)" -w "$(pwd)" \ # Mount the working directory as a volume
         -t -i dancodes/megatools \
         megaput \
         -u "$EMAIL" -p "$PASS" \
         "$FILE"
```
