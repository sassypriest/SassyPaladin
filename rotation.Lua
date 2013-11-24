--[[
	-- ========================================= --
	-- Sassy Prot Pally. 24/11/2013  Version 1.0 --
	-- ========================================= --
	
	-- To Do 
]]	
ProbablyEngine.rotation.register_custom(66, "Sassy Pally", {

	-- Interupt

{ "Rebuke", "modifier.interrupts" },
{ "Avenger's Shield", "modifier.interrupts" },

	-- Lights Hammer
	
{ "Light's Hammer", {"modifier.lcontrol",}, "ground"},

	-- CD,s

{{
{ "Avenging Wrath", "!player.buff(Avenging Wrath)" },
{ "Holy Avenger.exists", "!player.buff(Holy Avenger)" },
{ "#gloves", "modifier.cooldowns" }, -- Synaps Springs

 }, "modifier.cooldowns" },
 
	-- Survivability CD's
	
{ "Eternal Flame.exists", { "player.health <= 99", "player.holypower >= 3", }},
	
{ "Sacred Shield.exists", { "player.health < 99", }},	--"!player.buff(65148)"	
	
{ "Word of glory", { "player.health <= 50", "player.holypower >= 3", }},	

{"#Healthstone", "player.health <= 40"},

{ "Ardent Defender", "player.health < 30" },

{ "Lay on Hands", "player.health < 20" },

	-- Party Healing

{ "Lay on Hands", "lowest.health <= 10"},
{ "Word of Glory", { "lowest.health <= 20", "player.holypower >= 1", }},
{ "Flash of light", { "lowest.health <= 30", "player.buff(selfless healer).count = 3", }},
{ "Eternal Flame", { "lowest.health <= 20", "!target.buff(Eternal Flame)", "player.holypower >= 1", }},
{ "Sacred Shield", { "lowest.health <= 20", "!target.buff(Sacred Shield)", }},

	-- Single Target

{{
{{
{ "Hammer of the Righteous", "!target.debuff(Weakened Blows)" },
{ "Crusader Strike" },
{ "Shield of the Righteous", "player.holypower >= 3", },
{ "Judgment" },
{ "Holy Prism" },
{ "Consecration", "target.range <= 5" },
{ "Avenger's Shield", "player.buff(Grand Crusader)" },
{ "Avenger's Shield" },
{ "Holy Wrath", "target.range <= 5" },
{ "Hammer of Wrath", "target.health < 20" },  

}, "!modifier.multitarget" }, 

	-- Multi Target Rotation

{{
{ "Hammer of the Righteous", },
{ "Crusader Strike" },
{ "Shield of the Righteous", "player.holypower >= 5", },
{ "Holy Wrath", "target.range <= 5" },
{ "Avenger's Shield", "player.buff(Grand Crusader)" },
{ "Consecration", "target.range <= 3" },

}, "modifier.multitarget" },

	-- Buffing
	
{"20165", {"player.spell(20165).exists", "!player.buff(20165)"}}, -- Seal of Insight
{"25780", {"player.spell(25780).exists", "!player.buff(25780)"}}, -- Righteous Fury

})
