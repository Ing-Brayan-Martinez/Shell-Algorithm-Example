#!/usr/bin/env bash

sudo su

su postgres -c psql postgres

ALTER USER postgres WITH PASSWORD 'postgres';