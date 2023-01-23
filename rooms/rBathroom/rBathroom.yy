{
  "resourceType": "GMRoom",
  "resourceVersion": "1.0",
  "name": "rBathroom",
  "isDnd": false,
  "volume": 1.0,
  "parentRoom": {
    "name": "rParent",
    "path": "rooms/rParent/rParent.yy",
  },
  "views": [
    {"inherit":true,"visible":false,"xview":0,"yview":0,"wview":1366,"hview":768,"xport":0,"yport":0,"wport":1366,"hport":768,"hborder":32,"vborder":32,"hspeed":-1,"vspeed":-1,"objectId":null,},
    {"inherit":true,"visible":false,"xview":0,"yview":0,"wview":1366,"hview":768,"xport":0,"yport":0,"wport":1366,"hport":768,"hborder":32,"vborder":32,"hspeed":-1,"vspeed":-1,"objectId":null,},
    {"inherit":true,"visible":false,"xview":0,"yview":0,"wview":1366,"hview":768,"xport":0,"yport":0,"wport":1366,"hport":768,"hborder":32,"vborder":32,"hspeed":-1,"vspeed":-1,"objectId":null,},
    {"inherit":true,"visible":false,"xview":0,"yview":0,"wview":1366,"hview":768,"xport":0,"yport":0,"wport":1366,"hport":768,"hborder":32,"vborder":32,"hspeed":-1,"vspeed":-1,"objectId":null,},
    {"inherit":true,"visible":false,"xview":0,"yview":0,"wview":1366,"hview":768,"xport":0,"yport":0,"wport":1366,"hport":768,"hborder":32,"vborder":32,"hspeed":-1,"vspeed":-1,"objectId":null,},
    {"inherit":true,"visible":false,"xview":0,"yview":0,"wview":1366,"hview":768,"xport":0,"yport":0,"wport":1366,"hport":768,"hborder":32,"vborder":32,"hspeed":-1,"vspeed":-1,"objectId":null,},
    {"inherit":true,"visible":false,"xview":0,"yview":0,"wview":1366,"hview":768,"xport":0,"yport":0,"wport":1366,"hport":768,"hborder":32,"vborder":32,"hspeed":-1,"vspeed":-1,"objectId":null,},
    {"inherit":true,"visible":false,"xview":0,"yview":0,"wview":1366,"hview":768,"xport":0,"yport":0,"wport":1366,"hport":768,"hborder":32,"vborder":32,"hspeed":-1,"vspeed":-1,"objectId":null,},
  ],
  "layers": [
    {"resourceType":"GMRTileLayer","resourceVersion":"1.1","name":"Solid","tilesetId":{"name":"tSolid","path":"tilesets/tSolid/tSolid.yy",},"x":0,"y":0,"tiles":{"TileDataFormat":1,"SerialiseWidth":12,"SerialiseHeight":12,"TileCompressedData":[
-37,1,-6,0,-6,1,-6,-2147483648,-6,1,-6,-2147483648,
-6,1,-6,-2147483648,-7,1,-4,-2147483648,-54,1,],},"visible":true,"depth":0,"userdefinedDepth":false,"inheritLayerDepth":true,"inheritLayerSettings":true,"inheritVisibility":true,"inheritSubLayers":true,"gridX":16,"gridY":16,"layers":[],"hierarchyFrozen":false,"effectEnabled":true,"effectType":null,"properties":[],},
    {"resourceType":"GMRInstanceLayer","resourceVersion":"1.0","name":"Player","instances":[],"visible":true,"depth":100,"userdefinedDepth":false,"inheritLayerDepth":true,"inheritLayerSettings":false,"inheritVisibility":true,"inheritSubLayers":true,"gridX":16,"gridY":16,"layers":[],"hierarchyFrozen":false,"effectEnabled":true,"effectType":null,"properties":[],},
    {"resourceType":"GMRInstanceLayer","resourceVersion":"1.0","name":"Instances","instances":[
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"blue_door","properties":[
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","propertyId":{"name":"color","path":"objects/pInteractible/pInteractible.yy",},"objectId":{"name":"pInteractible","path":"objects/pInteractible/pInteractible.yy",},"value":"c_blue",},
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","propertyId":{"name":"my_script_args","path":"objects/pInteractible/pInteractible.yy",},"objectId":{"name":"pInteractible","path":"objects/pInteractible/pInteractible.yy",},"value":"[id, rFirstFloor]",},
          ],"isDnd":false,"objectId":{"name":"oRug","path":"objects/oRug/oRug.yy",},"inheritCode":true,"hasCreationCode":false,"colour":4294967295,"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"imageIndex":0,"imageSpeed":1.0,"inheritedItemId":{"name":"inst_38639619","path":"rooms/rParent/rParent.yy",},"frozen":false,"ignore":false,"inheritItemSettings":false,"x":48.0,"y":112.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_7ABAD210","properties":[],"isDnd":false,"objectId":{"name":"oCandle","path":"objects/oCandle/oCandle.yy",},"inheritCode":false,"hasCreationCode":false,"colour":4294967295,"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"imageIndex":0,"imageSpeed":1.0,"inheritedItemId":null,"frozen":false,"ignore":false,"inheritItemSettings":false,"x":64.0,"y":64.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"spawner_blue1","properties":[
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","propertyId":{"name":"my_spawner_color","path":"objects/oPlayerSpawner/oPlayerSpawner.yy",},"objectId":{"name":"oPlayerSpawner","path":"objects/oPlayerSpawner/oPlayerSpawner.yy",},"value":"c_blue",},
          ],"isDnd":false,"objectId":{"name":"oPlayerSpawner","path":"objects/oPlayerSpawner/oPlayerSpawner.yy",},"inheritCode":false,"hasCreationCode":false,"colour":4294967295,"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"imageIndex":0,"imageSpeed":1.0,"inheritedItemId":null,"frozen":false,"ignore":false,"inheritItemSettings":false,"x":48.0,"y":96.0,},
      ],"visible":true,"depth":200,"userdefinedDepth":false,"inheritLayerDepth":true,"inheritLayerSettings":false,"inheritVisibility":true,"inheritSubLayers":true,"gridX":16,"gridY":16,"layers":[],"hierarchyFrozen":false,"effectEnabled":true,"effectType":null,"properties":[],},
    {"resourceType":"GMRTileLayer","resourceVersion":"1.1","name":"Tileset","tilesetId":{"name":"tTileset","path":"tilesets/tTileset/tTileset.yy",},"x":0,"y":0,"tiles":{"TileDataFormat":1,"SerialiseWidth":12,"SerialiseHeight":12,"TileCompressedData":[
1,0,-6,1,-6,0,-6,11,-6,0,-6,21,
-6,0,-6,22,-6,0,-6,22,-6,0,-6,22,
-6,0,-6,22,-7,0,-4,22,-54,0,],},"visible":true,"depth":300,"userdefinedDepth":false,"inheritLayerDepth":true,"inheritLayerSettings":true,"inheritVisibility":true,"inheritSubLayers":true,"gridX":16,"gridY":16,"layers":[],"hierarchyFrozen":false,"effectEnabled":true,"effectType":null,"properties":[],},
    {"resourceType":"GMRBackgroundLayer","resourceVersion":"1.0","name":"Background","spriteId":null,"colour":4278190080,"x":0,"y":0,"htiled":false,"vtiled":false,"hspeed":0.0,"vspeed":0.0,"stretch":false,"animationFPS":15.0,"animationSpeedType":0,"userdefinedAnimFPS":false,"visible":true,"depth":400,"userdefinedDepth":false,"inheritLayerDepth":true,"inheritLayerSettings":true,"inheritVisibility":true,"inheritSubLayers":true,"gridX":16,"gridY":16,"layers":[],"hierarchyFrozen":false,"effectEnabled":true,"effectType":null,"properties":[],},
  ],
  "inheritLayers": true,
  "creationCodeFile": "",
  "inheritCode": true,
  "instanceCreationOrder": [
    {"name":"blue_door","path":"rooms/rBathroom/rBathroom.yy",},
    {"name":"inst_7ABAD210","path":"rooms/rBathroom/rBathroom.yy",},
    {"name":"spawner_blue1","path":"rooms/rBathroom/rBathroom.yy",},
  ],
  "inheritCreationOrder": true,
  "sequenceId": null,
  "roomSettings": {
    "inheritRoomSettings": true,
    "Width": 192,
    "Height": 192,
    "persistent": false,
  },
  "viewSettings": {
    "inheritViewSettings": true,
    "enableViews": false,
    "clearViewBackground": false,
    "clearDisplayBuffer": true,
  },
  "physicsSettings": {
    "inheritPhysicsSettings": true,
    "PhysicsWorld": false,
    "PhysicsWorldGravityX": 0.0,
    "PhysicsWorldGravityY": 10.0,
    "PhysicsWorldPixToMetres": 0.1,
  },
  "parent": {
    "name": "2 Middle",
    "path": "folders/Rooms/2 Middle.yy",
  },
}