Include("\\script\\lib\\common.lua")
Include("\\script\\global\\rename_head.lua")

--活动定义
EVENTS_TB = {
--	{
--		--显示活动条件
--		ndate = {051101, 051131},	--起止日期，可选
--		ntime = {2000, 2359},		--起止时间，可选
--		level = {1, 200},			--起止级别，可选
--		taskequal = {taskid, taskvalue},	--任务变量系等，可选
--		tasknot = {taskid, taskvalue},		--任务变量不等，可选
--		checkfunc = func			--检测函数，可选。函数返回nil表示不触发，否则触发
--		
--		--活动描述
--		name = "某某活动",			--活动名称，必需
--		describe = "简单说明文字",	--活动说明，也可以用一个函数返回字符串，可选
--		detail =
--[[　　这里可以写很兜文字，详细描述你的活动。
--　　方括号的形式可以自由换行。
--　　也可以用一个函数返回字符串]],	--活动详情，可选 \___二者只可选其一
--		callback = nil,				--回调函数，可选 /
--		link = nil,					--Describe对话link信息，可选（使用detail时有效）
--	},
	{
		ndate = {070414,070424},
		name = "Ng祔 3 th竛g 3",
		describe = "T� <color=yellow>14/4/2007<color> n <color=yellow>24/4/2007<color>, 產ng trong th阨 gian di詎 ra ho箃 ng, t蕋 c� c竎 nh﹏ s� v� l﹎ trong qu� tr譶h luy謓 u c� c� c� h閕 nh苩 頲 <color=yellow> V藅 ph萴 qu� <color>. C� th� mang n Ti謓 Taph Ho� � c竎 th祅h th�  i l蕐 ng﹏ lng v� <color=yellow>v藅 ph萴 c莕 thi誸 <color>.",
	},
	{	--3级以前龙五教育任务
		level = {1, 3},
		tasknot = {1014, 2},
		name = "Ta n nh薾 nhi謒 v� s� nh藀",
		describe = " G苝 Long Ng� � c竎 th玭 d� nh薾 nhi謒 v� ",
		callback = Uworld1000_word,
	},
	{	--武林联赛——孝秀
		level = {80, 119},
		name = "V� l﹎ li猲 u so t礽, v� l﹎ li猲 u cu閏 so t礽 V� L﹎ T﹏ T�",
		describe = "C蕄  cao c� th� d課 Quan Vi猲 Li猲 u ghi danh  so t礽.",
		detail =
[[ V� l﹎ li猲 u cu閏 so t礽 產ng � giai 畂筺 chu萵 b�, c蕄 b薱 c馻 ngi c� th� tham gia <color=yellow>V� L﹎ Li猲 u<color>.
li猲 cu閏 so t礽 v� tr� : <color=yellow>Bi謓 kinh(222, 191)<color>, <color=yellow>L﹎ An(182, 204)<color>.]],
	},
	{	--武林联赛——高级
		level = {120, 200},
		name = "V� l﹎ li猲 u so t礽, v� l﹎ li猲 u cu閏 so t礽 V� L﹎ Cao C蕄",
		describe = "C蕄  cao c� th� d課 Quan Vi猲 Li猲 u ghi danh  so t礽..",
		detail =
[[ V� l﹎ li猲 u cu閏 so t礽 產ng � giai 畂筺 chu萵 b�, c蕄 b薱 c馻 ngi c� th� tham gia <color=yellow>V� L﹎ Li猲 u<color>.
li猲 cu閏 so t礽 v� tr�<color=yellow>Чi L�(200, 197)<color>, <color=yellow>Dng Ch﹗(219, 190)<color>.]],
	},
	{	--辉煌之夜
		name = "Иm huy ho祅g", 
describe = "Minh Ch� V� L﹎ <color= red>чc C� Ki誱 Ma<color> m� ra ho箃 ng mang t猲 Иm Huy Ho祅g, di詎 ra m鏸 m v祇 l骳 7 gi� 30 ph髏 m鏸 t鑙 trong tu莕.",
		detail =
[[Trc m総 l� th阨 gian m璦 thu薾 gi� h遖 , v� p tr� ﹏ t譶h c馻 c竎 v� l﹎ nh﹏ s� giang h�, Minh Ch� V� L﹎ <color= red>чc C� Ki誱 Ma<color> c� h祅h ho箃 ng Иm Huy Ho祅g. Ho箃 ng t� m鏸 ng祔 19 gi� 30 ph髏, m鏸 l莕 ho箃 ng 30 ph髏. C� th� n閕 dung c� th� 甶 t譵 l� quan  h醝 th猰 .]],
	},

	-- {
	-- 	name = "<#>角色改名",
	-- 	describe = "<#>由于在并服过程中，您的角色名与其他玩家的角色名出现了重名情况，因此系统已帮您自动更名，如果您需要重孝改变角色名的话，请到各孝手村的孝手推广员处选择修改角色名。您只能更改一次角色名，所以请仔细阅读系应说明。",
	-- },
	-- {
	-- 	name = "<#>帮会改名",
	-- 	describe = "由于在并服过程中，您所在的帮会，帮会名与其他帮会名出现了重名情况，因此系统已帮您所在的帮会自动更名，如果帮主需要重孝改变帮会名的话，请到各孝手村的孝手推广员处选择修改帮会名。帮主只能更改一次帮会名，所以请仔细阅读系应说明。",
	-- },
}

EVENT_HINT_LINK = "<link=image[0,1]:\\spr\\npcres\\enemy\\enemy060\\enemy060_st.spr>H� Th鑞g th玭g b竜 ho箃 ng c� th� l祄 : <link>"
EVENT_HINT_TIMES = 3	--每天上线提示次数

--如果有较复杂的活动需要自定义一些函数。请在息面Include，并使用：
--	if EVENTS_TB then EVENTS_TB[getn(EVENTS_TB)+1] = {……} end
--的方式添加
--=================================================================
Include("\\script\\task\\newtask\\education\\dragonfive.lua")
Include("\\script\\event\\great_night\\huangzhizhang\\event.lua")
--=================================================================

--登⒔时调用的函数
function event_hint_login(bExchangeIn)
	-- 跨服过来的就不用再提示了
	if (bExchangeIn == 1) then
		return
	end
	local n_date = tonumber(GetLocalDate("%y%m%d"));
	local n_time = tonumber(GetLocalDate("%H%M"));
	local n_times;
	if (GetTask(2308) ~= n_date) then	--不是今天登⒔的
		SetTask(2308, n_date);
		SetTask(2309, 0);
		n_times = 0;
	else
		n_times = GetTask(2309);
	end
	if (n_times >= EVENT_HINT_TIMES) then	--已达到提示次数，不再提示
		return
	end
	
	local n_level = GetLevel();
	local tb = {};
	for i = 1, getn(EVENTS_TB) do
		if event_hint_check(EVENTS_TB[i], n_date, n_time, n_level) then	--符合条件
			tb[getn(tb)+1] = i;
		end
	end
	if (getn(tb) == 1) then	--只有一个活动，直接显示详情
		event_show_detail(tb, 1);
	elseif (getn(tb) > 0) then	--兜个活动
		event_show_all(tb);
	end
	
	SetTask(2309, n_times + 1)
	
	bingfu_hint()	--并服更名，临时添加的高优先级上线提示，不属于规范的使用
end

--检查某个活动是否需要通知当前玩家
function event_hint_check(tb_event, n_date, n_time, n_level)
	local tb = tb_event.ndate;
	if (tb) then	--限定日期
		if (n_date < tb[1] or n_date > tb[2]) then	--日期不符
			return
		end			
	end
	tb = tb_event.ntime;
	if (tb) then	--限定时间
		if (n_time < tb[1] or n_time > tb[2]) then	--日期不符
			return
		end			
	end
	tb = tb_event.level;
	if (tb) then	--限定级别
		if (n_level < tb[1] or n_level > tb[2]) then	--级别不符
			return
		end			
	end
	tb = tb_event.taskequal
	if (tb) then	--任务变量系等
		if (GetTask(tb[1]) ~= tb[2]) then
			return
		end			
	end
	tb = tb_event.tasknot
	if (tb) then	--任务变量不等
		if (GetTask(tb[1]) == tb[2]) then
			return
		end			
	end
	local func = tb_event.checkfunc
	if (func) then	--函数判断
		if (not func()) then
			return
		end			
	end
	return 1
end

--显示所有活动
function event_show_all(tb)
	local str = "<enter>";
	local tb_option = {};
	for i = 1, getn(tb) do
		local tb_event = EVENTS_TB[tb[i]];
		str = str .. "<color=red>" .. tb_event.name .. "<color><enter>";
		if (tb_event.describe) then
			local str_des
			if (type(tb_event.describe) == "function") then
				str_des = tb_event.describe()
			else
				str_des = tostring(tb_event.describe)
			end
			str = str .. "  " .. str_des .. "<color><enter>";
		end
		if (tb_event.detail or tb_event.callback) then
			tb_option[getn(tb_option)+1] = tb_event.name..", Xem Chi Ti誸/#event_show_detail({"..join(tb).."},"..i..")";
		end
	end
	tb_option[getn(tb_option)+1] = "H玬 nay kh玭g c莕 nh綾 nh� ta/event_hint_stop";
	tb_option[getn(tb_option)+1] = "K誸 th骳 i tho筰!/no";
	Describe(EVENT_HINT_LINK..str, getn(tb_option), tb_option);
end

--显示某一指定活动详情（全部，当前第几个）
function event_show_detail(tb, n)
	local tb_event = EVENTS_TB[tb[n]];
	if (tb_event.callback) then
		tb_event.callback();
	else
		local str = "<enter><color=red>"..tb_event.name.."<color><enter>"
		local tb_option = {};
		if (getn(tb) > 1) then
			tb_option[1] = "Ta mu鑞 t譵 hi觰 r� ho箃 ng./#event_show_all({"..join(tb).."})";
		end
		tb_option[getn(tb_option)+1] = "H玬 nay kh玭g c莕 nh綾 nh� ta./event_hint_stop";
		tb_option[getn(tb_option)+1] = "K誸 th骳 i tho筰!/no";
		if (tb_event.link) then
			str = tb_event.link .. str
		else
			str = EVENT_HINT_LINK .. str
		end
		if (tb_event.detail) then
			if (type(tb_event.detail) == "function") then
				str = str .. tb_event.detail()
			else
				str = str .. tb_event.detail
			end
		elseif (tb_event.describe) then
			if (type(tb_event.describe) == "function") then
				str = str .. tb_event.describe()
			else
				str = str .. tostring(tb_event.describe)
			end
		end
		Describe(str, getn(tb_option), tb_option);
	end
end

function event_hint_stop()
	SetTask(2309, EVENT_HINT_TIMES);
end

function bingfu_hint()
	-- 角色改名提示
	local msg = ""
	if (check_renamerole() == 1) then 
msg = msg .. "<#>B雐 v� � c騨g d飊g trong qu� tr譶h, h� th鑞g  gi髉 ng礽 t� ng h琻 t猲, m阨 頲 c竎 tay m韎 th玭 ch tay m韎 ph� bi課 r閚g r穒 vi猲 ch� l鵤 ch鋘 <color=red> s鯽 i vai tr� t猲 <color>." 
end 
-- bang h閕 i t猲  k� 
if (check_renametong() == 1) then 
msg = msg .. "<#>B雐 v� � c騨g d飊g trong qu� tr譶h, h� th鑞g  gi髉 ng礽 ch� � bang h閕 t� ng h琻 t猲, m阨 頲 c竎 tay m韎 th玭 tay m韎 ph� bi課 r閚g r穒 vi猲 ch� l鵤 ch鋘 <color=red> s鯽 i bang h閕 t猲<color>." 
end 
if (check_castellan_remedy() == 1) then 
msg = msg .. "<#>B雐 v� c騨g d飊g trong qu� tr譶h h� th鑞g t� ng thu v� li評 ng礽 ch� � bang h閕 ch th祅h ph� qu秐 l� quy襫, ng礽 c� th� n c竎 tay m韎 th玭 ch tay m韎 ph� bi課 r閚g r穒 vi猲 ch� <color=red> nh薾 l蕐 tng 鴑g b錳 thng <color> , nh薾 l蕐 bang h閕 b錳 thng ch鴆 n╪g � <color=red> c騨g d飊g sau trong v遪g m閠 th竛g <color> h鱱 hi謚 . " 
end 

if (msg ~= "") then 
Say(msg, 1, "<#> bi誸 /cancel") 
end
end

if login_add then login_add(event_hint_login, 0) end

