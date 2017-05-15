if angelsmods and angelsmods.refining then
   data.raw["item-subgroup"]["angels-warehouses"].group = "resource-refining"
end

if angelsmods.addons.warehouse_icon then
	data.raw["container"]["angels-warehouse"].scale_info_icons = true
	data.raw["logistic-container"]["angels-warehouse-passive-provider"].scale_info_icons = true
	data.raw["logistic-container"]["angels-warehouse-active-provider"].scale_info_icons = true
	data.raw["logistic-container"]["angels-warehouse-storage"].scale_info_icons = true
	data.raw["logistic-container"]["angels-warehouse-requester"].scale_info_icons = true
end