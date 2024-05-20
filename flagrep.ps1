param (
    [string]$folderPath
)

if (-not $folderPath) {
    Write-Host "Usage: .\flagrep.ps1 <folderPath>"
    exit 1
}

$regexPatterns = @(
#    "^HTB{.{32}}$",
#    "^VL{\w+}$"
    "^(HTB|VL){(.{32}|\w+)}$"
)

Get-ChildItem -Path $folderPath -Recurse | ForEach-Object {
    $filePath = $_.FullName
    Get-Content -Path $filePath | ForEach-Object {
        $line = $_
        foreach ($pattern in $regexPatterns) {
            if ($line -match $pattern) {
                Write-Host "Found '$($Matches[0])' in $filePath"
            }
        }
    }
}
