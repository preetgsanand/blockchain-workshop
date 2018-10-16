#!/usr/bin/env bash
(supervisorctl -c /etc/supervisor/supervisord.conf status geth | grep RUNNING) && (supervisorctl -c /etc/supervisor/supervisord.conf status constellation | grep RUNNING)