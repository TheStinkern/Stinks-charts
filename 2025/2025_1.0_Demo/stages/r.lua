




-- this stage is a fucking mess

local width = 0
local spriteName = "darkSky" -- replace limoSunset with the name of your sprite

local followchars = true;
local startCam = false;

local camOffX = 0;
local camOffY = 0;
local oldCamX = 0;
local oldCamY = 0;

local dadPos = {0,0};
local bfPos = {0,0};
local gfPos = {0,0};

local secs = 4.5;

function onCreate()
	makeLuaSprite("bg1", spriteName, 0, -1000)
	width = getProperty("bg1.width")
	
	makeLuaSprite("bg2", spriteName, width-20, -1000)
	
	addLuaSprite("bg1", false)
	addLuaSprite("bg2", false)
	
	scaleObject('bg1', 2, 2);
	scaleObject('bg2', 2, 2);
	
	doTweenX("bg1Tween", "bg1", -width, 1.5, "linear")
	doTweenX("bg2Tween", "bg2", -20, 1.5, "linear")
	
	makeLuaSprite('bg3', 'menuDesat')
	scaleObject('bg3', 2, 2)
	addLuaSprite('bg3', false)
	screenCenter('bg3', 'xy')
	setScrollFactor('bg3', 'camHud');

end

function onBeatHit()

	if curBeat %8 == 0 then
		setProperty('bg3.alpha', 0.5)
		doTweenAlpha('bye bye', 'bg3', 0, secs, 'expoOut')

	end
end

function onSongStart()
		setProperty('bg3.alpha', 0.5)
		doTweenAlpha('bye bye', 'bg3', 0, secs, 'expoOut')

end

function onTweenCompleted(tag)
	if tag == "bg1Tween" then
		setProperty("bg1.x", 0)
		setProperty("bg2.x", width-20)
		
		doTweenX("bg1Tween", "bg1", -width, 1.5, "linear")
		doTweenX("bg2Tween", "bg2", -20, 1.5, "linear")
	end
end
-- https://github.com/ShadowMario/FNF-PsychEngine/issues/11658

function onUpdate(elapsed)

  if curStep >= 0 then

    songPos = getSongPosition()

    local currentBeatY = (songPos/500)*(bpm/50)
    local currentBeatX = (songPos/500)*(bpm/100)
	
    doTweenY('dadTweenY', 'dad', 200-200*math.sin((currentBeatY*0.1)*math.pi),0.001)
    doTweenX('dadTweenX', 'dad', 1750-350*math.sin((currentBeatX*0.1)*math.pi),0.001)
	end
end

function onCreatePost()
	setProperty('bg3.alpha', 0)
	
   findCharCam()

   runTimer("canStartCamera", 0);

end

local oldCam = {0,0};
function onUpdatePost()

   if followchars and startCam then
      anim = getProperty('dad.animation.curAnim.name');
      if mustHitSection and not gfSection then
         anim = getProperty('boyfriend.animation.curAnim.name');
      end
      if gfSection then 
         anim = getProperty('gf.animation.curAnim.name');
      end
   end
   
   if followchars and startCam --[[and (camOffX ~= oldCam[1] or camOffY ~= oldCam[2])]] then
      --debugPrint('halo');
      cameraX = getProperty('camFollow.x');
      cameraY = getProperty('camFollow.y');
      bfX = getProperty('boyfriend.x');
      bfY = getProperty('boyfriend.y');
      dadX = getProperty('dad.x');
      dadY = getProperty('dad.y');
      gfX = getProperty('gf.x');
      gfY = getProperty('gf.y');


      if mustHitSection and not gfSection and (bfPos[1] ~= nil and bfPos[2] ~= nil) then -- bf
         cameraX = getMid(bfX , getProperty('boyfriend.width')) - 100;
         cameraY = getMid(bfY , getProperty('boyfriend.height')) - 100;
         cameraX = cameraX - bfPos[1];
         cameraY = cameraY + bfPos[2];
      elseif not mustHitSection and not gfSection and (dadPos[1] ~= nil and dadPos[2] ~= nil) then
         cameraX = getMid(dadX , getProperty('dad.width')) + 150;
         cameraY = getMid(dadY , getProperty('dad.height')) - 100;
         cameraX = cameraX + dadPos[1];
         cameraY = cameraY + dadPos[2];
      end
      if gfSection and (gfPos[1] ~= nil and gfPos[2] ~= nil) then 
         cameraX = getMid(gfX);
         cameraY = getMid(gfY);
         cameraX = cameraX + gfPos[1];
         cameraY = cameraY + gfPos[2];
      end
      
      setProperty('camFollow.x', cameraX + camOffX);
      setProperty('camFollow.y', cameraY + camOffY);

      --oldCam[1] = camOffX;
      --oldCam[2] = camOffY;
      --debugPrint(getProperty('camFollow.x') .. "  " .. getProperty('camFollow.y')); 
      --[[
      setProperty('camFollow.x', getProperty('camFollow.x') + cameraX);
            setProperty('camFollow.y', getProperty('camFollow.y') + cameraY);
      ]]
      --debugPrint('oooh');
   end
end

function onTimerCompleted(tag, loops, loopsLeft)
	if tag == "camOff" then
      followchars = true;
   elseif tag == "camOn" then
      followchars = true;
   end
   if tag == "canStartCamera" then
      startCam = true;
   end
end

function getMid(value, size)
   fixSize = 0;

   if size ~= null then
      fixSize = size;
   else
      fixSize = value;
   end
   result = value + (size / 2);


   return result;
end

function startsWith(String,Start)
   return string.sub(String,1,string.len(Start))==Start
end

function onEvent(name, value1, value2)
	if name == "Change Character" then 
      findCharCam()
   end
end

function findCharCam()

   cameraDad = getProperty('dad.cameraPosition');
   dadPos[1] = cameraDad[1];
   dadPos[2] = cameraDad[2];

   cameraBf = getProperty('boyfriend.cameraPosition');
   bfPos[1] = cameraBf[1];
   bfPos[2] = cameraBf[2];

   cameraGf = getProperty('gf.cameraPosition');
   gfPos[1] = cameraGf[1];
   gfPos[2] = cameraGf[2];

end
