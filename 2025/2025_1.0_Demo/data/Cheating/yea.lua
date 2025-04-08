function onUpdate()
	runHaxeCode([[					playerStrums.forEach(function(spr:StrumNote)
					{
						spr.x = (FlxG.width / 2) + (Math.sin(elapsedtime) * ((spr.ID % 2) == 0 ? 1 : -1)) * (60 * (spr.ID + 1));
						spr.x += Math.sin(elapsedtime - 1) * 40;
						spr.y = (FlxG.height / 2) + (Math.sin(elapsedtime - 69.2) * ((spr.ID % 3) == 0 ? 1 : -1)) * (67 * (spr.ID + 1)) - 15;
						spr.y += Math.cos(elapsedtime - 1) * 40;
						spr.x -= 80;
					});
					dadStrums.forEach(function(spr:StrumNote)
					{
						spr.x = (FlxG.width / 2) + (Math.cos(elapsedtime - 1) * ((spr.ID % 2) == 0 ? -1 : 1)) * (60 * (spr.ID + 1));
						spr.x += Math.sin(elapsedtime - 1) * 40;
						spr.y = (FlxG.height / 2) + (Math.sin(elapsedtime - 63.4) * ((spr.ID % 3) == 0 ? -1 : 1)) * (67 * (spr.ID + 1)) - 15;
						spr.y += Math.cos(elapsedtime - 1) * 40;
						spr.x -= 80;
					});
]])
end