function GetSkillLevelData(levelname, data, level)

if (levelname == "fireenhance_p") then
return Getfireenhance_p(level)
end;

if (levelname == "skill_cost_v") then
return Getskill_cost_v(level)
end;

str1 = ""
return str1
end;

function Param2String(Param1, Param2, Param3)
return Param1..","..Param2..","..Param3
end;

function Getfireenhance_p(level)
result1 = 12+3*floor(level/2)
result2 = 360+36*level
return Param2String(result1,result2,0)
end;

function Getskill_cost_v(level)
result = 50
return Param2String(result,0,0)
end;