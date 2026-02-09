randomize() //this insures that random events are random, remove this, spray paint, 
//reload the game and spray again and you will see that without this "random" events wont be random
//any object can have this in it , but since player is always there i gave it to player

LoadGame()
SaveGame()
if(!instance_exists(oPlayerHealth)) instance_create_layer(64,64,"player",oPlayerHealth)

if(!instance_exists(oPause2)) instance_create_depth(0,0,-1000,oPause2)


iframes=30
hurt=false
hp=100
function setOnGround(_val = true)
{
	if _val == true
	{
		onGround = true;
		coyoteHangTimer = coyoteHangFrames;
	}
	else
	{
		onGround = false;
		coyoteHangTimer = 0;
	}
}

controlsSetup();

dead=false
framecounter=0

//Movement directions
face = 1;
grv = 0.275;
onGround = true;
moveDir = 0;
moveSpd = 5;
hsp = 0;
vsp = 0;

hspKnock = 0;
vspKnock = 0;
hspAirtime = 0;
vspAirtime = 0;
weight = 0;

vspJump = -8;
vspDoubleJump=-1
canJump = 0; //are we touching the ground
candoublejump=true//made false when you dublejump,made true when vsp=0
doublejumpmultiplier=1
 doublejumping=false
canDash = true// false; //resets on touching ground
dashDistance = 296;
dashTime = 12;
dashcooldown=20 // time between dashes

termVel = 8;
jumpMax = 1;
jumpCount = 0;
jumpHoldTimer = 0;
//Jump values for each successive jump
//jumpHoldFrames[0] = 9;
//jspd[0] = -7.15;
jumpHoldFrames = 12;
jspd = -7;
//jumpHoldFrames[1] = 10;
//jspd[1] = -2.85;
//Coyote Time
//Hang Time
coyoteHangFrames = 2;
coyoteHangTimer = 0;
//Jump buffer time
coyoteJumpFrames = 4;
coyoteJumpTimer = 0;

//Sprites
maskSpr = sPlayerIdle;
idleSpr = sPlayerIdle;
freeSpr = sPlayerFree;
dashSpr = sPlayerDash;
riseSpr = sPlayerRise;
fallSpr = sPlayerFall;
doublejumpchargeSpr=sPlayerDoubleJumpCharge;
doublejumpSpr=sPlayerDoubleJump;

poiseSpr = sPlayerPoise;
parrySpr = sPlayerParry;


//Initial state
state = PlayerStateFree;
stateAttack = LAttack;

//Combat
hitByAttack = ds_list_create();
hitByMultiAttack = ds_list_create();
juggleTime = 0;
riposteReady = false;
executeReady = false;
executing = false;
executeTarget = 0;

hp = 100;
invulnerable = 0;
flash = 0;
flashShader = shWhiteFlash;
uFlash = shader_get_uniform(flashShader, "flash");

