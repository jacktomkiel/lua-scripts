-------------------------------AK47------------------------------
local ASSAULT_RIFLE = nil
local ASSAULT_RIFLE_HOLOSIGHT = false
local ASSAULT_RIFLE_8X = false
local ASSAULT_RIFLE_16X = false
local ASSAULT_RIFLE_HANDMADE = false
local ASSAULT_RIFLE_SILENCER = false
local ASSAULT_RIFLE_MUZZLEBOOST = false
-------------------------------LR300-----------------------------
local LR300 = nil
local LR300_HOLOSIGHT = false
local LR300_8X = false
local LR300_16X = false
local LR300_HANDMADESIGHT = false
local LR300_SILENCER = false
local LR300_MUZZLEBOOST = false
-------------------------------MP5-------------------------------
local MP5 = nil
local MP5_HOLOSIGHT = false
local MP5_8X = false
local MP5_16X = false
local MP5_HANDMADE = false
local MP5_SILENCER = false
local MP5_MUZZLEBOOST = false
-----------------------------THOMPSON----------------------------
local THOMPSON = nil
local THOMPSON_HOLOSIGHT = false
local THOMPSON_8X = false
local THOMPSON_16X = false
local THOMPSON_HANDMADE = false
local THOMPSON_SILENCER = false
local THOMPSON_MUZZLEBOOST = false
-----------------------------CUSTOM-SMG--------------------------
local CUSTOM_SMG = nil
local CUSTOM_SMG_HOLOSIGHT = false
local CUSTOM_SMG_8X = false
local CUSTOM_SMG_16X = false
local CUSTOM_SMG_HANDMADE = false
local CUSTOM_SMG_SILENCER = false
local CUSTOM_SMG_MUZZLEBOOST = false
------------------------------HMLMG------------------------------
local HMLMG = nil
local HMLMG_HOLOSIGHT = false
local HMLMG_8X = false
local HMLMG_16X = false
local HMLMG_HANDMADE = false
local HMLMG_SILENCER = false
local HMLMG_MUZZLEBOOST = false
------------------------------M249-------------------------------
local M249 = nil
local M249_HOLOSIGHT = false
local M249_8X = false
local M249_16X = false
local M249_HANDMADE = false
local M249_SILENCER = false
local M249_MUZZLEBOOST = false
--------------------------SEMI-AUTOMATIC-RIFLE-------------------
local SEMI_AUTOMATIC_RIFLE = nil
local SEMI_AUTOMATIC_RIFLE_HOLOSIGHT = false
local SEMI_AUTOMATIC_RIFLE_8X = false
local SEMI_AUTOMATIC_RIFLE_16X = false
local SEMI_AUTOMATIC_RIFLE_HANDMADE = false
local SEMI_AUTOMATIC_RIFLE_SILENCER = false
local SEMI_AUTOMATIC_RIFLE_MUZZLEBOOST = false
-----------------------------M39-RIFLE---------------------------
local M39_RIFLE = nil
local M39_RIFLE_HOLOSIGHT = false
local M39_RIFLE_8X = false
local M39_RIFLE_16X = false
local M39_RIFLE_HANDMADE = false
local M39_RIFLE_SILENCER = false
local M39_RIFLE_MUZZLEBOOST = false
-------------------------SEMI-AUTOMATIC-PISTOL-------------------
local SEMI_AUTOMATIC_PISTOL = nil
local SEMI_AUTOMATIC_PISTOL_HOLOSIGHT = false
local SEMI_AUTOMATIC_PISTOL_8X = false
local SEMI_AUTOMATIC_PISTOL_HANDMADE = false
local SEMI_AUTOMATIC_PISTOL_SILENCER = false
local SEMI_AUTOMATIC_PISTOL_MUZZLEBOOST = false
-----------------------------M39-BERETTA-------------------------
local M92_BERETTA = nil
local M92_BERETTA_HOLOSIGHT = false
local M92_BERETTA_8X = false
local M92_BERETTA_HANDMADE = false
local M92_BERETTA_SILENCER = false
local M92_BERETTA_MUZZLEBOOST = false
----------------------------PROTOTYPE17--------------------------
local PROTOTYPE17 = nil
local PROTOTYPE17_HOLOSIGHT = false
local PROTOTYPE17_8X = false
local PROTOTYPE17_HANDMADE = false
local PROTOTYPE17_SILENCER = false
------------------------------PYTHON-----------------------------
local PYTHON = nil
local PYTHON_HOLOSIGHT = false
local PYTHON_8X = false
local PYTHON_HANDMADE = false
-----------------------------REVOLVER----------------------------
local REVOLVER = nil

-----------------------------SETTINGS----------------------------
local CUSTOMIZABLE_SENS = 0.50 --SET UR OWN SENSITIVITY
local CUSTOMIZABLE_FOV = 90 --SET UR OWN FOV

-----------------------------FUNCTION----------------------------
function IsLeftNotPressed()
    return not IsMouseButtonPressed(1)
end
function IsRightNotPressed()
    return not IsMouseButtonPressed(3)
end
function connector25(a)
    b = GetRunningTime() + a;
    repeat until GetRunningTime() > b - 1
end
function round(x)
    return x >= 0 and math.floor(x + 0.5) or math.ceil(x - 0.5)
end
function Smoothing(a, b, c)
    x_ = 0;
    y_ = 0;
    t_ = 0;
    for d = 1, a do
        xI = round(d * b / a)
        yI = round(d * c / a)
        tI = d * a / a;
        MoveMouseRelative(round(xI - x_), round(yI - y_))
        connector25(tI - t_)
        x_ = xI;
        y_ = yI;
        t_ = tI
    end
end

-----------------------------PATTERNS----------------------------
GunsPatterns = { [1] = { [1] = { "0", "0.194914926", "0.391704579", "0.511817958", "0.648471024", "0.764900073", "0.802570690", "0.806110299", "0.907826148", "0.907167069", "0.869595948", "0.901561429", "0.839903022", "0.902936872", "0.963032607", "0.874347588", "0.825614937", "0.954164890", "0.914673816", "0.903444147", "0.883858707", "0.943581636", "0.915063957", "0.857727099", "0.936576585", "0.910809190", "0.936988434", "0.91679014", "0.936988434", "0.936576585" }, [2] = { "-1.361448576", "-1.387357074", "-1.386754677", "-1.362197502", "-1.401340041", "-1.336221468", "-1.348643268", "-1.337576409", "-1.292502762", "-1.346553873", "-1.369026982", "-1.329203754", "-1.305987651", "-1.313265861", "-1.369361745", "-1.293973479", "-1.36908135", "-1.385905402", "-1.347744798", "-1.349755803", "-1.405980126", "-1.352300463", "-1.388740356", "-1.333803438", "-1.355569929", "-1.378052181", "-1.350748341", "-1.339769017", "-1.350748341", "-1.355569929" }, [3] = { 1.2, 7.3, 14.4, 0.8 }, [4] = { 1.2, 7.3, 14.4, 0.8 }, [5] = { ASSAULT_RIFLE_HOLOSIGHT, ASSAULT_RIFLE_8X, ASSAULT_RIFLE_16X, ASSAULT_RIFLE_HANDMADE }, [6] = { AK47_2_HOLOSIGHT, AK47_2_X8_SCOPE, AK47_2_X16_SCOPE, AK47_2_HANDMADESIGHT }, [7] = { ASSAULT_RIFLE_MUZZLEBOOST, AK47_2_MUZZLEBOOST } }, [2] = { [1] = { "0", "0.033517152", "-0.149077278", "-0.147054213", "0.057723381", "0.064947321", "0.195907464", "-0.109225611", "0.097926597", "-0.176121828", "0.039038725", "-0.076399497", "-0.054612504", "0.039398814", "-0.119097829", "-0.130586283", "0.025667901", "-0.039517002", "0.05208714", "-0.058687578", "-0.128459502", "-0.01072737", "-0.027482931", "-0.032145327", "0.033208416", "-0.055400022", "-0.020332557", "0.160677792", "0.04769127", "0.020668428" }, [2] = { "-1.237727448", "-1.144310085", "-1.123522866", "-1.16982603", "-1.185950853", "-1.13696856", "-1.173873366", "-1.133846226", "-1.097524521", "-1.20294882", "-1.107805068", "-1.13839164", "-1.105177797", "-1.09091044", "-1.028650464", "-1.076927247", "-1.090241713", "-1.059846669", "-1.14811803", "-1.187485488", "-1.115723664", "-1.043712801", "-1.075562658", "-1.13741478", "-1.081224828", "-1.159009318", "-1.08308448", "-1.202353056", "-1.158462495", "-1.158462495" }, [3] = { 1.2, 6.9, 13.5, 0.8 }, [4] = { 1.2, 6.9, 13.5, 0.8 }, [5] = { LR300_HOLOSIGHT, LR300_8X, LR300_16X, LR300_HANDMADESIGHT }, [6] = { LR300_2_HOLOSIGHT, LR300_2_X8_SCOPE, LR300_2_X16_SCOPE, LR300_2_HANDMADESIGHT }, [7] = { LR300_MUZZLEBOOST, LR300_2_MUZZLEBOOST } }, [3] = { [1] = { "0.075592683", "-0.060027444", "0.016778475", "-0.008270145", "-0.004792041", "0.057945888", "-0.027700011", "0.020692548", "-0.002392704", "-0.005670009", "0.084910239", "-0.009076356", "0.057706497", "-0.162594729", "0.000171855", "0.011103039", "0.059812173", "0.120394377", "-0.04984398", "0.004116078", "0.055300527", "-0.065532231", "0.102276036", "-0.023061132", "-0.051564339", "0.082176237", "0.118424376", "-0.091965339", "-0.12934953", "0.020668428" }, [2] = { "-0.634624938", "-0.561723444", "-0.575318682", "-0.513456912", "-0.645559137", "-0.613864251", "-0.479012248", "-0.670908654", "-0.56081412", "-0.535767309", "-0.585396621", "-0.631070253", "-0.518866425", "-0.626454288", "-0.506808234", "-0.625990978", "-0.513575703", "-0.538503723", "-0.644774634", "-0.531540279", "-0.694026468", "-0.582204339", "-0.662997907", "-0.675410652", "-0.528804468", "-0.631696167", "-0.627106131", "-0.729202473", "-0.576858744", "-0.576858744" }, [3] = { 1.2, 6.9, 13.5, 0.8 }, [4] = { 1.2, 6.9, 13.5, 0.8 }, [5] = { MP5_HOLOSIGHT, MP5_8X, MP5_16X, MP5_HANDMADE }, [6] = { MP5A4_2_HOLOSIGHT, MP5A4_2_X8_SCOPE, MP5A4_2_X16_SCOPE, MP5A4_2_HANDMADESIGHT }, [7] = { MP5_MUZZLEBOOST, MP5A4_2_MUZZLEBOOST } }, [4] = { [1] = { "-0.069091039", "0.005237658", "0.006218136", "0.039090475", "0.062757225", "-0.053135154", "0.054213318", "0.022353813", "0.107614395", "0.020906362", "-0.049842774", "0.01540665", "0.049695642", "-0.074352915", "0.016982902", "-0.070759638", "-0.162072531", "-0.032010858", "0.02555514", "0.02555514" }, [2] = { "-0.410422905", "-0.407988594", "-0.411750711", "-0.416881035", "-0.395337654", "-0.398238687", "-0.407135349", "-0.381471669", "-0.382746411", "-0.403674129", "-0.400900078", "-0.383888493", "-0.390212154", "-0.399248712", "-0.399399462", "-0.418165425", "-0.398657169", "-0.408528279", "-0.390163914", "-0.390163914" }, [3] = { 1.48, 8.4, 17, 0.8 }, [4] = { 1.48, 8.4, 17, 0.8 }, [5] = { THOMPSON_HOLOSIGHT, THOMPSON_8X, THOMPSON_16X, THOMPSON_HANDMADE }, [6] = { THOMPSON_2_HOLOSIGHT, THOMPSON_2_X8_SCOPE, THOMPSON_2_X16_SCOPE, THOMPSON_2_HANDMADESIGHT }, [7] = { THOMPSON_MUZZLEBOOST, THOMPSON_2_MUZZLEBOOST }, [8] = { THOMPSON_SILENCER, THOMPSON_2_SILENCER } }, [5] = { [1] = { "-0.069091642", "0.005237055", "0.006218136", "0.039090475", "0.062757225", "-0.053135154", "0.054213318", "0.022353813", "0.107614998", "0.020905759", "-0.049842774", "0.015407253", "0.049695039", "-0.074352915", "0.016982902", "-0.070759035", "-0.162072531", "-0.032010858", "0.002555514", "0.008543907", "-0.005973921", "0.026577828", "-0.026041761", "0.002555514" }, [2] = { "-0.410422905", "-0.407987991", "-0.411750711", "-0.416880432", "-0.395337051", "-0.398238687", "-0.407135349", "-0.381471669", "-0.382746411", "-0.403674732", "-0.400900681", "-0.383888493", "-0.390212154", "-0.399248712", "-0.399399462", "-0.418164822", "-0.398656566", "-0.408528279", "-0.390163311", "-0.33251832", "-0.332903637", "-0.348349482", "-0.331397343", "-0.331397343" }, [3] = { 1.5, 7.95, 15.9, 0.8 }, [4] = { 1.5, 7.95, 15.9, 0.8 }, [5] = { CUSTOM_SMG_HOLOSIGHT, CUSTOM_SMG_8X, CUSTOM_SMG_16X, CUSTOM_SMG_HANDMADE }, [6] = { SMG_2_HOLOSIGHT, SMG_2_X8_SCOPE, SMG_2_X16_SCOPE, SMG_2_HANDMADESIGHT }, [7] = { CUSTOM_SMG_MUZZLEBOOST, SMG_2_MUZZLEBOOST }, [8] = { CUSTOM_SMG_SILENCER, SMG_2_SILENCER } }, [6] = { [1] = { "0", "-0.536458333", "-0.536458333", "-0.556458333", "-0.556458333", "-0.556458333", "-0.556458333", "-0.556458333", "-0.556458333", "-0.556458333", "-0.556458333", "-0.556458333", "-0.556458333", "-0.556458333", "-0.556458333", "-0.556458333", "-0.556458333", "-0.556458333", "-0.556458333", "-0.556458333", "-0.556458333", "-0.556458333", "-0.556458333", "-0.556458333", "-0.556458333", "-0.556458333", "-0.556458333", "-0.556458333", "-0.556458333", "-0.556458333", "-0.556458333", "-0.556458333", "-0.556458333", "-0.556458333", "-0.556458333", "-0.556458333", "-0.556458333", "-0.556458333", "-0.556458333", "-0.556458333", "-0.556458333", "-0.556458333", "-0.556458333", "-0.556458333", "-0.556458333", "-0.556458333", "-0.556458333", "-0.556458333", "-0.556458333", "-0.556458333", "-0.556458333", "-0.556458333", "-0.556458333", "-0.556458333", "-0.556458333", "-0.556458333", "-0.556458333", "-0.556458333", "-0.556458333", "-0.556458333" }, [2] = { "-1.047375", "-1.047375", "-1.047375", "-1.047375", "-1.047375", "-1.047375", "-1.047375", "-1.047375", "-1.047375", "-1.047375", "-1.047375", "-1.047375", "-1.047375", "-1.047375", "-1.047375", "-1.047375", "-1.047375", "-1.047375", "-1.047375", "-1.047375", "-1.047375", "-1.047375", "-1.047375", "-1.047375", "-1.047375", "-1.047375", "-1.047375", "-1.047375", "-1.047375", "-1.047375", "-1.047375", "-1.047375", "-1.047375", "-1.047375", "-1.047375", "-1.047375", "-1.047375", "-1.047375", "-1.047375", "-1.047375", "-1.047375", "-1.047375", "-1.047375", "-1.047375", "-1.047375", "-1.047375", "-1.047375", "-1.047375", "-1.047375", "-1.047375", "-1.047375", "-1.047375", "-1.047375", "-1.047375", "-1.047375", "-1.047375", "-1.047375", "-1.047375", "-1.047375", "-1.047375" }, [3] = { 1.2, 7.2, 14.4, 0.8 }, [4] = { 1.2, 7.2, 14.4, 0.8 }, [5] = { HMLMG_HOLOSIGHT, HMLMG_8X, HMLMG_16X, HMLMG_HANDMADE }, [6] = { HMLMG_2_HOLOSIGHT, HMLMG_2_X8_SCOPE, HMLMG_2_X16_SCOPE, HMLMG_2_HANDMADESIGHT }, [7] = { HMLMG_MUZZLEBOOST, HMLMG_2_MUZZLEBOOST } }, [7] = { [1] = { "0", "0.39375", "0.525", "0.525", "0.525", "0.525", "0.525", "0.525", "0.525", "0.525", "0.525", "0.525", "0.525", "0.525", "0.525", "0.525", "0.525", "0.525", "0.525", "0.525", "0.525", "0.525", "0.525", "0.525", "0.525", "0.525", "0.525", "0.525", "0.525", "0.525", "0.525", "0.525", "0.525", "0.525", "0.525", "0.525", "0.525", "0.525", "0.525", "0.525", "0.525", "0.525", "0.525", "0.525", "0.525", "0.525", "0.525", "0.525", "0.525", "0.525", "0.525", "0.525", "0.525", "0.525", "0.525", "0.525", "0.525", "0.525", "0.525", "0.525", "0.525", "0.525", "0.525", "0.525", "0.525", "0.525", "0.525", "0.525", "0.525", "0.525", "0.525", "0.525", "0.525", "0.525", "0.525", "0.525", "0.525", "0.525", "0.525", "0.525", "0.525", "0.525", "0.525", "0.525", "0.525", "0.525", "0.525", "0.525", "0.525", "0.525", "0.525", "0.525", "0.525", "0.525", "0.525", "0.525", "0.525", "0.525", "0.525", "0.525" }, [2] = { "-0.81", "-1.0800", "-1.0800", "-1.0800", "-1.0800", "-1.0800", "-1.0800", "-1.0800", "-1.0800", "-1.0800", "-1.0800", "-1.0800", "-1.0800", "-1.0800", "-1.0800", "-1.0800", "-1.0800", "-1.0800", "-1.0800", "-1.0800", "-1.0800", "-1.0800", "-1.0800", "-1.0800", "-1.0800", "-1.0800", "-1.0800", "-1.0800", "-1.0800", "-1.0800", "-1.0800", "-1.0800", "-1.0800", "-1.0800", "-1.0800", "-1.0800", "-1.0800", "-1.0800", "-1.0800", "-1.0800", "-1.0800", "-1.0800", "-1.0800", "-1.0800", "-1.0800", "-1.0800", "-1.0800", "-1.0800", "-1.0800", "-1.0800", "-1.0800", "-1.0800", "-1.0800", "-1.0800", "-1.0800", "-1.0800", "-1.0800", "-1.0800", "-1.0800", "-1.0800", "-1.0800", "-1.0800", "-1.0800", "-1.0800", "-1.0800", "-1.0800", "-1.0800", "-1.0800", "-1.0800", "-1.0800", "-1.0800", "-1.0800", "-1.0800", "-1.0800", "-1.0800", "-1.0800", "-1.0800", "-1.0800", "-1.0800", "-1.0800", "-1.0800", "-1.0800", "-1.0800", "-1.0800", "-1.0800", "-1.0800", "-1.0800", "-1.0800", "-1.0800", "-1.0800", "-1.0800", "-1.0800", "-1.0800", "-1.0800", "-1.0800", "-1.0800", "-1.0800", "-1.0800", "-1.0800", "-1.0800" }, [3] = { 1.175, 6.95, 13.9, 0.8 }, [4] = { 1.175, 6.95, 13.9, 0.8 }, [5] = { M249_HOLOSIGHT, M249_8X, M249_16X, M249_HANDMADE }, [6] = { M249_2_HOLOSIGHT, M249_2_X8_SCOPE, M249_2_X16_SCOPE, M249_2_HANDMADESIGHT }, [7] = { M249_MUZZLEBOOST, M249_2_MUZZLEBOOST } }, [8] = { [1] = { "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0" }, [2] = { "-0.90", "-0.90", "-0.90", "-0.90", "-0.90", "-0.90", "-0.90", "-0.90", "-0.90", "-0.90", "-0.90", "-0.90", "-0.90", "-0.90", "-0.90", "-0.90" }, [3] = { 1.2, 7.35, 14.7, 0.8 }, [4] = { 1.2, 7.35, 14.7, 0.8 }, [5] = { SEMI_AUTOMATIC_RIFLE_HOLOSIGHT, SEMI_AUTOMATIC_RIFLE_8X, SEMI_AUTOMATIC_RIFLE_16X, SEMI_AUTOMATIC_RIFLE_HANDMADE }, [6] = { SAR_2_HOLOSIGHT, SAR_2_X8_SCOPE, SAR_2_X16_SCOPE, SAR_2_HANDMADESIGHT }, [7] = { SEMI_AUTOMATIC_RIFLE_MUZZLEBOOST, SAR_2_MUZZLEBOOST } }, [9] = { [1] = { "0.54", "0.54", "0.54", "0.54", "0.54", "0.54", "0.54", "0.54", "0.54", "0.54", "0.54", "0.54", "0.54", "0.54", "0.54", "0.54", "0.54", "0.54", "0.54", "0.54" }, [2] = { "-0.95", "-0.95", "-0.95", "-0.95", "-0.95", "-0.95", "-0.95", "-0.95", "-0.95", "-0.95", "-0.95", "-0.95", "-0.95", "-0.95", "-0.95", "-0.95", "-0.95", "-0.95", "-0.95", "-0.95" }, [3] = { 1.6, 9.7, 19.1, 0.8 }, [4] = { 1.6, 9.7, 19.1, 0.8 }, [5] = { M39_RIFLE_HOLOSIGHT, M39_RIFLE_8X, M39_RIFLE_16X, M39_RIFLE_HANDMADE }, [6] = { M39_2_HOLOSIGHT, M39_2_X8_SCOPE, M39_2_X16_SCOPE, M39_2_HANDMADESIGHT }, [7] = { M39_RIFLE_MUZZLEBOOST, M39_2_MUZZLEBOOST } }, [10] = { [1] = { "0", "0", "0", "0", "0", "0", "0", "0", "0", "0" }, [2] = { "-0.6075", "-0.6075", "-0.6075", "-0.6075", "-0.6075", "-0.6075", "-0.6075", "-0.6075", "-0.6075", "-0.6075" }, [3] = { 1.51, 9.75, 1, 0.85 }, [4] = { 1.51, 9.75, 1, 0.85 }, [5] = { SEMI_AUTOMATIC_PISTOL_HOLOSIGHT, SEMI_AUTOMATIC_PISTOL_8X, false, SEMI_AUTOMATIC_PISTOL_HANDMADE }, [6] = { SEMI_AUTOMATIC_PISTOL_2_HOLOSIGHT, SEMI_AUTOMATIC_PISTOL_2_X8_SCOPE, false, SEMI_AUTOMATIC_PISTOL_2_HANDMADESIGHT }, [7] = { SEMI_AUTOMATIC_PISTOL_MUZZLEBOOST, SEMI_AUTOMATIC_PISTOL_2_MUZZLEBOOST } }, [11] = { [1] = { "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0" }, [2] = { "-1.9", "-1.9", "-1.9", "-1.9", "-1.9", "-1.9", "-1.9", "-1.9", "-1.9", "-1.9", "-1.9", "-1.9", "-1.9", "-1.9", "-1.9" }, [3] = { 1.7, 10.25, 1, 0.92 }, [4] = { 1.7, 10.25, 1, 0.92 }, [5] = { M92_BERETTA_HOLOSIGHT, M92_BERETTA_8X, false, M92_BERETTA_HANDMADE }, [6] = { M92_BERETTA_2_HOLOSIGHT, M92_BERETTA_2_X8_SCOPE, false, M92_BERETTA_2_HANDMADESIGHT }, [7] = { M92_BERETTA_MUZZLEBOOST, M92_BERETTA_2_MUZZLEBOOST } }, [12] = { [1] = { "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0" }, [2] = { "-0.9", "-0.9", "-0.9", "-0.9", "-0.9", "-0.9", "-0.9", "-0.9", "-0.9", "-0.9", "-0.9", "-0.9", "-0.9", "-0.9", "-0.9" }, [3] = { 1.64, 10.55, 1.0, 0.92 }, [4] = { 1.64, 10.55, 1.0, 0.92 }, [5] = { PROTOTYPE17_HOLOSIGHT, PROTOTYPE17_8X, false, PROTOTYPE17_HANDMADE }, [6] = { PROTOTYPE_2_HOLOSIGHT, PROTOTYPE_2_X8_SCOPE, false, PROTOTYPE_2_HANDMADESIGHT }, [7] = { false, false } }, [13] = { [1] = { "0", "0", "0", "0", "0", "0" }, [2] = { "-3.5", "-3.5", "-3.5", "-3.5", "-3.5", "-3.5" }, [3] = { 1.6, 9.75, 1, 0.91 }, [4] = { 1.6, 9.75, 1, 0.91 }, [5] = { PYTHON_HOLOSIGHT, PYTHON_8X, false, PYTHON_HANDMADE }, [6] = { PYTHON_2_HOLOSIGHT, PYTHON_2_X8_SCOPE, false, PYTHON_2_HANDMADESIGHT } }, [14] = { [1] = { "0", "0", "0", "0", "0", "0", "0", "0" }, [2] = { "-1.1", "-1.1", "-1.1", "-1.1", "-1.1", "-1.1", "-1.1", "-1.1" }, [3] = { 1.0, 1.0, 1.0, 1.0 }, [4] = { 1.0, 1.0, 1.0, 1.0 }, [5] = { false, false, false, false }, [6] = { false, false, false, false } } }
AK47_RPM = 133.3;
LR300_RPM = 120;
MP5A4_RPM = 100;
THOMPSON_RPM = 129.87013;
SMG_RPM = 100;
HMLMG_RPM = 125;
M249_RPM = 120;
SAR_RPM = 174.927114;
M39_RPM = 174.927114;
SEMI_AUTOMATIC_PISTOL_RPM = 150;
M92_BERETTA_RPM = 150;
PROTOTYPE_RPM = 269.865068;
PYTHON_RPM = 150;
REVOLVER_RPM = 174.927114;
AK47_AT = 100;
LR300_AT = 100;
MP5A4_AT = 100;
THOMPSON_AT = 100;
SMG_AT = 100;
HMLMG_AT = 125;
M249_AT = 120;
SAR_AT = 75;
M39_AT = 75;
SEMI_AUTOMATIC_PISTOL_AT = 100;
M92_BERETTA_AT = 100;
PROTOTYPE_AT = 90;
PYTHON_AT = 145;
REVOLVER_AT = 145;
AK47_BULLETS = 30;
LR300_BULLETS = 30;
MP5A4_BULLETS = 30;
THOMPSON_BULLETS = 20;
SMG_BULLETS = 24;
HMLMG_BULLETS = 60;
M249_BULLETS = 100;
SAR_BULLETS = 16;
M39_BULLETS = 20;
SEMI_AUTOMATIC_PISTOL_BULLETS = 10;
M92_BERETTA_BULLETS = 15;
PROTOTYPE_BULLETS = 6;
PYTHON_BULLETS = 6;
REVOLVER_BULLETS = 8;
AT_Tables = { AK47_AT, LR300_AT, MP5A4_AT, THOMPSON_AT, SMG_AT, HMLMG_AT, M249_AT, SAR_AT, M39_AT, SEMI_AUTOMATIC_PISTOL_AT, M92_BERETTA_AT, PROTOTYPE_AT, PYTHON_AT, REVOLVER_AT }
RPM_Tables = { AK47_RPM, LR300_RPM, MP5A4_RPM, THOMPSON_RPM, SMG_RPM, HMLMG_RPM, M249_RPM, SAR_RPM, M39_RPM, SEMI_AUTOMATIC_PISTOL_RPM, M92_BERETTA_RPM, PROTOTYPE_RPM, PYTHON_RPM, REVOLVER_RPM }
GunsBullets = { AK47_BULLETS, LR300_BULLETS, MP5A4_BULLETS, THOMPSON_BULLETS, SMG_BULLETS, HMLMG_BULLETS, M249_BULLETS, SAR_BULLETS, M39_BULLETS, SEMI_AUTOMATIC_PISTOL_BULLETS, M92_BERETTA_BULLETS, PROTOTYPE_BULLETS, PYTHON_BULLETS, REVOLVER_BULLETS }
FullTables = { { { { [1] = {}, [2] = {}, [3] = {}, [4] = {} }, { [1] = {}, [2] = {}, [3] = {}, [4] = {} } }, { { [1] = {}, [2] = {}, [3] = {}, [4] = {} }, { [1] = {}, [2] = {}, [3] = {}, [4] = {} } } }, { { { [1] = {}, [2] = {}, [3] = {}, [4] = {} }, { [1] = {}, [2] = {}, [3] = {}, [4] = {} } }, { { [1] = {}, [2] = {}, [3] = {}, [4] = {} }, { [1] = {}, [2] = {}, [3] = {}, [4] = {} } } }, { { { [1] = {}, [2] = {}, [3] = {}, [4] = {} }, { [1] = {}, [2] = {}, [3] = {}, [4] = {} } }, { { [1] = {}, [2] = {}, [3] = {}, [4] = {} }, { [1] = {}, [2] = {}, [3] = {}, [4] = {} } } }, { { { [1] = {}, [2] = {}, [3] = {}, [4] = {} }, { [1] = {}, [2] = {}, [3] = {}, [4] = {} } }, { { [1] = {}, [2] = {}, [3] = {}, [4] = {} }, { [1] = {}, [2] = {}, [3] = {}, [4] = {} } } }, { { { [1] = {}, [2] = {}, [3] = {}, [4] = {} }, { [1] = {}, [2] = {}, [3] = {}, [4] = {} } }, { { [1] = {}, [2] = {}, [3] = {}, [4] = {} }, { [1] = {}, [2] = {}, [3] = {}, [4] = {} } } }, { { { [1] = {}, [2] = {}, [3] = {}, [4] = {} }, { [1] = {}, [2] = {}, [3] = {}, [4] = {} } }, { { [1] = {}, [2] = {}, [3] = {}, [4] = {} }, { [1] = {}, [2] = {}, [3] = {}, [4] = {} } } }, { { { [1] = {}, [2] = {}, [3] = {}, [4] = {} }, { [1] = {}, [2] = {}, [3] = {}, [4] = {} } }, { { [1] = {}, [2] = {}, [3] = {}, [4] = {} }, { [1] = {}, [2] = {}, [3] = {}, [4] = {} } } }, { { { [1] = {}, [2] = {}, [3] = {}, [4] = {} }, { [1] = {}, [2] = {}, [3] = {}, [4] = {} } }, { { [1] = {}, [2] = {}, [3] = {}, [4] = {} }, { [1] = {}, [2] = {}, [3] = {}, [4] = {} } } }, { { { [1] = {}, [2] = {}, [3] = {}, [4] = {} }, { [1] = {}, [2] = {}, [3] = {}, [4] = {} } }, { { [1] = {}, [2] = {}, [3] = {}, [4] = {} }, { [1] = {}, [2] = {}, [3] = {}, [4] = {} } } }, { { { [1] = {}, [2] = {}, [3] = {}, [4] = {} }, { [1] = {}, [2] = {}, [3] = {}, [4] = {} } }, { { [1] = {}, [2] = {}, [3] = {}, [4] = {} }, { [1] = {}, [2] = {}, [3] = {}, [4] = {} } } }, { { { [1] = {}, [2] = {}, [3] = {}, [4] = {} }, { [1] = {}, [2] = {}, [3] = {}, [4] = {} } }, { { [1] = {}, [2] = {}, [3] = {}, [4] = {} }, { [1] = {}, [2] = {}, [3] = {}, [4] = {} } } }, { { { [1] = {}, [2] = {}, [3] = {}, [4] = {} }, { [1] = {}, [2] = {}, [3] = {}, [4] = {} } }, { { [1] = {}, [2] = {}, [3] = {}, [4] = {} }, { [1] = {}, [2] = {}, [3] = {}, [4] = {} } } }, { { { [1] = {}, [2] = {}, [3] = {}, [4] = {} }, { [1] = {}, [2] = {}, [3] = {}, [4] = {} } }, { { [1] = {}, [2] = {}, [3] = {}, [4] = {} }, { [1] = {}, [2] = {}, [3] = {}, [4] = {} } } }, { { { [1] = {}, [2] = {}, [3] = {}, [4] = {} }, { [1] = {}, [2] = {}, [3] = {}, [4] = {} } }, { { [1] = {}, [2] = {}, [3] = {}, [4] = {} }, { [1] = {}, [2] = {}, [3] = {}, [4] = {} } } } }

----------------------------MULTIPLIERS--------------------------
screenMultiplier = -0.03 * (CUSTOMIZABLE_SENS * 3) * (CUSTOMIZABLE_FOV / 100)
StandMultiplier = 1.90
StandMultiplier_HMLMG = 2
StandMultiplier_M249 = 1.93

-----------------------------PROCESS-----------------------------
for a = 1, #FullTables do
    for b = 1, #FullTables[1] do
        Silencer = 1.0;
        MUZZLEBOOST = 1.0;
        if a < 13 then
            if GunsPatterns[a][7][b] == true then
                MUZZLEBOOST = 0.9
            else
                MUZZLEBOOST = 1.0
            end
        else
            MUZZLEBOOST = 1.0
        end ;
        for c = 1, #GunsPatterns[a][b + 2] do
            if GunsPatterns[a][b + 4][c] == false then
                GunsPatterns[a][b + 2][c] = 1.0
            end
        end ;
        if a == 4 then
            if GunsPatterns[a][8][b] == true and GunsPatterns[a][b + 4][1] == true then
                Silencer = 0.9
            end
        elseif a == 5 then
            if GunsPatterns[a][8][b] == true and GunsPatterns[a][b + 4][1] == true then
                Silencer = 0.9
            end
        end ;
        for d = 1, #FullTables[2] do
            OverFlowST, OverFlowX, OverFlowY = 0, 0, 0;
            Module_Multiplier = 1.0;
            for e = 1, #GunsPatterns[a][b + 2] do
                Module_Multiplier = Module_Multiplier * GunsPatterns[a][b + 2][e]
            end ;
            for f = 1, GunsBullets[a] do
                if d == 1 then
                    if a == 6 then
                        if GunsPatterns[a][b + 4][2] == true or GunsPatterns[a][b + 4][3] == true then
                            if f > 30 then
                                X = 0;
                                Y = GunsPatterns[a][2][f] / screenMultiplier * Module_Multiplier * Silencer
                            else
                                X = GunsPatterns[a][1][f] / screenMultiplier * Module_Multiplier * Silencer;
                                Y = GunsPatterns[a][2][f] / screenMultiplier * Module_Multiplier * Silencer
                            end
                        else
                            if f > 45 then
                                X = 0;
                                Y = GunsPatterns[a][2][f] / screenMultiplier * Module_Multiplier * Silencer
                            else
                                X = GunsPatterns[a][1][f] / screenMultiplier * Module_Multiplier * Silencer;
                                Y = GunsPatterns[a][2][f] / screenMultiplier * Module_Multiplier * Silencer
                            end
                        end
                    elseif a == 7 then
                        if GunsPatterns[a][b + 4][2] == true or GunsPatterns[a][b + 4][3] == true then
                            if f > 31 then
                                X = 0;
                                Y = GunsPatterns[a][2][f] / screenMultiplier * Module_Multiplier * Silencer
                            else
                                X = GunsPatterns[a][1][f] / screenMultiplier * Module_Multiplier * Silencer;
                                Y = GunsPatterns[a][2][f] / screenMultiplier * Module_Multiplier * Silencer
                            end
                        else
                            if f > 47 then
                                X = 0;
                                Y = GunsPatterns[a][2][f] / screenMultiplier * Module_Multiplier * Silencer
                            else
                                X = GunsPatterns[a][1][f] / screenMultiplier * Module_Multiplier * Silencer;
                                Y = GunsPatterns[a][2][f] / screenMultiplier * Module_Multiplier * Silencer
                            end
                        end
                    else
                        X = GunsPatterns[a][1][f] / screenMultiplier * Module_Multiplier * Silencer;
                        Y = GunsPatterns[a][2][f] / screenMultiplier * Module_Multiplier * Silencer
                    end
                else
                    if a == 6 then
                        if GunsPatterns[a][b + 4][2] == true or GunsPatterns[a][b + 4][3] == true then
                            if f > 16 then
                                X = 0;
                                Y = GunsPatterns[a][2][f] / screenMultiplier * Module_Multiplier * Silencer * StandMultiplier_HMLMG
                            else
                                X = GunsPatterns[a][1][f] / screenMultiplier * Module_Multiplier * Silencer * StandMultiplier_HMLMG;
                                Y = GunsPatterns[a][2][f] / screenMultiplier * Module_Multiplier * Silencer * StandMultiplier_HMLMG
                            end
                        else
                            if f > 23 then
                                X = 0;
                                Y = GunsPatterns[a][2][f] / screenMultiplier * Module_Multiplier * Silencer * StandMultiplier_HMLMG
                            else
                                X = GunsPatterns[a][1][f] / screenMultiplier * Module_Multiplier * Silencer * StandMultiplier_HMLMG;
                                Y = GunsPatterns[a][2][f] / screenMultiplier * Module_Multiplier * Silencer * StandMultiplier_HMLMG
                            end
                        end
                    elseif a == 7 then
                        if GunsPatterns[a][b + 4][2] == true or GunsPatterns[a][b + 4][3] == true then
                            if f > 17 then
                                X = 0;
                                Y = GunsPatterns[a][2][f] / screenMultiplier * Module_Multiplier * Silencer * StandMultiplier_M249
                            else
                                X = GunsPatterns[a][1][f] / screenMultiplier * Module_Multiplier * Silencer * StandMultiplier_M249;
                                Y = GunsPatterns[a][2][f] / screenMultiplier * Module_Multiplier * Silencer * StandMultiplier_HMLMG
                            end
                        else
                            if f > 24 then
                                X = 0;
                                Y = GunsPatterns[a][2][f] / screenMultiplier * Module_Multiplier * Silencer * StandMultiplier_M249
                            else
                                X = GunsPatterns[a][1][f] / screenMultiplier * Module_Multiplier * Silencer * StandMultiplier_M249;
                                Y = GunsPatterns[a][2][f] / screenMultiplier * Module_Multiplier * Silencer * StandMultiplier_HMLMG
                            end
                        end
                    else
                        X = GunsPatterns[a][1][f] / screenMultiplier * StandMultiplier * Module_Multiplier * Silencer;
                        Y = GunsPatterns[a][2][f] / screenMultiplier * StandMultiplier * Module_Multiplier * Silencer
                    end
                end ;
                OverFlowX = round(X) - X + OverFlowX;
                if OverFlowX > 1 then
                    OverFlowX = OverFlowX - 1;
                    X = round(X) + 1
                else
                    X = round(X)
                end ;
                OverFlowY = Y % 1 + OverFlowY;
                if OverFlowY > 1 then
                    OverFlowY = OverFlowY - 1;
                    Y = round(Y) + 1
                else
                    Y = round(Y)
                end ;
                if a < 12 then
                    AT = AT_Tables[a] * MUZZLEBOOST
                else
                    AT = AT_Tables[a]
                end ;
                if MUZZLEBOOST == 1.0 then
                    OverFlowST = RPM_Tables[a] * MUZZLEBOOST % 1 + OverFlowST
                else
                    OverFlowST = 0
                end ;
                if a ~= 1 then
                    if OverFlowST > 1 then
                        ST = RPM_Tables[a] * MUZZLEBOOST - AT + 1;
                        OverFlowST = OverFlowST - 1 - ST % 1;
                        ST = round(RPM_Tables[a] * MUZZLEBOOST - AT + 1)
                    else
                        ST = round(RPM_Tables[a] * MUZZLEBOOST - AT)
                    end
                else
                    ST = round(RPM_Tables[a] * MUZZLEBOOST - AT)
                end ;
                FullTables[a][b][d][1][f] = X;
                FullTables[a][b][d][2][f] = Y;
                FullTables[a][b][d][3][f] = AT;
                FullTables[a][b][d][4][f] = ST
            end
        end
    end
end

----------------------------EVENT_PART---------------------------
gun = 0
kickback = falseB
function OnEvent(event, arg)
    --ASSAULTRIFLE
    if (event == "MOUSE_BUTTON_PRESSED" and arg == ASSAULT_RIFLE) then
        kickback = not kickback
        gun = arg
        if (kickback == false) then
            OutputLogMessage("ASSAULT_RIFLE_MACRO-OFF\n")
        else
            OutputLogMessage("ASSAULT_RIFLE_MACRO-ON\n")
            EnablePrimaryMouseButtonEvents(true)
        end
        --LR300
    elseif (event == "MOUSE_BUTTON_PRESSED" and arg == LR300) then
        kickback = not kickback
        gun = arg
        if (kickback == false) then
            OutputLogMessage("LR300_MACRO-OFF\n")
        else
            OutputLogMessage("LR300_MACRO-ON\n")
            EnablePrimaryMouseButtonEvents(true)
        end
        --MP5
    elseif (event == "MOUSE_BUTTON_PRESSED" and arg == MP5) then
        kickback = not kickback
        gun = arg
        if (kickback == false) then
            OutputLogMessage("MP5_MACRO-OFF\n")
        else
            OutputLogMessage("MP5_MACRO-ON\n")
            EnablePrimaryMouseButtonEvents(true)
        end
        --THOMPSON
    elseif (event == "MOUSE_BUTTON_PRESSED" and arg == THOMPSON) then
        kickback = not kickback
        gun = arg
        if (kickback == false) then
            OutputLogMessage("THOMPSON_MACRO-OFF\n")
        else
            OutputLogMessage("THOMPSON_MACRO-ON\n")
            EnablePrimaryMouseButtonEvents(true)
        end
        --CUSTOMSMG
    elseif (event == "MOUSE_BUTTON_PRESSED" and arg == CUSTOM_SMG) then
        kickback = not kickback
        gun = arg
        if (kickback == false) then
            OutputLogMessage("CUSTOM_SMG_MACRO-OFF\n")
        else
            OutputLogMessage("CUSTOM_SMG_MACRO-ON\n")
            EnablePrimaryMouseButtonEvents(true)
        end
        --HMLMG
    elseif (event == "MOUSE_BUTTON_PRESSED" and arg == HMLMG) then
        kickback = not kickback
        gun = arg
        if (kickback == false) then
            OutputLogMessage("HMLMG_MACRO-OFF\n")
        else
            OutputLogMessage("HMLMG_MACRO-ON\n")
            EnablePrimaryMouseButtonEvents(true)
        end
        --M249
    elseif (event == "MOUSE_BUTTON_PRESSED" and arg == M249) then
        kickback = not kickback
        gun = arg
        if (kickback == false) then
            OutputLogMessage("M249_MACRO-OFF\n")
        else
            OutputLogMessage("M249_MACRO-ON\n")
            EnablePrimaryMouseButtonEvents(true)
        end
        --SEMI-AUTOMATIC-RIFLE
    elseif (event == "MOUSE_BUTTON_PRESSED" and arg == SEMI_AUTOMATIC_RIFLE) then
        kickback = not kickback
        gun = arg
        if (kickback == false) then
            OutputLogMessage("SEMI_AUTOMATIC_RIFLE_MACRO-OFF\n")
        else
            OutputLogMessage("SEMI_AUTOMATIC_RIFLE_MACRO-ON\n")
            EnablePrimaryMouseButtonEvents(true)
        end
        --M39-RIFLE
    elseif (event == "MOUSE_BUTTON_PRESSED" and arg == M39_RIFLE) then
        kickback = not kickback
        gun = arg
        if (kickback == false) then
            OutputLogMessage("M39_RIFLE_MACRO-OFF\n")
        else
            OutputLogMessage("M39_RIFLE_MACRO-ON\n")
            EnablePrimaryMouseButtonEvents(true)
        end
        --SEMI-AUTOMATIC-PISTOL
    elseif (event == "MOUSE_BUTTON_PRESSED" and arg == SEMI_AUTOMATIC_PISTOL) then
        kickback = not kickback
        gun = arg
        if (kickback == false) then
            OutputLogMessage("SEMI_AUTOMATIC_PISTOL_MACRO-OFF\n")
        else
            OutputLogMessage("SEMI_AUTOMATIC_PISTOL_MACRO-ON\n")
            EnablePrimaryMouseButtonEvents(true)
        end
        --M92-RIFLE
    elseif (event == "MOUSE_BUTTON_PRESSED" and arg == M92_BERETTA) then
        kickback = not kickback
        gun = arg
        if (kickback == false) then
            OutputLogMessage("M92_BERETTA_BERETTA_MACRO-OFF\n")
        else
            OutputLogMessage("M92_BERETTA_BERETTA_MACRO-ON\n")
            EnablePrimaryMouseButtonEvents(true)
        end
        --PROTOTYPE17
    elseif (event == "MOUSE_BUTTON_PRESSED" and arg == PROTOTYPE17) then
        kickback = not kickback
        gun = arg
        if (kickback == false) then
            OutputLogMessage("PROTOTYPE17_MACRO-OFF\n")
        else
            OutputLogMessage("PROTOTYPE17_MACRO-ON\n")
            EnablePrimaryMouseButtonEvents(true)
        end
        --PYTHON
    elseif (event == "MOUSE_BUTTON_PRESSED" and arg == PYTHON) then
        kickback = not kickback
        gun = arg
        if (kickback == false) then
            OutputLogMessage("PYTHON_MACRO-OFF\n")
        else
            OutputLogMessage("PYTHON_MACRO-ON\n")
            EnablePrimaryMouseButtonEvents(true)
        end
        --REVOLVER
    elseif (event == "MOUSE_BUTTON_PRESSED" and arg == REVOLVER) then
        kickback = not kickback
        gun = arg
        if (kickback == false) then
            OutputLogMessage("REVOLVER_MACRO-OFF\n")
        else
            OutputLogMessage("REVOLVER_MACRO-ON\n")
            EnablePrimaryMouseButtonEvents(true)
        end
    end

    if gun == ASSAULT_RIFLE then
        CURRECT_GUN = 1;
        CURRECT_VAR = 1;
        CROUCH_STATE = 1;
        STAND_STATE = 2;
        X_ARRAY = 1;
        Y_ARRAY = 2;
        AT_ARRAY = 3;
        ST_ARRAY = 4;
        if kickback then
            if IsMouseButtonPressed(3) then
                connector25(5)
                if IsMouseButtonPressed(1) then
                    for a = 1, AK47_BULLETS do
                        if IsRightNotPressed() then
                            return
                        end ;
                        if IsLeftNotPressed() then
                            return
                        end ;
                        if IsModifierPressed("lctrl") then
                            Smoothing(FullTables[CURRECT_GUN][CURRECT_VAR][CROUCH_STATE][AT_ARRAY][a], FullTables[CURRECT_GUN][CURRECT_VAR][CROUCH_STATE][X_ARRAY][a], FullTables[CURRECT_GUN][CURRECT_VAR][CROUCH_STATE][Y_ARRAY][a])
                        else
                            if ASSAULT_RIFLE_MUZZLEBOOST == true then
                                if a > 17 then
                                    Smoothing(FullTables[CURRECT_GUN][CURRECT_VAR][STAND_STATE][AT_ARRAY][a], round(FullTables[CURRECT_GUN][CURRECT_VAR][STAND_STATE][X_ARRAY][a] * 0), round(FullTables[CURRECT_GUN][CURRECT_VAR][STAND_STATE][Y_ARRAY][a] * 1.07))
                                else
                                    Smoothing(FullTables[CURRECT_GUN][CURRECT_VAR][STAND_STATE][AT_ARRAY][a], FullTables[CURRECT_GUN][CURRECT_VAR][STAND_STATE][X_ARRAY][a], round(FullTables[CURRECT_GUN][CURRECT_VAR][STAND_STATE][Y_ARRAY][a] * 1.07))
                                end
                            else
                                Smoothing(FullTables[CURRECT_GUN][CURRECT_VAR][STAND_STATE][AT_ARRAY][a], FullTables[CURRECT_GUN][CURRECT_VAR][STAND_STATE][X_ARRAY][a], FullTables[CURRECT_GUN][CURRECT_VAR][STAND_STATE][Y_ARRAY][a])
                            end
                        end ;
                        if FullTables[CURRECT_GUN][CURRECT_VAR][STAND_STATE][ST_ARRAY][a] ~= 0 then
                            connector25(FullTables[CURRECT_GUN][CURRECT_VAR][STAND_STATE][ST_ARRAY][a])
                        end
                    end ;
                    repeat if IsModifierPressed("lctrl") then
                        if ASSAULT_RIFLE_MUZZLEBOOST == true then
                            Smoothing(FullTables[CURRECT_GUN][CURRECT_VAR][CROUCH_STATE][AT_ARRAY][AK47_BULLETS], FullTables[CURRECT_GUN][CURRECT_VAR][CROUCH_STATE][X_ARRAY][AK47_BULLETS] * 0, FullTables[CURRECT_GUN][CURRECT_VAR][CROUCH_STATE][Y_ARRAY][AK47_BULLETS])
                        else
                            Smoothing(FullTables[CURRECT_GUN][CURRECT_VAR][CROUCH_STATE][AT_ARRAY][AK47_BULLETS], FullTables[CURRECT_GUN][CURRECT_VAR][CROUCH_STATE][X_ARRAY][AK47_BULLETS], FullTables[CURRECT_GUN][CURRECT_VAR][CROUCH_STATE][Y_ARRAY][AK47_BULLETS])
                        end
                    else
                        if ASSAULT_RIFLE_MUZZLEBOOST == true then
                            Smoothing(FullTables[CURRECT_GUN][CURRECT_VAR][STAND_STATE][AT_ARRAY][AK47_BULLETS], round(FullTables[CURRECT_GUN][CURRECT_VAR][STAND_STATE][X_ARRAY][AK47_BULLETS] * 0), round(FullTables[CURRECT_GUN][CURRECT_VAR][STAND_STATE][Y_ARRAY][AK47_BULLETS] * 1.07))
                        else
                            Smoothing(FullTables[CURRECT_GUN][CURRECT_VAR][STAND_STATE][AT_ARRAY][AK47_BULLETS], FullTables[CURRECT_GUN][CURRECT_VAR][STAND_STATE][X_ARRAY][AK47_BULLETS], FullTables[CURRECT_GUN][CURRECT_VAR][STAND_STATE][Y_ARRAY][AK47_BULLETS])
                        end
                    end ;
                        if FullTables[CURRECT_GUN][CURRECT_VAR][STAND_STATE][ST_ARRAY][AK47_BULLETS] ~= 0 then
                            connector25(FullTables[CURRECT_GUN][CURRECT_VAR][STAND_STATE][ST_ARRAY][AK47_BULLETS])
                        end until IsLeftNotPressed()
                end
            end
        end
    elseif gun == AK47_2 then
        CURRECT_GUN = 1;
        CURRECT_VAR = 2;
        CROUCH_STATE = 1;
        STAND_STATE = 2;
        X_ARRAY = 1;
        Y_ARRAY = 2;
        AT_ARRAY = 3;
        ST_ARRAY = 4;
        if kickback then
            if IsMouseButtonPressed(3) then
                connector25(5)
                if IsMouseButtonPressed(1) then
                    for a = 1, AK47_BULLETS do
                        if IsRightNotPressed() then
                            return
                        end ;
                        if IsLeftNotPressed() then
                            return
                        end ;
                        if IsModifierPressed("lctrl") then
                            Smoothing(FullTables[CURRECT_GUN][CURRECT_VAR][CROUCH_STATE][AT_ARRAY][a], FullTables[CURRECT_GUN][CURRECT_VAR][CROUCH_STATE][X_ARRAY][a], FullTables[CURRECT_GUN][CURRECT_VAR][CROUCH_STATE][Y_ARRAY][a])
                        else
                            if AK47_2_MUZZLEBOOST == true then
                                if a > 17 then
                                    Smoothing(FullTables[CURRECT_GUN][CURRECT_VAR][STAND_STATE][AT_ARRAY][a], round(FullTables[CURRECT_GUN][CURRECT_VAR][STAND_STATE][X_ARRAY][a] * 0), round(FullTables[CURRECT_GUN][CURRECT_VAR][STAND_STATE][Y_ARRAY][a] * 1.07))
                                else
                                    Smoothing(FullTables[CURRECT_GUN][CURRECT_VAR][STAND_STATE][AT_ARRAY][a], FullTables[CURRECT_GUN][CURRECT_VAR][STAND_STATE][X_ARRAY][a], round(FullTables[CURRECT_GUN][CURRECT_VAR][STAND_STATE][Y_ARRAY][a] * 1.07))
                                end
                            else
                                Smoothing(FullTables[CURRECT_GUN][CURRECT_VAR][STAND_STATE][AT_ARRAY][a], FullTables[CURRECT_GUN][CURRECT_VAR][STAND_STATE][X_ARRAY][a], FullTables[CURRECT_GUN][CURRECT_VAR][STAND_STATE][Y_ARRAY][a])
                            end
                        end ;
                        if FullTables[CURRECT_GUN][CURRECT_VAR][STAND_STATE][ST_ARRAY][a] ~= 0 then
                            connector25(FullTables[CURRECT_GUN][CURRECT_VAR][STAND_STATE][ST_ARRAY][a])
                        end
                    end ;
                    repeat if IsModifierPressed("lctrl") then
                        if AK47_2_MUZZLEBOOST == true then
                            Smoothing(FullTables[CURRECT_GUN][CURRECT_VAR][CROUCH_STATE][AT_ARRAY][AK47_BULLETS], FullTables[CURRECT_GUN][CURRECT_VAR][CROUCH_STATE][X_ARRAY][AK47_BULLETS] * 0, FullTables[CURRECT_GUN][CURRECT_VAR][CROUCH_STATE][Y_ARRAY][AK47_BULLETS])
                        else
                            Smoothing(FullTables[CURRECT_GUN][CURRECT_VAR][CROUCH_STATE][AT_ARRAY][AK47_BULLETS], FullTables[CURRECT_GUN][CURRECT_VAR][CROUCH_STATE][X_ARRAY][AK47_BULLETS], FullTables[CURRECT_GUN][CURRECT_VAR][CROUCH_STATE][Y_ARRAY][AK47_BULLETS])
                        end
                    else
                        if AK47_2_MUZZLEBOOST == true then
                            Smoothing(FullTables[CURRECT_GUN][CURRECT_VAR][STAND_STATE][AT_ARRAY][AK47_BULLETS], round(FullTables[CURRECT_GUN][CURRECT_VAR][STAND_STATE][X_ARRAY][AK47_BULLETS] * 0), round(FullTables[CURRECT_GUN][CURRECT_VAR][STAND_STATE][Y_ARRAY][AK47_BULLETS] * 1.07))
                        else
                            Smoothing(FullTables[CURRECT_GUN][CURRECT_VAR][STAND_STATE][AT_ARRAY][AK47_BULLETS], FullTables[CURRECT_GUN][CURRECT_VAR][STAND_STATE][X_ARRAY][AK47_BULLETS], FullTables[CURRECT_GUN][CURRECT_VAR][STAND_STATE][Y_ARRAY][AK47_BULLETS])
                        end
                    end ;
                        if FullTables[CURRECT_GUN][CURRECT_VAR][STAND_STATE][ST_ARRAY][AK47_BULLETS] ~= 0 then
                            connector25(FullTables[CURRECT_GUN][CURRECT_VAR][STAND_STATE][ST_ARRAY][AK47_BULLETS])
                        end until IsLeftNotPressed()
                end
            end
        end
    elseif gun == LR300 then
        CURRECT_GUN = 2;
        CURRECT_VAR = 1;
        CROUCH_STATE = 1;
        STAND_STATE = 2;
        X_ARRAY = 1;
        Y_ARRAY = 2;
        AT_ARRAY = 3;
        ST_ARRAY = 4;
        if kickback then
            if IsMouseButtonPressed(3) then
                connector25(5)
                if IsMouseButtonPressed(1) then
                    for a = 1, LR300_BULLETS do
                        if IsRightNotPressed() then
                            return
                        end ;
                        if IsLeftNotPressed() then
                            return
                        end ;
                        if IsModifierPressed("lctrl") then
                            Smoothing(FullTables[CURRECT_GUN][CURRECT_VAR][CROUCH_STATE][AT_ARRAY][a], FullTables[CURRECT_GUN][CURRECT_VAR][CROUCH_STATE][X_ARRAY][a], FullTables[CURRECT_GUN][CURRECT_VAR][CROUCH_STATE][Y_ARRAY][a])
                        else
                            Smoothing(FullTables[CURRECT_GUN][CURRECT_VAR][STAND_STATE][AT_ARRAY][a], FullTables[CURRECT_GUN][CURRECT_VAR][STAND_STATE][X_ARRAY][a], FullTables[CURRECT_GUN][CURRECT_VAR][STAND_STATE][Y_ARRAY][a])
                        end ;
                        if FullTables[CURRECT_GUN][CURRECT_VAR][STAND_STATE][ST_ARRAY][a] ~= 0 then
                            connector25(FullTables[CURRECT_GUN][CURRECT_VAR][STAND_STATE][ST_ARRAY][a])
                        end
                    end ;
                    repeat if IsModifierPressed("lctrl") then
                        Smoothing(FullTables[CURRECT_GUN][CURRECT_VAR][CROUCH_STATE][AT_ARRAY][LR300_BULLETS], FullTables[CURRECT_GUN][CURRECT_VAR][CROUCH_STATE][X_ARRAY][LR300_BULLETS], FullTables[CURRECT_GUN][CURRECT_VAR][CROUCH_STATE][Y_ARRAY][LR300_BULLETS])
                    else
                        Smoothing(FullTables[CURRECT_GUN][CURRECT_VAR][STAND_STATE][AT_ARRAY][LR300_BULLETS], FullTables[CURRECT_GUN][CURRECT_VAR][STAND_STATE][X_ARRAY][LR300_BULLETS], FullTables[CURRECT_GUN][CURRECT_VAR][STAND_STATE][Y_ARRAY][LR300_BULLETS])
                    end ;
                        if FullTables[CURRECT_GUN][CURRECT_VAR][STAND_STATE][ST_ARRAY][LR300_BULLETS] ~= 0 then
                            connector25(FullTables[CURRECT_GUN][CURRECT_VAR][STAND_STATE][ST_ARRAY][LR300_BULLETS])
                        end until IsLeftNotPressed()
                end
            end
        end
    elseif gun == LR300_2 then
        CURRECT_GUN = 2;
        CURRECT_VAR = 2;
        CROUCH_STATE = 1;
        STAND_STATE = 2;
        X_ARRAY = 1;
        Y_ARRAY = 2;
        AT_ARRAY = 3;
        ST_ARRAY = 4;
        if kickback then
            if IsMouseButtonPressed(3) then
                connector25(5)
                if IsMouseButtonPressed(1) then
                    for a = 1, LR300_BULLETS do
                        if IsRightNotPressed() then
                            return
                        end ;
                        if IsLeftNotPressed() then
                            return
                        end ;
                        if IsModifierPressed("lctrl") then
                            Smoothing(FullTables[CURRECT_GUN][CURRECT_VAR][CROUCH_STATE][AT_ARRAY][a], FullTables[CURRECT_GUN][CURRECT_VAR][CROUCH_STATE][X_ARRAY][a], FullTables[CURRECT_GUN][CURRECT_VAR][CROUCH_STATE][Y_ARRAY][a])
                        else
                            Smoothing(FullTables[CURRECT_GUN][CURRECT_VAR][STAND_STATE][AT_ARRAY][a], FullTables[CURRECT_GUN][CURRECT_VAR][STAND_STATE][X_ARRAY][a], FullTables[CURRECT_GUN][CURRECT_VAR][STAND_STATE][Y_ARRAY][a])
                        end ;
                        if FullTables[CURRECT_GUN][CURRECT_VAR][STAND_STATE][ST_ARRAY][a] ~= 0 then
                            connector25(FullTables[CURRECT_GUN][CURRECT_VAR][STAND_STATE][ST_ARRAY][a])
                        end
                    end ;
                    repeat if IsModifierPressed("lctrl") then
                        Smoothing(FullTables[CURRECT_GUN][CURRECT_VAR][CROUCH_STATE][AT_ARRAY][LR300_BULLETS], FullTables[CURRECT_GUN][CURRECT_VAR][CROUCH_STATE][X_ARRAY][LR300_BULLETS], FullTables[CURRECT_GUN][CURRECT_VAR][CROUCH_STATE][Y_ARRAY][LR300_BULLETS])
                    else
                        Smoothing(FullTables[CURRECT_GUN][CURRECT_VAR][STAND_STATE][AT_ARRAY][LR300_BULLETS], FullTables[CURRECT_GUN][CURRECT_VAR][STAND_STATE][X_ARRAY][LR300_BULLETS], FullTables[CURRECT_GUN][CURRECT_VAR][STAND_STATE][Y_ARRAY][LR300_BULLETS])
                    end ;
                        if FullTables[CURRECT_GUN][CURRECT_VAR][STAND_STATE][ST_ARRAY][LR300_BULLETS] ~= 0 then
                            connector25(FullTables[CURRECT_GUN][CURRECT_VAR][STAND_STATE][ST_ARRAY][LR300_BULLETS])
                        end until IsLeftNotPressed()
                end
            end
        end
    elseif gun == MP5 then
        CURRECT_GUN = 3;
        CURRECT_VAR = 1;
        CROUCH_STATE = 1;
        STAND_STATE = 2;
        X_ARRAY = 1;
        Y_ARRAY = 2;
        AT_ARRAY = 3;
        ST_ARRAY = 4;
        if kickback then
            if IsMouseButtonPressed(3) then
                connector25(5)
                if IsMouseButtonPressed(1) then
                    for a = 1, MP5A4_BULLETS do
                        if IsRightNotPressed() then
                            return
                        end ;
                        if IsLeftNotPressed() then
                            return
                        end ;
                        if IsModifierPressed("lctrl") then
                            Smoothing(FullTables[CURRECT_GUN][CURRECT_VAR][CROUCH_STATE][AT_ARRAY][a], FullTables[CURRECT_GUN][CURRECT_VAR][CROUCH_STATE][X_ARRAY][a], FullTables[CURRECT_GUN][CURRECT_VAR][CROUCH_STATE][Y_ARRAY][a])
                        else
                            Smoothing(FullTables[CURRECT_GUN][CURRECT_VAR][STAND_STATE][AT_ARRAY][a], FullTables[CURRECT_GUN][CURRECT_VAR][STAND_STATE][X_ARRAY][a], FullTables[CURRECT_GUN][CURRECT_VAR][STAND_STATE][Y_ARRAY][a])
                        end ;
                        if FullTables[CURRECT_GUN][CURRECT_VAR][STAND_STATE][ST_ARRAY][a] ~= 0 then
                            connector25(FullTables[CURRECT_GUN][CURRECT_VAR][STAND_STATE][ST_ARRAY][a])
                        end
                    end ;
                    repeat if IsModifierPressed("lctrl") then
                        Smoothing(FullTables[CURRECT_GUN][CURRECT_VAR][CROUCH_STATE][AT_ARRAY][MP5A4_BULLETS], FullTables[CURRECT_GUN][CURRECT_VAR][CROUCH_STATE][X_ARRAY][MP5A4_BULLETS], FullTables[CURRECT_GUN][CURRECT_VAR][CROUCH_STATE][Y_ARRAY][MP5A4_BULLETS])
                    else
                        Smoothing(FullTables[CURRECT_GUN][CURRECT_VAR][STAND_STATE][AT_ARRAY][MP5A4_BULLETS], FullTables[CURRECT_GUN][CURRECT_VAR][STAND_STATE][X_ARRAY][MP5A4_BULLETS], FullTables[CURRECT_GUN][CURRECT_VAR][STAND_STATE][Y_ARRAY][MP5A4_BULLETS])
                    end ;
                        if FullTables[CURRECT_GUN][CURRECT_VAR][STAND_STATE][ST_ARRAY][MP5A4_BULLETS] ~= 0 then
                            connector25(FullTables[CURRECT_GUN][CURRECT_VAR][STAND_STATE][ST_ARRAY][MP5A4_BULLETS])
                        end until IsLeftNotPressed()
                end
            end
        end
    elseif gun == MP5A4_2 then
        CURRECT_GUN = 3;
        CURRECT_VAR = 2;
        CROUCH_STATE = 1;
        STAND_STATE = 2;
        X_ARRAY = 1;
        Y_ARRAY = 2;
        AT_ARRAY = 3;
        ST_ARRAY = 4;
        if kickback then
            if IsMouseButtonPressed(3) then
                connector25(5)
                if IsMouseButtonPressed(1) then
                    for a = 1, MP5A4_BULLETS do
                        if IsRightNotPressed() then
                            return
                        end ;
                        if IsLeftNotPressed() then
                            return
                        end ;
                        if IsModifierPressed("lctrl") then
                            Smoothing(FullTables[CURRECT_GUN][CURRECT_VAR][CROUCH_STATE][AT_ARRAY][a], FullTables[CURRECT_GUN][CURRECT_VAR][CROUCH_STATE][X_ARRAY][a], FullTables[CURRECT_GUN][CURRECT_VAR][CROUCH_STATE][Y_ARRAY][a])
                        else
                            Smoothing(FullTables[CURRECT_GUN][CURRECT_VAR][STAND_STATE][AT_ARRAY][a], FullTables[CURRECT_GUN][CURRECT_VAR][STAND_STATE][X_ARRAY][a], FullTables[CURRECT_GUN][CURRECT_VAR][STAND_STATE][Y_ARRAY][a])
                        end ;
                        if FullTables[CURRECT_GUN][CURRECT_VAR][STAND_STATE][ST_ARRAY][a] ~= 0 then
                            connector25(FullTables[CURRECT_GUN][CURRECT_VAR][STAND_STATE][ST_ARRAY][a])
                        end
                    end ;
                    repeat if IsModifierPressed("lctrl") then
                        Smoothing(FullTables[CURRECT_GUN][CURRECT_VAR][CROUCH_STATE][AT_ARRAY][MP5A4_BULLETS], FullTables[CURRECT_GUN][CURRECT_VAR][CROUCH_STATE][X_ARRAY][MP5A4_BULLETS], FullTables[CURRECT_GUN][CURRECT_VAR][CROUCH_STATE][Y_ARRAY][MP5A4_BULLETS])
                    else
                        Smoothing(FullTables[CURRECT_GUN][CURRECT_VAR][STAND_STATE][AT_ARRAY][MP5A4_BULLETS], FullTables[CURRECT_GUN][CURRECT_VAR][STAND_STATE][X_ARRAY][MP5A4_BULLETS], FullTables[CURRECT_GUN][CURRECT_VAR][STAND_STATE][Y_ARRAY][MP5A4_BULLETS])
                    end ;
                        if FullTables[CURRECT_GUN][CURRECT_VAR][STAND_STATE][ST_ARRAY][MP5A4_BULLETS] ~= 0 then
                            connector25(FullTables[CURRECT_GUN][CURRECT_VAR][STAND_STATE][ST_ARRAY][MP5A4_BULLETS])
                        end until IsLeftNotPressed()
                end
            end
        end
    elseif gun == THOMPSON then
        CURRECT_GUN = 4;
        CURRECT_VAR = 1;
        CROUCH_STATE = 1;
        STAND_STATE = 2;
        X_ARRAY = 1;
        Y_ARRAY = 2;
        AT_ARRAY = 3;
        ST_ARRAY = 4;
        if kickback then
            if IsMouseButtonPressed(3) then
                connector25(5)
                if IsMouseButtonPressed(1) then
                    for a = 1, THOMPSON_BULLETS do
                        if IsRightNotPressed() then
                            return
                        end ;
                        if IsLeftNotPressed() then
                            return
                        end ;
                        if IsModifierPressed("lctrl") then
                            Smoothing(FullTables[CURRECT_GUN][CURRECT_VAR][CROUCH_STATE][AT_ARRAY][a], FullTables[CURRECT_GUN][CURRECT_VAR][CROUCH_STATE][X_ARRAY][a], FullTables[CURRECT_GUN][CURRECT_VAR][CROUCH_STATE][Y_ARRAY][a])
                        else
                            Smoothing(FullTables[CURRECT_GUN][CURRECT_VAR][STAND_STATE][AT_ARRAY][a], FullTables[CURRECT_GUN][CURRECT_VAR][STAND_STATE][X_ARRAY][a], FullTables[CURRECT_GUN][CURRECT_VAR][STAND_STATE][Y_ARRAY][a])
                        end ;
                        if FullTables[CURRECT_GUN][CURRECT_VAR][STAND_STATE][ST_ARRAY][a] ~= 0 then
                            connector25(FullTables[CURRECT_GUN][CURRECT_VAR][STAND_STATE][ST_ARRAY][a])
                        end
                    end ;
                    repeat if IsModifierPressed("lctrl") then
                        Smoothing(FullTables[CURRECT_GUN][CURRECT_VAR][CROUCH_STATE][AT_ARRAY][THOMPSON_BULLETS], FullTables[CURRECT_GUN][CURRECT_VAR][CROUCH_STATE][X_ARRAY][THOMPSON_BULLETS], FullTables[CURRECT_GUN][CURRECT_VAR][CROUCH_STATE][Y_ARRAY][THOMPSON_BULLETS])
                    else
                        Smoothing(FullTables[CURRECT_GUN][CURRECT_VAR][STAND_STATE][AT_ARRAY][THOMPSON_BULLETS], FullTables[CURRECT_GUN][CURRECT_VAR][STAND_STATE][X_ARRAY][THOMPSON_BULLETS], FullTables[CURRECT_GUN][CURRECT_VAR][STAND_STATE][Y_ARRAY][THOMPSON_BULLETS])
                    end ;
                        if FullTables[CURRECT_GUN][CURRECT_VAR][STAND_STATE][ST_ARRAY][THOMPSON_BULLETS] ~= 0 then
                            connector25(FullTables[CURRECT_GUN][CURRECT_VAR][STAND_STATE][ST_ARRAY][THOMPSON_BULLETS])
                        end until IsLeftNotPressed()
                end
            end
        end
    elseif gun == THOMPSON_2 then
        CURRECT_GUN = 4;
        CURRECT_VAR = 2;
        CROUCH_STATE = 1;
        STAND_STATE = 2;
        X_ARRAY = 1;
        Y_ARRAY = 2;
        AT_ARRAY = 3;
        ST_ARRAY = 4;
        if kickback then
            if IsMouseButtonPressed(3) then
                connector25(5)
                if IsMouseButtonPressed(1) then
                    for a = 1, THOMPSON_BULLETS do
                        if IsRightNotPressed() then
                            return
                        end ;
                        if IsLeftNotPressed() then
                            return
                        end ;
                        if IsModifierPressed("lctrl") then
                            Smoothing(FullTables[CURRECT_GUN][CURRECT_VAR][CROUCH_STATE][AT_ARRAY][a], FullTables[CURRECT_GUN][CURRECT_VAR][CROUCH_STATE][X_ARRAY][a], FullTables[CURRECT_GUN][CURRECT_VAR][CROUCH_STATE][Y_ARRAY][a])
                        else
                            Smoothing(FullTables[CURRECT_GUN][CURRECT_VAR][STAND_STATE][AT_ARRAY][a], FullTables[CURRECT_GUN][CURRECT_VAR][STAND_STATE][X_ARRAY][a], FullTables[CURRECT_GUN][CURRECT_VAR][STAND_STATE][Y_ARRAY][a])
                        end ;
                        if FullTables[CURRECT_GUN][CURRECT_VAR][STAND_STATE][ST_ARRAY][a] ~= 0 then
                            connector25(FullTables[CURRECT_GUN][CURRECT_VAR][STAND_STATE][ST_ARRAY][a])
                        end
                    end ;
                    repeat if IsModifierPressed("lctrl") then
                        Smoothing(FullTables[CURRECT_GUN][CURRECT_VAR][CROUCH_STATE][AT_ARRAY][THOMPSON_BULLETS], FullTables[CURRECT_GUN][CURRECT_VAR][CROUCH_STATE][X_ARRAY][THOMPSON_BULLETS], FullTables[CURRECT_GUN][CURRECT_VAR][CROUCH_STATE][Y_ARRAY][THOMPSON_BULLETS])
                    else
                        Smoothing(FullTables[CURRECT_GUN][CURRECT_VAR][STAND_STATE][AT_ARRAY][THOMPSON_BULLETS], FullTables[CURRECT_GUN][CURRECT_VAR][STAND_STATE][X_ARRAY][THOMPSON_BULLETS], FullTables[CURRECT_GUN][CURRECT_VAR][STAND_STATE][Y_ARRAY][THOMPSON_BULLETS])
                    end ;
                        if FullTables[CURRECT_GUN][CURRECT_VAR][STAND_STATE][ST_ARRAY][THOMPSON_BULLETS] ~= 0 then
                            connector25(FullTables[CURRECT_GUN][CURRECT_VAR][STAND_STATE][ST_ARRAY][THOMPSON_BULLETS])
                        end until IsLeftNotPressed()
                end
            end
        end
    elseif gun == CUSTOM_SMG then
        CURRECT_GUN = 5;
        CURRECT_VAR = 1;
        CROUCH_STATE = 1;
        STAND_STATE = 2;
        X_ARRAY = 1;
        Y_ARRAY = 2;
        AT_ARRAY = 3;
        ST_ARRAY = 4;
        if kickback then
            if IsMouseButtonPressed(3) then
                connector25(5)
                if IsMouseButtonPressed(1) then
                    for a = 1, SMG_BULLETS do
                        if IsRightNotPressed() then
                            return
                        end ;
                        if IsLeftNotPressed() then
                            return
                        end ;
                        if IsModifierPressed("lctrl") then
                            Smoothing(FullTables[CURRECT_GUN][CURRECT_VAR][CROUCH_STATE][AT_ARRAY][a], FullTables[CURRECT_GUN][CURRECT_VAR][CROUCH_STATE][X_ARRAY][a], FullTables[CURRECT_GUN][CURRECT_VAR][CROUCH_STATE][Y_ARRAY][a])
                        else
                            Smoothing(FullTables[CURRECT_GUN][CURRECT_VAR][STAND_STATE][AT_ARRAY][a], FullTables[CURRECT_GUN][CURRECT_VAR][STAND_STATE][X_ARRAY][a], FullTables[CURRECT_GUN][CURRECT_VAR][STAND_STATE][Y_ARRAY][a])
                        end ;
                        if FullTables[CURRECT_GUN][CURRECT_VAR][STAND_STATE][ST_ARRAY][a] ~= 0 then
                            connector25(FullTables[CURRECT_GUN][CURRECT_VAR][STAND_STATE][ST_ARRAY][a])
                        end
                    end ;
                    repeat if IsModifierPressed("lctrl") then
                        Smoothing(FullTables[CURRECT_GUN][CURRECT_VAR][CROUCH_STATE][AT_ARRAY][SMG_BULLETS], FullTables[CURRECT_GUN][CURRECT_VAR][CROUCH_STATE][X_ARRAY][SMG_BULLETS], FullTables[CURRECT_GUN][CURRECT_VAR][CROUCH_STATE][Y_ARRAY][SMG_BULLETS])
                    else
                        Smoothing(FullTables[CURRECT_GUN][CURRECT_VAR][STAND_STATE][AT_ARRAY][SMG_BULLETS], FullTables[CURRECT_GUN][CURRECT_VAR][STAND_STATE][X_ARRAY][SMG_BULLETS], FullTables[CURRECT_GUN][CURRECT_VAR][STAND_STATE][Y_ARRAY][SMG_BULLETS])
                    end ;
                        if FullTables[CURRECT_GUN][CURRECT_VAR][STAND_STATE][ST_ARRAY][SMG_BULLETS] ~= 0 then
                            connector25(FullTables[CURRECT_GUN][CURRECT_VAR][STAND_STATE][ST_ARRAY][SMG_BULLETS])
                        end until IsLeftNotPressed()
                end
            end
        end
    elseif gun == SMG_2 then
        CURRECT_GUN = 5;
        CURRECT_VAR = 2;
        CROUCH_STATE = 1;
        STAND_STATE = 2;
        X_ARRAY = 1;
        Y_ARRAY = 2;
        AT_ARRAY = 3;
        ST_ARRAY = 4;
        if kickback then
            if IsMouseButtonPressed(3) then
                connector25(5)
                if IsMouseButtonPressed(1) then
                    for a = 1, SMG_BULLETS do
                        if IsRightNotPressed() then
                            return
                        end ;
                        if IsLeftNotPressed() then
                            return
                        end ;
                        if IsModifierPressed("lctrl") then
                            Smoothing(FullTables[CURRECT_GUN][CURRECT_VAR][CROUCH_STATE][AT_ARRAY][a], FullTables[CURRECT_GUN][CURRECT_VAR][CROUCH_STATE][X_ARRAY][a], FullTables[CURRECT_GUN][CURRECT_VAR][CROUCH_STATE][Y_ARRAY][a])
                        else
                            Smoothing(FullTables[CURRECT_GUN][CURRECT_VAR][STAND_STATE][AT_ARRAY][a], FullTables[CURRECT_GUN][CURRECT_VAR][STAND_STATE][X_ARRAY][a], FullTables[CURRECT_GUN][CURRECT_VAR][STAND_STATE][Y_ARRAY][a])
                        end ;
                        if FullTables[CURRECT_GUN][CURRECT_VAR][STAND_STATE][ST_ARRAY][a] ~= 0 then
                            connector25(FullTables[CURRECT_GUN][CURRECT_VAR][STAND_STATE][ST_ARRAY][a])
                        end
                    end ;
                    repeat if IsModifierPressed("lctrl") then
                        Smoothing(FullTables[CURRECT_GUN][CURRECT_VAR][CROUCH_STATE][AT_ARRAY][SMG_BULLETS], FullTables[CURRECT_GUN][CURRECT_VAR][CROUCH_STATE][X_ARRAY][SMG_BULLETS], FullTables[CURRECT_GUN][CURRECT_VAR][CROUCH_STATE][Y_ARRAY][SMG_BULLETS])
                    else
                        Smoothing(FullTables[CURRECT_GUN][CURRECT_VAR][STAND_STATE][AT_ARRAY][SMG_BULLETS], FullTables[CURRECT_GUN][CURRECT_VAR][STAND_STATE][X_ARRAY][SMG_BULLETS], FullTables[CURRECT_GUN][CURRECT_VAR][STAND_STATE][Y_ARRAY][SMG_BULLETS])
                    end ;
                        if FullTables[CURRECT_GUN][CURRECT_VAR][STAND_STATE][ST_ARRAY][SMG_BULLETS] ~= 0 then
                            connector25(FullTables[CURRECT_GUN][CURRECT_VAR][STAND_STATE][ST_ARRAY][SMG_BULLETS])
                        end until IsLeftNotPressed()
                end
            end
        end
    elseif gun == HMLMG then
        CURRECT_GUN = 6;
        CURRECT_VAR = 1;
        CROUCH_STATE = 1;
        STAND_STATE = 2;
        X_ARRAY = 1;
        Y_ARRAY = 2;
        AT_ARRAY = 3;
        ST_ARRAY = 4;
        if kickback then
            if IsMouseButtonPressed(3) then
                connector25(5)
                if IsMouseButtonPressed(1) then
                    for a = 1, HMLMG_BULLETS do
                        if IsRightNotPressed() then
                            return
                        end ;
                        if IsLeftNotPressed() then
                            return
                        end ;
                        if IsModifierPressed("lctrl") then
                            Smoothing(FullTables[CURRECT_GUN][CURRECT_VAR][CROUCH_STATE][AT_ARRAY][a], FullTables[CURRECT_GUN][CURRECT_VAR][CROUCH_STATE][X_ARRAY][a], FullTables[CURRECT_GUN][CURRECT_VAR][CROUCH_STATE][Y_ARRAY][a])
                        else
                            Smoothing(FullTables[CURRECT_GUN][CURRECT_VAR][STAND_STATE][AT_ARRAY][a], FullTables[CURRECT_GUN][CURRECT_VAR][STAND_STATE][X_ARRAY][a], FullTables[CURRECT_GUN][CURRECT_VAR][STAND_STATE][Y_ARRAY][a])
                        end ;
                        if FullTables[CURRECT_GUN][CURRECT_VAR][STAND_STATE][ST_ARRAY][a] ~= 0 then
                            connector25(FullTables[CURRECT_GUN][CURRECT_VAR][STAND_STATE][ST_ARRAY][a])
                        end
                    end ;
                    repeat if IsModifierPressed("lctrl") then
                        Smoothing(FullTables[CURRECT_GUN][CURRECT_VAR][CROUCH_STATE][AT_ARRAY][HMLMG_BULLETS], FullTables[CURRECT_GUN][CURRECT_VAR][CROUCH_STATE][X_ARRAY][HMLMG_BULLETS], FullTables[CURRECT_GUN][CURRECT_VAR][CROUCH_STATE][Y_ARRAY][HMLMG_BULLETS])
                    else
                        Smoothing(FullTables[CURRECT_GUN][CURRECT_VAR][STAND_STATE][AT_ARRAY][HMLMG_BULLETS], FullTables[CURRECT_GUN][CURRECT_VAR][STAND_STATE][X_ARRAY][HMLMG_BULLETS], FullTables[CURRECT_GUN][CURRECT_VAR][STAND_STATE][Y_ARRAY][HMLMG_BULLETS])
                    end ;
                        if FullTables[CURRECT_GUN][CURRECT_VAR][STAND_STATE][ST_ARRAY][HMLMG_BULLETS] ~= 0 then
                            connector25(FullTables[CURRECT_GUN][CURRECT_VAR][STAND_STATE][ST_ARRAY][HMLMG_BULLETS])
                        end until IsLeftNotPressed()
                end
            end
        end
    elseif gun == HMLMG_2 then
        CURRECT_GUN = 6;
        CURRECT_VAR = 2;
        CROUCH_STATE = 1;
        STAND_STATE = 2;
        X_ARRAY = 1;
        Y_ARRAY = 2;
        AT_ARRAY = 3;
        ST_ARRAY = 4;
        if kickback then
            if IsMouseButtonPressed(3) then
                connector25(5)
                if IsMouseButtonPressed(1) then
                    for a = 1, HMLMG_BULLETS do
                        if IsRightNotPressed() then
                            return
                        end ;
                        if IsLeftNotPressed() then
                            return
                        end ;
                        if IsModifierPressed("lctrl") then
                            Smoothing(FullTables[CURRECT_GUN][CURRECT_VAR][CROUCH_STATE][AT_ARRAY][a], FullTables[CURRECT_GUN][CURRECT_VAR][CROUCH_STATE][X_ARRAY][a], FullTables[CURRECT_GUN][CURRECT_VAR][CROUCH_STATE][Y_ARRAY][a])
                        else
                            Smoothing(FullTables[CURRECT_GUN][CURRECT_VAR][STAND_STATE][AT_ARRAY][a], FullTables[CURRECT_GUN][CURRECT_VAR][STAND_STATE][X_ARRAY][a], FullTables[CURRECT_GUN][CURRECT_VAR][STAND_STATE][Y_ARRAY][a])
                        end ;
                        if FullTables[CURRECT_GUN][CURRECT_VAR][STAND_STATE][ST_ARRAY][a] ~= 0 then
                            connector25(FullTables[CURRECT_GUN][CURRECT_VAR][STAND_STATE][ST_ARRAY][a])
                        end
                    end ;
                    repeat if IsModifierPressed("lctrl") then
                        Smoothing(FullTables[CURRECT_GUN][CURRECT_VAR][CROUCH_STATE][AT_ARRAY][HMLMG_BULLETS], FullTables[CURRECT_GUN][CURRECT_VAR][CROUCH_STATE][X_ARRAY][HMLMG_BULLETS], FullTables[CURRECT_GUN][CURRECT_VAR][CROUCH_STATE][Y_ARRAY][HMLMG_BULLETS])
                    else
                        Smoothing(FullTables[CURRECT_GUN][CURRECT_VAR][STAND_STATE][AT_ARRAY][HMLMG_BULLETS], FullTables[CURRECT_GUN][CURRECT_VAR][STAND_STATE][X_ARRAY][HMLMG_BULLETS], FullTables[CURRECT_GUN][CURRECT_VAR][STAND_STATE][Y_ARRAY][HMLMG_BULLETS])
                    end ;
                        if FullTables[CURRECT_GUN][CURRECT_VAR][STAND_STATE][ST_ARRAY][HMLMG_BULLETS] ~= 0 then
                            connector25(FullTables[CURRECT_GUN][CURRECT_VAR][STAND_STATE][ST_ARRAY][HMLMG_BULLETS])
                        end until IsLeftNotPressed()
                end
            end
        end
    elseif gun == M249 then
        CURRECT_GUN = 7;
        CURRECT_VAR = 1;
        CROUCH_STATE = 1;
        STAND_STATE = 2;
        X_ARRAY = 1;
        Y_ARRAY = 2;
        AT_ARRAY = 3;
        ST_ARRAY = 4;
        if kickback then
            if IsMouseButtonPressed(3) then
                connector25(5)
                if IsMouseButtonPressed(1) then
                    for a = 1, M249_BULLETS do
                        if IsRightNotPressed() then
                            return
                        end ;
                        if IsLeftNotPressed() then
                            return
                        end ;
                        if IsModifierPressed("lctrl") then
                            Smoothing(FullTables[CURRECT_GUN][CURRECT_VAR][CROUCH_STATE][AT_ARRAY][a], FullTables[CURRECT_GUN][CURRECT_VAR][CROUCH_STATE][X_ARRAY][a], FullTables[CURRECT_GUN][CURRECT_VAR][CROUCH_STATE][Y_ARRAY][a])
                        else
                            Smoothing(FullTables[CURRECT_GUN][CURRECT_VAR][STAND_STATE][AT_ARRAY][a], FullTables[CURRECT_GUN][CURRECT_VAR][STAND_STATE][X_ARRAY][a], FullTables[CURRECT_GUN][CURRECT_VAR][STAND_STATE][Y_ARRAY][a])
                        end ;
                        if FullTables[CURRECT_GUN][CURRECT_VAR][STAND_STATE][ST_ARRAY][a] ~= 0 then
                            connector25(FullTables[CURRECT_GUN][CURRECT_VAR][STAND_STATE][ST_ARRAY][a])
                        end
                    end ;
                    repeat if IsModifierPressed("lctrl") then
                        Smoothing(FullTables[CURRECT_GUN][CURRECT_VAR][CROUCH_STATE][AT_ARRAY][M249_BULLETS], FullTables[CURRECT_GUN][CURRECT_VAR][CROUCH_STATE][X_ARRAY][M249_BULLETS], FullTables[CURRECT_GUN][CURRECT_VAR][CROUCH_STATE][Y_ARRAY][M249_BULLETS])
                    else
                        Smoothing(FullTables[CURRECT_GUN][CURRECT_VAR][STAND_STATE][AT_ARRAY][M249_BULLETS], FullTables[CURRECT_GUN][CURRECT_VAR][STAND_STATE][X_ARRAY][M249_BULLETS], FullTables[CURRECT_GUN][CURRECT_VAR][STAND_STATE][Y_ARRAY][M249_BULLETS])
                    end ;
                        if FullTables[CURRECT_GUN][CURRECT_VAR][STAND_STATE][ST_ARRAY][M249_BULLETS] ~= 0 then
                            connector25(FullTables[CURRECT_GUN][CURRECT_VAR][STAND_STATE][ST_ARRAY][M249_BULLETS])
                        end until IsLeftNotPressed()
                end
            end
        end
    elseif gun == M249_2 then
        CURRECT_GUN = 7;
        CURRECT_VAR = 2;
        CROUCH_STATE = 1;
        STAND_STATE = 2;
        X_ARRAY = 1;
        Y_ARRAY = 2;
        AT_ARRAY = 3;
        ST_ARRAY = 4;
        if kickback then
            if IsMouseButtonPressed(3) then
                connector25(5)
                if IsMouseButtonPressed(1) then
                    for a = 1, M249_BULLETS do
                        if IsRightNotPressed() then
                            return
                        end ;
                        if IsLeftNotPressed() then
                            return
                        end ;
                        if IsModifierPressed("lctrl") then
                            Smoothing(FullTables[CURRECT_GUN][CURRECT_VAR][CROUCH_STATE][AT_ARRAY][a], FullTables[CURRECT_GUN][CURRECT_VAR][CROUCH_STATE][X_ARRAY][a], FullTables[CURRECT_GUN][CURRECT_VAR][CROUCH_STATE][Y_ARRAY][a])
                        else
                            Smoothing(FullTables[CURRECT_GUN][CURRECT_VAR][STAND_STATE][AT_ARRAY][a], FullTables[CURRECT_GUN][CURRECT_VAR][STAND_STATE][X_ARRAY][a], FullTables[CURRECT_GUN][CURRECT_VAR][STAND_STATE][Y_ARRAY][a])
                        end ;
                        if FullTables[CURRECT_GUN][CURRECT_VAR][STAND_STATE][ST_ARRAY][a] ~= 0 then
                            connector25(FullTables[CURRECT_GUN][CURRECT_VAR][STAND_STATE][ST_ARRAY][a])
                        end
                    end ;
                    repeat if IsModifierPressed("lctrl") then
                        Smoothing(FullTables[CURRECT_GUN][CURRECT_VAR][CROUCH_STATE][AT_ARRAY][M249_BULLETS], FullTables[CURRECT_GUN][CURRECT_VAR][CROUCH_STATE][X_ARRAY][M249_BULLETS], FullTables[CURRECT_GUN][CURRECT_VAR][CROUCH_STATE][Y_ARRAY][M249_BULLETS])
                    else
                        Smoothing(FullTables[CURRECT_GUN][CURRECT_VAR][STAND_STATE][AT_ARRAY][M249_BULLETS], FullTables[CURRECT_GUN][CURRECT_VAR][STAND_STATE][X_ARRAY][M249_BULLETS], FullTables[CURRECT_GUN][CURRECT_VAR][STAND_STATE][Y_ARRAY][M249_BULLETS])
                    end ;
                        if FullTables[CURRECT_GUN][CURRECT_VAR][STAND_STATE][ST_ARRAY][M249_BULLETS] ~= 0 then
                            connector25(FullTables[CURRECT_GUN][CURRECT_VAR][STAND_STATE][ST_ARRAY][M249_BULLETS])
                        end until IsLeftNotPressed()
                end
            end
        end
    elseif gun == SEMI_AUTOMATIC_RIFLE then
        CURRECT_GUN = 8;
        CURRECT_VAR = 1;
        CROUCH_STATE = 1;
        STAND_STATE = 2;
        X_ARRAY = 1;
        Y_ARRAY = 2;
        AT_ARRAY = 3;
        ST_ARRAY = 4;
        if kickback then
            if IsMouseButtonPressed(3) then
                connector25(5)
                if IsMouseButtonPressed(1) then
                    for a = 1, SAR_BULLETS do
                        if IsRightNotPressed() then
                            return
                        end ;
                        if IsLeftNotPressed() then
                            return
                        end ;
                        if IsModifierPressed("lctrl") then
                            PressKey("pause")
                            connector25(20)
                            ReleaseKey("pause")
                            Smoothing(FullTables[CURRECT_GUN][CURRECT_VAR][CROUCH_STATE][AT_ARRAY][a], FullTables[CURRECT_GUN][CURRECT_VAR][CROUCH_STATE][X_ARRAY][a], FullTables[CURRECT_GUN][CURRECT_VAR][CROUCH_STATE][Y_ARRAY][a])
                        else
                            PressKey("pause")
                            connector25(20)
                            ReleaseKey("pause")
                            Smoothing(FullTables[CURRECT_GUN][CURRECT_VAR][STAND_STATE][AT_ARRAY][a], FullTables[CURRECT_GUN][CURRECT_VAR][STAND_STATE][X_ARRAY][a], FullTables[CURRECT_GUN][CURRECT_VAR][STAND_STATE][Y_ARRAY][a])
                        end ;
                        if FullTables[CURRECT_GUN][CURRECT_VAR][STAND_STATE][ST_ARRAY][a] ~= 0 then
                            connector25(FullTables[CURRECT_GUN][CURRECT_VAR][STAND_STATE][ST_ARRAY][a])
                        end
                    end ;
                    repeat if IsModifierPressed("lctrl") then
                        PressKey("pause")
                        connector25(20)
                        ReleaseKey("pause")
                        Smoothing(FullTables[CURRECT_GUN][CURRECT_VAR][CROUCH_STATE][AT_ARRAY][SAR_BULLETS], FullTables[CURRECT_GUN][CURRECT_VAR][CROUCH_STATE][X_ARRAY][SAR_BULLETS], FullTables[CURRECT_GUN][CURRECT_VAR][CROUCH_STATE][Y_ARRAY][SAR_BULLETS])
                    else
                        PressKey("pause")
                        connector25(20)
                        ReleaseKey("pause")
                        Smoothing(FullTables[CURRECT_GUN][CURRECT_VAR][STAND_STATE][AT_ARRAY][SAR_BULLETS], FullTables[CURRECT_GUN][CURRECT_VAR][STAND_STATE][X_ARRAY][SAR_BULLETS], FullTables[CURRECT_GUN][CURRECT_VAR][STAND_STATE][Y_ARRAY][SAR_BULLETS])
                    end ;
                        if FullTables[CURRECT_GUN][CURRECT_VAR][STAND_STATE][ST_ARRAY][SAR_BULLETS] ~= 0 then
                            connector25(FullTables[CURRECT_GUN][CURRECT_VAR][STAND_STATE][ST_ARRAY][SAR_BULLETS])
                        end until IsLeftNotPressed()
                end
            end
        end
    elseif gun == SAR_2 then
        CURRECT_GUN = 8;
        CURRECT_VAR = 2;
        CROUCH_STATE = 1;
        STAND_STATE = 2;
        X_ARRAY = 1;
        Y_ARRAY = 2;
        AT_ARRAY = 3;
        ST_ARRAY = 4;
        if kickback then
            if IsMouseButtonPressed(3) then
                connector25(5)
                if IsMouseButtonPressed(1) then
                    for a = 1, SAR_BULLETS do
                        if IsRightNotPressed() then
                            return
                        end ;
                        if IsLeftNotPressed() then
                            return
                        end ;
                        if IsModifierPressed("lctrl") then
                            PressKey("pause")
                            connector25(20)
                            ReleaseKey("pause")
                            Smoothing(FullTables[CURRECT_GUN][CURRECT_VAR][CROUCH_STATE][AT_ARRAY][a], FullTables[CURRECT_GUN][CURRECT_VAR][CROUCH_STATE][X_ARRAY][a], FullTables[CURRECT_GUN][CURRECT_VAR][CROUCH_STATE][Y_ARRAY][a])
                        else
                            PressKey("pause")
                            connector25(20)
                            ReleaseKey("pause")
                            Smoothing(FullTables[CURRECT_GUN][CURRECT_VAR][STAND_STATE][AT_ARRAY][a], FullTables[CURRECT_GUN][CURRECT_VAR][STAND_STATE][X_ARRAY][a], FullTables[CURRECT_GUN][CURRECT_VAR][STAND_STATE][Y_ARRAY][a])
                        end ;
                        if FullTables[CURRECT_GUN][CURRECT_VAR][STAND_STATE][ST_ARRAY][a] ~= 0 then
                            connector25(FullTables[CURRECT_GUN][CURRECT_VAR][STAND_STATE][ST_ARRAY][a])
                        end
                    end ;
                    repeat if IsModifierPressed("lctrl") then
                        PressKey("pause")
                        connector25(20)
                        ReleaseKey("pause")
                        Smoothing(FullTables[CURRECT_GUN][CURRECT_VAR][CROUCH_STATE][AT_ARRAY][SAR_BULLETS], FullTables[CURRECT_GUN][CURRECT_VAR][CROUCH_STATE][X_ARRAY][SAR_BULLETS], FullTables[CURRECT_GUN][CURRECT_VAR][CROUCH_STATE][Y_ARRAY][SAR_BULLETS])
                    else
                        PressKey("pause")
                        connector25(20)
                        ReleaseKey("pause")
                        Smoothing(FullTables[CURRECT_GUN][CURRECT_VAR][STAND_STATE][AT_ARRAY][SAR_BULLETS], FullTables[CURRECT_GUN][CURRECT_VAR][STAND_STATE][X_ARRAY][SAR_BULLETS], FullTables[CURRECT_GUN][CURRECT_VAR][STAND_STATE][Y_ARRAY][SAR_BULLETS])
                    end ;
                        if FullTables[CURRECT_GUN][CURRECT_VAR][STAND_STATE][ST_ARRAY][SAR_BULLETS] ~= 0 then
                            connector25(FullTables[CURRECT_GUN][CURRECT_VAR][STAND_STATE][ST_ARRAY][SAR_BULLETS])
                        end until IsLeftNotPressed()
                end
            end
        end
    elseif gun == M39_RIFLE then
        CURRECT_GUN = 9;
        CURRECT_VAR = 1;
        CROUCH_STATE = 1;
        STAND_STATE = 2;
        X_ARRAY = 1;
        Y_ARRAY = 2;
        AT_ARRAY = 3;
        ST_ARRAY = 4;
        if kickback then
            if IsMouseButtonPressed(3) then
                connector25(5)
                if IsMouseButtonPressed(1) then
                    for a = 1, M39_BULLETS do
                        if IsRightNotPressed() then
                            return
                        end ;
                        if IsLeftNotPressed() then
                            return
                        end ;
                        if IsModifierPressed("lctrl") then
                            PressKey("pause")
                            connector25(20)
                            ReleaseKey("pause")
                            Smoothing(FullTables[CURRECT_GUN][CURRECT_VAR][CROUCH_STATE][AT_ARRAY][a], FullTables[CURRECT_GUN][CURRECT_VAR][CROUCH_STATE][X_ARRAY][a], FullTables[CURRECT_GUN][CURRECT_VAR][CROUCH_STATE][Y_ARRAY][a])
                        else
                            PressKey("pause")
                            connector25(20)
                            ReleaseKey("pause")
                            Smoothing(FullTables[CURRECT_GUN][CURRECT_VAR][STAND_STATE][AT_ARRAY][a], FullTables[CURRECT_GUN][CURRECT_VAR][STAND_STATE][X_ARRAY][a], FullTables[CURRECT_GUN][CURRECT_VAR][STAND_STATE][Y_ARRAY][a])
                        end ;
                        if FullTables[CURRECT_GUN][CURRECT_VAR][STAND_STATE][ST_ARRAY][a] ~= 0 then
                            connector25(FullTables[CURRECT_GUN][CURRECT_VAR][STAND_STATE][ST_ARRAY][a])
                        end
                    end ;
                    repeat if IsModifierPressed("lctrl") then
                        PressKey("pause")
                        connector25(20)
                        ReleaseKey("pause")
                        Smoothing(FullTables[CURRECT_GUN][CURRECT_VAR][CROUCH_STATE][AT_ARRAY][M39_BULLETS], FullTables[CURRECT_GUN][CURRECT_VAR][CROUCH_STATE][X_ARRAY][M39_BULLETS], FullTables[CURRECT_GUN][CURRECT_VAR][CROUCH_STATE][Y_ARRAY][M39_BULLETS])
                    else
                        PressKey("pause")
                        connector25(20)
                        ReleaseKey("pause")
                        Smoothing(FullTables[CURRECT_GUN][CURRECT_VAR][STAND_STATE][AT_ARRAY][M39_BULLETS], FullTables[CURRECT_GUN][CURRECT_VAR][STAND_STATE][X_ARRAY][M39_BULLETS], FullTables[CURRECT_GUN][CURRECT_VAR][STAND_STATE][Y_ARRAY][M39_BULLETS])
                    end ;
                        if FullTables[CURRECT_GUN][CURRECT_VAR][STAND_STATE][ST_ARRAY][M39_BULLETS] ~= 0 then
                            connector25(FullTables[CURRECT_GUN][CURRECT_VAR][STAND_STATE][ST_ARRAY][M39_BULLETS])
                        end until IsLeftNotPressed()
                end
            end
        end
    elseif gun == M39_2 then
        CURRECT_GUN = 9;
        CURRECT_VAR = 2;
        CROUCH_STATE = 1;
        STAND_STATE = 2;
        X_ARRAY = 1;
        Y_ARRAY = 2;
        AT_ARRAY = 3;
        ST_ARRAY = 4;
        if kickback then
            if IsMouseButtonPressed(3) then
                connector25(5)
                if IsMouseButtonPressed(1) then
                    for a = 1, M39_BULLETS do
                        if IsRightNotPressed() then
                            return
                        end ;
                        if IsLeftNotPressed() then
                            return
                        end ;
                        if IsModifierPressed("lctrl") then
                            PressKey("pause")
                            connector25(20)
                            ReleaseKey("pause")
                            Smoothing(FullTables[CURRECT_GUN][CURRECT_VAR][CROUCH_STATE][AT_ARRAY][a], FullTables[CURRECT_GUN][CURRECT_VAR][CROUCH_STATE][X_ARRAY][a], FullTables[CURRECT_GUN][CURRECT_VAR][CROUCH_STATE][Y_ARRAY][a])
                        else
                            PressKey("pause")
                            connector25(20)
                            ReleaseKey("pause")
                            Smoothing(FullTables[CURRECT_GUN][CURRECT_VAR][STAND_STATE][AT_ARRAY][a], FullTables[CURRECT_GUN][CURRECT_VAR][STAND_STATE][X_ARRAY][a], FullTables[CURRECT_GUN][CURRECT_VAR][STAND_STATE][Y_ARRAY][a])
                        end ;
                        if FullTables[CURRECT_GUN][CURRECT_VAR][STAND_STATE][ST_ARRAY][a] ~= 0 then
                            connector25(FullTables[CURRECT_GUN][CURRECT_VAR][STAND_STATE][ST_ARRAY][a])
                        end
                    end ;
                    repeat if IsModifierPressed("lctrl") then
                        PressKey("pause")
                        connector25(20)
                        ReleaseKey("pause")
                        Smoothing(FullTables[CURRECT_GUN][CURRECT_VAR][CROUCH_STATE][AT_ARRAY][M39_BULLETS], FullTables[CURRECT_GUN][CURRECT_VAR][CROUCH_STATE][X_ARRAY][M39_BULLETS], FullTables[CURRECT_GUN][CURRECT_VAR][CROUCH_STATE][Y_ARRAY][M39_BULLETS])
                    else
                        PressKey("pause")
                        connector25(20)
                        ReleaseKey("pause")
                        Smoothing(FullTables[CURRECT_GUN][CURRECT_VAR][STAND_STATE][AT_ARRAY][M39_BULLETS], FullTables[CURRECT_GUN][CURRECT_VAR][STAND_STATE][X_ARRAY][M39_BULLETS], FullTables[CURRECT_GUN][CURRECT_VAR][STAND_STATE][Y_ARRAY][M39_BULLETS])
                    end ;
                        if FullTables[CURRECT_GUN][CURRECT_VAR][STAND_STATE][ST_ARRAY][M39_BULLETS] ~= 0 then
                            connector25(FullTables[CURRECT_GUN][CURRECT_VAR][STAND_STATE][ST_ARRAY][M39_BULLETS])
                        end until IsLeftNotPressed()
                end
            end
        end
    elseif gun == SEMI_AUTOMATIC_PISTOL then
        CURRECT_GUN = 10;
        CURRECT_VAR = 1;
        CROUCH_STATE = 1;
        STAND_STATE = 2;
        X_ARRAY = 1;
        Y_ARRAY = 2;
        AT_ARRAY = 3;
        ST_ARRAY = 4;
        if kickback then
            if IsMouseButtonPressed(3) then
                connector25(5)
                if IsMouseButtonPressed(1) then
                    for a = 1, SEMI_AUTOMATIC_PISTOL_BULLETS do
                        if IsRightNotPressed() then
                            return
                        end ;
                        if IsLeftNotPressed() then
                            return
                        end ;
                        if IsModifierPressed("lctrl") then
                            PressKey("pause")
                            connector25(18)
                            ReleaseKey("pause")
                            Smoothing(FullTables[CURRECT_GUN][CURRECT_VAR][CROUCH_STATE][AT_ARRAY][a], FullTables[CURRECT_GUN][CURRECT_VAR][CROUCH_STATE][X_ARRAY][a], FullTables[CURRECT_GUN][CURRECT_VAR][CROUCH_STATE][Y_ARRAY][a])
                        else
                            PressKey("pause")
                            connector25(18)
                            ReleaseKey("pause")
                            Smoothing(FullTables[CURRECT_GUN][CURRECT_VAR][STAND_STATE][AT_ARRAY][a], FullTables[CURRECT_GUN][CURRECT_VAR][STAND_STATE][X_ARRAY][a], FullTables[CURRECT_GUN][CURRECT_VAR][STAND_STATE][Y_ARRAY][a])
                        end ;
                        if FullTables[CURRECT_GUN][CURRECT_VAR][STAND_STATE][ST_ARRAY][a] ~= 0 then
                            connector25(FullTables[CURRECT_GUN][CURRECT_VAR][STAND_STATE][ST_ARRAY][a])
                        end
                    end ;
                    repeat if IsModifierPressed("lctrl") then
                        PressKey("pause")
                        connector25(18)
                        ReleaseKey("pause")
                        Smoothing(FullTables[CURRECT_GUN][CURRECT_VAR][CROUCH_STATE][AT_ARRAY][SEMI_AUTOMATIC_PISTOL_BULLETS], FullTables[CURRECT_GUN][CURRECT_VAR][CROUCH_STATE][X_ARRAY][SEMI_AUTOMATIC_PISTOL_BULLETS], FullTables[CURRECT_GUN][CURRECT_VAR][CROUCH_STATE][Y_ARRAY][SEMI_AUTOMATIC_PISTOL_BULLETS])
                    else
                        PressKey("pause")
                        connector25(18)
                        ReleaseKey("pause")
                        Smoothing(FullTables[CURRECT_GUN][CURRECT_VAR][STAND_STATE][AT_ARRAY][SEMI_AUTOMATIC_PISTOL_BULLETS], FullTables[CURRECT_GUN][CURRECT_VAR][STAND_STATE][X_ARRAY][SEMI_AUTOMATIC_PISTOL_BULLETS], FullTables[CURRECT_GUN][CURRECT_VAR][STAND_STATE][Y_ARRAY][SEMI_AUTOMATIC_PISTOL_BULLETS])
                    end ;
                        if FullTables[CURRECT_GUN][CURRECT_VAR][STAND_STATE][ST_ARRAY][SEMI_AUTOMATIC_PISTOL_BULLETS] ~= 0 then
                            connector25(FullTables[CURRECT_GUN][CURRECT_VAR][STAND_STATE][ST_ARRAY][SEMI_AUTOMATIC_PISTOL_BULLETS])
                        end until IsLeftNotPressed()
                end
            end
        end
    elseif gun == M92_BERETTA then
        CURRECT_GUN = 11;
        CURRECT_VAR = 1;
        CROUCH_STATE = 1;
        STAND_STATE = 2;
        X_ARRAY = 1;
        Y_ARRAY = 2;
        AT_ARRAY = 3;
        ST_ARRAY = 4;
        if kickback then
            if IsMouseButtonPressed(3) then
                connector25(5)
                if IsMouseButtonPressed(1) then
                    for a = 1, M92_BERETTA_BULLETS do
                        if IsRightNotPressed() then
                            return
                        end ;
                        if IsLeftNotPressed() then
                            return
                        end ;
                        if IsModifierPressed("lctrl") then
                            PressKey("pause")
                            connector25(18)
                            ReleaseKey("pause")
                            Smoothing(FullTables[CURRECT_GUN][CURRECT_VAR][CROUCH_STATE][AT_ARRAY][a], FullTables[CURRECT_GUN][CURRECT_VAR][CROUCH_STATE][X_ARRAY][a], FullTables[CURRECT_GUN][CURRECT_VAR][CROUCH_STATE][Y_ARRAY][a])
                        else
                            PressKey("pause")
                            connector25(18)
                            ReleaseKey("pause")
                            Smoothing(FullTables[CURRECT_GUN][CURRECT_VAR][STAND_STATE][AT_ARRAY][a], FullTables[CURRECT_GUN][CURRECT_VAR][STAND_STATE][X_ARRAY][a], FullTables[CURRECT_GUN][CURRECT_VAR][STAND_STATE][Y_ARRAY][a])
                        end ;
                        if FullTables[CURRECT_GUN][CURRECT_VAR][STAND_STATE][ST_ARRAY][a] ~= 0 then
                            connector25(FullTables[CURRECT_GUN][CURRECT_VAR][STAND_STATE][ST_ARRAY][a])
                        end
                    end ;
                    repeat if IsModifierPressed("lctrl") then
                        PressKey("pause")
                        connector25(18)
                        ReleaseKey("pause")
                        Smoothing(FullTables[CURRECT_GUN][CURRECT_VAR][CROUCH_STATE][AT_ARRAY][M92_BERETTA_BULLETS], FullTables[CURRECT_GUN][CURRECT_VAR][CROUCH_STATE][X_ARRAY][M92_BERETTA_BULLETS], FullTables[CURRECT_GUN][CURRECT_VAR][CROUCH_STATE][Y_ARRAY][M92_BERETTA_BULLETS])
                    else
                        PressKey("pause")
                        connector25(18)
                        ReleaseKey("pause")
                        Smoothing(FullTables[CURRECT_GUN][CURRECT_VAR][STAND_STATE][AT_ARRAY][M92_BERETTA_BULLETS], FullTables[CURRECT_GUN][CURRECT_VAR][STAND_STATE][X_ARRAY][M92_BERETTA_BULLETS], FullTables[CURRECT_GUN][CURRECT_VAR][STAND_STATE][Y_ARRAY][M92_BERETTA_BULLETS])
                    end ;
                        if FullTables[CURRECT_GUN][CURRECT_VAR][STAND_STATE][ST_ARRAY][M92_BERETTA_BULLETS] ~= 0 then
                            connector25(FullTables[CURRECT_GUN][CURRECT_VAR][STAND_STATE][ST_ARRAY][M92_BERETTA_BULLETS])
                        end until IsLeftNotPressed()
                end
            end
        end
    elseif gun == PROTOTYPE17 then
        CURRECT_GUN = 12;
        CURRECT_VAR = 1;
        CROUCH_STATE = 1;
        STAND_STATE = 2;
        X_ARRAY = 1;
        Y_ARRAY = 2;
        AT_ARRAY = 3;
        ST_ARRAY = 4;
        if kickback then
            if IsMouseButtonPressed(3) then
                connector25(5)
                if IsMouseButtonPressed(1) then
                    for a = 1, PROTOTYPE_BULLETS do
                        if IsRightNotPressed() then
                            return
                        end ;
                        if IsLeftNotPressed() then
                            return
                        end ;
                        if IsModifierPressed("lctrl") then
                            PressKey("pause")
                            connector25(18)
                            ReleaseKey("pause")
                            Smoothing(FullTables[CURRECT_GUN][CURRECT_VAR][CROUCH_STATE][AT_ARRAY][a], FullTables[CURRECT_GUN][CURRECT_VAR][CROUCH_STATE][X_ARRAY][a], FullTables[CURRECT_GUN][CURRECT_VAR][CROUCH_STATE][Y_ARRAY][a])
                        else
                            PressKey("pause")
                            connector25(18)
                            ReleaseKey("pause")
                            Smoothing(FullTables[CURRECT_GUN][CURRECT_VAR][STAND_STATE][AT_ARRAY][a], FullTables[CURRECT_GUN][CURRECT_VAR][STAND_STATE][X_ARRAY][a], FullTables[CURRECT_GUN][CURRECT_VAR][STAND_STATE][Y_ARRAY][a])
                        end ;
                        if FullTables[CURRECT_GUN][CURRECT_VAR][STAND_STATE][ST_ARRAY][a] ~= 0 then
                            connector25(FullTables[CURRECT_GUN][CURRECT_VAR][STAND_STATE][ST_ARRAY][a])
                        end
                    end ;
                    repeat if IsModifierPressed("lctrl") then
                        PressKey("pause")
                        connector25(18)
                        ReleaseKey("pause")
                        Smoothing(FullTables[CURRECT_GUN][CURRECT_VAR][CROUCH_STATE][AT_ARRAY][PROTOTYPE_BULLETS], FullTables[CURRECT_GUN][CURRECT_VAR][CROUCH_STATE][X_ARRAY][PROTOTYPE_BULLETS], FullTables[CURRECT_GUN][CURRECT_VAR][CROUCH_STATE][Y_ARRAY][PROTOTYPE_BULLETS])
                    else
                        PressKey("pause")
                        connector25(18)
                        ReleaseKey("pause")
                        Smoothing(FullTables[CURRECT_GUN][CURRECT_VAR][STAND_STATE][AT_ARRAY][PROTOTYPE_BULLETS], FullTables[CURRECT_GUN][CURRECT_VAR][STAND_STATE][X_ARRAY][PROTOTYPE_BULLETS], FullTables[CURRECT_GUN][CURRECT_VAR][STAND_STATE][Y_ARRAY][PROTOTYPE_BULLETS])
                    end ;
                        if FullTables[CURRECT_GUN][CURRECT_VAR][STAND_STATE][ST_ARRAY][PROTOTYPE_BULLETS] ~= 0 then
                            connector25(FullTables[CURRECT_GUN][CURRECT_VAR][STAND_STATE][ST_ARRAY][PROTOTYPE_BULLETS])
                        end until IsLeftNotPressed()
                end
            end
        end
    elseif gun == PYTHON then
        CURRECT_GUN = 13;
        CURRECT_VAR = 1;
        CROUCH_STATE = 1;
        STAND_STATE = 2;
        X_ARRAY = 1;
        Y_ARRAY = 2;
        AT_ARRAY = 3;
        ST_ARRAY = 4;
        if kickback then
            if IsMouseButtonPressed(3) then
                connector25(5)
                if IsMouseButtonPressed(1) then
                    for a = 1, PYTHON_BULLETS do
                        if IsRightNotPressed() then
                            return
                        end ;
                        if IsLeftNotPressed() then
                            return
                        end ;
                        if IsModifierPressed("lctrl") then
                            PressKey("pause")
                            connector25(18)
                            ReleaseKey("pause")
                            Smoothing(FullTables[CURRECT_GUN][CURRECT_VAR][CROUCH_STATE][AT_ARRAY][a], FullTables[CURRECT_GUN][CURRECT_VAR][CROUCH_STATE][X_ARRAY][a], FullTables[CURRECT_GUN][CURRECT_VAR][CROUCH_STATE][Y_ARRAY][a])
                        else
                            PressKey("pause")
                            connector25(18)
                            ReleaseKey("pause")
                            Smoothing(FullTables[CURRECT_GUN][CURRECT_VAR][STAND_STATE][AT_ARRAY][a], FullTables[CURRECT_GUN][CURRECT_VAR][STAND_STATE][X_ARRAY][a], FullTables[CURRECT_GUN][CURRECT_VAR][STAND_STATE][Y_ARRAY][a])
                        end ;
                        if FullTables[CURRECT_GUN][CURRECT_VAR][STAND_STATE][ST_ARRAY][a] ~= 0 then
                            connector25(FullTables[CURRECT_GUN][CURRECT_VAR][STAND_STATE][ST_ARRAY][a])
                        end
                    end ;
                    repeat if IsModifierPressed("lctrl") then
                        PressKey("pause")
                        connector25(18)
                        ReleaseKey("pause")
                        Smoothing(FullTables[CURRECT_GUN][CURRECT_VAR][CROUCH_STATE][AT_ARRAY][PYTHON_BULLETS], FullTables[CURRECT_GUN][CURRECT_VAR][CROUCH_STATE][X_ARRAY][PYTHON_BULLETS], FullTables[CURRECT_GUN][CURRECT_VAR][CROUCH_STATE][Y_ARRAY][PYTHON_BULLETS])
                    else
                        PressKey("pause")
                        connector25(18)
                        ReleaseKey("pause")
                        Smoothing(FullTables[CURRECT_GUN][CURRECT_VAR][STAND_STATE][AT_ARRAY][PYTHON_BULLETS], FullTables[CURRECT_GUN][CURRECT_VAR][STAND_STATE][X_ARRAY][PYTHON_BULLETS], FullTables[CURRECT_GUN][CURRECT_VAR][STAND_STATE][Y_ARRAY][PYTHON_BULLETS])
                    end ;
                        if FullTables[CURRECT_GUN][CURRECT_VAR][STAND_STATE][ST_ARRAY][PYTHON_BULLETS] ~= 0 then
                            connector25(FullTables[CURRECT_GUN][CURRECT_VAR][STAND_STATE][ST_ARRAY][PYTHON_BULLETS])
                        end until IsLeftNotPressed()
                end
            end
        end
    elseif gun == REVOLVER then
        CURRECT_GUN = 14;
        CURRECT_VAR = 1;
        CROUCH_STATE = 1;
        STAND_STATE = 2;
        X_ARRAY = 1;
        Y_ARRAY = 2;
        AT_ARRAY = 3;
        ST_ARRAY = 4;
        if kickback then
            if IsMouseButtonPressed(3) then
                connector25(5)
                if IsMouseButtonPressed(1) then
                    for a = 1, REVOLVER_BULLETS do
                        if IsRightNotPressed() then
                            return
                        end ;
                        if IsLeftNotPressed() then
                            return
                        end ;
                        if IsModifierPressed("lctrl") then
                            PressKey("pause")
                            connector25(18)
                            ReleaseKey("pause")
                            Smoothing(FullTables[CURRECT_GUN][CURRECT_VAR][CROUCH_STATE][AT_ARRAY][a], FullTables[CURRECT_GUN][CURRECT_VAR][CROUCH_STATE][X_ARRAY][a], FullTables[CURRECT_GUN][CURRECT_VAR][CROUCH_STATE][Y_ARRAY][a])
                        else
                            PressKey("pause")
                            connector25(18)
                            ReleaseKey("pause")
                            Smoothing(FullTables[CURRECT_GUN][CURRECT_VAR][STAND_STATE][AT_ARRAY][a], FullTables[CURRECT_GUN][CURRECT_VAR][STAND_STATE][X_ARRAY][a], FullTables[CURRECT_GUN][CURRECT_VAR][STAND_STATE][Y_ARRAY][a])
                        end ;
                        if FullTables[CURRECT_GUN][CURRECT_VAR][STAND_STATE][ST_ARRAY][a] ~= 0 then
                            connector25(FullTables[CURRECT_GUN][CURRECT_VAR][STAND_STATE][ST_ARRAY][a])
                        end
                    end ;
                    repeat if IsModifierPressed("lctrl") then
                        PressKey("pause")
                        connector25(18)
                        ReleaseKey("pause")
                        Smoothing(FullTables[CURRECT_GUN][CURRECT_VAR][CROUCH_STATE][AT_ARRAY][REVOLVER_BULLETS], FullTables[CURRECT_GUN][CURRECT_VAR][CROUCH_STATE][X_ARRAY][REVOLVER_BULLETS], FullTables[CURRECT_GUN][CURRECT_VAR][CROUCH_STATE][Y_ARRAY][REVOLVER_BULLETS])
                    else
                        PressKey("pause")
                        connector25(18)
                        ReleaseKey("pause")
                        Smoothing(FullTables[CURRECT_GUN][CURRECT_VAR][STAND_STATE][AT_ARRAY][REVOLVER_BULLETS], FullTables[CURRECT_GUN][CURRECT_VAR][STAND_STATE][X_ARRAY][REVOLVER_BULLETS], FullTables[CURRECT_GUN][CURRECT_VAR][STAND_STATE][Y_ARRAY][REVOLVER_BULLETS])
                    end ;
                        if FullTables[CURRECT_GUN][CURRECT_VAR][STAND_STATE][ST_ARRAY][REVOLVER_BULLETS] ~= 0 then
                            connector25(FullTables[CURRECT_GUN][CURRECT_VAR][STAND_STATE][ST_ARRAY][REVOLVER_BULLETS])
                        end until IsLeftNotPressed()
                end
            end
        end
    end
end