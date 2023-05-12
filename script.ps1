$hostname = hostname
$ipaddress = Get-NetIPAddress | Where-Object {($_.InterfaceAlias -like '*Ethernet*') -and ($_.AddressFamily -ne 'IPv6')} | Select-Object -ExpandProperty IPAddress
$username = whoami
$date = Get-Date -Format 'hh:mmtt dd/MM/yyyy'
$files = gci C:\
Write-Host "This Machine Has Been Comprimised" -ForegroundColor Green
Write-Host "*************************************"  -ForegroundColor Yellow
Write-Host "* Hostname   - $hostname" -ForegroundColor Yellow
Write-Host "* IP Address - $ipaddress" -ForegroundColor Yellow
Write-Host "* User       - $username" -ForegroundColor Yellow
Write-Host "* Date       - $date" -ForegroundColor Yellow
Write-Host "* Listing of C:\" -ForegroundColor Yellow
foreach ($file in $files) {
Write-Host "*   - $file" -ForegroundColor Yellow
}
