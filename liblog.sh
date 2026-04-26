# shellcheck shell=dash
#
# functions for colored output
#
if [ "$COLOR" = "false" ]; then
  NOCOLOR='\033[0m'
  GREEN=$NOCOLOR
  CYAN=$NOCOLOR
  YELLOW=$NOCOLOR
  MAGENTA=$NOCOLOR
  RED=$NOCOLOR
else
  NOCOLOR='\033[0m'
  GREEN='\033[0;32m'
  CYAN='\033[0;36m'
  YELLOW='\033[1;32m'
  MAGENTA='\033[0;35m'
  RED='\033[0;31m'
fi

ts() {
  date -u +"%Y-%m-%dT%H:%M:%SZ"
}

log_debug()   { [ "$DEBUG" = "true" ] && printf '%b\n' "${NOCOLOR}$(ts) $1${NOCOLOR}" || true; }
log_info()    { printf '%b\n' "${GREEN}$(ts) $1${NOCOLOR}"; }
log_notice()  { printf '%b\n' "${CYAN}$(ts) $1${NOCOLOR}"; }
log_warning() { printf '%b\n' "${YELLOW}$(ts) $1${NOCOLOR}"; }
log_error()   { printf '%b\n' "${MAGENTA}$(ts) $1${NOCOLOR}"; }
log_fatal()   { printf '%b\n' "${RED}$(ts) $1${NOCOLOR}"; }