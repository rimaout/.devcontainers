#!/usr/bin/env bash
set -euo pipefail
export DEBIAN_FRONTEND=noninteractive

# list packages here
PACKAGES=(
  libopenmpi-dev
)

apt-get update -y
apt-get install -y --no-install-recommends "${PACKAGES[@]}"
apt-get autoremove -y
apt-get clean
rm -rf /var/lib/apt/lists/*

#remember to make this file executable, run: chmod +x setup-packages.sh
