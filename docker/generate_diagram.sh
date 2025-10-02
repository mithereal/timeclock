#!/bin/bash
DIR=$(pwd)
schemacrawler --server=postgresql --host=localhost --port=55432 --database=timeclock --schemas=public --user=timeclock --password=timeclock --info-level=standard --command=schema --output-format=png --output-file=${DIR}/database_diagram.png