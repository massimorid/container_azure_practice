param location string = resourceGroup().location
param name string
param sku object

resource appServicePlan 'Microsoft.Web/serverFarms@2022-03-01' = {
  name: name
  location: location
  sku: {
      name: sku.name
      tier: sku.tier
      family: sku.family
      capacity: sku.capacity
  }
  kind: 'linux'
  properties: {
    reserved: true
  }
}

output id string = appServicePlan.id
output name string = appServicePlan.name
