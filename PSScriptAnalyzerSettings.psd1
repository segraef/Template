@{
    # PSScriptAnalyzer configuration for this repository.
    # Invoke with: Invoke-ScriptAnalyzer -Path . -Recurse -Settings ./PSScriptAnalyzerSettings.psd1
    # Formatting can be applied with: Invoke-Formatter -Settings ./PSScriptAnalyzerSettings.psd1

    # Fail CI on errors and warnings; informational findings stay advisory.
    Severity = @('Error', 'Warning')

    IncludeDefaultRules = $true

    # Rules that are noisy for a personal automation repo, or handled elsewhere.
    ExcludeRules = @(
        'PSReviewUnusedParameter',
        # Files are UTF-8 without BOM (correct for PowerShell 7 / cross-platform).
        # This rule only matters for Windows PowerShell 5.1.
        'PSUseBOMForUnicodeEncodedFile'
    )

    Rules = @{
        # Enforce the house style (4-space indent, OTBS braces, aligned assignments).
        PSPlaceOpenBrace = @{
            Enable = $true
            OnSameLine = $true
            NewLineAfter = $true
        }
        PSPlaceCloseBrace = @{
            Enable = $true
            NewLineAfter = $true
        }
        PSUseConsistentIndentation = @{
            Enable = $true
            Kind = 'space'
            IndentationSize = 4
        }
        PSUseConsistentWhitespace = @{
            Enable = $true
        }
        PSUseCorrectCasing = @{
            Enable = $true
        }
        # Every script/function must carry comment-based help.
        PSProvideCommentHelp = @{
            Enable = $true
            ExportedOnly = $false
            Placement = 'before'
        }
    }
}
