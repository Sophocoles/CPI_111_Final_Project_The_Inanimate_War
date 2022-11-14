{
  "resourceType": "GMObject",
  "resourceVersion": "1.0",
  "name": "obj_stubby",
  "spriteId": {
    "name": "spr_player_down",
    "path": "sprites/spr_player_down/spr_player_down.yy",
  },
  "solid": false,
  "visible": true,
  "managed": true,
  "spriteMaskId": null,
  "persistent": false,
  "parentObjectId": {
    "name": "obj_lifeform_parent",
    "path": "objects/obj_lifeform_parent/obj_lifeform_parent.yy",
  },
  "physicsObject": true,
  "physicsSensor": false,
  "physicsShape": 1,
  "physicsGroup": 1,
  "physicsDensity": 0.5,
  "physicsRestitution": 0.1,
  "physicsLinearDamping": 5.0,
  "physicsAngularDamping": 0.1,
  "physicsFriction": 0.2,
  "physicsStartAwake": true,
  "physicsKinematic": false,
  "physicsShapePoints": [
    {"x":1.0,"y":0.0,},
    {"x":13.0,"y":0.0,},
    {"x":13.0,"y":20.0,},
    {"x":1.0,"y":20.0,},
  ],
  "eventList": [
    {"resourceType":"GMEvent","resourceVersion":"1.0","name":"","isDnD":false,"eventNum":0,"eventType":0,"collisionObjectId":null,},
    {"resourceType":"GMEvent","resourceVersion":"1.0","name":"","isDnD":false,"eventNum":0,"eventType":3,"collisionObjectId":null,},
    {"resourceType":"GMEvent","resourceVersion":"1.0","name":"","isDnD":false,"eventNum":0,"eventType":2,"collisionObjectId":null,},
    {"resourceType":"GMEvent","resourceVersion":"1.0","name":"","isDnD":false,"eventNum":7,"eventType":7,"collisionObjectId":null,},
  ],
  "properties": [
    {"resourceType":"GMObjectProperty","resourceVersion":"1.0","name":"attacked","varType":3,"value":"0","rangeEnabled":false,"rangeMin":0.0,"rangeMax":10.0,"listItems":[],"multiselect":false,"filters":[],},
  ],
  "overriddenProperties": [
    {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","propertyId":{"name":"healthPoints","path":"objects/obj_lifeform_parent/obj_lifeform_parent.yy",},"objectId":{"name":"obj_lifeform_parent","path":"objects/obj_lifeform_parent/obj_lifeform_parent.yy",},"value":"20",},
  ],
  "parent": {
    "name": "Characters",
    "path": "folders/Objects/Characters.yy",
  },
}