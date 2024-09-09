#!/bin/sh

export DISPLAY=:99

parallel --ungroup --halt now,done=1 ::: \
    "./start_xvfb.sh" \
    "./start_browserless.sh" \
    "./start_caddy.sh"

false