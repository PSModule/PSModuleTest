@{
    RootModule = 'PSModule.psm1'
    ModuleVersion = '0.0.1'
    CompatiblePSEditions = @(
        'Core'
        'Desktop'
    )
    GUID = '9d5a5d77-7377-4306-ac5b-6c5e63d465c9'
    Author = 'marst'
    CompanyName = 'Unknown'
    Copyright = '(c) 2024 . All rights reserved.'
    Description = 'A workflow for the PSModule process, stitching together the Initialize, Build, Test, and Publish actions to create a complete CI/CD pipeline for PowerShell modules. The workflow is used by all PowerShell modules in the PSModule organization.'
    PowerShellVersion = '7.0'
    ProcessorArchitecture = 'None'
    RequiredAssemblies = 'assemblies\LsonLib.dll'
    ScriptsToProcess = @(
        'scripts\loader.ps1'
        'classes\Function.ps1'
        'classes\PSModule.ps1'
    )
    TypesToProcess = @(
        'classes\DirectoryInfo.Types.ps1xml'
        'classes\FileInfo.Types.ps1xml'
    )
    FormatsToProcess = @(
        'classes\CultureInfo.Format.ps1xml'
        'classes\Mygciview.Format.ps1xml'
    )
    NestedModules = @(
        'modules\OtherPSModule.psm1'
    )
    FunctionsToExport = @(
        'Get-PSModule'
        'New-PSModule'
        'Set-PSModule'
        'Test-PSModule'
    )
    CmdletsToExport = @()
    VariablesToExport = @()
    AliasesToExport = '*'
    ModuleList = @(
        'modules\OtherPSModule.psm1'
    )
    FileList = @(
        'PSModule.psd1'
        'PSModule.psm1'
        'assemblies\LsonLib.dll'
        'classes\CultureInfo.Format.ps1xml'
        'classes\DirectoryInfo.Types.ps1xml'
        'classes\FileInfo.Types.ps1xml'
        'classes\Function.ps1'
        'classes\Mygciview.Format.ps1xml'
        'classes\PSModule.ps1'
        'data\Config.psd1'
        'data\Settings.psd1'
        'init\initializer.ps1'
        'modules\OtherPSModule.psm1'
        'scripts\loader.ps1'
    )
    PrivateData = @{
        PSData = @{
            Tags = @(
                'workflow'
                'powershell'
                'PSEdition_Desktop'
                'PSEdition_Core'
            )
            LicenseUri = 'https://github.com///blob/main/LICENSE'
            ProjectUri = 'https://github.com/PSModule/Process-PSModule'
            IconUri = 'https://raw.githubusercontent.com///main/icon/icon.png'
        }
    }
}
