function onCreate()
	-- background shit
	makeLuaSprite('stageback', 'russia/motherBG', -700, -800);
	setLuaSpriteScrollFactor('stageback', 0.9, 0.9);
	scaleObject('stageback', 1.1, 1.1);
	

	-- sprites that only load if Low Quality is turned off
	if not lowQuality then
	makeLuaSprite('stagefront', 'russia/motherFG', -650, -800);
	setLuaSpriteScrollFactor('stagefront', 0.9, 0.9);
	scaleObject('stagefront', 1.1, 1.1);
	
	makeLuaSprite('plants', 'russia/plants', -1000, -1200);

	scaleObject('plants', 1.4, 1.4);
	
	
	
	end

	addLuaSprite('stageback', false);
	addLuaSprite('stagefront', false);
	addLuaSprite('plants',true);
	
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end