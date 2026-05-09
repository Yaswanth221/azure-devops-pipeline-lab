Write-Host "Starting deployment..."

$deployPath = "C:\deploy-demo"

if (!(Test-Path $deployPath)) {
    New-Item -ItemType Directory -Path $deployPath
}

Copy-Item "$(Build.SourcesDirectory)\build\hello.py" $deployPath -Force

Write-Host "Deployment completed!"

python "$deployPath\hello.py"