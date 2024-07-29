if(($null -eq $TestName) -or ($TestName -contains 'Get-AzMLWorkspaceOnlineDeployment'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'Get-AzMLWorkspaceOnlineDeployment.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'Get-AzMLWorkspaceOnlineDeployment' {
    It 'List' {
        { Get-AzMLWorkspaceOnlineDeployment -ResourceGroupName $env.DataGroupName -WorkspaceName $env.computeworkspace -EndpointName $env.onlineEndpoint } | Should -Not -Throw
    }

    It 'Get' {
        { Get-AzMLWorkspaceOnlineDeployment -ResourceGroupName $env.DataGroupName -WorkspaceName $env.computeworkspace -EndpointName $env.onlineEndpoint -Name $env.onlineDeployment } | Should -Not -Throw
    }
}
