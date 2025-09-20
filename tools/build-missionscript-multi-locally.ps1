# Specify the input directory
$inputDir = Resolve-Path "..\crnge_missionscript"

# Specify the output file
$outputFile = Join-Path (Resolve-Path "..\") "crnge_missionscript-dev.lua"

# Specify the output file for the no sound version
$outputFileNoSound = Join-Path (Resolve-Path "..\") "crnge_missionscript-NoSounds-dev.lua"

# If the output file already exists, delete it
if (Test-Path $outputFile) {
    Remove-Item $outputFile
}

if (Test-Path $outputFileNoSound) {
    Remove-Item $outputFileNoSound
}

# Prepare a list of files
$filesList = @(
    (Resolve-Path "$inputDir\core.lua").Path,
    (Resolve-Path "$inputDir\sounds.lua").Path,
    (Resolve-Path "$inputDir\templates.lua").Path,
    (Resolve-Path "$inputDir\air_spawn.lua").Path,
    (Resolve-Path "$inputDir\groundveh_spawn.lua").Path,
    (Resolve-Path "$inputDir\naval_spawn.lua").Path,
    (Resolve-Path "$inputDir\ranges.lua").Path,
    (Resolve-Path "$inputDir\red_cap.lua").Path,
    (Resolve-Path "$inputDir\menu_setup.lua").Path
    (Resolve-Path "$inputDir\growler_menu.lua").Path
)

$filesListNoSound = @(
    (Resolve-Path "$inputDir\core.lua").Path,
    (Resolve-Path "$inputDir\templates.lua").Path,
    (Resolve-Path "$inputDir\air_spawn.lua").Path,
    (Resolve-Path "$inputDir\groundveh_spawn.lua").Path,
    (Resolve-Path "$inputDir\naval_spawn.lua").Path,
    (Resolve-Path "$inputDir\ranges.lua").Path,
    (Resolve-Path "$inputDir\red_cap.lua").Path,
    (Resolve-Path "$inputDir\menu_setup.lua").Path
)



# Prepare a list of all other .lua files in the directory, excluding init.lua and the files already in $filesList
$otherFiles = Get-ChildItem -Path $inputDir -Recurse -Filter *.lua | Where-Object { $_.Name -ne "init.lua" -and $_.FullName -notin $filesList } | ForEach-Object {
    $_.FullName
}


# Do it again, this time for noSound version
$otherFilesNoSound = Get-ChildItem -Path $inputDir -Recurse -Filter *.lua | Where-Object { $_.Name -ne "init.lua" -and $_.FullName -notin $filesListNoSound } | ForEach-Object {
    $_.FullName
}


# Merge the lists while removing duplicates
$allFiles = $filesList | Select-Object -Unique

# Do it again
$allFilesNoSound = $filesListNoSound | Select-Object -Unique

# Add init.lua lastly
$allFiles += (Resolve-Path "$inputDir\init.lua").Path

# Add init.lua lastly, except for NoSounds
$allFilesNoSound += (Resolve-Path "$inputDir\init.lua").Path

# Concatenate the files into crnge-missionscript-dev.lua
$allFiles | Where-Object { Test-Path $_ } | ForEach-Object {
    Get-Content $_ | Out-File -Append -Encoding utf8 $outputFile
    
    Write-Host "Added $_" -ForegroundColor Green
}

# Concatenate the files into crnge-missionscript-NoSound-dev.lua
$allFilesNoSound | Where-Object { Test-Path $_ } | ForEach-Object {
    Get-Content $_ | Out-File -Append -Encoding utf8 $outputFileNoSound
    
    Write-Host "Added $_" -ForegroundColor Green
}


# Get the current ISO timestamp and prepend with 'dev-'
$timestamp = Get-Date -Format "yyyy-MM-dd THH:mm:ssZ"
$build = "2.00.0033-$timestamp"
$version = "2.00.0033"

# Replace {BUILD} with the version string
(Get-Content $outputFile) -replace '\{BUILD\}', $build | Set-Content $outputFile
(Get-Content $outputFile) -replace '\{VERSION\}', $version | Set-Content $outputFile

Write-Host "crnge-missionscript build complete. Build: $build"

# Replace {BUILD} with the version string for NoSound
(Get-Content $outputFileNoSound) -replace '\{BUILD\}', $build | Set-Content $outputFileNoSound
(Get-Content $outputFileNoSound) -replace '\{VERSION\}', $version | Set-Content $outputFileNoSound

Write-Host "crnge-missionscript-NoSound build complete. Build: $build"