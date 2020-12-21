#!/usr/bin/env bash

set -e

CONFIG="install.conf.yaml"
DOTBOT_DIR="dotbot"

DOTBOT_BIN="bin/dotbot"
BASEDIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

cd "${BASEDIR}"

(cd "${DOTBOT_DIR}" && git submodule update --init --recursive)
"${BASEDIR}/${DOTBOT_DIR}/${DOTBOT_BIN}" -v -p "${BASEDIR}/dotbot-sudo/sudo.py" -p "${BASEDIR}/dotbot-yay/yay.py"  -d "${BASEDIR}" -c "${CONFIG}" "${@}"
