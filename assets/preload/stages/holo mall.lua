function onCreate()
	-- background shit
	makeLuaSprite('stageback', 'stage new/bgWalls', -1100, -600);
	scaleObject('stageback', 1.2, 1.2);
	
	makeLuaSprite('christmasTree', 'stage new/christmasTree', 410, 50);
	scaleObject('christmasTree', 1.1, 1.1);

	makeLuaSprite('stagefront', 'stage new/bgEscalator', -1100, -600);
	scaleObject('stagefront', 1.2, 1.2);

	-- sprites that only load if Low Quality is turned off
	if not lowQuality then
	makeAnimatedLuaSprite('upper_bop_LEFT', 'stage new/upper_bop_LEFT', -580, 130) 
	scaleObject('upper_bop_LEFT', 1.2, 1.2);
	makeAnimatedLuaSprite('upper_bop_RIGHT', 'stage new/upper_bop_RIGHT', 880, 130) 
	scaleObject('upper_bop_RIGHT', 1.2, 1.2);
	
	makeAnimatedLuaSprite('marineAquaSuisei', 'stage new/marineAquaSuisei', 900, 130) 
	scaleObject('marineAquaSuisei', 0.9, 0.9);
	makeAnimatedLuaSprite('noel', 'stage new/noel', 490, 430) 
	scaleObject('noel', 0.9, 0.9);
		makeAnimatedLuaSprite('irys', 'stage new/irys', 280, 430) 
	scaleObject('irys', 0.9, 0.9);
		makeAnimatedLuaSprite('flare', 'stage new/flare', -50, 430) 
	scaleObject('flare', 0.9, 0.9);

	makeAnimatedLuaSprite('santa', 'stage new/santa', -500, 530) 
	setLuaSpriteScrollFactor('santa', 1, 1);
	scaleObject('santa', 1.0, 1.0);
	end

	addLuaSprite('stageback', false);
	addLuaSprite('upper_bop_LEFT', false);
	addAnimationByPrefix('upper_bop_LEFT', 'Move', 'Upper Crowd Bob LEFT', 30, true);
	addLuaSprite('upper_bop_RIGHT', false);
	addAnimationByPrefix('upper_bop_RIGHT', 'Move', 'Upper Crowd Bob RIGHT', 30, true);
	addLuaSprite('stagefront', false);
	addLuaSprite('christmasTree', false);
	addLuaSprite('santa', false); --Added offscreen before it starts moving.
	addLuaSprite('marineAquaSuisei', false); --Added offscreen before it starts moving.
	addAnimationByPrefix('marineAquaSuisei', 'Move', 'Bottom Level Boppers', 30, true);
	addLuaSprite('noel', false); --Added offscreen before it starts moving.
	addAnimationByPrefix('noel', 'Move', 'noel', 30, true);
	addLuaSprite('irys', false); --Added offscreen before it starts moving.
	addAnimationByPrefix('irys', 'Move', 'irys', 30, true);
	addLuaSprite('flare', false); --Added offscreen before it starts moving.
	addAnimationByPrefix('flare', 'Move', 'flare', 30, true);
	addAnimationByPrefix('santa', 'Move', 'santa idle in fear', 30, true);
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end