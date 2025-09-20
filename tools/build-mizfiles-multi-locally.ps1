# Specify the input directory
$inputDir = Resolve-Path "..\miz_builders"

# Specify the input miz
$inputMiz = Join-Path (Resolve-Path "..\") "miz_builders\dev-crnge.miz"

# Specify the copied zip file since PowerShell does not recognize archives except for .zip files
# $inputCopy = Join-Path (Resolve-Path "..\") "miz_builders\dev-crnge.zip"
$inputCopy = Join-Path (Resolve-Path "..\") "miz_builders\dev-crnge.tar"

# Specify the folder that the zip file is being extracted to
$extractFolder = Join-Path (Resolve-Path "..\") "miz_builders\dev-crnge\"

# Specify the files as a wildcard so the root folder is not included in the archive
$extractFolderWild = Join-Path (Resolve-Path "..\") "miz_builders\dev-crnge\*.*"

# Specify the file name of the newly compressed zip file
# $compressFile = Join-Path (Resolve-Path "..\") "miz_builders\dev_crnge-mod.zip"
$compressFile = Join-Path (Resolve-Path "..\") "miz_builders\dev_crnge-mod.tar"

# Specify the output file after all edits are made
$outputFile = Join-Path (Resolve-Path "..\") "miz_builders\dev_crnge-mod.miz"

# Specify the mission file inside of the folder
$missionFile = Join-Path (Resolve-Path "..\") "miz_builders\dev-crnge\mission"

# If the output file already exists, delete it
if (Test-Path $outputFile) {
    Remove-Item $outputFile
}

# If the copied file already exists, delete it
if (Test-Path $inputCopy) {
    Remove-Item $inputCopy
}

# If the extracted folder exists, delete it
if (Test-Path $extractFolder) {
    Remove-Item $extractFolder -Recurse
}

# If the new compressed zip exists, delete it
if (Test-Path $compressFile) {
    Remove-Item $compressFile
}

# Renames the .miz into the .zip extension
$copyParams = @{
    Path        = $inputMiz
    Destination = $inputCopy
}
Copy-Item @copyParams

# Extracts dev-crnge.miz into the same folder
# Expand-Archive -LiteralPath $inputCopy -DestinationPath $extractFolder

tar -xf $inputCopy


# Comments out '["A-4E-C"] = "A-4E-C",' in the mission file
(Get-Content $missionFile) -replace '\["A-4E-C\"\] = "A-4E-C\",', "--" | Set-Content $missionFile

# Compresses the now modified files into a zip file
Compress-Archive -Path (Join-Path $extractFolder '*') -DestinationPath $compressFile -Force

# Renames the .zip back to a .miz
$copyParams2 = @{
    Path        = $compressFile
    Destination = $outputFile
}
Copy-Item @copyParams2

Write-Host "Script complete."