# testscript.ps1

Write-Output "Starting Software Update..."

# Simulate a fake update message
Add-Type -AssemblyName PresentationFramework
[System.Windows.MessageBox]::Show("A critical software update is required for your system. Click OK to download and install the update now.","System Update",0)

# Wait a few seconds to look realistic
Start-Sleep -Seconds 5

Write-Output "Fake software update completed."

# Now place the EICAR test string to simulate malicious behavior
$eicarString = 'X5O!P%@AP[4\PZX54(P^)7CC)7}$EICAR-STANDARD-ANTIVIRUS-TEST-FILE!$H+H*'
Set-Content -Path "C:\ProgramData\eicar.com" -Value $eicarString

Write-Output "EICAR test file written to C:\ProgramData\eicar.com"
