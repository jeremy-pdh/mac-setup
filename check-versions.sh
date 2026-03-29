#!/bin/bash

#!/bin/bash
set -e

# Colors for output
GREEN="\033[38;2;46;204;113m"   # #2ecc71
YELLOW="\033[38;2;241;196;15m"  # #f1c40f
RED="\033[38;2;231;76;60m"      # #e74c3c
ORANGE="\033[38;2;230;126;34m"  # #e67e22
PURPLE="\033[38;2;155;89;182m"  # #9b59b6
RESET="\033[0m"
BROWN="\033[38;2;127;140;141m"  # #7f8c8d
PINK="\033[38;2;233;30;99m"     # #e91e63
BLUE="\033[38;2;52;152;219m"    # #3498db

# Function to execute a command and print its output with color
function exec() {
    local color="$1"
    local msg="$2"

    # Extract msg before the first '|' if exists into a new cmd variable
    local cmd="${msg%%|*}"
    echo -e "${color}${cmd}${RESET}"

    # Execute msg and output result
    eval "$msg"
}

# Protobuf
exec "$BLUE" "protoc --version"
# protoc --version

# Python + uv + conda
exec "$YELLOW" "python --version"
exec "$YELLOW" "uv --version"
exec "$YELLOW" "conda --version"

# Java + maven + gradle
exec "$RED" "java --version | head -n 1"
exec "$RED" "mvn --version | head -n 1"
exec "$RED" "gradle -v | grep 'Gradle'"

# Node.js + pnpm + Angular + Ionic + cordova
exec "$PURPLE" "node --version"
exec "$PURPLE" "pnpm --version"
exec "$PURPLE" "ng --version"
exec "$PURPLE" "ionic --version"
exec "$PURPLE" "cordova --version"

# Ruby
exec "$PINK" "ruby --version"

# MySQL
exec "$ORANGE" "mysql --version"

# Make + Embedded tools
exec "$BROWN" "make --version | head -n 1"
exec "$BROWN" "gmake --version | head -n 1"
exec "$BROWN" "gcc --version | head -n 1"
exec "$BROWN" "g++ --version | head -n 1"
exec "$BROWN" "arm-none-eabi-gdb --version | head -n 1"
exec "$BROWN" "\$STM32_PROGRAMMER_CLI_BIN --version | grep 'STM32CubeProgrammer version'"
exec "$BROWN" "\"\$EM_BUILD_BIN\" 2>&1 | head -n 1"
# exec "$BROWN" "nrfjprog -v | grep 'nrfjprog version'"

# Android + Xcode =
exec "$ORANGE" "xcodebuild -version | head -n 1"
exec "$ORANGE" "pod --version"
exec "$ORANGE" "sdkmanager --version | head -n 1"
exec "$ORANGE" "adb --version | head -n 1"
exec "$ORANGE" "apksigner --version | head -n 1"

# Docker
exec "$BLUE" "docker --version"

# glcoud + cloud-sql-proxy
exec "$BLUE" "gcloud --version | head -n 1"
exec "$BLUE" "cloud-sql-proxy --version"
