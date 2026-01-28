randomize() //this insures that random events are random, remove this, spray paint, 
//reload the game and spray again and you will see that without this "random" events wont be random
//any object can have this in it , but since player is always there i gave it to player

if(!instance_exists(oPlayerHealth)) instance_create_layer(64,64,"player",oPlayerHealth)
iframes=30
hurt=false
hp=100
function setOnGround(_val = true)
{
	if _val == true
	{
		onGround = true;
	}
	else
	{
		onGround = false;
	}
}dead=false
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

