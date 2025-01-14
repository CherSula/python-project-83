#!/usr/bin/env bash

curl -LsSf https://astral.sh/uv/install.sh | sh
source $HOME/.local/bin/env
echo $DATABASE_URL
make install && psql -a -d $DATABASE_URL -f database.sql