[Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSAvoidLongLines', '', Justification = 'Contains long links.')]
[CmdletBinding()]
param()

$scriptName = $MyInvocation.MyCommand.Name
Write-Verbose "[$scriptName] Importing module"

#region - Data import
Write-Verbose "[$scriptName] - [data] - Processing folder"
$dataFolder = (Join-Path $PSScriptRoot 'data')
Write-Verbose "[$scriptName] - [data] - [$dataFolder]"
Get-ChildItem -Path "$dataFolder" -Recurse -Force -Include '*.psd1' -ErrorAction SilentlyContinue | ForEach-Object {
    Write-Verbose "[$scriptName] - [data] - [$($_.Name)] - Importing"
    New-Variable -Name $_.BaseName -Value (Import-PowerShellDataFile -Path $_.FullName) -Force
    Write-Verbose "[$scriptName] - [data] - [$($_.Name)] - Done"
}

Write-Verbose "[$scriptName] - [data] - Done"
#endregion - Data import

#region - From \private
Write-Verbose "[$scriptName] - [\private] - Processing folder"

#region - From \private\Get-InternalPSModule.ps1
Write-Verbose "[$scriptName] - [\private\Get-InternalPSModule.ps1] - Importing"

Function Get-InternalPSModule {
    <#
        .SYNOPSIS
        Performs tests on a module.

        .EXAMPLE
        Test-PSModule -Name 'World'

        "Hello, World!"
    #>
    [CmdletBinding()]
    param (
        # Name of the person to greet.
        [Parameter(Mandatory)]
        [string] $Name
    )
    Write-Output "Hello, $Name!"
}

Write-Verbose "[$scriptName] - [\private\Get-InternalPSModule.ps1] - Done"
#endregion - From \private\Get-InternalPSModule.ps1
#region - From \private\Set-InternalPSModule.ps1
Write-Verbose "[$scriptName] - [\private\Set-InternalPSModule.ps1] - Importing"

Function Set-InternalPSModule {
    <#
        .SYNOPSIS
        Performs tests on a module.

        .EXAMPLE
        Test-PSModule -Name 'World'

        "Hello, World!"
    #>
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute(
        'PSUseShouldProcessForStateChangingFunctions', '', Scope = 'Function',
        Justification = 'Reason for suppressing'
    )]
    [CmdletBinding()]
    param (
        # Name of the person to greet.
        [Parameter(Mandatory)]
        [string] $Name
    )
    Write-Output "Hello, $Name!"
}

Write-Verbose "[$scriptName] - [\private\Set-InternalPSModule.ps1] - Done"
#endregion - From \private\Set-InternalPSModule.ps1

Write-Verbose "[$scriptName] - [\private] - Done"
#endregion - From \private

#region - From \public
Write-Verbose "[$scriptName] - [\public] - Processing folder"

#region - From \public\Get-PSModule.ps1
Write-Verbose "[$scriptName] - [\public\Get-PSModule.ps1] - Importing"

Function Get-PSModule {
    <#
        .SYNOPSIS
        Performs tests on a module.

        .EXAMPLE
        Test-PSModule -Name 'World'

        "Hello, World!"
    #>
    [CmdletBinding()]
    param (
        # Name of the person to greet.
        [Parameter(Mandatory)]
        [string] $Name
    )
    Write-Output "Hello, $Name!"
}

Write-Verbose "[$scriptName] - [\public\Get-PSModule.ps1] - Done"
#endregion - From \public\Get-PSModule.ps1
#region - From \public\New-PSModule.ps1
Write-Verbose "[$scriptName] - [\public\New-PSModule.ps1] - Importing"

Function New-PSModule {
    <#
        .SYNOPSIS
        Performs tests on a module.

        .EXAMPLE
        Test-PSModule -Name 'World'

        "Hello, World!"
    #>
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute(
        'PSUseShouldProcessForStateChangingFunctions', '', Scope = 'Function',
        Justification = 'Reason for suppressing'
    )]
    [CmdletBinding()]
    param (
        # Name of the person to greet.
        [Parameter(Mandatory)]
        [string] $Name
    )
    Write-Output "Hello, $Name!"
}

Write-Verbose "[$scriptName] - [\public\New-PSModule.ps1] - Done"
#endregion - From \public\New-PSModule.ps1
#region - From \public\Set-PSModule.ps1
Write-Verbose "[$scriptName] - [\public\Set-PSModule.ps1] - Importing"

Function Set-PSModule {
    <#
        .SYNOPSIS
        Performs tests on a module.

        .EXAMPLE
        Test-PSModule -Name 'World'

        "Hello, World!"
    #>
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute(
        'PSUseShouldProcessForStateChangingFunctions', '', Scope = 'Function',
        Justification = 'Reason for suppressing'
    )]
    [CmdletBinding()]
    param (
        # Name of the person to greet.
        [Parameter(Mandatory)]
        [string] $Name
    )
    Write-Output "Hello, $Name!"
}

Write-Verbose "[$scriptName] - [\public\Set-PSModule.ps1] - Done"
#endregion - From \public\Set-PSModule.ps1
#region - From \public\Test-PSModule.ps1
Write-Verbose "[$scriptName] - [\public\Test-PSModule.ps1] - Importing"

Function Test-PSModule {
    <#
        .SYNOPSIS
        Performs tests on a module.

        .EXAMPLE
        Test-PSModule -Name 'World'

        "Hello, World!"
    #>
    [CmdletBinding()]
    param (
        # Name of the person to greet.
        [Parameter(Mandatory)]
        [string] $Name
    )
    Write-Output "Hello, $Name!"
}

Write-Verbose "[$scriptName] - [\public\Test-PSModule.ps1] - Done"
#endregion - From \public\Test-PSModule.ps1

Write-Verbose "[$scriptName] - [\public] - Done"
#endregion - From \public

#region - From \finally.ps1
Write-Verbose "[$scriptName] - [\finally.ps1] - Importing"

Write-Verbose '------------------------------' -Verbose
Write-Verbose '---  THIS IS A LAST LOADER ---' -Verbose
Write-Verbose '------------------------------' -Verbose
Write-Verbose "[$scriptName] - [\finally.ps1] - Done"
#endregion - From \finally.ps1

$exports = @{
    Alias    = '*'
    Cmdlet   = ''
    Function = @(
        'Get-PSModule'
        'New-PSModule'
        'Set-PSModule'
        'Test-PSModule'
    )
    Variable = ''
}
Export-ModuleMember @exports
