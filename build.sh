#!/usr/bin/env bash

curl -LsSf https://astral.sh/uv/install.sh | sh
source $HOME/.local/bin/env
make install && psql -a -d 'postgresql://svetlana:01ESbrJ0oqPG8VL9yH3l5UkU9SL2MHcI@dpg-cu2h8l1opnds738jsu1g-a/page_analyzer_2shw' -f database.sql