--copy, paste filter settings
-- script.on_event("copy-loader-filters", function(event)
	-- if global.filter==nil then global.filter={} end
	-- local a=event.player_index
	-- local b=game.players[a]
	-- if b.selected and b.selected.filter_slot_count>0 then
		-- global.filter[a]=loader_filter(b.selected)
	-- end
-- end)

-- script.on_event("paste-loader-filters", function(event)
	-- if global.filter==nil then global.filter={} end
	-- local a=event.player_index
	-- local b=game.players[a]
	-- if b.selected and b.selected.filter_slot_count>0 then
		-- if global.filter[a] then
			-- for i=1, b.selected.filter_slot_count do
				-- b.selected.set_filter(i,global.filter[a][i])
			-- end
		-- else
			-- for i=1, b.selected.filter_slot_count do
				-- b.selected.set_filter(i,nil)
			-- end
		-- end
	-- end
-- end)

-- http://lua-api.factorio.com/latest/events.html#on_entity_settings_pasted
-- http://lua-api.factorio.com/0.15.2/LuaEntity.html#LuaEntity.filter_slot_count
-- http://lua-api.factorio.com/0.15.2/LuaEntity.html#LuaEntity.get_filter

--clean_loaders
function clean_loaders()
	for i,t in pairs(global.loaders) do
		if t[1].valid==false or t[2].valid==false or (t[2].train.state~=7 and t[2].train.state~=9) or t[2].train.speed~=0 then
			table.remove(global.loaders,i)
			clean_loaders()
			break
		end
	end
end

--find loader
function find_loader(w,ent)
	if (w.train.state==7 or w.train.state==9) and w.train.speed==0 then
		if w.orientation==0 or w.orientation==0.5 then
			for j,loader in pairs(w.surface.find_entities_filtered{type="loader",area={{w.position.x-1.5,w.position.y-2.2},{w.position.x-0.5,w.position.y+2.2}}}) do
				if ent and loader==ent then
					table.insert(global.loaders,{loader,w,6})
				elseif ent==nil then
					table.insert(global.loaders,{loader,w,6})
				end
			end
			for j,loader in pairs(w.surface.find_entities_filtered{type="loader",area={{w.position.x+0.5,w.position.y-2.2},{w.position.x+1.5,w.position.y+2.2}}}) do
				if ent and loader==ent then
					table.insert(global.loaders,{loader,w,2})
				elseif ent==nil then
					table.insert(global.loaders,{loader,w,2})
				end
			end
		elseif w.orientation==0.25 or w.orientation==0.75 then
			for j,loader in pairs(w.surface.find_entities_filtered{type="loader",area={{w.position.x-2.2,w.position.y-1.5},{w.position.x+2.2,w.position.y-0.5}}}) do
				if ent and loader==ent then
					table.insert(global.loaders,{loader,w,0})
				elseif ent==nil then
					table.insert(global.loaders,{loader,w,0})
				end
			end
			for j,loader in pairs(w.surface.find_entities_filtered{type="loader",area={{w.position.x-2.2,w.position.y+0.5},{w.position.x+2.2,w.position.y+1.5}}}) do
				if ent and loader==ent then
					table.insert(global.loaders,{loader,w,4})
				elseif ent==nil then
					table.insert(global.loaders,{loader,w,4})
				end
			end
		end
	end
end

--train state
script.on_event(defines.events.on_train_changed_state, function(event)
	for i,w in pairs(event.train.cargo_wagons) do
		find_loader(w)
	end
end)

--built
script.on_event(defines.events.on_built_entity, function(event)
	local ent=event.created_entity
	if ent.type=="loader" then
		local w=ent.surface.find_entities_filtered{type="cargo-wagon",area={{ent.position.x-2,ent.position.y-2},{ent.position.x+2,ent.position.y+2}}}
		for a,b in pairs(w) do
			find_loader(b,ent)
		end
	elseif ent.type=="cargo-wagon" then
		find_loader(ent)
	end
end)

--on tick
script.on_event(defines.events.on_tick, function(event)
	if global.loaders==nil then
	--first load
		global.loaders={}
		for a,b in pairs(game.surfaces) do
			local wagon=b.find_entities_filtered{type="cargo-wagon"}
			if #wagon>0 then
				for i,w in pairs(wagon) do
					find_loader(w)
				end
			end
		end
	elseif #global.loaders>0 then
		clean_loaders()
	--loaders work
		for i,t in pairs(global.loaders) do
			loader_work(t[1],t[2].get_inventory(defines.inventory.cargo_wagon),t[3])
		end
	end
end)

function loader_active(ent,direction)
	if ent.loader_type=="output" and ent.direction==direction then
		return true
	elseif ent.loader_type=="input" and ent.direction==(direction+4)%8 then
		return true
	else return false
	end
end

function loader_filter(ent)
	local filter={}
	for n=1, ent.filter_slot_count do
		if ent.get_filter(n) then
			table.insert(filter,n,ent.get_filter(n))
		end
	end
	if #filter==0 then filter=false end
	return filter
end

--loader work
function loader_work(ent,w,direction)
	if ent.loader_type=="output" and loader_active(ent,direction) then
		if w.is_empty()==false and ent.get_transport_line(1).can_insert_at_back() then
			if loader_filter(ent) then
				local done=false
				for name,count in pairs(w.get_contents()) do
					if done then break end
					for n,filter in pairs(loader_filter(ent)) do
						if name==filter then
							w.remove({name=name,count=1})
							ent.get_transport_line(1).insert_at_back({name=name,count=1})
							done=true
							break
						end
					end
				end
			else
				for name,count in pairs(w.get_contents()) do
					w.remove({name=name,count=1})
					ent.get_transport_line(1).insert_at_back({name=name,count=1})
					break
				end
			end
		end
		if w.is_empty()==false and ent.get_transport_line(2).can_insert_at_back() then
			if loader_filter(ent) then
				local done=false
				for name,count in pairs(w.get_contents()) do
					if done then break end
					for n,filter in pairs(loader_filter(ent)) do
						if name==filter then
							w.remove({name=name,count=1})
							ent.get_transport_line(2).insert_at_back({name=name,count=1})
							done=true
							break
						end
					end
				end
			else
				for name,count in pairs(w.get_contents()) do
					w.remove({name=name,count=1})
					ent.get_transport_line(2).insert_at_back({name=name,count=1})
					break
				end
			end
		end
	elseif ent.loader_type=="input" and loader_active(ent,direction) then
		if ent.get_transport_line(1).get_item_count()>0 then
			for name,count in pairs(ent.get_transport_line(1).get_contents()) do
				if w.can_insert({name=name,count=1}) then
					ent.get_transport_line(1).remove_item({name=name,count=1})
					w.insert({name=name,count=1})
					break
				end
			end
		end
		if ent.get_transport_line(2).get_item_count()>0 then
			for name,count in pairs(ent.get_transport_line(2).get_contents()) do
				if w.can_insert({name=name,count=1}) then
					ent.get_transport_line(2).remove_item({name=name,count=1})
					w.insert({name=name,count=1})
					break
				end
			end
		end
	end
end
--[[on first load mod
script.on_init(function()
end)]]