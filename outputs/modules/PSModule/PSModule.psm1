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

Write-Verbose '-------------------------------' -Verbose
Write-Verbose '---  THIS IS AN INITIALIZER ---' -Verbose
Write-Verbose '-------------------------------' -Verbose


Class Function {
    [string] $Name
    [string] $Version

    Function([string] $Name, [string] $Version) {
        $this.Name = $Name
        $this.Version = $Version
    }
}

Class PSModule {
    [string] $Name
    [string] $Version
    [hashtable] $Functions

    PSModule([string] $Name, [string] $Version, [hashtable] $Functions) {
        $this.Name = $Name
        $this.Version = $Version
        $this.Functions = $Functions
    }
}

#region - From \private
Write-Verbose "[$scriptName] - [\private] - Processing folder"

#region - From \private\Get-InternalPSModule.ps1
Write-Verbose "[$scriptName] - [\private\Get-InternalPSModule.ps1] - Importing"

Function Get-InternalPSModule {
    <#
        .SYNOPSIS
        Performs tests on a module.

        .EXAMPLE
        Get-InternalPSModule -Name 'World'

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
        Set-InternalPSModule -Name 'World'

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

#region - From \public\Get-PSModuleTest.ps1
Write-Verbose "[$scriptName] - [\public\Get-PSModuleTest.ps1] - Importing"

Function Get-PSModuleTest {
    <#
        .SYNOPSIS
        Performs tests on a module.

        .EXAMPLE
        Get-PSModuleTest -Name 'World'

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

Write-Verbose "[$scriptName] - [\public\Get-PSModuleTest.ps1] - Done"
#endregion - From \public\Get-PSModuleTest.ps1
#region - From \public\New-PSModuleTest.ps1
Write-Verbose "[$scriptName] - [\public\New-PSModuleTest.ps1] - Importing"

Function New-PSModuleTest {
    <#
        .SYNOPSIS
        Performs tests on a module.

        .EXAMPLE
        New-PSModuleTest -Name 'World'

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

Write-Verbose "[$scriptName] - [\public\New-PSModuleTest.ps1] - Done"
#endregion - From \public\New-PSModuleTest.ps1
#region - From \public\Set-PSModuleTest.ps1
Write-Verbose "[$scriptName] - [\public\Set-PSModuleTest.ps1] - Importing"

Function Set-PSModuleTest {
    <#
        .SYNOPSIS
        Performs tests on a module.

        .EXAMPLE
        Set-PSModuleTest -Name 'World'

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

Write-Verbose "[$scriptName] - [\public\Set-PSModuleTest.ps1] - Done"
#endregion - From \public\Set-PSModuleTest.ps1
#region - From \public\Test-PSModuleTest.ps1
Write-Verbose "[$scriptName] - [\public\Test-PSModuleTest.ps1] - Importing"

Function Test-PSModuleTest {
    <#
        .SYNOPSIS
        Performs tests on a module.

        .EXAMPLE
        Test-PSModuleTest -Name 'World'

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

Write-Verbose "[$scriptName] - [\public\Test-PSModuleTest.ps1] - Done"
#endregion - From \public\Test-PSModuleTest.ps1

Write-Verbose "[$scriptName] - [\public] - Done"
#endregion - From \public

#region - From \finally.ps1
Write-Verbose "[$scriptName] - [\finally.ps1] - Importing"

Write-Verbose '------------------------------' -Verbose
Write-Verbose '---  THIS IS A LAST LOADER ---' -Verbose
Write-Verbose '------------------------------' -Verbose

# Define the types to export with type accelerators.
$ExportableTypes = @(
    [Function]
    [PSModule]
)

# Get the internal TypeAccelerators class to use its static methods.
$TypeAcceleratorsClass = [psobject].Assembly.GetType(
    'System.Management.Automation.TypeAccelerators'
)
# Ensure none of the types would clobber an existing type accelerator.
# If a type accelerator with the same name exists, throw an exception.
$ExistingTypeAccelerators = $TypeAcceleratorsClass::Get
foreach ($Type in $ExportableTypes) {
    if ($Type.FullName -in $ExistingTypeAccelerators.Keys) {
        $Message = @(
            "Unable to register type accelerator '$($Type.FullName)'"
            'Accelerator already exists.'
        ) -join ' - '

        throw [System.Management.Automation.ErrorRecord]::new(
            [System.InvalidOperationException]::new($Message),
            'TypeAcceleratorAlreadyExists',
            [System.Management.Automation.ErrorCategory]::InvalidOperation,
            $Type.FullName
        )
    }
}
# Add type accelerators for every exportable type.
foreach ($Type in $ExportableTypes) {
    $TypeAcceleratorsClass::Add($Type.FullName, $Type)
}
# Remove type accelerators when the module is removed.
$MyInvocation.MyCommand.ScriptBlock.Module.OnRemove = {
    foreach ($Type in $ExportableTypes) {
        $TypeAcceleratorsClass::Remove($Type.FullName)
    }
}.GetNewClosure()

Write-Verbose "[$scriptName] - [\finally.ps1] - Done"
#endregion - From \finally.ps1

$exports = @{
    Alias    = '*'
    Cmdlet   = ''
    Function = @(
        'Get-PSModuleTest'
        'New-PSModuleTest'
        'Set-PSModuleTest'
        'Test-PSModuleTest'
    )
    Variable = ''
}
Export-ModuleMember @exports
