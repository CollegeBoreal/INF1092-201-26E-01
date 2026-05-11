#!/usr/bin/env pwsh

$dirs = @(
)

#    "9.Ansible"

foreach ($dir in $dirs) {
    Push-Location $dir
    try {
        .scripts/run-check.ps1
    }
    finally {
        Pop-Location
    }
}
