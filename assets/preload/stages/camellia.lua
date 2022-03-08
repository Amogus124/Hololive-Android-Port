function onCreate()
	-- background shit
	
	makeLuaSprite('BG_WALL', 'BG_WALL', -352, -171);
	scaleObject('BG_WALL', 1.1, 1.1);

	-- sprites that only load if Low Quality is turned off
	if not lowQuality then
		makeLuaSprite('FG_Floor', 'FG_Floor', -354, -52);
		scaleObject('FG_Floor', 1.1, 1.1);
	end

	addLuaSprite('BG_CITY', false);
	addLuaSprite('BG_WALL', false);
	addLuaSprite('FG_Floor', false);
	addLuaSprite('BF_GLOW', false);
	addLuaSprite('CAMELLIA_GLOW', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end