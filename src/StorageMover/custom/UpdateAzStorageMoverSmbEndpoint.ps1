
# ----------------------------------------------------------------------------------
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# Code generated by Microsoft (R) AutoRest Code Generator.Changes may cause incorrect behavior and will be lost if the code
# is regenerated.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Updates properties for a SMB endpoint resource.
Properties not specified in the request body will be unchanged.
.Description
Updates properties for a SMB endpoint resource.
Properties not specified in the request body will be unchanged.
.Example
Update-AzStorageMoverSmbEndpoint -Name myendpoint -ResourceGroupName myresourcegroup -StorageMoverName mystoragemover -CredentialsUsernameUri "https://examples-azureKeyVault.vault.azure.net/secrets/username2" -CredentialsPasswordUri "https://examples-azureKeyVault.vault.azure.net/secrets/password2" -Description "update endpoint"

.Inputs
Microsoft.Azure.PowerShell.Cmdlets.StorageMover.Models.Api20231001.IEndpointBaseUpdateParameters
.Inputs
Microsoft.Azure.PowerShell.Cmdlets.StorageMover.Models.IStorageMoverIdentity
.Outputs
Microsoft.Azure.PowerShell.Cmdlets.StorageMover.Models.Api20231001.IEndpoint
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

ENDPOINT<IEndpointBaseUpdateParameters>: The endpoint resource.
  [Property<IEndpointBaseUpdateProperties>]: The endpoint resource, which contains information about file sources and targets.
    [Description<String>]: A description for the endpoint.

INPUTOBJECT<IStorageMoverIdentity>: Identity Parameter
  [AgentName<String>]: The name of the agent resource.
  [EndpointName<String>]: The name of the endpoint resource.
  [Id<String>]: Resource identity path
  [JobDefinitionName<String>]: The name of the job definition resource.
  [JobRunName<String>]: The name of the job run.
  [ProjectName<String>]: The name of the project resource.
  [ResourceGroupName<String>]: The name of the resource group. The name is case insensitive.
  [StorageMoverName<String>]: The name of the Storage Mover resource.
  [SubscriptionId<String>]: The ID of the target subscription.

.Link
https://learn.microsoft.com/powershell/module/az.storagemover/update-azstoragemoversmbendpoint
#>
function Update-AzStorageMoverSmbEndpoint {
    [OutputType([Microsoft.Azure.PowerShell.Cmdlets.StorageMover.Models.Api20231001.IEndpoint])]
    [CmdletBinding(DefaultParameterSetName = 'UpdateExpanded', PositionalBinding =$false, SupportsShouldProcess, ConfirmImpact = 'Medium')]
    param(
        [Parameter(ParameterSetName='UpdateExpanded', Mandatory)]
        [Alias('EndpointName')]
        [Microsoft.Azure.PowerShell.Cmdlets.StorageMover.Category('Path')]
        [System.String]
        # The name of the endpoint resource.
        ${Name},

        [Parameter(ParameterSetName='UpdateExpanded', Mandatory)]
        [Microsoft.Azure.PowerShell.Cmdlets.StorageMover.Category('Path')]
        [System.String]
        # The name of the resource group.
        # The name is case insensitive.
        ${ResourceGroupName},

        [Parameter(ParameterSetName='UpdateExpanded', Mandatory)]
        [Microsoft.Azure.PowerShell.Cmdlets.StorageMover.Category('Path')]
        [System.String]
        # The name of the Storage Mover resource.
        ${StorageMoverName},

        [Parameter(ParameterSetName = 'UpdateExpanded')]
        [Parameter(ParameterSetName = 'UpdateViaIdentityExpanded')]
        [Parameter(HelpMessage="The secret URI which stores the username. Use empty string to clean-up existing value.")]
        [string]
        ${CredentialsUsernameUri},

        [Parameter(ParameterSetName = 'UpdateExpanded')]
        [Parameter(ParameterSetName = 'UpdateViaIdentityExpanded')]
        [Parameter(HelpMessage="The secret URI which stores the password. Use empty string to clean-up existing value.")]
        [string]
        ${CredentialsPasswordUri},

        [Parameter(ParameterSetName = 'UpdateExpanded')]
        [Parameter(ParameterSetName = 'UpdateViaIdentityExpanded')]
        [Parameter(HelpMessage = "A description for the endpoint.")]
        [string]
        ${Description},

        [Parameter(ParameterSetName='UpdateExpanded')]
        [Microsoft.Azure.PowerShell.Cmdlets.StorageMover.Category('Path')]
        [Microsoft.Azure.PowerShell.Cmdlets.StorageMover.Runtime.DefaultInfo(Script='(Get-AzContext).Subscription.Id')]
        [System.String]
        # The ID of the target subscription.
        ${SubscriptionId},

        [Parameter(ParameterSetName='UpdateViaIdentityExpanded', Mandatory, ValueFromPipeline)]
        [Microsoft.Azure.PowerShell.Cmdlets.StorageMover.Category('Path')]
        [Microsoft.Azure.PowerShell.Cmdlets.StorageMover.Models.IStorageMoverIdentity]
        # Identity Parameter
        # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
        ${InputObject},

        [Parameter()]
        [Alias('AzureRMContext', 'AzureCredential')]
        [ValidateNotNull()]
        [Microsoft.Azure.PowerShell.Cmdlets.StorageMover.Category('Azure')]
        [System.Management.Automation.PSObject]
        # The credentials, account, tenant, and subscription used for communication with Azure.
        ${DefaultProfile},

        [Parameter(DontShow)]
        [Microsoft.Azure.PowerShell.Cmdlets.StorageMover.Category('Runtime')]
        [System.Management.Automation.SwitchParameter]
        # Wait for .NET debugger to attach
        ${Break},

        [Parameter(DontShow)]
        [ValidateNotNull()]
        [Microsoft.Azure.PowerShell.Cmdlets.StorageMover.Category('Runtime')]
        [Microsoft.Azure.PowerShell.Cmdlets.StorageMover.Runtime.SendAsyncStep[]]
        # SendAsync Pipeline Steps to be appended to the front of the pipeline
        ${HttpPipelineAppend},

        [Parameter(DontShow)]
        [ValidateNotNull()]
        [Microsoft.Azure.PowerShell.Cmdlets.StorageMover.Category('Runtime')]
        [Microsoft.Azure.PowerShell.Cmdlets.StorageMover.Runtime.SendAsyncStep[]]
        # SendAsync Pipeline Steps to be prepended to the front of the pipeline
        ${HttpPipelinePrepend},

        [Parameter(DontShow)]
        [Microsoft.Azure.PowerShell.Cmdlets.StorageMover.Category('Runtime')]
        [System.Uri]
        # The URI for the proxy server to use
        ${Proxy},

        [Parameter(DontShow)]
        [ValidateNotNull()]
        [Microsoft.Azure.PowerShell.Cmdlets.StorageMover.Category('Runtime')]
        [System.Management.Automation.PSCredential]
        # Credentials for a proxy server to use for the remote call
        ${ProxyCredential},

        [Parameter(DontShow)]
        [Microsoft.Azure.PowerShell.Cmdlets.StorageMover.Category('Runtime')]
        [System.Management.Automation.SwitchParameter]
        # Use the default credentials for the proxy
        ${ProxyUseDefaultCredentials}
    )

    process {
        $Properties = [Microsoft.Azure.PowerShell.Cmdlets.StorageMover.Models.Api20231001.SmbMountEndpointUpdateProperties]::New()
        $Properties.EndpointType = 'SmbMount'

        if ($PSBoundParameters.ContainsKey('Description')) {
            $Properties.Description = $Description
        }
        if ($PSBoundParameters.ContainsKey('CredentialsUsernameUri')) {
            $Properties.CredentialsUsernameUri = $CredentialsUsernameUri
            $null = $PSBoundParameters.Remove("CredentialsUsernameUri")
        }
        if ($PSBoundParameters.ContainsKey('CredentialsPasswordUri')) {
            $Properties.CredentialsPasswordUri = $CredentialsPasswordUri
            $null = $PSBoundParameters.Remove("CredentialsPasswordUri")
        }
        
        $PSBoundParameters.Add("Property", $Properties)
        if ($PSBoundParameters.ContainsKey('Description')) {
            $null = $PSBoundParameters.Remove('Description')
        }

        Az.StorageMover.internal\Update-AzStorageMoverEndpoint @PSBoundParameters
    }
}
