﻿<?xml version="1.0" encoding="utf-8"?>
<serviceModel xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema" name="TannerPA3" generation="1" functional="0" release="0" Id="39d36a6b-d3fd-435a-8b55-52a462c956f7" dslVersion="1.2.0.0" xmlns="http://schemas.microsoft.com/dsltools/RDSM">
  <groups>
    <group name="TannerPA3Group" generation="1" functional="0" release="0">
      <componentports>
        <inPort name="PA3WebRole:Endpoint1" protocol="http">
          <inToChannel>
            <lBChannelMoniker name="/TannerPA3/TannerPA3Group/LB:PA3WebRole:Endpoint1" />
          </inToChannel>
        </inPort>
      </componentports>
      <settings>
        <aCS name="PA3WebRole:APPINSIGHTS_INSTRUMENTATIONKEY" defaultValue="">
          <maps>
            <mapMoniker name="/TannerPA3/TannerPA3Group/MapPA3WebRole:APPINSIGHTS_INSTRUMENTATIONKEY" />
          </maps>
        </aCS>
        <aCS name="PA3WebRole:Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" defaultValue="">
          <maps>
            <mapMoniker name="/TannerPA3/TannerPA3Group/MapPA3WebRole:Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" />
          </maps>
        </aCS>
        <aCS name="PA3WebRoleInstances" defaultValue="[1,1,1]">
          <maps>
            <mapMoniker name="/TannerPA3/TannerPA3Group/MapPA3WebRoleInstances" />
          </maps>
        </aCS>
        <aCS name="PA3WorkerRole:APPINSIGHTS_INSTRUMENTATIONKEY" defaultValue="">
          <maps>
            <mapMoniker name="/TannerPA3/TannerPA3Group/MapPA3WorkerRole:APPINSIGHTS_INSTRUMENTATIONKEY" />
          </maps>
        </aCS>
        <aCS name="PA3WorkerRole:Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" defaultValue="">
          <maps>
            <mapMoniker name="/TannerPA3/TannerPA3Group/MapPA3WorkerRole:Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" />
          </maps>
        </aCS>
        <aCS name="PA3WorkerRoleInstances" defaultValue="[1,1,1]">
          <maps>
            <mapMoniker name="/TannerPA3/TannerPA3Group/MapPA3WorkerRoleInstances" />
          </maps>
        </aCS>
      </settings>
      <channels>
        <lBChannel name="LB:PA3WebRole:Endpoint1">
          <toPorts>
            <inPortMoniker name="/TannerPA3/TannerPA3Group/PA3WebRole/Endpoint1" />
          </toPorts>
        </lBChannel>
      </channels>
      <maps>
        <map name="MapPA3WebRole:APPINSIGHTS_INSTRUMENTATIONKEY" kind="Identity">
          <setting>
            <aCSMoniker name="/TannerPA3/TannerPA3Group/PA3WebRole/APPINSIGHTS_INSTRUMENTATIONKEY" />
          </setting>
        </map>
        <map name="MapPA3WebRole:Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" kind="Identity">
          <setting>
            <aCSMoniker name="/TannerPA3/TannerPA3Group/PA3WebRole/Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" />
          </setting>
        </map>
        <map name="MapPA3WebRoleInstances" kind="Identity">
          <setting>
            <sCSPolicyIDMoniker name="/TannerPA3/TannerPA3Group/PA3WebRoleInstances" />
          </setting>
        </map>
        <map name="MapPA3WorkerRole:APPINSIGHTS_INSTRUMENTATIONKEY" kind="Identity">
          <setting>
            <aCSMoniker name="/TannerPA3/TannerPA3Group/PA3WorkerRole/APPINSIGHTS_INSTRUMENTATIONKEY" />
          </setting>
        </map>
        <map name="MapPA3WorkerRole:Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" kind="Identity">
          <setting>
            <aCSMoniker name="/TannerPA3/TannerPA3Group/PA3WorkerRole/Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" />
          </setting>
        </map>
        <map name="MapPA3WorkerRoleInstances" kind="Identity">
          <setting>
            <sCSPolicyIDMoniker name="/TannerPA3/TannerPA3Group/PA3WorkerRoleInstances" />
          </setting>
        </map>
      </maps>
      <components>
        <groupHascomponents>
          <role name="PA3WebRole" generation="1" functional="0" release="0" software="c:\users\tanner\documents\visual studio 2015\Projects\TannerPA3\TannerPA3\csx\Release\roles\PA3WebRole" entryPoint="base\x64\WaHostBootstrapper.exe" parameters="base\x64\WaIISHost.exe " memIndex="-1" hostingEnvironment="frontendadmin" hostingEnvironmentVersion="2">
            <componentports>
              <inPort name="Endpoint1" protocol="http" portRanges="80" />
            </componentports>
            <settings>
              <aCS name="APPINSIGHTS_INSTRUMENTATIONKEY" defaultValue="" />
              <aCS name="Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" defaultValue="" />
              <aCS name="__ModelData" defaultValue="&lt;m role=&quot;PA3WebRole&quot; xmlns=&quot;urn:azure:m:v1&quot;&gt;&lt;r name=&quot;PA3WebRole&quot;&gt;&lt;e name=&quot;Endpoint1&quot; /&gt;&lt;/r&gt;&lt;r name=&quot;PA3WorkerRole&quot; /&gt;&lt;/m&gt;" />
            </settings>
            <resourcereferences>
              <resourceReference name="DiagnosticStore" defaultAmount="[4096,4096,4096]" defaultSticky="true" kind="Directory" />
              <resourceReference name="EventStore" defaultAmount="[1000,1000,1000]" defaultSticky="false" kind="LogStore" />
            </resourcereferences>
          </role>
          <sCSPolicy>
            <sCSPolicyIDMoniker name="/TannerPA3/TannerPA3Group/PA3WebRoleInstances" />
            <sCSPolicyUpdateDomainMoniker name="/TannerPA3/TannerPA3Group/PA3WebRoleUpgradeDomains" />
            <sCSPolicyFaultDomainMoniker name="/TannerPA3/TannerPA3Group/PA3WebRoleFaultDomains" />
          </sCSPolicy>
        </groupHascomponents>
        <groupHascomponents>
          <role name="PA3WorkerRole" generation="1" functional="0" release="0" software="c:\users\tanner\documents\visual studio 2015\Projects\TannerPA3\TannerPA3\csx\Release\roles\PA3WorkerRole" entryPoint="base\x64\WaHostBootstrapper.exe" parameters="base\x64\WaWorkerHost.exe " memIndex="-1" hostingEnvironment="consoleroleadmin" hostingEnvironmentVersion="2">
            <settings>
              <aCS name="APPINSIGHTS_INSTRUMENTATIONKEY" defaultValue="" />
              <aCS name="Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" defaultValue="" />
              <aCS name="__ModelData" defaultValue="&lt;m role=&quot;PA3WorkerRole&quot; xmlns=&quot;urn:azure:m:v1&quot;&gt;&lt;r name=&quot;PA3WebRole&quot;&gt;&lt;e name=&quot;Endpoint1&quot; /&gt;&lt;/r&gt;&lt;r name=&quot;PA3WorkerRole&quot; /&gt;&lt;/m&gt;" />
            </settings>
            <resourcereferences>
              <resourceReference name="DiagnosticStore" defaultAmount="[4096,4096,4096]" defaultSticky="true" kind="Directory" />
              <resourceReference name="EventStore" defaultAmount="[1000,1000,1000]" defaultSticky="false" kind="LogStore" />
            </resourcereferences>
          </role>
          <sCSPolicy>
            <sCSPolicyIDMoniker name="/TannerPA3/TannerPA3Group/PA3WorkerRoleInstances" />
            <sCSPolicyUpdateDomainMoniker name="/TannerPA3/TannerPA3Group/PA3WorkerRoleUpgradeDomains" />
            <sCSPolicyFaultDomainMoniker name="/TannerPA3/TannerPA3Group/PA3WorkerRoleFaultDomains" />
          </sCSPolicy>
        </groupHascomponents>
      </components>
      <sCSPolicy>
        <sCSPolicyUpdateDomain name="PA3WebRoleUpgradeDomains" defaultPolicy="[5,5,5]" />
        <sCSPolicyUpdateDomain name="PA3WorkerRoleUpgradeDomains" defaultPolicy="[5,5,5]" />
        <sCSPolicyFaultDomain name="PA3WebRoleFaultDomains" defaultPolicy="[2,2,2]" />
        <sCSPolicyFaultDomain name="PA3WorkerRoleFaultDomains" defaultPolicy="[2,2,2]" />
        <sCSPolicyID name="PA3WebRoleInstances" defaultPolicy="[1,1,1]" />
        <sCSPolicyID name="PA3WorkerRoleInstances" defaultPolicy="[1,1,1]" />
      </sCSPolicy>
    </group>
  </groups>
  <implements>
    <implementation Id="64ccd31c-ad6e-45f5-83f7-0f6506281b4a" ref="Microsoft.RedDog.Contract\ServiceContract\TannerPA3Contract@ServiceDefinition">
      <interfacereferences>
        <interfaceReference Id="b04b3ced-0101-413b-935c-2f2f09e7e741" ref="Microsoft.RedDog.Contract\Interface\PA3WebRole:Endpoint1@ServiceDefinition">
          <inPort>
            <inPortMoniker name="/TannerPA3/TannerPA3Group/PA3WebRole:Endpoint1" />
          </inPort>
        </interfaceReference>
      </interfacereferences>
    </implementation>
  </implements>
</serviceModel>