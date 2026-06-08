#!/usr/bin/env bash
#
# verb-noun.sh - one-line summary of what this script does.
#
# Description: what it automates, prerequisites (CLIs, auth) and side effects.
# Usage:       ./verb-noun.sh <name>
# Author:      Sebastian Gräf
# Repo:        https://github.com/segraef/Template

set -euo pipefail

script_dir="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" &>/dev/null && pwd)"
# shellcheck source-path=SCRIPTDIR source=log.sh
. "${script_dir}/log.sh"

main() {
    local name="${1:-world}"

    log_info "Executing $(basename -- "${BASH_SOURCE[0]}")."
    log_info "Hello, ${name}."
    log_info "Finished."
}

main "$@"
