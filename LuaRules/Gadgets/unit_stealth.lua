
if not gadgetHandler:IsSyncedCode() then
	return
end

function gadget:GetInfo()
  return {
    name      = "UnitStealth",
    desc      = "Adds active unit stealth capability",
    author    = "trepan (bugfixed by jK)",
    date      = "May 02, 2007",
    license   = "GNU GPL, v2 or later",
    layer     = 0,
    enabled   = true  --  loaded by default?
  }
end

local spSetUnitStealth = Spring.SetUnitStealth
local spSetUnitSonarStealth = Spring.SetUnitSonarStealth

function gadget:UnitCloaked(unitID)
	spSetUnitStealth(unitID, true)
	spSetUnitSonarStealth(unitID, true)
end

function gadget:UnitDecloaked(unitID)
	spSetUnitStealth(unitID, false)
	spSetUnitSonarStealth(unitID, false)
end
