. $PSScriptRoot\..\Src\ConvertTo-Base64.ps1

Describe 'ConvertTo-Base64' {
    $encodedString = 'dGVzdCBzdHJpbmc='
    $decodedString = 'test string'

    It 'returns the expected decoded string given a Base64 encoded string' {
        ConvertTo-Base64 -String $decodedString | Should -Be $encodedString
        $decodedString | ConvertTo-Base64 | Should -Be $encodedString
    }
}
