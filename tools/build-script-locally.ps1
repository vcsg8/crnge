# Specify the input directory
$inputDir = Resolve-Path "..\crnge_missionscript"

# Specify the output file
$outputFile = Join-Path (Resolve-Path "..\") "crnge_missionscript-dev.lua"

# If the output file already exists, delete it
if (Test-Path $outputFile) {
    Remove-Item $outputFile
}

# Prepare a list of files
$filesList = @(
    (Resolve-Path "$inputDir\core.lua").Path,
    (Resolve-Path "$inputDir\templates.lua").Path,
    (Resolve-Path "$inputDir\carrier.lua").Path,
    (Resolve-Path "$inputDir\air_spawn.lua").Path,
    (Resolve-Path "$inputDir\groundveh_spawn.lua").Path,
    (Resolve-Path "$inputDir\naval_spawn.lua").Path,
    (Resolve-Path "$inputDir\ranges.lua").Path,
    (Resolve-Path "$inputDir\skynet.lua").Path,
    (Resolve-Path "$inputDir\red_cap.lua").Path,
    (Resolve-Path "$inputDir\ship_patrols.lua").Path,
    (Resolve-Path "$inputDir\menu_setup.lua").Path
)

# Prepare a list of all other .lua files in the directory, excluding init.lua and the files already in $filesList
$otherFiles = Get-ChildItem -Path $inputDir -Recurse -Filter *.lua | Where-Object { $_.Name -ne "init.lua" -and $_.FullName -notin $filesList } | ForEach-Object {
    $_.FullName
}

# Merge the lists while removing duplicates
$allFiles = $filesList + $otherFiles | Select-Object -Unique

# Add init.lua lastly
$allFiles += (Resolve-Path "$inputDir\init.lua").Path

# Concatenate the files into crnge-missionscript-dev.lua
$allFiles | Where-Object { Test-Path $_ } | ForEach-Object {
    Get-Content $_ | Out-File -Append -Encoding utf8 $outputFile
    
    Write-Host "Added $_" -ForegroundColor Green
}

# Get the current ISO timestamp and prepend with 'dev-'
$timestamp = Get-Date -Format "yyyy-MM-ddTHH:mm:ssZ"
$version = "dev-$timestamp"

# Replace {VERSION} with the version string
(Get-Content $outputFile) -replace '\{VERSION\}', $version | Set-Content $outputFile

Write-Host "crnge-missionscript build complete. Version: $version"