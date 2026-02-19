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
		wallJumping = false;
		freeReady = true;
		coyoteHangTimer = coyoteHangFrames;
	}
	else
	{
		onGround = false;
		coyoteHangTimer = 0;
		myFloorPlat = noone;
	}
}

function setAtWall(_val = true)
{
	if _val == true
	{
		atWall = true;
		if((jumpHoldTimer <= 0) && (vsp > -6))
		{
			//vsp = 4;
		}
		wallJumpForgive = 5;
	}
	else
	{
		//atWall = false;
		//jumpMax = 2;
		while (wallJumpForgive > 0)
		{
			wallJumpForgive--;
			break;
		}
		if(wallJumpForgive <= 0)
		{
			atWall = false;
		}
		
	}
}

controlsSetup();

dead=false
framecounter=0

//Movement directions
face = 1;
grv = 0.475;
grvWall = 0.275;
onGround = true;
acceleration = 0.1;
deceleration = 0.1;

moveDir = 0;
moveSpd = 5;
hsp = 0;
maxSpeed = 10;

vsp = 0;
vspJump = -8;
vspDoubleJump=-1;

hspKnock = 0;
vspKnock = 0;
hspAirtime = 0;
vspAirtime = 0;
weight = 0;

//Wall Jump Variables
atWall = false; //Are we colliding with a wall
onwall = 0; //From which side are we touching the wall (Left = -1, Right = 1)
wallJumping = false; //Are we wall jumping
wallJumpLock = 0; //How long are we locked into wall jumping
wallJumpForgive = 0; //How long are we allowed to move away from the wall while still being able to wall jump
hsp_wallJump = 12; //Horizontal distance for wall jump

canJump = 0; //are we touching the ground
//candoublejump=true//made false when you dublejump,made true when vsp=0
candoublejump = false
doublejumpmultiplier=1
doublejumping=false
canDash = true// false; //resets on touching ground
dashDistance = 351;
dashTime = 24;
dashcooldown=20 // time between dashes

termVel = 8;
termVel_wall = 3;
jumpMax = 2;
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
myFloorPlat = noone;

freeReady = true;

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
deflectSpr = sPlayerDeflect;

rangedSpr= sRangedTemp
rangedmovingSpr =sRangedMovingTemp
rangedairSpr= sRangedAirTemp


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
parried = false;
speedBoostTimer = 0;

hp = 100;
invulnerable = 0;
maxinvulnerableframes = 40 //changes iframe duration
flash = 0;
flashShader = shWhiteFlash;
uFlash = shader_get_uniform(flashShader, "flash");
