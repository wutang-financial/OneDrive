#The script copies the existing folders "desktop" and "documents" into the onedrive directory
$Documents = [environment]::getfolderpath("mydocuments")
$Desktop = [environment]::getfolderpath("desktop")
$Target = $env:OneDriveCommercial

    write-host 'OneDrive connected and found'
    robocopy $Documents $Target"/Documents" /E /SEC
    robocopy $Desktop $Target"/Desktop" /E /SEC
    new-item $Documents -name '_FILES COPIED TO ONEDRIVE.txt' -ItemType 'file' -Value 'Files Copied' -force
    new-item $Desktop -name '_FILES COPIED TO ONEDRIVE.txt' -ItemType 'file' -Value 'Files Copied' -force
