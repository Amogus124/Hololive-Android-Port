function onCreate()
	--Iterate over all notes
	for i = 0, getProperty('unspawnNotes.length')-1 do
		--Check if the note is an Instakill Note
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'rushia' then
			setPropertyFromGroup('unspawnNotes', i, 'texture', 'NOTE_rushia'); --Change texture
			setPropertyFromGroup('unspawnNotes', i, 'hitHealth', '-0'); --Default value is: 0.023, health gained on hit
			setPropertyFromGroup('unspawnNotes', i, 'missHealth', '0'); --Default value is: 0.0475, health lost on miss
			setPropertyFromGroup('unspawnNotes', i, 'hitCausesMiss', false);

			if getPropertyFromGroup('unspawnNotes', i, 'mustPress') then --Doesn't let Dad/Opponent notes get ignored
				setPropertyFromGroup('unspawnNotes', i, 'ignoreNote', false); --Miss has no penalties
			end
		end
	end
	--debugPrint('Script started!')
end

-- Function called when you hit a note (after note hit calculations)
-- id: The note member id, you can get whatever variable you want from this note, example: "getPropertyFromGroup('notes', id, 'strumTime')"
-- noteData: 0 = Left, 1 = Down, 2 = Up, 3 = Right
-- noteType: The note type string/tag
-- isSustainNote: If it's a hold note, can be either true or false
function goodNoteHit(id, noteData, noteType, isSustainNote)
	if noteType == 'rushia' then
	end
end
local screamAnimations = {'singLEFT-alt', 'singDOWN-alt', 'singUP-alt', 'singRIGHT-alt',}

    function opponentNoteHit(id, noteData, noteType, isSustainNote)
	if noteType == 'rushia' then
 characterPlayAnim('dad', screamAnimations[noteData+1], true);
		setProperty('dad.specialAnim', true);

		local animToPlay = '';
		if noteData == 0 then
			animToPlay = 'singLEFT-alt';
		elseif noteData == 1 then
			animToPlay = 'singDOWN-alt';
		elseif noteData == 2 then
			animToPlay = 'singUP-alt';
		elseif noteData == 3 then
			animToPlay = 'singRIGHT-alt';

    makeLuaSprite('image', 'scream_overlay', 0, 0);
    addLuaSprite('image', true);
    doTweenColor('hello', 'image', 'FFFFFFFF', 0.1, 'quartIn');
    setObjectCamera('image', 'hud');
    runTimer('wait', 0.1);
    health = getProperty('health')
    if getProperty('health') > 0.05 then
        setProperty('health', health -0.020);
			end
		end
	end
end

function onTimerCompleted(tag, loops, loopsleft)
    if tag == 'wait' then
    doTweenAlpha('byebye', 'image', 0, 0.1, 'linear');
    end
end

function onTweenCompleted(tag)
    if tag == 'byebye' then
    removeLuaSprite('image', true);
    end
end
		-- put something here if you want


-- Called after the note miss calculations
-- Player missed a note by letting it go offscreen
function noteMiss(id, noteData, noteType, isSustainNote)
	if noteType == 'rushia' then
		-- put something here if you want
	end
end