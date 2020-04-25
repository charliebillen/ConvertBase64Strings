task analyse {
    $results = Invoke-ScriptAnalyzer -Path $PSScriptRoot -Recurse
    if ($results) {
        $results | Format-Table
        Write-Error 'Anaylse task failed'
    }
}

task test {
    $results = Invoke-Pester -Script $PSScriptRoot/Tests -PassThru
    if ($results.FailedCount -gt 0) {
        $results | Format-Table
        Write-Error 'Test task failed'
    }
}

task default -depends analyse, test
