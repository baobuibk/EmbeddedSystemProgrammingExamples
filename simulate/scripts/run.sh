#!/usr/bin/env bash
# Simulate one Source/ example on the STM32F407 Discovery Renode platform.
#
# Usage:
#   simulate/scripts/run.sh <project-dir-under-Source>
#
# Example:
#   simulate/scripts/run.sh chapter9_example1
set -euo pipefail

PROJECT="${1:-}"
if [ -z "$PROJECT" ]; then
    echo "Usage: $0 <project-dir-under-Source>  (e.g. chapter9_example1)" >&2
    exit 1
fi

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/../.." && pwd)"
ELF="$ROOT/Source/$PROJECT/Debug/$PROJECT.elf"

if [ ! -f "$ELF" ]; then
    echo "ELF not found: $ELF" >&2
    echo "Build it first: cd Source/$PROJECT/Debug && make all" >&2
    echo "(If the project's artifact name differs from its folder name - e.g. UinitTest - pass the .elf path directly to renode instead, see simulate/README.md)" >&2
    exit 1
fi

cd "$ROOT"
renode -e "\$bin=@Source/$PROJECT/Debug/$PROJECT.elf; include @simulate/renode/run_example.resc"
