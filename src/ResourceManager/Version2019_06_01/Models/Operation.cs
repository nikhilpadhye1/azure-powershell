// <auto-generated>
// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for
// license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
// Changes may cause incorrect behavior and will be lost if the code is
// regenerated.
// </auto-generated>

namespace Microsoft.Azure.Management.ResourceManager.Version2019_06_01.Models
{
    using Newtonsoft.Json;
    using System.Linq;

    /// <summary>
    /// Microsoft.Resources operation
    /// </summary>
    public partial class Operation
    {
        /// <summary>
        /// Initializes a new instance of the Operation class.
        /// </summary>
        public Operation()
        {
            CustomInit();
        }

        /// <summary>
        /// Initializes a new instance of the Operation class.
        /// </summary>
        /// <param name="name">Operation name:
        /// {provider}/{resource}/{operation}</param>
        /// <param name="display">The object that represents the
        /// operation.</param>
        public Operation(string name = default(string), OperationDisplay display = default(OperationDisplay))
        {
            Name = name;
            Display = display;
            CustomInit();
        }

        /// <summary>
        /// An initialization method that performs custom operations like setting defaults
        /// </summary>
        partial void CustomInit();

        /// <summary>
        /// Gets or sets operation name: {provider}/{resource}/{operation}
        /// </summary>
        [JsonProperty(PropertyName = "name")]
        public string Name { get; set; }

        /// <summary>
        /// Gets or sets the object that represents the operation.
        /// </summary>
        [JsonProperty(PropertyName = "display")]
        public OperationDisplay Display { get; set; }

    }
}
