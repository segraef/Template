#Requires -Version 7.0

<#
.SYNOPSIS
  Structured, timestamped logging for scripts in this repository.

.DESCRIPTION
  Provides a single Write-Log command that writes a timestamped, level-tagged
  line to the appropriate PowerShell stream. Import it from a script with:

      Import-Module "$PSScriptRoot/Write-Log.psm1" -Force

  This is a module (.psm1), not a script: importing it actually defines the
  Write-Log command, unlike importing a plain .ps1.

.NOTES
  Author: Sebastian Gräf
  Repo:   https://github.com/segraef/Template
#>

function Write-Log {
    <#
    .SYNOPSIS
      Write a timestamped, level-tagged log line.

    .PARAMETER Message
      The text to log. Accepts pipeline input.

    .PARAMETER Level
      Severity: Info (default), Warning, Error, or Verbose. Selects the stream.

    .PARAMETER ErrorRecord
      An ErrorRecord to append (message + collapsed stack trace). Forces Error level.

    .EXAMPLE
      Write-Log 'Starting deployment.'

    .EXAMPLE
      try { ... } catch { Write-Log -Message 'Deployment failed.' -ErrorRecord $_ }
    #>
    [CmdletBinding()]
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute(
        'PSAvoidUsingWriteHost', '',
        Justification = 'Info-level output is intended for the interactive console.')]
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute(
        'PSAvoidOverwritingBuiltInCmdlets', '',
        Justification = 'Write-Log is this repository deliberate logging helper, not the obscure built-in.')]
    param
    (
        [Parameter(Mandatory, Position = 0, ValueFromPipeline)]
        [ValidateNotNull()]
        [string]$Message,

        [Parameter()]
        [ValidateSet('Info', 'Warning', 'Error', 'Verbose')]
        [string]$Level = 'Info',

        [Parameter()]
        [System.Management.Automation.ErrorRecord]$ErrorRecord
    )

    process {
        $timestamp = Get-Date -Format 'yyyy-MM-dd HH:mm:ss'
        $line = "[$timestamp] $Message"

        if ($ErrorRecord) {
            $trace = ($ErrorRecord.ScriptStackTrace -split "`n") -join ' <- '
            Write-Error -Message "$line | $($ErrorRecord.Exception.Message) | $trace"
            return
        }

        switch ($Level) {
            'Warning' { Write-Warning $line }
            'Error' { Write-Error $line }
            'Verbose' { Write-Verbose $line }
            default { Write-Host $line }
        }
    }
}

Export-ModuleMember -Function Write-Log
