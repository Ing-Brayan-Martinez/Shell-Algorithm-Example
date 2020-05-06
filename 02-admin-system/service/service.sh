#!/usr/bin/env bash

sudo service --status-all

sudo systemctl daemon-reload

sudo systemctl enable postgresql

sudo systemctl disable postgresql

sudo systemctl stop postgresql

sudo systemctl status postgresql

sudo systemctl start postgresql
