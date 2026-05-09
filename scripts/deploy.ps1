Write-Host "Starting deployment..."

$deployPath = "C:\deploy-demo"

if (!(Test-Path $deployPath)) {
    New-Item -ItemType Directory -Path $deployPath
}

Copy-Item "$env:BUILD_SOURCESDIRECTORY\app\hello.py" $deployPath -Force

Write-Host "Deployment completed!"

python "$deployPath\hello.py"