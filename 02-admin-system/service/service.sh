#!/usr/bin/env bash

service --status-all

sudo systemctl daemon-reload

sudo systemctl disable postgresql

sudo systemctl stop postgresql

sudo systemctl status postgresql

sudo systemctl start postgresql
