# Convert Base64 Strings

![CI](https://github.com/charliebillen/ConvertBase64Strings/workflows/CI/badge.svg)

This module provides two small advanced functions that convert UTF8 strings to and from Base64 encoding.

## ConvertFrom-Base64
```
NAME
    ConvertFrom-Base64
    
SYNOPSIS
    Converts a Base64 encoded string to UTF8
    
    
SYNTAX
    ConvertFrom-Base64 [-String] <String> [<CommonParameters>]
    
    
DESCRIPTION
    Delegates to the underlying System.Text.Encoding and System.Convert classes
    to convert the Base64 input string to a byte[] and then back to a UTF8 string
```

## ConvertTo-Base64
```
NAME
    ConvertTo-Base64
    
SYNOPSIS
    Converts a UTF string to Base64
    
    
SYNTAX
    ConvertTo-Base64 [-String] <String> [<CommonParameters>]
    
    
DESCRIPTION
    Delegates to the underlying System.Text.Encoding and System.Convert classes
    to convert the UTF8 input string to a byte[] and then back to Base64
```

## Installation
```
Install-Module -Name ConvertBase64Strings
```

## Progress
- [x] Build process
- [x] Release process
- [x] Documentation
- [ ] Script signing
