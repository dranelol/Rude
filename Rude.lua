local updateInterval = 0.3; 
local TimeSinceLastUpdate = 0.0;

local buffs = 
{
	["Censer of Eternal Agony"] = true,
}

-- Functions Section
function Rude_OnUpdate(self, elapsed)
	TimeSinceLastUpdate = TimeSinceLastUpdate + elapsed; 	

	if (TimeSinceLastUpdate > updateInterval) then
		--print("being rude"); 
	
		TimeSinceLastUpdate = 0;
	end
end

function Rude_OnLoad(self)

	
	TimeSinceLastUpdate = 0.0;
	print("Rude Loaded"); 
	print(TimeSinceLastUpdate);
	self:RegisterEvent("COMBAT_LOG_EVENT_UNFILTERED");

end

function Rude_OnEvent(self,event, ...)
	--print("event logged: "..event);
	if UnitBuff("player", "Censer of Eternal Agony") then
		local _, combatevent, _, sourcename, _, _, destname = ...
		if combatevent == "PARTY_KILL" then
			local playername = UnitName("player")
			if sourcename==playername then
				print("just killed this faggot: "..destname)
			end
		end
	end
	-- loop through indexes 
	

	
end



