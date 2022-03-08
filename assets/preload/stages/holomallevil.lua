function onCreate()
	-- background shit
		makeLuaSprite('evilBG', 'stage holofunk red/evilBG', -400, -420);
   
	 scaleObject('evilBG', 0.9, 0.9);
	makeLuaSprite('stagefront', 'stage holofunk red/evilTree', 400, -400);

	

	-- sprites that only load if Low Quality is turned off
	if not lowQuality then
		makeAnimatedLuaSprite('fireGoBrr', 'stage holofunk red/fireGoBrr',1020, -215);
 	    makeAnimatedLuaSprite('fireGoBrr2', 'stage holofunk red/fireGoBrr',820, -215);
      
		makeLuaSprite('overlayEvil', 'stage holofunk red/overlayEvil', -400, -380);
 scaleObject('overlayEvil', 1.23, 1.3);
 makeLuaSprite('fireGlow', 'stage holofunk red/fireGlow', 600, 100);
 scaleObject('fireGlow', 0.3, 0.3);
	end

	addLuaSprite('evilBG', false);
	addLuaSprite('stagefront', false);
	addLuaSprite('fireGlow', false);
		addLuaSprite('fireGoBrr', false); 
	addAnimationByPrefix('fireGoBrr', 'idle', 'Fire', 24, true);
	addLuaSprite('fireGoBrr2', false); 
	addAnimationByPrefix('fireGoBrr2', 'idle', 'Fire', 24, true);
	addLuaSprite('overlayEvil', true);

	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end