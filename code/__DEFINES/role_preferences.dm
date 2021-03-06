//Values for antag preferences, event roles, etc. unified here

//Any number of preferences could be.
//These are synced with the Database, if you change the values of the defines
//then you MUST update the database! Jobbans also uses those defines!!
#define ROLE_TRAITOR           "Traitor"
#define ROLE_OPERATIVE         "Operative"
#define ROLE_CHANGELING        "Changeling"
#define ROLE_WIZARD            "Wizard"
#define ROLE_MALF              "Malf AI"
#define ROLE_REV               "Revolutionary"
#define ROLE_ALIEN             "Xenomorph"
#define ROLE_PAI               "pAI"
#define ROLE_CULTIST           "Cultist"
#define ROLE_BLOB              "Blob"
#define ROLE_NINJA             "Ninja"
#define ROLE_RAIDER            "Raider"
#define ROLE_PLANT             "Diona"
#define ROLE_MUTINEER          "Mutineer"
#define ROLE_SHADOWLING        "Shadowling"
#define ROLE_ABDUCTOR          "Abductor"
#define ROLE_GANG              "Gangster"

#define ROLE_ERT               "Emergency Response Team"
#define ROLE_DRONE             "Maintenance Drone"


//Equating to one means that it's not gamemode prefs, so it should be visible always.
//Pay attention to 'IS_MODE_COMPILED' parametr.
//If there will be link to non-existent mode or any typo mistake, mode wouldn't be visible in prefs.
var/global/list/special_roles = list(

	ROLE_TRAITOR = 1, //IS_MODE_COMPILED("traitor"),          //0
	ROLE_OPERATIVE = 1, //IS_MODE_COMPILED("nuclear"),        //1
	ROLE_CHANGELING = 1, //IS_MODE_COMPILED("changeling"),    //2
	ROLE_WIZARD = 1, //IS_MODE_COMPILED("wizard"),            //3
	ROLE_MALF = 1, //IS_MODE_COMPILED("malfunction"),         //4
	ROLE_REV = 1, //IS_MODE_COMPILED("revolution"),           //5
	ROLE_ALIEN = 1,                                           //6
	ROLE_PAI = 1,                                             //7
	ROLE_CULTIST = 1, //IS_MODE_COMPILED("cult"),             //8
	ROLE_BLOB = 1,  //IS_MODE_COMPILED("blob"),               //9
	ROLE_NINJA = 1,                                           //10
	ROLE_RAIDER = 1, //IS_MODE_COMPILED("heist"),             //11
	ROLE_PLANT = 1,                                           //12
	ROLE_MUTINEER = 1, //IS_MODE_COMPILED("mutiny"),          //13
	ROLE_SHADOWLING = 1, //IS_MODE_COMPILED("shadowling"),    //14
	ROLE_ABDUCTOR = 1, //IS_MODE_COMPILED("abduction"),       //15
	ROLE_GANG = 1, //IS_MODE_COMPILED("gang")                 //16
)
