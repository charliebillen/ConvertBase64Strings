. $PSScriptRoot\..\Src\ConvertFrom-Base64.ps1

Describe 'ConvertFrom-Base64' {
    $encodedString = 'dGVzdCBzdHJpbmc='
    $decodedString = 'test string'

    It 'returns the expected decoded string given a Base64 encoded string' {
        ConvertFrom-Base64 -String $encodedString | Should -Be $decodedString
        $encodedString | ConvertFrom-Base64 | Should -Be $decodedString
    }
}
