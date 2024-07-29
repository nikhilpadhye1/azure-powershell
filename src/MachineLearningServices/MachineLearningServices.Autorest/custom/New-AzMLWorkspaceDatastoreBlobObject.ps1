
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
Create an in-memory object for AzureBlobDatastore.
.Description
Create an in-memory object for AzureBlobDatastore.

.Outputs
Microsoft.Azure.PowerShell.Cmdlets.MachineLearningServices.Models.Api20240401.AzureBlobDatastore
.Link
https://learn.microsoft.com/powershell/module/Az.MachineLearningServices/new-AzMLWorkspaceDatastoreBlobObject
#>
function New-AzMLWorkspaceDatastoreBlobObject {
    [OutputType('Microsoft.Azure.PowerShell.Cmdlets.MachineLearningServices.Models.Api20240401.AzureBlobDatastore')]
    [CmdletBinding(PositionalBinding=$false)]
    Param(

        [Parameter(HelpMessage="Storage account name.")]
        [string]
        $AccountName,
        [Parameter(HelpMessage="Storage account container name.")]
        [string]
        $ContainerName,
        [Parameter(HelpMessage="Azure cloud endpoint for the storage account.")]
        [string]
        $Endpoint,
        [Parameter(HelpMessage="Protocol used to communicate with the storage account.")]
        [string]
        $Protocol,
        [Parameter(HelpMessage="Indicates which identity to use to authenticate service data access to customer's storage.")]
        [ArgumentCompleter([Microsoft.Azure.PowerShell.Cmdlets.MachineLearningServices.Support.ServiceDataAccessAuthIdentity])]
        [Microsoft.Azure.PowerShell.Cmdlets.MachineLearningServices.Support.ServiceDataAccessAuthIdentity]
        $ServiceDataAccessAuthIdentity,
        [Parameter(Mandatory, HelpMessage="[Required] Account credentials.")]
        [Microsoft.Azure.PowerShell.Cmdlets.MachineLearningServices.Models.Api20240401.IDatastoreCredentials]
        $Credentials,
        # [Parameter(Mandatory, HelpMessage="[Required] Storage type backing the datastore.")]
        # [ArgumentCompleter([Microsoft.Azure.PowerShell.Cmdlets.MachineLearningServices.Support.DatastoreType])]
        # [Microsoft.Azure.PowerShell.Cmdlets.MachineLearningServices.Support.DatastoreType]
        # $DatastoreType,
        [Parameter(HelpMessage="The asset description text.")]
        [string]
        $Description,
        [Parameter(HelpMessage="The asset property dictionary.")]
        [Microsoft.Azure.PowerShell.Cmdlets.MachineLearningServices.Models.Api20240401.IResourceBaseProperties]
        $Property,
        [Parameter(HelpMessage="Tag dictionary. Tags can be added, removed, and updated.")]
        [Microsoft.Azure.PowerShell.Cmdlets.MachineLearningServices.Models.Api20240401.IResourceBaseTags]
        $Tag
    )

    process {
        $Object = [Microsoft.Azure.PowerShell.Cmdlets.MachineLearningServices.Models.Api20240401.AzureBlobDatastore]::New()
        $Object.DatastoreType = 'AzureBlob'
        
        if ($PSBoundParameters.ContainsKey('AccountName')) {
            $Object.AccountName = $AccountName
        }
        if ($PSBoundParameters.ContainsKey('ContainerName')) {
            $Object.ContainerName = $ContainerName
        }
        if ($PSBoundParameters.ContainsKey('Endpoint')) {
            $Object.Endpoint = $Endpoint
        }
        if ($PSBoundParameters.ContainsKey('Protocol')) {
            $Object.Protocol = $Protocol
        }
        if ($PSBoundParameters.ContainsKey('ServiceDataAccessAuthIdentity')) {
            $Object.ServiceDataAccessAuthIdentity = $ServiceDataAccessAuthIdentity
        }
        if ($PSBoundParameters.ContainsKey('Credentials')) {
            $Object.Credentials = $Credentials
        }
        if ($PSBoundParameters.ContainsKey('Description')) {
            $Object.Description = $Description
        }
        if ($PSBoundParameters.ContainsKey('Property')) {
            $Object.Property = $Property
        }
        if ($PSBoundParameters.ContainsKey('Tag')) {
            $Object.Tag = $Tag
        }
        return $Object
    }
}

