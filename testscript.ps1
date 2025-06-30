# testscript.ps1

Write-Output "This is a harmless test to trigger threat protection using EICAR string."

# EICAR standard test string
$eicarString = 'X5O!P%@AP[4\PZX54(P^)7CC)7}$EICAR-STANDARD-ANTIVIRUS-TEST-FILE!$H+H*'

# Write the EICAR string to a file - this will trigger AV
Set-Content -Path "C:\ProgramData\eicar.com" -Value $eicarString

Write-Output "EICAR test file written to C:\ProgramData\eicar.com"
