# Simulate one Source/ example on the STM32F407 Discovery Renode platform.
#
# Usage:
#   simulate\scripts\run.ps1 <project-dir-under-Source>
#
# Example:
#   simulate\scripts\run.ps1 chapter9_example1
param(
    [Parameter(Mandatory = $true)]
    [string]$Project
)

$Root = Resolve-Path (Join-Path $PSScriptRoot "..\..")
$Elf = Join-Path $Root "Source\$Project\Debug\$Project.elf"

if (-not (Test-Path $Elf)) {
    Write-Error "ELF not found: $Elf`nBuild it first: cd Source\$Project\Debug ; make all`n(If the project's artifact name differs from its folder name - e.g. UinitTest - pass the .elf path directly to renode instead, see simulate\README.md)"
    exit 1
}

Push-Location $Root
try {
    renode -e "`$bin=@Source/$Project/Debug/$Project.elf; include @simulate/renode/run_example.resc"
} finally {
    Pop-Location
}
