param name string
param location string = resourceGroup().location
param adminUserEnabled bool


// creates container registry
resource containerRegistry 'Microsoft.ContainerRegistry/registries@2023-07-01' = {
  name: name
  location: location
  sku: {
    name: 'Basic'
  }
  properties: {
    adminUserEnabled: adminUserEnabled
  }
}


// Output values for verification (optional, avoid exposing sensitive data)
output containerRegistryName string = containerRegistry.name
output containerRegistryLoginServer string = containerRegistry.properties.loginServer
