function ConvertFrom-Base64 {
    <#
    .SYNOPSIS
    Converts a Base64 encoded string to UTF8

    .DESCRIPTION
    Delegates to the underlying System.Text.Encoding and System.Convert classes
    to convert the Base64 input string to a byte[] and then back to a UTF8 string

    .PARAMETER String
    Specifies the Base64 string value

    .INPUTS
    System.String

    .OUTPUTS
    System.String

    .EXAMPLE
    PS> ConvertFrom-Base64 -String 'dGVzdCBzdHJpbmc='
    'test string'

    .EXAMPLE
    PS> 'dGVzdCBzdHJpbmc=' | ConvertFrom-Base64
    'test string'

    .LINK
    https://github.com/charliebillen/ConvertBase64Strings
    #>
    [CmdletBinding()]
    param (
        [Parameter(Mandatory, ValueFromPipeline)]
        [string]
        $String
    )

    process {
        $bytes = [Convert]::FromBase64String($String)
        [System.Text.Encoding]::UTF8.GetString($bytes)
    }
}
