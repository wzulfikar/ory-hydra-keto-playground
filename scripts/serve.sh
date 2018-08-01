#!/usr/bin/env bash

echo "- running keto in background (screen name: keto).."
screen -dmS keto bash -c "HOST=0.0.0.0 PORT=$KETO_PORT keto serve"
echo "- keto is running at 0.0.0.0:${KETO_PORT} ✔"

echo ""
echo "- running hydra at 0.0.0.0:${HYDRA_PORT}.."
HOST=0.0.0.0 PORT=$HYDRA_PORT hydra serve --dangerous-force-http