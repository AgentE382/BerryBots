function toList( ... )
	if select("#", ...) == 1 and type(...) == "table" then
		return ...
	else
		return {...}
	end
end

function init( ships, world, gfx )
	------------------------------
	-- Globals
	------------------------------

	-- userdata
	world = world
	gfx = gfx

	-- table
	ships = toList(ships)
	constants = world:constants()
	walls = world:walls()
	zones = world:zones()

	-- number
	height = world:height()
	teamSize = world:teamSize()
	width = world:width()

	------------------------------
	-- Setup
	------------------------------

	-- names (only in init)
	for i = 1,#ships do
		local ship = ships[i]
		ship:setName("Functional Ship " .. i)
		ship:setTeamName "Functional Team"
	end
end

function run( enemyShips, sensors )

end