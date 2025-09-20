# Specify the version of the CRNGE
$version = "2.00.0033"

# Get the current ISO timestamp and prepend with 'dev-'
$timestamp = Get-Date -Format "yyyy-MM-dd THH:mm:ssZ"
$build = "2.00.0031-$timestamp"

# Specify the input directory
$inputDir = Resolve-Path "..\miz_builders"

$outputDir = Resolve-Path "..\miz files"

# Specify the input .miz file
$inputMiz = Join-Path (Resolve-Path "..\") "miz_builders\dev-crnge.miz"

# Specify the output file for the daytime version
$outputDay = Join-Path (Resolve-Path "..\") ("miz_builders\crnge-"+ $version + "-day.miz")

# Specify the output file for the night version
$outputNight = Join-Path (Resolve-Path "..\") ("miz_builders\crnge-"+ $version + "-night.miz")

# Specify the output file for the weather version
$outputWeather = Join-Path (Resolve-Path "..\") ("miz_builders\crnge-"+ $version + "-weather.zip")

# Specify the output file for the winter version
$outputWinter = Join-Path (Resolve-Path "..\") ("miz_builders\crnge-"+ $version + "-winter.zip")

# Specify the output file for the day (no music) version
$outputDayNoMusic = Join-Path (Resolve-Path "..\") ("miz_builders\crnge-NM-"+ $version + "-day.zip")

# Specify the output file for the night (no music) version
$outputNightNoMusic = Join-Path (Resolve-Path "..\") ("miz_builders\crnge-NM"+ $version + "-night.zip")

# Specify the output file for the weather (no music) version
$outputWeatherNoMusic = Join-Path (Resolve-Path "..\") ("miz_builders\crnge-NM"+ $version + "-weather.zip")

# Specify the output file for the weather (no music) version
$outputWinterNoMusic = Join-Path (Resolve-Path "..\") ("miz_builders\crnge-NM"+ $version + "-winter.zip")

# Specify the mission file inside of the folder
$missionFile = Join-Path (Resolve-Path "..\") "miz_builders\dev-crnge\mission"

# mission file changes for the day mission, mainly just file path updates
# Format:
# Old String = New String

$replacementsDay = @{
    '["A-4E-C"] = "A-4E-C",' = '--'
    '[10] = "a_load_mission(\"crnge-day.miz\"); mission.trig.func[10]=nil;",'  = ('[10] = "a_load_mission(\"crnge-'+ $version + '-day.miz\"); mission.trig.func[10]=nil;",')
    '[11] = "a_load_mission(\"crnge-night.miz\"); mission.trig.func[11]=nil;",' = ('[11] = "a_load_mission(\"crnge-'+ $version + '-night.miz\"); mission.trig.func[11]=nil;",')
    '[12] = "a_load_mission(\"crnge-weather.miz\"); mission.trig.func[12]=nil;",' = ('[12] = "a_load_mission(\"crnge-'+ $version + '-weather.miz\"); mission.trig.func[12]=nil;",')
    '[13] = "a_load_mission(\"crnge-winter.miz\"); mission.trig.func[13]=nil;",' = ('[13] = "a_load_mission(\"crnge-'+ $version +'-winter.miz\"); mission.trig.func[13]=nil;",')
}

# mission file changes to turn it into the night version, updates file paths in trigger, weather, time

$replacementsNight = @{
    '["A-4E-C"] = "A-4E-C",' = '--'
    '[10] = "a_load_mission(\"crnge-day.miz\"); mission.trig.func[10]=nil;",'  = ('[10] = "a_load_mission(\"crnge-'+ $version + '-night.miz\"); mission.trig.func[10]=nil;",')
    '[11] = "a_load_mission(\"crnge-night.miz\"); mission.trig.func[11]=nil;",' = ('[11] = "a_load_mission(\"crnge-'+ $version + '-day.miz\"); mission.trig.func[11]=nil;",')
    '[12] = "a_load_mission(\"crnge-weather.miz\"); mission.trig.func[12]=nil;",' = ('[12] = "a_load_mission(\"crnge-'+ $version + '-weather.miz\"); mission.trig.func[12]=nil;",')
    '[13] = "a_load_mission(\"crnge-winter.miz\"); mission.trig.func[13]=nil;",' = ('[13] = "a_load_mission(\"crnge-'+ $version +'-winter.miz\"); mission.trig.func[13]=nil;",')
    '["preset"] = "Preset4",' = '["preset"] = "Preset1",'
    '["temperature"] = 20,' = '["temperature"] = 15,'
    '["qnh"] = 760,' = '["qnh"] = 760.222,'
    '["start_time"] = 21600,' = '["start_time"] = 79200,'
}

# Adds necessary assemblies into Powershell
foreach ($asm in 'System.IO.Compression', 'System.IO.Compression.FileSystem') {
    if (-not ([System.AppDomain]::CurrentDomain.GetAssemblies() | Where-Object { $_.GetName().Name -eq $asm })) {
        Add-Type -AssemblyName $asm
    }
}

# If the output day file exists, delete it
if (Test-Path $outputDay) {
    Remove-Item $outputDay
}

# If the output night file exists, delete it
if (Test-Path $outputNight) {
    Remove-Item $outputNight
}

<#

# If the output weather file exists, delete it
if (Test-Path $outputWeather) {
    Remove-Item $outputWeather
}

# If the output winter file exists, delete it
if (Test-Path $compressFile) {
    Remove-Item $compressFile
}
#>

# Copies the file and renames it to day
$copyParams = @{
    Path        = $inputMiz
    Destination = $outputDay
}
Copy-Item @copyParams


# Copies the file and renames it to night
$copyParams = @{
    Path        = $inputMiz
    Destination = $outputNight
}
Copy-Item @copyParams

<#

# Copies the file and renames it to weather
$copyParams = @{
    Path        = $inputMiz
    Destination = $outputWeather
}
Copy-Item @copyParams

# Copies the file and renames it to day (no music)
$copyParams = @{
    Path        = $inputMiz
    Destination = $outputDayNoMusic
}
Copy-Item @copyParams

# Copies the file and renames it to night (no music)
$copyParams = @{
    Path        = $inputMiz
    Destination = $outputNightNoMusic
}
Copy-Item @copyParams

# Copies the file and renames it to weather (no music)
$copyParams = @{
    Path        = $inputMiz
    Destination = $outputWeatherNoMusic
}
Copy-Item @copyParams

# Copies the file and renames it to winter (no music)
$copyParams = @{
    Path        = $inputMiz
    Destination = $outputWinterNoMusic
}
Copy-Item @copyParams
#>

# Edit day .miz file

try {
    # Open zip in Update mode
    $zip = [System.IO.Compression.ZipFile]::Open($outputDay, [System.IO.Compression.ZipArchiveMode]::Update)

    # Get the file inside the ZIP
    $entry = $zip.GetEntry('mission')
    if (-not $entry) {
        throw "The file 'mission' was not found inside the ZIP archive."
    }

    # Read the current content
    $reader = New-Object System.IO.StreamReader($entry.Open())
    $content = $reader.ReadToEnd()
    $reader.Close()

    # Apply each replacement (literal match)
    foreach ($search in $replacementsDay.Keys) {
        if ($content.Contains($search)) {
            $content = $content.Replace($search, $replacementsDay[$search])
        }
        else {
            Write-Warning "Search string not found: $search"
        }
    }

    # Replace the file in the ZIP
    $entry.Delete()
    $newEntry = $zip.CreateEntry('mission')
    $writer = New-Object System.IO.StreamWriter($newEntry.Open())
    $writer.Write($content)
    $writer.Close()

    Write-Host "Successfully updated 'mission' in '$outputDay' with multiple replacements."
}
catch {
    Write-Host "Error processing zip file '$outputDay': $($_.Exception.Message)" -ForegroundColor Red
}
finally {
    if ($zip) { $zip.Dispose() }
}

# Edit night file

try {
    # Open zip in Update mode
    $zip = [System.IO.Compression.ZipFile]::Open($outputNight, [System.IO.Compression.ZipArchiveMode]::Update)

    # Get the file inside the ZIP
    $entry = $zip.GetEntry('mission')
    if (-not $entry) {
        throw "The file 'mission' was not found inside the ZIP archive."
    }

    # Read the current content
    $reader = New-Object System.IO.StreamReader($entry.Open())
    $content = $reader.ReadToEnd()
    $reader.Close()

    # Apply each replacement (literal match)
    foreach ($search in $replacementsNight.Keys) {
        if ($content.Contains($search)) {
            $content = $content.Replace($search, $replacementsNight[$search])
        }
        else {
            Write-Warning "Search string not found: $search"
        }
    }

    # Replace the file in the ZIP
    $entry.Delete()
    $newEntry = $zip.CreateEntry('mission')
    $writer = New-Object System.IO.StreamWriter($newEntry.Open())
    $writer.Write($content)
    $writer.Close()

    Write-Host "Successfully updated 'mission' in '$outputNight' with multiple replacements."
}
catch {
    Write-Host "Error processing zip file '$outputNight': $($_.Exception.Message)" -ForegroundColor Red
}
finally {
    if ($zip) { $zip.Dispose() }
}








<#
try {
    # Open zip in Update mode
    $zip = [System.IO.Compression.ZipFile]::Open($outputDay, [System.IO.Compression.ZipArchiveMode]::Update)

    # Try to get the target entry
    $entry = $zip.GetEntry("mission")
    if (-not $entry) {
        throw "File 'mission' was not found inside the zip archive."
    }

    # Read existing content
    try {
        $reader = New-Object System.IO.StreamReader($entry.Open())
        $content = $reader.ReadToEnd()
        $reader.Close()
    }
    catch {
        throw "Failed to read file 'mission' from zip: $($_.Exception.Message)"
    }

    # Replace A-4 dependence
    if ($content -notmatch [regex]::Escape($A4E)) {
        throw "The search string '$A4E' was not found in 'mission'."
    }

    $newContent = $content.Replace($A4E, $commentout)




    # Replace the entry with the updated content
    try {
        $entry.Delete()
        $newEntry = $zip.CreateEntry('mission')
        $writer = New-Object System.IO.StreamWriter($newEntry.Open())
        $writer.Write($newContent)
        $writer.Close()
    }
    catch {
        throw "Failed to write updated content to \'mission\': $($_.Exception.Message)"
    }
}
catch {
    Write-Error "Error processing zip file '$outputDay': $($_.Exception.Message)"
}
finally {
    if ($zip) {
        $zip.Dispose()
    }
}

#>

<#
# Edit day 

# Load miz file 
try { $null = [IO.Compression.ZipFile] }
catch { [System.Reflection.Assembly]::LoadWithPartialName('System.IO.Compression.FileSystem') }

# Open miz file 
try { $fileZip = [System.IO.Compression.ZipFile]::Open( $_, 'Update' ) }
catch { throw "Another process has locked the '$_' file." }

# Find the mission file within the miz file

$fileZip.Entries | Where-Object { $_.FullName -EQ 'mission' }


#read the contents of mission file to $mission_tmp 
$desiredFile = [System.IO.StreamReader]($fileZip.Entries | Where-Object { $_.FullName -EQ 'mission' }).Open()
$mission_tmp = $desiredFile.ReadToEnd()
$desiredFile.Close()
$desiredFile.Dispose()

# replace aircraft type in $mission_tmp

$mission_tmp = $mission_tmp -replace $ORIG_AIRCRAFT, $NEW_AIRCRAFT

# Re-open the file this time with streamwriter
$desiredFile = [System.IO.StreamWriter]($fileZip.Entries | Where-Object { $_.FullName -EQ 'mission' }).Open()
$desiredFile.BaseStream.SetLength(0)

# Insert the $mission_tmp to the mission file and close
$desiredFile.Write($mission_tmp -join "`r`n")
$desiredFile.Flush()
$desiredFile.Close()

# Write the changes and close the zip file
$fileZip.Dispose()

}



# Comments out '["A-4E-C"] = "A-4E-C",' in the mission file
(Get-Content $missionFile) -replace '\["A-4E-C\"\] = "A-4E-C\",', "--" | Set-Content $missionFile

# Replace {BUILD} with the version string
(Get-Content $outputFile) -replace '\{BUILD\}', $build | Set-Content $outputFile
#>

Write-Host "Script complete."