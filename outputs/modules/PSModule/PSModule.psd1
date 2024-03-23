@{
    RootModule            = 'PSModule.psm1'
    ModuleVersion         = '1.0.3'
    CompatiblePSEditions  = 'Core'
    GUID                  = '4cbf3147-1f7a-4e59-904a-a2698fa11e11'
    Author                = 'PSModule'
    CompanyName           = 'PSModule'
    Copyright             = '(c) 2024 PSModule. All rights reserved.'
    Description           = 'Process a module from source code to published module.'
    PowerShellVersion     = '7.4'
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
        'classes/Function.ps1'
        'classes/PSModule.ps1'
    )
    TypesToProcess        = @(
        'classes/DirectoryInfo.Types.ps1xml'
        'classes/FileInfo.Types.ps1xml'
    )
    FormatsToProcess      = @(
        'classes/CultureInfo.Format.ps1xml'
        'classes/Mygciview.Format.ps1xml'
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
        'classes/CultureInfo.Format.ps1xml'
        'classes/DirectoryInfo.Types.ps1xml'
        'classes/FileInfo.Types.ps1xml'
        'classes/Function.ps1'
        'classes/Mygciview.Format.ps1xml'
        'classes/PSModule.ps1'
        'data/Config.psd1'
        'data/Settings.psd1'
        'init/initializer.ps1'
        'modules/OtherPSModule.psm1'
        'scripts/loader.ps1'
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
