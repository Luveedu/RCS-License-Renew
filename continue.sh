#!/bin/bash

# List of commands to execute
commands=(
    "RcLicenseCP"
    "touch /etc/.verifylicense ; RcLicenseCP"
    "RcLicenseCP -fix"
    "RcLicenseLSWS"
    "RcLicenseCLN"
    "RcLicenseKernelCare"
    "RcLicenseSoftaculous"
    "RcLicenseImunify360"
    "RcLicenseCLN --tuxcare"
    "RcLicenseBackuply"
)

# Execute each command with a 2-second delay
for cmd in "${commands[@]}"; do
    echo "Executing: $cmd"
    eval "$cmd"
    sleep 2
done

echo "All Commands Done!"