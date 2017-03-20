#!/bin/bash

set -e

SCRIPT_DIR="$(pwd)"

cd "${SCRIPT_DIR}"
cd ../JM/citeproc-js
./test.py -B
cat <<EOT > "${SCRIPT_DIR}"/citeproc-obj.js
$(cat citeproc.js)

if (typeof module != 'undefined') { module.exports = CSL }
EOT

cd "${SCRIPT_DIR}"

