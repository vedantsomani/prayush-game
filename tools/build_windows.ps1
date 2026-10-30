$ErrorActionPreference = 'Stop'
$root = Split-Path $PSScriptRoot -Parent
Set-Location $root
if (!(Test-Path '.build-env/Scripts/python.exe')) { python -m venv .build-env }
& .build-env/Scripts/python.exe -m pip install pyinstaller==6.22.3
if ($LASTEXITCODE) { throw 'Could not install build tools' }
$asset = (Resolve-Path desktop/payload.zip).Path
$icon = (Resolve-Path desktop/assets/arena.ico).Path
& .build-env/Scripts/python.exe -m PyInstaller --noconfirm --onefile --windowed --name FOSS-BU-Arena --icon $icon --add-data "$asset;." --distpath dist --workpath build --specpath desktop desktop/launcher.py
if ($LASTEXITCODE) { throw 'Build failed' }

