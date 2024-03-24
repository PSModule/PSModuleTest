@{
    RootModule            = 'PSModule.psm1'
    ModuleVersion         = '1.0.3'
    CompatiblePSEditions  = @(
        'Core'
        'Desktop'
    )
    GUID                  = '4cbf3147-1f7a-4e59-904a-a2698fa11e11'
    Author                = 'PSModule'
    CompanyName           = 'PSModule'
    Copyright             = '(c) 2024 PSModule. All rights reserved.'
    Description           = 'Process a module from source code to published module.'
    PowerShellVersion     = '5.1'
    ProcessorArchitecture = 'None'
    RequiredModules       = @(
        @{
            ModuleName    = 'PSSemVer'
            ModuleVersion = '1.0'
        }
        'Utilities'
    )
    RequiredAssemblies    = 'assemblies/LsonLib.dll'
    ScriptsToProcess      = @(
        'scripts/loader.ps1'
    )
    TypesToProcess        = @(
        'types/DirectoryInfo.Types.ps1xml'
        'types/FileInfo.Types.ps1xml'
    )
    FormatsToProcess      = @(
        'formats/CultureInfo.Format.ps1xml'
        'formats/Mygciview.Format.ps1xml'
    )
    NestedModules         = @(
        'modules/OtherPSModule.psm1'
    )
    FunctionsToExport     = @(
        'Get-PSModule'
        'New-PSModule'
        'Set-PSModule'
        'Test-PSModule'
    )
    CmdletsToExport       = @()
    VariablesToExport     = @()
    AliasesToExport       = '*'
    ModuleList            = @(
        'modules/OtherPSModule.psm1'
    )
    FileList              = @(
        'PSModule.psd1'
        'PSModule.psm1'
        'assemblies/LsonLib.dll'
        'formats/CultureInfo.Format.ps1xml'
        'formats/Mygciview.Format.ps1xml'
        'data/Config.psd1'
        'data/Settings.psd1'
        'modules/OtherPSModule.psm1'
        'scripts/loader.ps1'
        'types/DirectoryInfo.Types.ps1xml'
        'types/FileInfo.Types.ps1xml'
    )
    PrivateData           = @{
        PSData = @{
            Tags       = @(
                'workflow'
                'powershell'
                'powershell-module'
                'PSEdition_Core'
            )
            LicenseUri = 'https://github.com/PSModule/Process-PSModule/blob/main/LICENSE'
            ProjectUri = 'https://github.com/PSModule/Process-PSModule'
            IconUri    = 'https://raw.githubusercontent.com/PSModule/Process-PSModule/main/icon/icon.png'
        }
    }
}
