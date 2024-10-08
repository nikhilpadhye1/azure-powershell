// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
// Code generated by Microsoft (R) AutoRest Code Generator.
// Changes may cause incorrect behavior and will be lost if the code is regenerated.

namespace Microsoft.Azure.PowerShell.Cmdlets.FirmwareAnalysis.Models
{
    using Microsoft.Azure.PowerShell.Cmdlets.FirmwareAnalysis.Runtime.PowerShell;

    /// <summary>Details of a CVE detected in firmware.</summary>
    [System.ComponentModel.TypeConverter(typeof(CveResultTypeConverter))]
    public partial class CveResult
    {

        /// <summary>
        /// <c>AfterDeserializeDictionary</c> will be called after the deserialization has finished, allowing customization of the
        /// object before it is returned. Implement this method in a partial class to enable this behavior
        /// </summary>
        /// <param name="content">The global::System.Collections.IDictionary content that should be used.</param>

        partial void AfterDeserializeDictionary(global::System.Collections.IDictionary content);

        /// <summary>
        /// <c>AfterDeserializePSObject</c> will be called after the deserialization has finished, allowing customization of the object
        /// before it is returned. Implement this method in a partial class to enable this behavior
        /// </summary>
        /// <param name="content">The global::System.Management.Automation.PSObject content that should be used.</param>

        partial void AfterDeserializePSObject(global::System.Management.Automation.PSObject content);

        /// <summary>
        /// <c>BeforeDeserializeDictionary</c> will be called before the deserialization has commenced, allowing complete customization
        /// of the object before it is deserialized.
        /// If you wish to disable the default deserialization entirely, return <c>true</c> in the <paramref name="returnNow" /> output
        /// parameter.
        /// Implement this method in a partial class to enable this behavior.
        /// </summary>
        /// <param name="content">The global::System.Collections.IDictionary content that should be used.</param>
        /// <param name="returnNow">Determines if the rest of the serialization should be processed, or if the method should return
        /// instantly.</param>

        partial void BeforeDeserializeDictionary(global::System.Collections.IDictionary content, ref bool returnNow);

        /// <summary>
        /// <c>BeforeDeserializePSObject</c> will be called before the deserialization has commenced, allowing complete customization
        /// of the object before it is deserialized.
        /// If you wish to disable the default deserialization entirely, return <c>true</c> in the <paramref name="returnNow" /> output
        /// parameter.
        /// Implement this method in a partial class to enable this behavior.
        /// </summary>
        /// <param name="content">The global::System.Management.Automation.PSObject content that should be used.</param>
        /// <param name="returnNow">Determines if the rest of the serialization should be processed, or if the method should return
        /// instantly.</param>

        partial void BeforeDeserializePSObject(global::System.Management.Automation.PSObject content, ref bool returnNow);

        /// <summary>
        /// <c>OverrideToString</c> will be called if it is implemented. Implement this method in a partial class to enable this behavior
        /// </summary>
        /// <param name="stringResult">/// instance serialized to a string, normally it is a Json</param>
        /// <param name="returnNow">/// set returnNow to true if you provide a customized OverrideToString function</param>

        partial void OverrideToString(ref string stringResult, ref bool returnNow);

        /// <summary>
        /// Deserializes a <see cref="global::System.Collections.IDictionary" /> into a new instance of <see cref="Microsoft.Azure.PowerShell.Cmdlets.FirmwareAnalysis.Models.CveResult"
        /// />.
        /// </summary>
        /// <param name="content">The global::System.Collections.IDictionary content that should be used.</param>
        internal CveResult(global::System.Collections.IDictionary content)
        {
            bool returnNow = false;
            BeforeDeserializeDictionary(content, ref returnNow);
            if (returnNow)
            {
                return;
            }
            // actually deserialize
            if (content.Contains("Component"))
            {
                ((Microsoft.Azure.PowerShell.Cmdlets.FirmwareAnalysis.Models.ICveResultInternal)this).Component = (Microsoft.Azure.PowerShell.Cmdlets.FirmwareAnalysis.Models.ICveComponent) content.GetValueForProperty("Component",((Microsoft.Azure.PowerShell.Cmdlets.FirmwareAnalysis.Models.ICveResultInternal)this).Component, Microsoft.Azure.PowerShell.Cmdlets.FirmwareAnalysis.Models.CveComponentTypeConverter.ConvertFrom);
            }
            if (content.Contains("CveId"))
            {
                ((Microsoft.Azure.PowerShell.Cmdlets.FirmwareAnalysis.Models.ICveResultInternal)this).CveId = (string) content.GetValueForProperty("CveId",((Microsoft.Azure.PowerShell.Cmdlets.FirmwareAnalysis.Models.ICveResultInternal)this).CveId, global::System.Convert.ToString);
            }
            if (content.Contains("Severity"))
            {
                ((Microsoft.Azure.PowerShell.Cmdlets.FirmwareAnalysis.Models.ICveResultInternal)this).Severity = (string) content.GetValueForProperty("Severity",((Microsoft.Azure.PowerShell.Cmdlets.FirmwareAnalysis.Models.ICveResultInternal)this).Severity, global::System.Convert.ToString);
            }
            if (content.Contains("Name"))
            {
                ((Microsoft.Azure.PowerShell.Cmdlets.FirmwareAnalysis.Models.ICveResultInternal)this).Name = (string) content.GetValueForProperty("Name",((Microsoft.Azure.PowerShell.Cmdlets.FirmwareAnalysis.Models.ICveResultInternal)this).Name, global::System.Convert.ToString);
            }
            if (content.Contains("CvssScore"))
            {
                ((Microsoft.Azure.PowerShell.Cmdlets.FirmwareAnalysis.Models.ICveResultInternal)this).CvssScore = (string) content.GetValueForProperty("CvssScore",((Microsoft.Azure.PowerShell.Cmdlets.FirmwareAnalysis.Models.ICveResultInternal)this).CvssScore, global::System.Convert.ToString);
            }
            if (content.Contains("CvssVersion"))
            {
                ((Microsoft.Azure.PowerShell.Cmdlets.FirmwareAnalysis.Models.ICveResultInternal)this).CvssVersion = (string) content.GetValueForProperty("CvssVersion",((Microsoft.Azure.PowerShell.Cmdlets.FirmwareAnalysis.Models.ICveResultInternal)this).CvssVersion, global::System.Convert.ToString);
            }
            if (content.Contains("CvssV2Score"))
            {
                ((Microsoft.Azure.PowerShell.Cmdlets.FirmwareAnalysis.Models.ICveResultInternal)this).CvssV2Score = (string) content.GetValueForProperty("CvssV2Score",((Microsoft.Azure.PowerShell.Cmdlets.FirmwareAnalysis.Models.ICveResultInternal)this).CvssV2Score, global::System.Convert.ToString);
            }
            if (content.Contains("CvssV3Score"))
            {
                ((Microsoft.Azure.PowerShell.Cmdlets.FirmwareAnalysis.Models.ICveResultInternal)this).CvssV3Score = (string) content.GetValueForProperty("CvssV3Score",((Microsoft.Azure.PowerShell.Cmdlets.FirmwareAnalysis.Models.ICveResultInternal)this).CvssV3Score, global::System.Convert.ToString);
            }
            if (content.Contains("Link"))
            {
                ((Microsoft.Azure.PowerShell.Cmdlets.FirmwareAnalysis.Models.ICveResultInternal)this).Link = (System.Collections.Generic.List<Microsoft.Azure.PowerShell.Cmdlets.FirmwareAnalysis.Models.ICveLink>) content.GetValueForProperty("Link",((Microsoft.Azure.PowerShell.Cmdlets.FirmwareAnalysis.Models.ICveResultInternal)this).Link, __y => TypeConverterExtensions.SelectToList<Microsoft.Azure.PowerShell.Cmdlets.FirmwareAnalysis.Models.ICveLink>(__y, Microsoft.Azure.PowerShell.Cmdlets.FirmwareAnalysis.Models.CveLinkTypeConverter.ConvertFrom));
            }
            if (content.Contains("Description"))
            {
                ((Microsoft.Azure.PowerShell.Cmdlets.FirmwareAnalysis.Models.ICveResultInternal)this).Description = (string) content.GetValueForProperty("Description",((Microsoft.Azure.PowerShell.Cmdlets.FirmwareAnalysis.Models.ICveResultInternal)this).Description, global::System.Convert.ToString);
            }
            if (content.Contains("ComponentId"))
            {
                ((Microsoft.Azure.PowerShell.Cmdlets.FirmwareAnalysis.Models.ICveResultInternal)this).ComponentId = (string) content.GetValueForProperty("ComponentId",((Microsoft.Azure.PowerShell.Cmdlets.FirmwareAnalysis.Models.ICveResultInternal)this).ComponentId, global::System.Convert.ToString);
            }
            if (content.Contains("ComponentName"))
            {
                ((Microsoft.Azure.PowerShell.Cmdlets.FirmwareAnalysis.Models.ICveResultInternal)this).ComponentName = (string) content.GetValueForProperty("ComponentName",((Microsoft.Azure.PowerShell.Cmdlets.FirmwareAnalysis.Models.ICveResultInternal)this).ComponentName, global::System.Convert.ToString);
            }
            if (content.Contains("ComponentVersion"))
            {
                ((Microsoft.Azure.PowerShell.Cmdlets.FirmwareAnalysis.Models.ICveResultInternal)this).ComponentVersion = (string) content.GetValueForProperty("ComponentVersion",((Microsoft.Azure.PowerShell.Cmdlets.FirmwareAnalysis.Models.ICveResultInternal)this).ComponentVersion, global::System.Convert.ToString);
            }
            AfterDeserializeDictionary(content);
        }

        /// <summary>
        /// Deserializes a <see cref="global::System.Management.Automation.PSObject" /> into a new instance of <see cref="Microsoft.Azure.PowerShell.Cmdlets.FirmwareAnalysis.Models.CveResult"
        /// />.
        /// </summary>
        /// <param name="content">The global::System.Management.Automation.PSObject content that should be used.</param>
        internal CveResult(global::System.Management.Automation.PSObject content)
        {
            bool returnNow = false;
            BeforeDeserializePSObject(content, ref returnNow);
            if (returnNow)
            {
                return;
            }
            // actually deserialize
            if (content.Contains("Component"))
            {
                ((Microsoft.Azure.PowerShell.Cmdlets.FirmwareAnalysis.Models.ICveResultInternal)this).Component = (Microsoft.Azure.PowerShell.Cmdlets.FirmwareAnalysis.Models.ICveComponent) content.GetValueForProperty("Component",((Microsoft.Azure.PowerShell.Cmdlets.FirmwareAnalysis.Models.ICveResultInternal)this).Component, Microsoft.Azure.PowerShell.Cmdlets.FirmwareAnalysis.Models.CveComponentTypeConverter.ConvertFrom);
            }
            if (content.Contains("CveId"))
            {
                ((Microsoft.Azure.PowerShell.Cmdlets.FirmwareAnalysis.Models.ICveResultInternal)this).CveId = (string) content.GetValueForProperty("CveId",((Microsoft.Azure.PowerShell.Cmdlets.FirmwareAnalysis.Models.ICveResultInternal)this).CveId, global::System.Convert.ToString);
            }
            if (content.Contains("Severity"))
            {
                ((Microsoft.Azure.PowerShell.Cmdlets.FirmwareAnalysis.Models.ICveResultInternal)this).Severity = (string) content.GetValueForProperty("Severity",((Microsoft.Azure.PowerShell.Cmdlets.FirmwareAnalysis.Models.ICveResultInternal)this).Severity, global::System.Convert.ToString);
            }
            if (content.Contains("Name"))
            {
                ((Microsoft.Azure.PowerShell.Cmdlets.FirmwareAnalysis.Models.ICveResultInternal)this).Name = (string) content.GetValueForProperty("Name",((Microsoft.Azure.PowerShell.Cmdlets.FirmwareAnalysis.Models.ICveResultInternal)this).Name, global::System.Convert.ToString);
            }
            if (content.Contains("CvssScore"))
            {
                ((Microsoft.Azure.PowerShell.Cmdlets.FirmwareAnalysis.Models.ICveResultInternal)this).CvssScore = (string) content.GetValueForProperty("CvssScore",((Microsoft.Azure.PowerShell.Cmdlets.FirmwareAnalysis.Models.ICveResultInternal)this).CvssScore, global::System.Convert.ToString);
            }
            if (content.Contains("CvssVersion"))
            {
                ((Microsoft.Azure.PowerShell.Cmdlets.FirmwareAnalysis.Models.ICveResultInternal)this).CvssVersion = (string) content.GetValueForProperty("CvssVersion",((Microsoft.Azure.PowerShell.Cmdlets.FirmwareAnalysis.Models.ICveResultInternal)this).CvssVersion, global::System.Convert.ToString);
            }
            if (content.Contains("CvssV2Score"))
            {
                ((Microsoft.Azure.PowerShell.Cmdlets.FirmwareAnalysis.Models.ICveResultInternal)this).CvssV2Score = (string) content.GetValueForProperty("CvssV2Score",((Microsoft.Azure.PowerShell.Cmdlets.FirmwareAnalysis.Models.ICveResultInternal)this).CvssV2Score, global::System.Convert.ToString);
            }
            if (content.Contains("CvssV3Score"))
            {
                ((Microsoft.Azure.PowerShell.Cmdlets.FirmwareAnalysis.Models.ICveResultInternal)this).CvssV3Score = (string) content.GetValueForProperty("CvssV3Score",((Microsoft.Azure.PowerShell.Cmdlets.FirmwareAnalysis.Models.ICveResultInternal)this).CvssV3Score, global::System.Convert.ToString);
            }
            if (content.Contains("Link"))
            {
                ((Microsoft.Azure.PowerShell.Cmdlets.FirmwareAnalysis.Models.ICveResultInternal)this).Link = (System.Collections.Generic.List<Microsoft.Azure.PowerShell.Cmdlets.FirmwareAnalysis.Models.ICveLink>) content.GetValueForProperty("Link",((Microsoft.Azure.PowerShell.Cmdlets.FirmwareAnalysis.Models.ICveResultInternal)this).Link, __y => TypeConverterExtensions.SelectToList<Microsoft.Azure.PowerShell.Cmdlets.FirmwareAnalysis.Models.ICveLink>(__y, Microsoft.Azure.PowerShell.Cmdlets.FirmwareAnalysis.Models.CveLinkTypeConverter.ConvertFrom));
            }
            if (content.Contains("Description"))
            {
                ((Microsoft.Azure.PowerShell.Cmdlets.FirmwareAnalysis.Models.ICveResultInternal)this).Description = (string) content.GetValueForProperty("Description",((Microsoft.Azure.PowerShell.Cmdlets.FirmwareAnalysis.Models.ICveResultInternal)this).Description, global::System.Convert.ToString);
            }
            if (content.Contains("ComponentId"))
            {
                ((Microsoft.Azure.PowerShell.Cmdlets.FirmwareAnalysis.Models.ICveResultInternal)this).ComponentId = (string) content.GetValueForProperty("ComponentId",((Microsoft.Azure.PowerShell.Cmdlets.FirmwareAnalysis.Models.ICveResultInternal)this).ComponentId, global::System.Convert.ToString);
            }
            if (content.Contains("ComponentName"))
            {
                ((Microsoft.Azure.PowerShell.Cmdlets.FirmwareAnalysis.Models.ICveResultInternal)this).ComponentName = (string) content.GetValueForProperty("ComponentName",((Microsoft.Azure.PowerShell.Cmdlets.FirmwareAnalysis.Models.ICveResultInternal)this).ComponentName, global::System.Convert.ToString);
            }
            if (content.Contains("ComponentVersion"))
            {
                ((Microsoft.Azure.PowerShell.Cmdlets.FirmwareAnalysis.Models.ICveResultInternal)this).ComponentVersion = (string) content.GetValueForProperty("ComponentVersion",((Microsoft.Azure.PowerShell.Cmdlets.FirmwareAnalysis.Models.ICveResultInternal)this).ComponentVersion, global::System.Convert.ToString);
            }
            AfterDeserializePSObject(content);
        }

        /// <summary>
        /// Deserializes a <see cref="global::System.Collections.IDictionary" /> into an instance of <see cref="Microsoft.Azure.PowerShell.Cmdlets.FirmwareAnalysis.Models.CveResult"
        /// />.
        /// </summary>
        /// <param name="content">The global::System.Collections.IDictionary content that should be used.</param>
        /// <returns>
        /// an instance of <see cref="Microsoft.Azure.PowerShell.Cmdlets.FirmwareAnalysis.Models.ICveResult" />.
        /// </returns>
        public static Microsoft.Azure.PowerShell.Cmdlets.FirmwareAnalysis.Models.ICveResult DeserializeFromDictionary(global::System.Collections.IDictionary content)
        {
            return new CveResult(content);
        }

        /// <summary>
        /// Deserializes a <see cref="global::System.Management.Automation.PSObject" /> into an instance of <see cref="Microsoft.Azure.PowerShell.Cmdlets.FirmwareAnalysis.Models.CveResult"
        /// />.
        /// </summary>
        /// <param name="content">The global::System.Management.Automation.PSObject content that should be used.</param>
        /// <returns>
        /// an instance of <see cref="Microsoft.Azure.PowerShell.Cmdlets.FirmwareAnalysis.Models.ICveResult" />.
        /// </returns>
        public static Microsoft.Azure.PowerShell.Cmdlets.FirmwareAnalysis.Models.ICveResult DeserializeFromPSObject(global::System.Management.Automation.PSObject content)
        {
            return new CveResult(content);
        }

        /// <summary>
        /// Creates a new instance of <see cref="CveResult" />, deserializing the content from a json string.
        /// </summary>
        /// <param name="jsonText">a string containing a JSON serialized instance of this model.</param>
        /// <returns>an instance of the <see cref="CveResult" /> model class.</returns>
        public static Microsoft.Azure.PowerShell.Cmdlets.FirmwareAnalysis.Models.ICveResult FromJsonString(string jsonText) => FromJson(Microsoft.Azure.PowerShell.Cmdlets.FirmwareAnalysis.Runtime.Json.JsonNode.Parse(jsonText));

        /// <summary>Serializes this instance to a json string.</summary>

        /// <returns>a <see cref="System.String" /> containing this model serialized to JSON text.</returns>
        public string ToJsonString() => ToJson(null, Microsoft.Azure.PowerShell.Cmdlets.FirmwareAnalysis.Runtime.SerializationMode.IncludeAll)?.ToString();

        public override string ToString()
        {
            var returnNow = false;
            var result = global::System.String.Empty;
            OverrideToString(ref result, ref returnNow);
            if (returnNow)
            {
                return result;
            }
            return ToJsonString();
        }
    }
    /// Details of a CVE detected in firmware.
    [System.ComponentModel.TypeConverter(typeof(CveResultTypeConverter))]
    public partial interface ICveResult

    {

    }
}