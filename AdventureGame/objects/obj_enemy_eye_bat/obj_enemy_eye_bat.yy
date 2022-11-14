{
  "resourceType": "GMObject",
  "resourceVersion": "1.0",
  "name": "obj_enemy_eye_bat",
  "spriteId": {
    "name": "spr_enemy_eye_bat",
    "path": "sprites/spr_enemy_eye_bat/spr_enemy_eye_bat.yy",
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
    {"x":0.0,"y":0.0,},
    {"x":16.0,"y":0.0,},
    {"x":16.0,"y":9.0,},
    {"x":0.0,"y":9.0,},
  ],
  "eventList": [
    {"resourceType":"GMEvent","resourceVersion":"1.0","name":"","isDnD":false,"eventNum":0,"eventType":3,"collisionObjectId":null,},
    {"resourceType":"GMEvent","resourceVersion":"1.0","name":"","isDnD":false,"eventNum":0,"eventType":0,"collisionObjectId":null,},
    {"resourceType":"GMEvent","resourceVersion":"1.0","name":"","isDnD":false,"eventNum":0,"eventType":2,"collisionObjectId":null,},
    {"resourceType":"GMEvent","resourceVersion":"1.0","name":"","isDnD":false,"eventNum":1,"eventType":2,"collisionObjectId":null,},
    {"resourceType":"GMEvent","resourceVersion":"1.0","name":"","isDnD":false,"eventNum":0,"eventType":4,"collisionObjectId":{"name":"obj_player","path":"objects/obj_player/obj_player.yy",},},
    {"resourceType":"GMEvent","resourceVersion":"1.0","name":"","isDnD":false,"eventNum":0,"eventType":1,"collisionObjectId":null,},
  ],
  "properties": [
    {"resourceType":"GMObjectProperty","resourceVersion":"1.0","name":"sight","varType":0,"value":"64","rangeEnabled":false,"rangeMin":0.0,"rangeMax":10.0,"listItems":[],"multiselect":false,"filters":[],},
    {"resourceType":"GMObjectProperty","resourceVersion":"1.0","name":"xaxis","varType":0,"value":"0","rangeEnabled":false,"rangeMin":0.0,"rangeMax":10.0,"listItems":[],"multiselect":false,"filters":[],},
    {"resourceType":"GMObjectProperty","resourceVersion":"1.0","name":"yaxis","varType":0,"value":"0","rangeEnabled":false,"rangeMin":0.0,"rangeMax":10.0,"listItems":[],"multiselect":false,"filters":[],},
    {"resourceType":"GMObjectProperty","resourceVersion":"1.0","name":"state","varType":4,"value":"scr_enemy_idle_state","rangeEnabled":false,"rangeMin":0.0,"rangeMax":10.0,"listItems":[],"multiselect":false,"filters":[],},
    {"resourceType":"GMObjectProperty","resourceVersion":"1.0","name":"attack_delay","varType":0,"value":"1.25","rangeEnabled":false,"rangeMin":0.0,"rangeMax":10.0,"listItems":[],"multiselect":false,"filters":[],},
    {"resourceType":"GMObjectProperty","resourceVersion":"1.0","name":"knockback","varType":0,"value":"5","rangeEnabled":false,"rangeMin":0.0,"rangeMax":10.0,"listItems":[],"multiselect":false,"filters":[],},
  ],
  "overriddenProperties": [
    {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","propertyId":{"name":"moveSpeed","path":"objects/obj_lifeform_parent/obj_lifeform_parent.yy",},"objectId":{"name":"obj_lifeform_parent","path":"objects/obj_lifeform_parent/obj_lifeform_parent.yy",},"value":"1",},
    {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","propertyId":{"name":"imageSpeed","path":"objects/obj_lifeform_parent/obj_lifeform_parent.yy",},"objectId":{"name":"obj_lifeform_parent","path":"objects/obj_lifeform_parent/obj_lifeform_parent.yy",},"value":"0.2",},
    {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","propertyId":{"name":"healthPoints","path":"objects/obj_lifeform_parent/obj_lifeform_parent.yy",},"objectId":{"name":"obj_lifeform_parent","path":"objects/obj_lifeform_parent/obj_lifeform_parent.yy",},"value":"3",},
  ],
  "parent": {
    "name": "Enemy Objects",
    "path": "folders/Objects/Enemy Objects.yy",
  },
}