
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
Create an in-memory object for LoadBalancingSettingsParameters.
.Description
Create an in-memory object for LoadBalancingSettingsParameters.

.Outputs
Microsoft.Azure.PowerShell.Cmdlets.Cdn.Models.Api20230501.LoadBalancingSettingsParameters
.Link
https://learn.microsoft.com/powershell/module/az.Cdn/new-AzFrontDoorCdnOriginGroupLoadBalancingSettingObject
#>
function New-AzFrontDoorCdnOriginGroupLoadBalancingSettingObject {
    [OutputType('Microsoft.Azure.PowerShell.Cmdlets.Cdn.Models.Api20230501.LoadBalancingSettingsParameters')]
    [CmdletBinding(PositionalBinding=$false)]
    Param(

        [Parameter(HelpMessage="The additional latency in milliseconds for probes to fall into the lowest latency bucket.")]
        [int]
        $AdditionalLatencyInMillisecond,
        [Parameter(HelpMessage="The number of samples to consider for load balancing decisions.")]
        [int]
        $SampleSize,
        [Parameter(HelpMessage="The number of samples within the sample period that must succeed.")]
        [int]
        $SuccessfulSamplesRequired
    )

    process {
        $Object = [Microsoft.Azure.PowerShell.Cmdlets.Cdn.Models.Api20230501.LoadBalancingSettingsParameters]::New()

        if ($PSBoundParameters.ContainsKey('AdditionalLatencyInMillisecond')) {
            $Object.AdditionalLatencyInMillisecond = $AdditionalLatencyInMillisecond
        }
        if ($PSBoundParameters.ContainsKey('SampleSize')) {
            $Object.SampleSize = $SampleSize
        }
        if ($PSBoundParameters.ContainsKey('SuccessfulSamplesRequired')) {
            $Object.SuccessfulSamplesRequired = $SuccessfulSamplesRequired
        }
        return $Object
    }
}

