
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
Update a Kusto cluster.
.Description
Update a Kusto cluster.
.Example
Update-AzKustoCluster -ResourceGroupName testrg -Name testnewkustocluster -SkuName Standard_D12_v2 -SkuTier Standard -EngineType 'V2'
.Example
Update-AzKustoCluster -ResourceGroupName testrg -Name testnewkustocluster -KeyVaultPropertyKeyName "TestKey" -KeyVaultPropertyKeyVaultUri "https://testpskeyvault.vault.azure.net" -KeyVaultPropertyKeyVersion "4bd66f0e0d7c403fac80305e0355d982"

.Inputs
Microsoft.Azure.PowerShell.Cmdlets.Kusto.Models.IKustoIdentity
.Outputs
Microsoft.Azure.PowerShell.Cmdlets.Kusto.Models.Api20221229.ICluster
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

ACCEPTEDAUDIENCE <IAcceptedAudiences[]>: The cluster's accepted audiences.
  [Value <String>]: GUID or valid URL representing an accepted audience.

INPUTOBJECT <IKustoIdentity>: Identity Parameter
  [AttachedDatabaseConfigurationName <String>]: The name of the attached database configuration.
  [ClusterName <String>]: The name of the Kusto cluster.
  [DataConnectionName <String>]: The name of the data connection.
  [DatabaseName <String>]: The name of the database in the Kusto cluster.
  [Id <String>]: Resource identity path
  [Location <String>]: Azure location (region) name.
  [ManagedPrivateEndpointName <String>]: The name of the managed private endpoint.
  [OperationId <String>]: The Guid of the operation ID
  [PrincipalAssignmentName <String>]: The name of the Kusto principalAssignment.
  [PrivateEndpointConnectionName <String>]: The name of the private endpoint connection.
  [PrivateLinkResourceName <String>]: The name of the private link resource.
  [ResourceGroupName <String>]: The name of the resource group containing the Kusto cluster.
  [ScriptName <String>]: The name of the Kusto database script.
  [SubscriptionId <String>]: Gets subscription credentials which uniquely identify Microsoft Azure subscription. The subscription ID forms part of the URI for every service call.

LANGUAGEEXTENSIONVALUE <ILanguageExtension[]>: The list of language extensions.
  [ImageName <LanguageExtensionImageName?>]: The language extension image name.
  [Name <LanguageExtensionName?>]: The language extension name.

TRUSTEDEXTERNALTENANT <ITrustedExternalTenant[]>: The cluster's external tenants.
  [Value <String>]: GUID representing an external tenant.
.Link
https://learn.microsoft.com/powershell/module/az.kusto/update-azkustocluster
#>
function Update-AzKustoCluster {
[OutputType([Microsoft.Azure.PowerShell.Cmdlets.Kusto.Models.Api20221229.ICluster])]
[CmdletBinding(DefaultParameterSetName='UpdateExpanded', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
param(
    [Parameter(ParameterSetName='UpdateExpanded', Mandatory)]
    [Alias('ClusterName')]
    [Microsoft.Azure.PowerShell.Cmdlets.Kusto.Category('Path')]
    [System.String]
    # The name of the Kusto cluster.
    ${Name},

    [Parameter(ParameterSetName='UpdateExpanded', Mandatory)]
    [Microsoft.Azure.PowerShell.Cmdlets.Kusto.Category('Path')]
    [System.String]
    # The name of the resource group containing the Kusto cluster.
    ${ResourceGroupName},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Microsoft.Azure.PowerShell.Cmdlets.Kusto.Category('Path')]
    [Microsoft.Azure.PowerShell.Cmdlets.Kusto.Runtime.DefaultInfo(Script='(Get-AzContext).Subscription.Id')]
    [System.String]
    # Gets subscription credentials which uniquely identify Microsoft Azure subscription.
    # The subscription ID forms part of the URI for every service call.
    ${SubscriptionId},

    [Parameter(ParameterSetName='UpdateViaIdentityExpanded', Mandatory, ValueFromPipeline)]
    [Microsoft.Azure.PowerShell.Cmdlets.Kusto.Category('Path')]
    [Microsoft.Azure.PowerShell.Cmdlets.Kusto.Models.IKustoIdentity]
    # Identity Parameter
    # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter()]
    [Microsoft.Azure.PowerShell.Cmdlets.Kusto.Category('Header')]
    [System.String]
    # The ETag of the cluster.
    # Omit this value to always overwrite the current cluster.
    # Specify the last-seen ETag value to prevent accidentally overwriting concurrent changes.
    ${IfMatch},

    [Parameter()]
    [AllowEmptyCollection()]
    [Microsoft.Azure.PowerShell.Cmdlets.Kusto.Category('Body')]
    [Microsoft.Azure.PowerShell.Cmdlets.Kusto.Models.Api20221229.IAcceptedAudiences[]]
    # The cluster's accepted audiences.
    # To construct, see NOTES section for ACCEPTEDAUDIENCE properties and create a hash table.
    ${AcceptedAudience},

    [Parameter()]
    [AllowEmptyCollection()]
    [Microsoft.Azure.PowerShell.Cmdlets.Kusto.Category('Body')]
    [System.String[]]
    # List of allowed FQDNs(Fully Qualified Domain Name) for egress from Cluster.
    ${AllowedFqdnList},

    [Parameter()]
    [AllowEmptyCollection()]
    [Microsoft.Azure.PowerShell.Cmdlets.Kusto.Category('Body')]
    [System.String[]]
    # The list of ips in the format of CIDR allowed to connect to the cluster.
    ${AllowedIPRangeList},

    [Parameter()]
    [Microsoft.Azure.PowerShell.Cmdlets.Kusto.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # A boolean value that indicates if the cluster could be automatically stopped (due to lack of data or no activity for many days).
    ${EnableAutoStop},

    [Parameter()]
    [Microsoft.Azure.PowerShell.Cmdlets.Kusto.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # A boolean value that indicates if the cluster's disks are encrypted.
    ${EnableDiskEncryption},

    [Parameter()]
    [Microsoft.Azure.PowerShell.Cmdlets.Kusto.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # A boolean value that indicates if double encryption is enabled.
    ${EnableDoubleEncryption},

    [Parameter()]
    [Microsoft.Azure.PowerShell.Cmdlets.Kusto.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # A boolean value that indicates if the purge operations are enabled.
    ${EnablePurge},

    [Parameter()]
    [Microsoft.Azure.PowerShell.Cmdlets.Kusto.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # A boolean value that indicates if the streaming ingest is enabled.
    ${EnableStreamingIngest},

    [Parameter()]
    [ArgumentCompleter([Microsoft.Azure.PowerShell.Cmdlets.Kusto.Support.EngineType])]
    [Microsoft.Azure.PowerShell.Cmdlets.Kusto.Category('Body')]
    [Microsoft.Azure.PowerShell.Cmdlets.Kusto.Support.EngineType]
    # The engine type
    ${EngineType},

    [Parameter()]
    [ArgumentCompleter([Microsoft.Azure.PowerShell.Cmdlets.Kusto.Support.IdentityType])]
    [Microsoft.Azure.PowerShell.Cmdlets.Kusto.Category('Body')]
    [Microsoft.Azure.PowerShell.Cmdlets.Kusto.Support.IdentityType]
    # The type of managed identity used.
    # The type 'SystemAssigned, UserAssigned' includes both an implicitly created identity and a set of user-assigned identities.
    # The type 'None' will remove all identities.
    ${IdentityType},

    [Parameter()]
    [Microsoft.Azure.PowerShell.Cmdlets.Kusto.Category('Body')]
    [Microsoft.Azure.PowerShell.Cmdlets.Kusto.Runtime.Info(PossibleTypes=([Microsoft.Azure.PowerShell.Cmdlets.Kusto.Models.Api20221229.IIdentityUserAssignedIdentities]))]
    [System.Collections.Hashtable]
    # The list of user identities associated with the Kusto cluster.
    # The user identity dictionary key references will be ARM resource ids in the form: '/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ManagedIdentity/userAssignedIdentities/{identityName}'.
    ${IdentityUserAssignedIdentity},

    [Parameter()]
    [Microsoft.Azure.PowerShell.Cmdlets.Kusto.Category('Body')]
    [System.String]
    # The name of the key vault key.
    ${KeyVaultPropertyKeyName},

    [Parameter()]
    [Microsoft.Azure.PowerShell.Cmdlets.Kusto.Category('Body')]
    [System.String]
    # The Uri of the key vault.
    ${KeyVaultPropertyKeyVaultUri},

    [Parameter()]
    [Microsoft.Azure.PowerShell.Cmdlets.Kusto.Category('Body')]
    [System.String]
    # The version of the key vault key.
    ${KeyVaultPropertyKeyVersion},

    [Parameter()]
    [Microsoft.Azure.PowerShell.Cmdlets.Kusto.Category('Body')]
    [System.String]
    # The user assigned identity (ARM resource id) that has access to the key.
    ${KeyVaultPropertyUserIdentity},

    [Parameter()]
    [AllowEmptyCollection()]
    [Microsoft.Azure.PowerShell.Cmdlets.Kusto.Category('Body')]
    [Microsoft.Azure.PowerShell.Cmdlets.Kusto.Models.Api20221229.ILanguageExtension[]]
    # The list of language extensions.
    # To construct, see NOTES section for LANGUAGEEXTENSIONVALUE properties and create a hash table.
    ${LanguageExtensionValue},

    [Parameter()]
    [Microsoft.Azure.PowerShell.Cmdlets.Kusto.Category('Body')]
    [System.String]
    # Resource location.
    ${Location},

    [Parameter()]
    [Microsoft.Azure.PowerShell.Cmdlets.Kusto.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # A boolean value that indicate if the optimized autoscale feature is enabled or not.
    ${OptimizedAutoscaleIsEnabled},

    [Parameter()]
    [Microsoft.Azure.PowerShell.Cmdlets.Kusto.Category('Body')]
    [System.Int32]
    # Maximum allowed instances count.
    ${OptimizedAutoscaleMaximum},

    [Parameter()]
    [Microsoft.Azure.PowerShell.Cmdlets.Kusto.Category('Body')]
    [System.Int32]
    # Minimum allowed instances count.
    ${OptimizedAutoscaleMinimum},

    [Parameter()]
    [Microsoft.Azure.PowerShell.Cmdlets.Kusto.Category('Body')]
    [System.Int32]
    # The version of the template defined, for instance 1.
    ${OptimizedAutoscaleVersion},

    [Parameter()]
    [ArgumentCompleter([Microsoft.Azure.PowerShell.Cmdlets.Kusto.Support.PublicIPType])]
    [Microsoft.Azure.PowerShell.Cmdlets.Kusto.Category('Body')]
    [Microsoft.Azure.PowerShell.Cmdlets.Kusto.Support.PublicIPType]
    # Indicates what public IP type to create - IPv4 (default), or DualStack (both IPv4 and IPv6)
    ${PublicIPType},

    [Parameter()]
    [ArgumentCompleter([Microsoft.Azure.PowerShell.Cmdlets.Kusto.Support.PublicNetworkAccess])]
    [Microsoft.Azure.PowerShell.Cmdlets.Kusto.Category('Body')]
    [Microsoft.Azure.PowerShell.Cmdlets.Kusto.Support.PublicNetworkAccess]
    # Public network access to the cluster is enabled by default.
    # When disabled, only private endpoint connection to the cluster is allowed
    ${PublicNetworkAccess},

    [Parameter()]
    [ArgumentCompleter([Microsoft.Azure.PowerShell.Cmdlets.Kusto.Support.ClusterNetworkAccessFlag])]
    [Microsoft.Azure.PowerShell.Cmdlets.Kusto.Category('Body')]
    [Microsoft.Azure.PowerShell.Cmdlets.Kusto.Support.ClusterNetworkAccessFlag]
    # Whether or not to restrict outbound network access.
    # Value is optional but if passed in, must be 'Enabled' or 'Disabled'
    ${RestrictOutboundNetworkAccess},

    [Parameter()]
    [Microsoft.Azure.PowerShell.Cmdlets.Kusto.Category('Body')]
    [System.Int32]
    # The number of instances of the cluster.
    ${SkuCapacity},

    [Parameter()]
    [ArgumentCompleter([Microsoft.Azure.PowerShell.Cmdlets.Kusto.Support.AzureSkuName])]
    [Microsoft.Azure.PowerShell.Cmdlets.Kusto.Category('Body')]
    [Microsoft.Azure.PowerShell.Cmdlets.Kusto.Support.AzureSkuName]
    # SKU name.
    ${SkuName},

    [Parameter()]
    [ArgumentCompleter([Microsoft.Azure.PowerShell.Cmdlets.Kusto.Support.AzureSkuTier])]
    [Microsoft.Azure.PowerShell.Cmdlets.Kusto.Category('Body')]
    [Microsoft.Azure.PowerShell.Cmdlets.Kusto.Support.AzureSkuTier]
    # SKU tier.
    ${SkuTier},

    [Parameter()]
    [Microsoft.Azure.PowerShell.Cmdlets.Kusto.Category('Body')]
    [Microsoft.Azure.PowerShell.Cmdlets.Kusto.Runtime.Info(PossibleTypes=([Microsoft.Azure.PowerShell.Cmdlets.Kusto.Models.Api20221229.IClusterUpdateTags]))]
    [System.Collections.Hashtable]
    # Resource tags.
    ${Tag},

    [Parameter()]
    [AllowEmptyCollection()]
    [Microsoft.Azure.PowerShell.Cmdlets.Kusto.Category('Body')]
    [Microsoft.Azure.PowerShell.Cmdlets.Kusto.Models.Api20221229.ITrustedExternalTenant[]]
    # The cluster's external tenants.
    # To construct, see NOTES section for TRUSTEDEXTERNALTENANT properties and create a hash table.
    ${TrustedExternalTenant},

    [Parameter()]
    [Microsoft.Azure.PowerShell.Cmdlets.Kusto.Category('Body')]
    [System.String]
    # Virtual Cluster graduation properties
    ${VirtualClusterGraduationProperty},

    [Parameter()]
    [Microsoft.Azure.PowerShell.Cmdlets.Kusto.Category('Body')]
    [System.String]
    # Data management's service public IP address resource id.
    ${VirtualNetworkConfigurationDataManagementPublicIPId},

    [Parameter()]
    [Microsoft.Azure.PowerShell.Cmdlets.Kusto.Category('Body')]
    [System.String]
    # Engine service's public IP address resource id.
    ${VirtualNetworkConfigurationEnginePublicIPId},

    [Parameter()]
    [Microsoft.Azure.PowerShell.Cmdlets.Kusto.Category('Body')]
    [System.String]
    # The subnet resource id.
    ${VirtualNetworkConfigurationSubnetId},

    [Parameter()]
    [Alias('AzureRMContext', 'AzureCredential')]
    [ValidateNotNull()]
    [Microsoft.Azure.PowerShell.Cmdlets.Kusto.Category('Azure')]
    [System.Management.Automation.PSObject]
    # The DefaultProfile parameter is not functional.
    # Use the SubscriptionId parameter when available if executing the cmdlet against a different subscription.
    ${DefaultProfile},

    [Parameter()]
    [Microsoft.Azure.PowerShell.Cmdlets.Kusto.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Run the command as a job
    ${AsJob},

    [Parameter(DontShow)]
    [Microsoft.Azure.PowerShell.Cmdlets.Kusto.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Azure.PowerShell.Cmdlets.Kusto.Category('Runtime')]
    [Microsoft.Azure.PowerShell.Cmdlets.Kusto.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be appended to the front of the pipeline
    ${HttpPipelineAppend},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Azure.PowerShell.Cmdlets.Kusto.Category('Runtime')]
    [Microsoft.Azure.PowerShell.Cmdlets.Kusto.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be prepended to the front of the pipeline
    ${HttpPipelinePrepend},

    [Parameter()]
    [Microsoft.Azure.PowerShell.Cmdlets.Kusto.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Run the command asynchronously
    ${NoWait},

    [Parameter(DontShow)]
    [Microsoft.Azure.PowerShell.Cmdlets.Kusto.Category('Runtime')]
    [System.Uri]
    # The URI for the proxy server to use
    ${Proxy},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Azure.PowerShell.Cmdlets.Kusto.Category('Runtime')]
    [System.Management.Automation.PSCredential]
    # Credentials for a proxy server to use for the remote call
    ${ProxyCredential},

    [Parameter(DontShow)]
    [Microsoft.Azure.PowerShell.Cmdlets.Kusto.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Use the default credentials for the proxy
    ${ProxyUseDefaultCredentials}
)

begin {
    try {
        $outBuffer = $null
        if ($PSBoundParameters.TryGetValue('OutBuffer', [ref]$outBuffer)) {
            $PSBoundParameters['OutBuffer'] = 1
        }
        $parameterSet = $PSCmdlet.ParameterSetName

        if ($null -eq [Microsoft.WindowsAzure.Commands.Utilities.Common.AzurePSCmdlet]::PowerShellVersion) {
            [Microsoft.WindowsAzure.Commands.Utilities.Common.AzurePSCmdlet]::PowerShellVersion = $PSVersionTable.PSVersion.ToString()
        }         
        $preTelemetryId = [Microsoft.WindowsAzure.Commands.Common.MetricHelper]::TelemetryId
        if ($preTelemetryId -eq '') {
            [Microsoft.WindowsAzure.Commands.Common.MetricHelper]::TelemetryId =(New-Guid).ToString()
            [Microsoft.Azure.PowerShell.Cmdlets.Kusto.module]::Instance.Telemetry.Invoke('Create', $MyInvocation, $parameterSet, $PSCmdlet)
        } else {
            $internalCalledCmdlets = [Microsoft.WindowsAzure.Commands.Common.MetricHelper]::InternalCalledCmdlets
            if ($internalCalledCmdlets -eq '') {
                [Microsoft.WindowsAzure.Commands.Common.MetricHelper]::InternalCalledCmdlets = $MyInvocation.MyCommand.Name
            } else {
                [Microsoft.WindowsAzure.Commands.Common.MetricHelper]::InternalCalledCmdlets += ',' + $MyInvocation.MyCommand.Name
            }
            [Microsoft.WindowsAzure.Commands.Common.MetricHelper]::TelemetryId = 'internal'
        }

        $mapping = @{
            UpdateExpanded = 'Az.Kusto.private\Update-AzKustoCluster_UpdateExpanded';
            UpdateViaIdentityExpanded = 'Az.Kusto.private\Update-AzKustoCluster_UpdateViaIdentityExpanded';
        }
        if (('UpdateExpanded') -contains $parameterSet -and -not $PSBoundParameters.ContainsKey('SubscriptionId')) {
            $PSBoundParameters['SubscriptionId'] = (Get-AzContext).Subscription.Id
        }
        $cmdInfo = Get-Command -Name $mapping[$parameterSet]
        [Microsoft.Azure.PowerShell.Cmdlets.Kusto.Runtime.MessageAttributeHelper]::ProcessCustomAttributesAtRuntime($cmdInfo, $MyInvocation, $parameterSet, $PSCmdlet)
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        [Microsoft.WindowsAzure.Commands.Common.MetricHelper]::ClearTelemetryContext()
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        [Microsoft.WindowsAzure.Commands.Common.MetricHelper]::ClearTelemetryContext()
        throw
    }

    finally {
        $backupTelemetryId = [Microsoft.WindowsAzure.Commands.Common.MetricHelper]::TelemetryId
        $backupInternalCalledCmdlets = [Microsoft.WindowsAzure.Commands.Common.MetricHelper]::InternalCalledCmdlets
        [Microsoft.WindowsAzure.Commands.Common.MetricHelper]::ClearTelemetryContext()
    }

}
end {
    try {
        $steppablePipeline.End()

        [Microsoft.WindowsAzure.Commands.Common.MetricHelper]::TelemetryId = $backupTelemetryId
        [Microsoft.WindowsAzure.Commands.Common.MetricHelper]::InternalCalledCmdlets = $backupInternalCalledCmdlets
        if ($preTelemetryId -eq '') {
            [Microsoft.Azure.PowerShell.Cmdlets.Kusto.module]::Instance.Telemetry.Invoke('Send', $MyInvocation, $parameterSet, $PSCmdlet)
            [Microsoft.WindowsAzure.Commands.Common.MetricHelper]::ClearTelemetryContext()
        }
        [Microsoft.WindowsAzure.Commands.Common.MetricHelper]::TelemetryId = $preTelemetryId

    } catch {
        [Microsoft.WindowsAzure.Commands.Common.MetricHelper]::ClearTelemetryContext()
        throw
    }
} 
}
