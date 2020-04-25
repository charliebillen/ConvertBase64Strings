if (!(Get-Module -Name PSScriptAnalyzer -ListAvailable)) { Install-Module -Name PSScriptAnalyzer -Scope CurrentUser -Force }
if (!(Get-Module -Name Pester -ListAvailable)) { Install-Module -Name Pester -Scope CurrentUser -Force }
if (!(Get-Module -Name psake -ListAvailable)) { Install-Module -Name psake -Scope CurrentUser -Force }

Invoke-psake -buildFile $PSScriptRoot\PsakeTasks.ps1

exit (!$psake.build_success)