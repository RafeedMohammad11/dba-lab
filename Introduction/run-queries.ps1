# PowerShell script to run SQL*Plus queries and capture output
# Usage: .\run-queries.ps1

param(
    [string]$LabNumber = "01",
    [string]$Username = "hr",
    [string]$Password = "hr"
)

$labPath = "c:\Users\RTEX\Documents\dba-lab-mit-8\Introduction"
$scriptName = "run-lab.sql"
$outputFile = "$labPath\outputs\lab-$LabNumber-output.txt"

Write-Host "================================" -ForegroundColor Cyan
Write-Host "Running Lab $LabNumber Queries" -ForegroundColor Cyan
Write-Host "================================" -ForegroundColor Cyan
Write-Host ""

# Navigate to lab directory
cd $labPath

# Run SQL*Plus with the script
sqlplus -s $Username/$Password @$scriptName

Write-Host ""
Write-Host "✓ Results saved to: $outputFile" -ForegroundColor Green
Write-Host "  Open file to review output"
