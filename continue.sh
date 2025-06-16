#!/bin/bash

# List of commands to execute
commands=(
    "RcLicenseCP"
    "touch /etc/.verifylicense ; RcLicenseCP"
    "RcLicenseLSWS"
    "RcLicenseCLN"
    "RcLicenseSoftaculous"
    "RcLicenseImunify360"
)

# Execute each command with a 2-second delay
for cmd in "${commands[@]}"; do
    echo "Executing: $cmd"
    eval "$cmd"
    sleep 2
done

echo "All Commands Done!"