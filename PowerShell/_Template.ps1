#Requires -Version 7.0

<#
.SYNOPSIS
  One-line summary of what this script does.

.DESCRIPTION
  Longer description: what it automates, its prerequisites (modules, CLIs,
  authentication) and any side effects it has on the environment.

.PARAMETER Name
  Describe each parameter. Repeat this section for every parameter.

.INPUTS
  None. Or describe the objects accepted from the pipeline.

.OUTPUTS
  None. Or describe the objects / files produced.

.EXAMPLE
  ./Verb-Noun.ps1 -Name 'value'
  Describe what this example does.

.NOTES
  Author: Sebastian Gräf
  Repo:   https://github.com/segraef/Template
  Version history is tracked in git, not in this header.
#>

[CmdletBinding(SupportsShouldProcess)]
param
(
    [Parameter(Mandatory)]
    [ValidateNotNullOrEmpty()]
    [string]$Name,

    [Parameter()]
    [securestring]$Secret
)

#region Initialisation
Set-StrictMode -Version Latest
$ErrorActionPreference = 'Stop'

Import-Module "$PSScriptRoot/Write-Log.psm1" -Force
#endregion

#region Functions
function Invoke-Example {
    [CmdletBinding(SupportsShouldProcess)]
    param
    (
        [Parameter(Mandatory)]
        [ValidateNotNullOrEmpty()]
        [string]$Name
    )

    Write-Log "Processing '$Name'."

    if ($PSCmdlet.ShouldProcess($Name, 'Process')) {
        try {
            Write-Output "Hello, $Name."
        }
        catch {
            Write-Log -Message "Failed to process '$Name'." -ErrorRecord $_
            throw
        }
    }
}
#endregion

#region Execution
Write-Log "Executing $($MyInvocation.MyCommand.Name)."
Invoke-Example -Name $Name
Write-Log "Finished $($MyInvocation.MyCommand.Name)."
#endregion
