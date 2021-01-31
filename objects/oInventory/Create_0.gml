/// @description create list

// oInventory will hold the id's of the object collected
inventory_list = ds_list_create();

var _inst = instance_create_layer(-4000, -4000, "Instances", oKey);
ds_list_add(inventory_list, _inst);