for ($i = 1; $i -le 10; $i++) {

    $vmName = "TEST{0:D2}" -f $i
    Write-Host "Starting $vmName..."
    Start-VM $vmName
}
