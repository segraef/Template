#!/usr/bin/env bash
#
# log.sh - minimal structured, timestamped logging helpers.
#
# Source it from a script, do not execute it directly:
#     . "$(dirname -- "${BASH_SOURCE[0]}")/log.sh"
#
# Provides: log_info, log_warn, log_error (warn/error go to stderr).
#
# Author: Sebastian Gräf
# Repo:   https://github.com/segraef/Template

# Guard against double-sourcing.
[[ -n "${__LOG_SH_SOURCED:-}" ]] && return 0
__LOG_SH_SOURCED=1

_log() {
    printf '[%s] %-5s %s\n' "$(date '+%Y-%m-%d %H:%M:%S')" "$1" "${*:2}"
}

log_info()  { _log "INFO" "$@"; }
log_warn()  { _log "WARN" "$@" >&2; }
log_error() { _log "ERROR" "$@" >&2; }
