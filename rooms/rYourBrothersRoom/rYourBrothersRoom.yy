{
  "resourceType": "GMRoom",
  "resourceVersion": "1.0",
  "name": "rYourBrothersRoom",
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
-37,1,-9,0,3,-2147483648,1,1,-10,-2147483648,-2,1,
-10,-2147483648,-2,1,-10,-2147483648,-2,1,-10,-2147483648,-2,1,
-10,-2147483648,-2,1,-10,-2147483648,-2,1,-10,-2147483648,-13,1,
],},"visible":true,"depth":0,"userdefinedDepth":false,"inheritLayerDepth":true,"inheritLayerSettings":true,"inheritVisibility":true,"inheritSubLayers":true,"gridX":16,"gridY":16,"layers":[],"hierarchyFrozen":false,"effectEnabled":true,"effectType":null,"properties":[],},
    {"resourceType":"GMRInstanceLayer","resourceVersion":"1.0","name":"Player","instances":[],"visible":true,"depth":100,"userdefinedDepth":false,"inheritLayerDepth":true,"inheritLayerSettings":false,"inheritVisibility":true,"inheritSubLayers":true,"gridX":16,"gridY":16,"layers":[],"hierarchyFrozen":false,"effectEnabled":true,"effectType":null,"properties":[],},
    {"resourceType":"GMRInstanceLayer","resourceVersion":"1.0","name":"Instances","instances":[
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"door_fuchsia1","properties":[
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","propertyId":{"name":"color","path":"objects/pInteractible/pInteractible.yy",},"objectId":{"name":"pInteractible","path":"objects/pInteractible/pInteractible.yy",},"value":"c_fuchsia",},
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","propertyId":{"name":"my_script_args","path":"objects/pInteractible/pInteractible.yy",},"objectId":{"name":"pInteractible","path":"objects/pInteractible/pInteractible.yy",},"value":"[id, rBasement]",},
          ],"isDnd":false,"objectId":{"name":"oRug","path":"objects/oRug/oRug.yy",},"inheritCode":true,"hasCreationCode":false,"colour":4294967295,"rotation":-90.0,"scaleX":1.0,"scaleY":1.0,"imageIndex":0,"imageSpeed":1.0,"inheritedItemId":{"name":"inst_38639619","path":"rooms/rParent/rParent.yy",},"frozen":false,"ignore":false,"inheritItemSettings":false,"x":32.0,"y":112.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"key_orange","properties":[
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","propertyId":{"name":"color","path":"objects/pInteractible/pInteractible.yy",},"objectId":{"name":"pInteractible","path":"objects/pInteractible/pInteractible.yy",},"value":"c_orange",},
          ],"isDnd":false,"objectId":{"name":"oKey","path":"objects/oKey/oKey.yy",},"inheritCode":true,"hasCreationCode":false,"colour":4294967295,"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"imageIndex":0,"imageSpeed":1.0,"inheritedItemId":{"name":"inst_781BC533","path":"rooms/rParent/rParent.yy",},"frozen":false,"ignore":false,"inheritItemSettings":false,"x":128.0,"y":112.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"spawner_fuchsia1","properties":[
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","propertyId":{"name":"my_spawner_color","path":"objects/oPlayerSpawner/oPlayerSpawner.yy",},"objectId":{"name":"oPlayerSpawner","path":"objects/oPlayerSpawner/oPlayerSpawner.yy",},"value":"c_fuchsia",},
          ],"isDnd":false,"objectId":{"name":"oPlayerSpawner","path":"objects/oPlayerSpawner/oPlayerSpawner.yy",},"inheritCode":false,"hasCreationCode":false,"colour":4294967295,"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"imageIndex":0,"imageSpeed":1.0,"inheritedItemId":null,"frozen":false,"ignore":false,"inheritItemSettings":false,"x":32.0,"y":112.0,},
      ],"visible":true,"depth":200,"userdefinedDepth":false,"inheritLayerDepth":true,"inheritLayerSettings":false,"inheritVisibility":true,"inheritSubLayers":true,"gridX":16,"gridY":16,"layers":[],"hierarchyFrozen":false,"effectEnabled":true,"effectType":null,"properties":[],},
    {"resourceType":"GMRTileLayer","resourceVersion":"1.1","name":"Tileset","tilesetId":{"name":"tTileset","path":"tilesets/tTileset/tTileset.yy",},"x":0,"y":0,"tiles":{"TileDataFormat":1,"SerialiseWidth":12,"SerialiseHeight":12,"TileCompressedData":[
1,0,-10,1,-2,0,-10,11,-2,0,-10,21,
-2,0,-10,23,-2,0,1,23,-9,22,-2,0,
1,23,-9,22,-2,0,1,23,-9,22,-2,0,
1,23,-9,22,-2,0,1,23,-9,22,-2,0,
1,23,-9,22,-2,0,1,23,-9,22,-13,0,
],},"visible":true,"depth":300,"userdefinedDepth":false,"inheritLayerDepth":true,"inheritLayerSettings":true,"inheritVisibility":true,"inheritSubLayers":true,"gridX":16,"gridY":16,"layers":[],"hierarchyFrozen":false,"effectEnabled":true,"effectType":null,"properties":[],},
    {"resourceType":"GMRBackgroundLayer","resourceVersion":"1.0","name":"Background","spriteId":null,"colour":4278190080,"x":0,"y":0,"htiled":false,"vtiled":false,"hspeed":0.0,"vspeed":0.0,"stretch":false,"animationFPS":15.0,"animationSpeedType":0,"userdefinedAnimFPS":false,"visible":true,"depth":400,"userdefinedDepth":false,"inheritLayerDepth":true,"inheritLayerSettings":true,"inheritVisibility":true,"inheritSubLayers":true,"gridX":16,"gridY":16,"layers":[],"hierarchyFrozen":false,"effectEnabled":true,"effectType":null,"properties":[],},
  ],
  "inheritLayers": true,
  "creationCodeFile": "",
  "inheritCode": true,
  "instanceCreationOrder": [
    {"name":"door_fuchsia1","path":"rooms/rYourBrothersRoom/rYourBrothersRoom.yy",},
    {"name":"key_orange","path":"rooms/rYourBrothersRoom/rYourBrothersRoom.yy",},
    {"name":"spawner_fuchsia1","path":"rooms/rYourBrothersRoom/rYourBrothersRoom.yy",},
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
    "name": "3 Bottom",
    "path": "folders/Rooms/3 Bottom.yy",
  },
}