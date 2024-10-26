Include("\\script\\global\\gift\\gift.lua")
Include("\\script\\tagnewplayer\\tbitemHK.lua");
Include("\\script\\global\\namcung\\top5.lua")

function main()
	local szTitle = "<npc>.<enter><color=yellow>V� L�m Truy�n K�<color> CTC<enter>.<enter>Hoan ngh�nh c�c anh h�ng h�o ki�t... !"
				local tbOpt =
	{

		{"Mua Th�n H�nh Ph� (50 V�n)", MuaThanHanh},
		{"Nh�p Gifcode T�n Th�", Nhap_Code},
		{"Nh�n th��ng Top 5 ng��i ��u ��t 120 c�p", nhantop5},
		--{"Xu�t S�", xuatsu},
		--{"Ho�n Th�nh Nhi�m V� V� h�c Skills 60", Hotro_Skills},
		{"Tho�t"},
	}
		CreateNewSayEx(szTitle, tbOpt)	

end			

function Nhap_Code()
	if GetTask(3932) == 1  then
		Talk(1, "", "Ng��i �� nh�n code r�i mau �i luy�n t�p th�m �i.")
		return
	end
	if GetLevel() < 10 then
		Talk(1, "", "Ta l� ng��i t� ch�c c�c s� ki�n! h�y di luy�n ��n c�p 10 r�i t�m ta nh�n th��ng.")
		return
	end
	--local strFaction = GetFaction()
	--if (tbItemHK[strFaction] == nil) then
		--Talk(1, "", "Ng��i l� ai ? kh�ng thu�c ph�i n�o th� �i �i ! ta kh�ng xem tr�ng v� danh ti�u t�t !.")
		--return
	--end
	CodeStrings()
end

function Hotro_Skills()
	if GetTask(3932) ~= 1  then
		Talk(1, "", "Ng��i h�y nh�n code t�n th� r�i ��n t�m ta !.")
		return
	end
	if GetTask(3933) == 1  then
		Talk(1, "", "Ng��i �� c� danh ti�ng tr�n giang h� r�i mau �i luy�n t�p th�m �i.")
		return
	end
	if GetLevel() < 80 then
		Talk(1, "", "h�y di luy�n ��n c�p 10 r�i t�m ta nh�n th��ng.")
		return
	end
	local strFaction = GetFaction()
	if (tbItemHK[strFaction] == nil) then
		Talk(1, "", "Ng��i l� ai ? kh�ng thu�c ph�i n�o th� �i �i ! ta kh�ng xem tr�ng v� danh ti�u t�t !.")
		return
	end

	HoTroSkill()
	Talk(1, "", "Ch�c m�ng ? Ng��i �� c� th� b�n t�u giang h� r�i h�y mau �i �i !.")

end

function MuaThanHanh()
	if (GetCash() <= 500000) then
		Talk(1, "", "Ph�i ca �� 50 v�n m�i ca th� mua.")
		return
	end
	Pay(500000)
	local tbItem = {szName="Th�n h�nh ph�", tbProp={6,1,1266,1,0,0}, nBindState=-2,nExpiredTime = 10080}
	tbAwardTemplet:GiveAwardByList(tbItem, "Th�n h�nh ph�", 1)

end

function OnExit()
end


Include("\\script\\global\\lib\\serverlib.lua")

function xuatsu()
	local tb = {"<dec><npc>Ta l� ng��i c� th� gi�p ng��i r�i b� m�n ph�i m�t c�ch d� d�ng, n�u ng��i mang theo 10 v�n."};
	Tong_name,oper = GetTong()
	if Tong_name == "" then 
		local nCamp = GetCamp();
		if nCamp ~= 4 then 
			tinsert(tb,"Ta mu�n r�i kh�i s� m�n/leave_sumon_change2killer");
		else
			tinsert(tb,"Ta mu�n tr� l�i m�n ph�i/back_sumon_change2normal");
		end
		tinsert(tb,"�� ta suy ngh� th�m/cancel")
		CreateTaskSay(tb);
	else
		Talk(1,"","Ng��i �ang c� bang h�i h�y r�i kh�i bang h�i r�i ta m�i c� th� gi�p ng��i.")
	end
end

function leave_sumon_change2killer()
	if GetCash() >= 100000  then
		Pay(100000);
		SetCamp(4);
		SetCurCamp(4);
		Msg2Player("B�n �� r�i kh�i s� m�n.")
	else
		Msg2Player(GetName().." ng��i kh�ng c� 10 v�n ta kh�ng th� gi�p ng��i")
	end
end

function back_sumon_change2normal()
	local nFaction = GetLastFactionNumber();
	local listcamp = {[0] = 1,[1] = 3,[2] = 3,[3] = 2,[4] = 1,[5] = 3,[6] = 1,[7] = 2, [8]= 1,[9] = 3};
	if GetCash() >= 500000  then
		Pay(500000);
		SetCamp(listcamp[nFaction]);
		SetCurCamp(listcamp[nFaction]);
		Msg2Player("B�n �� quay tr� l�i s� m�n.")
	else
		Msg2Player(GetName().." ng��i kh�ng c� 50 v�n ta kh�ng th� gi�p ng��i")
	end
end

function cancel()
end

