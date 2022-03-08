function onStepHit()
   if curStep == 58 then
	noteTweenAlpha("NoteAlpha1", 0, -1, 0.5, cubeInOut)
	noteTweenAlpha("NoteAlpha2", 1, -1, 0.5, cubeInOut)
	noteTweenAlpha("NoteAlpha3", 2, -1, 0.5, cubeInOut)
	noteTweenAlpha("NoteAlpha4", 3, -1, 0.5, cubeInOut)
     end
   if curStep == 58 then
	noteTweenX("NoteMove1", 4, 415, 0.5, cubeInOut)
	noteTweenX("NoteMove2", 5, 525, 0.5, cubeInOut)
	noteTweenX("NoteMove3", 6, 635, 0.5, cubeInOut)
	noteTweenX("NoteMove4", 7, 745, 0.5, cubeInOut)
     end
   if curStep == 452 then
	noteTweenAlpha("NoteAlpha1", 0, 1, 0.5, cubeInOut)
	noteTweenAlpha("NoteAlpha2", 1, 1, 0.5, cubeInOut)
	noteTweenAlpha("NoteAlpha3", 2, 1, 0.5, cubeInOut)
	noteTweenAlpha("NoteAlpha4", 3, 1, 0.5, cubeInOut)
     end
   if curStep == 452 then
	noteTweenX("NoteMove1", 4, 750, 0.5, cubeInOut)
	noteTweenX("NoteMove2", 5, 865, 0.5, cubeInOut)
	noteTweenX("NoteMove3", 6, 975, 0.5, cubeInOut)
	noteTweenX("NoteMove4", 7, 1085, 0.5, cubeInOut)
     end
end