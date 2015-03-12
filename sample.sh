#!/bin/bash

EMAIL=youremail@example.com
PASS=yourpassword

sudo docker run --rm -v "$(pwd):$(pwd)" -w "$(pwd)" -t -i dancodes/megatools megaput -u "$EMAIL" -p "$PASS" sample.sh
