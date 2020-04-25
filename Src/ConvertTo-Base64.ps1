function ConvertTo-Base64 {
    [CmdletBinding()]
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
