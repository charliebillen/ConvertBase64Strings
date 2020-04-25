function ConvertFrom-Base64 {
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
