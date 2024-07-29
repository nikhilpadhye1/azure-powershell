
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
Creating or updating a new workspace connection
.Description
Creating or updating a new workspace connection
.Example
New-AzMLWorkspaceConnection -ResourceGroupName ml-rg-test -WorkspaceName mlworkspace-test01 -Name test01 -AuthType 'None' -Category 'ContainerRegistry' -Target "www.facebook.com"
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

PROPERTY <IWorkspaceConnectionPropertiesV2>: .
  AuthType <ConnectionAuthType>: Authentication type of the connection target
  [Category <ConnectionCategory?>]: Category of the connection
  [ExpiryTime <DateTime?>]: 
  [IsSharedToAll <Boolean?>]: 
  [Metadata <IWorkspaceConnectionPropertiesV2Metadata>]: Store user metadata for this connection
    [(Any) <String>]: This indicates any property can be added to this object.
  [SharedUserList <String[]>]: 
  [Target <String>]: 
  [Value <String>]: Value details of the workspace connection.
  [ValueFormat <ValueFormat?>]: format for the workspace connection value
.Link
https://learn.microsoft.com/powershell/module/az.machinelearningservices/new-azmlworkspaceconnection
#>
function New-AzMLWorkspaceConnection {
[OutputType([Microsoft.Azure.PowerShell.Cmdlets.MachineLearningServices.Models.Api20240401.IWorkspaceConnectionPropertiesV2BasicResource])]
[CmdletBinding(DefaultParameterSetName='CreateExpanded', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
    param(
        [Parameter(ParameterSetName= 'CreateExpanded', Mandatory)]
        [Parameter(ParameterSetName= 'CreateWithProperty', Mandatory)]
        [Microsoft.Azure.PowerShell.Cmdlets.MachineLearningServices.Category('Path')]
        [System.String]
        # Friendly name of the workspace connection
        ${Name},
    
        [Parameter(ParameterSetName= 'CreateExpanded', Mandatory)]
        [Parameter(ParameterSetName= 'CreateWithProperty', Mandatory)]
        [Microsoft.Azure.PowerShell.Cmdlets.MachineLearningServices.Category('Path')]
        [System.String]
        # The name of the resource group.
        # The name is case insensitive.
        ${ResourceGroupName},
    
        [Parameter(ParameterSetName= 'CreateExpanded', Mandatory)]
        [Parameter(ParameterSetName= 'CreateWithProperty', Mandatory)]
        [Microsoft.Azure.PowerShell.Cmdlets.MachineLearningServices.Category('Path')]
        [System.String]
        # Name of Azure Machine Learning workspace.
        ${WorkspaceName},
    
        [Parameter(ParameterSetName= 'CreateExpanded')]
        [Parameter(ParameterSetName= 'CreateWithProperty')]
        [Microsoft.Azure.PowerShell.Cmdlets.MachineLearningServices.Category('Path')]
        [Microsoft.Azure.PowerShell.Cmdlets.MachineLearningServices.Runtime.DefaultInfo(Script='(Get-AzContext).Subscription.Id')]
        [System.String]
        # The ID of the target subscription.
        ${SubscriptionId},
    
        [Parameter(ParameterSetName= 'CreateExpanded', Mandatory)]
        [ArgumentCompleter([Microsoft.Azure.PowerShell.Cmdlets.MachineLearningServices.Support.ConnectionAuthType])]
        [Microsoft.Azure.PowerShell.Cmdlets.MachineLearningServices.Category('Body')]
        [Microsoft.Azure.PowerShell.Cmdlets.MachineLearningServices.Support.ConnectionAuthType]
        # Authentication type of the connection target
        ${AuthType},
    
        [Parameter(ParameterSetName= 'CreateExpanded')]
        [ArgumentCompleter([Microsoft.Azure.PowerShell.Cmdlets.MachineLearningServices.Support.ConnectionCategory])]
        [Microsoft.Azure.PowerShell.Cmdlets.MachineLearningServices.Category('Body')]
        [Microsoft.Azure.PowerShell.Cmdlets.MachineLearningServices.Support.ConnectionCategory]
        # Category of the connection
        ${Category},

        [Parameter(ParameterSetName= 'CreateExpanded')]
        [Microsoft.Azure.PowerShell.Cmdlets.MachineLearningServices.Category('Body')]
        [System.DateTime]
        ${ExpiryTime},
    
        [Parameter(ParameterSetName= 'CreateExpanded')]
        [Microsoft.Azure.PowerShell.Cmdlets.MachineLearningServices.Category('Body')]
        [System.Management.Automation.SwitchParameter]
        ${IsSharedToAll},
    
        [Parameter(ParameterSetName= 'CreateExpanded')]
        [Microsoft.Azure.PowerShell.Cmdlets.MachineLearningServices.Category('Body')]
        [Microsoft.Azure.PowerShell.Cmdlets.MachineLearningServices.Runtime.Info(PossibleTypes=([Microsoft.Azure.PowerShell.Cmdlets.MachineLearningServices.Models.Api20240401.IWorkspaceConnectionPropertiesV2Metadata]))]
        [System.Collections.Hashtable]
        # Store user metadata for this connection
        ${Metadata},
    
        [Parameter(ParameterSetName= 'CreateExpanded')]
        [AllowEmptyCollection()]
        [Microsoft.Azure.PowerShell.Cmdlets.MachineLearningServices.Category('Body')]
        [System.String[]]
        ${SharedUserList},

        [Parameter(ParameterSetName= 'CreateExpanded')]
        [Microsoft.Azure.PowerShell.Cmdlets.MachineLearningServices.Category('Body')]
        [System.String]
        ${Target},
    
        [Parameter(ParameterSetName= 'CreateExpanded')]
        [Microsoft.Azure.PowerShell.Cmdlets.MachineLearningServices.Category('Body')]
        [System.String]
        # Value details of the workspace connection.
        ${Value},
    
        [Parameter(ParameterSetName= 'CreateExpanded')]
        [ArgumentCompleter([Microsoft.Azure.PowerShell.Cmdlets.MachineLearningServices.Support.ValueFormat])]
        [Microsoft.Azure.PowerShell.Cmdlets.MachineLearningServices.Category('Body')]
        [Microsoft.Azure.PowerShell.Cmdlets.MachineLearningServices.Support.ValueFormat]
        # format for the workspace connection value
        ${ValueFormat},
    
        [Parameter(ParameterSetName= 'CreateWithProperty', Mandatory, HelpMessage = 'Using one of WorkspaceConnectionPropertiesObject cmdlets to construct')]
        [Microsoft.Azure.PowerShell.Cmdlets.MachineLearningServices.Category('Body')]
        [Microsoft.Azure.PowerShell.Cmdlets.MachineLearningServices.Models.Api20240401.IWorkspaceConnectionPropertiesV2]
        # To construct, see NOTES section for PROPERTY properties and create a hash table.
        ${Property},

        [Parameter(ParameterSetName= 'CreateExpanded')]
        [Parameter(ParameterSetName= 'CreateWithProperty')]
        [Alias('AzureRMContext', 'AzureCredential')]
        [ValidateNotNull()]
        [Microsoft.Azure.PowerShell.Cmdlets.MachineLearningServices.Category('Azure')]
        [System.Management.Automation.PSObject]
        # The credentials, account, tenant, and subscription used for communication with Azure.
        ${DefaultProfile},
    
        [Parameter(ParameterSetName= 'CreateExpanded', DontShow)]
        [Parameter(ParameterSetName= 'CreateWithProperty', DontShow)]
        [Microsoft.Azure.PowerShell.Cmdlets.MachineLearningServices.Category('Runtime')]
        [System.Management.Automation.SwitchParameter]
        # Wait for .NET debugger to attach
        ${Break},
    
        [Parameter(ParameterSetName= 'CreateExpanded', DontShow)]
        [Parameter(ParameterSetName= 'CreateWithProperty', DontShow)]
        [ValidateNotNull()]
        [Microsoft.Azure.PowerShell.Cmdlets.MachineLearningServices.Category('Runtime')]
        [Microsoft.Azure.PowerShell.Cmdlets.MachineLearningServices.Runtime.SendAsyncStep[]]
        # SendAsync Pipeline Steps to be appended to the front of the pipeline
        ${HttpPipelineAppend},
    
        [Parameter(ParameterSetName= 'CreateExpanded', DontShow)]
        [Parameter(ParameterSetName= 'CreateWithProperty', DontShow)]
        [ValidateNotNull()]
        [Microsoft.Azure.PowerShell.Cmdlets.MachineLearningServices.Category('Runtime')]
        [Microsoft.Azure.PowerShell.Cmdlets.MachineLearningServices.Runtime.SendAsyncStep[]]
        # SendAsync Pipeline Steps to be prepended to the front of the pipeline
        ${HttpPipelinePrepend},
    
        [Parameter(ParameterSetName= 'CreateExpanded', DontShow)]
        [Parameter(ParameterSetName= 'CreateWithProperty', DontShow)]
        [Microsoft.Azure.PowerShell.Cmdlets.MachineLearningServices.Category('Runtime')]
        [System.Uri]
        # The URI for the proxy server to use
        ${Proxy},
    
        [Parameter(ParameterSetName= 'CreateExpanded', DontShow)]
        [Parameter(ParameterSetName= 'CreateWithProperty', DontShow)]
        [ValidateNotNull()]
        [Microsoft.Azure.PowerShell.Cmdlets.MachineLearningServices.Category('Runtime')]
        [System.Management.Automation.PSCredential]
        # Credentials for a proxy server to use for the remote call
        ${ProxyCredential},
    
        [Parameter(ParameterSetName= 'CreateExpanded', DontShow)]
        [Parameter(ParameterSetName= 'CreateWithProperty', DontShow)]
        [Microsoft.Azure.PowerShell.Cmdlets.MachineLearningServices.Category('Runtime')]
        [System.Management.Automation.SwitchParameter]
        # Use the default credentials for the proxy
        ${ProxyUseDefaultCredentials}
    )
        
    process {
        # Create with extanded parameter
        $hasAuthType = $PSBoundParameters.Remove('AuthType')
        $hasCategory =  $PSBoundParameters.Remove('Category')
        $hasExpiryTime =  $PSBoundParameters.Remove('ExpiryTime')
        $hasIsSharedToAll =  $PSBoundParameters.Remove('IsSharedToAll')
        $hasMetadata =  $PSBoundParameters.Remove('Metadata')
        $hasSharedUserList =  $PSBoundParameters.Remove('SharedUserList')
        $hasTarget =  $PSBoundParameters.Remove('Target')
        $hasValue =  $PSBoundParameters.Remove('Value')
        $hasValueFormat =  $PSBoundParameters.Remove('ValueFormat')
        # Create with property
        $hasProperty = $PSBoundParameters.Remove('Property')

        $object = [Microsoft.Azure.PowerShell.Cmdlets.MachineLearningServices.Models.Api20240401.WorkspaceConnectionPropertiesV2]::New()
        if ($hasAuthType)
        {
            $object.AuthType = $AuthType
        }
        if ($hasCategory) {
            $Object.Category = $Category
        }
        if ($hasExpiryTime) {
            $Object.ExpiryTime = $ExpiryTime
        }
        if ($hasIsSharedToAll) {
            $Object.IsSharedToAll = $IsSharedToAll
        }
        if ($hasMetadata) {
            $Object.Metadata = $Metadata
        }
        if ($hasSharedUserList) {
            $Object.SharedUserList = $SharedUserList
        }
        if ($hasTarget) {
            $Object.Target = $Target
        }
        if ($hasValue) {
            $Object.Value = $Value
        }
        if ($hasValueFormat) {
            $Object.ValueFormat = $ValueFormat
        }
        if (!$hasProperty){
            $Property = $Object
        }
        
       Az.MachineLearningServices.internal\New-AzMLWorkspaceConnection -Property $Property @PSBoundParameters
    }
    }
    