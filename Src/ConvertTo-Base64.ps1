function ConvertTo-Base64 {
    <#
    .SYNOPSIS
    Converts a UTF string to Base64

    .DESCRIPTION
    Delegates to the underlying System.Text.Encoding and System.Convert classes
    to convert the UTF8 input string to a byte[] and then back to Base64

    .PARAMETER String
    Specifies the UTF8 string value

    .INPUTS
    System.String

    .OUTPUTS
    System.String

    .EXAMPLE
    PS> ConvertTo-Base64 -String 'test string'
    'dGVzdCBzdHJpbmc='

    .EXAMPLE
    PS> 'test string' | ConvertFrom-Base64
    'dGVzdCBzdHJpbmc='

    .LINK
    https://github.com/charliebillen/ConvertBase64Strings
    #>
    [CmdletBinding()]
    [OutputType([string])]
    param (
        [Parameter(Mandatory, ValueFromPipeline)]
        [string]
        $String
    )

    process {
        $bytes = [System.Text.Encoding]::UTF8.GetBytes($String)
        [Convert]::ToBase64String($bytes)
    }
}
