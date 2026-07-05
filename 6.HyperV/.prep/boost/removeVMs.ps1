for ($i = 1; $i -le 10; $i++) {

    $vmName = "TEST{0:D2}" -f $i
    Write-Host "Deleting $vmName..."

    if (Get-VM -Name $vmName -ErrorAction SilentlyContinue) {
        Stop-VM $vmName -Force
        Remove-VM $vmName -Force
        Remove-Item "D:\VMs\$vmName" -Recurse -Force
    }
}
