-- �������ʹ�ýű�
Include("\\script\\lib\\awardtemplet.lua")

--Gi�i h�n �i�m kinh nghi�m m�i ng�y l� 50tri�u khi s� d�ng c�c lo�i b�o r��ng - Modified by DinhHQ - 20110428
Include("\\script\\vng_event\\change_request_baoruong\\exp_award.lua")

tbAward = {
--	{szName="�i�m kinh nghi�m 1", 
--				pFun = function (tbItem, nItemCount, szLogTitle)
--					%tbvng_ChestExpAward:ExpAward(1500000, "C�ng Th�nh L� Bao (m�i)")
--				end,
--				nRate = 60,
--	},
	{szName="�i�m kinh nghi�m 2", 
				pFun = function (tbItem, nItemCount, szLogTitle)
					%tbvng_ChestExpAward:ExpAward(2000000, "C�ng Th�nh L� Bao (m�i)")
				end,
				nRate = 97.20,
	},
	{szName="�i�m kinh nghi�m 3", 
				pFun = function (tbItem, nItemCount, szLogTitle)
					%tbvng_ChestExpAward:ExpAward(5000000, "C�ng Th�nh L� Bao (m�i)")
				end,
				nRate = 2,
	},
	{szName="�i�m kinh nghi�m 4", 
				pFun = function (tbItem, nItemCount, szLogTitle)
					%tbvng_ChestExpAward:ExpAward(10000000, "C�ng Th�nh L� Bao (m�i)")
				end,
				nRate = 0.05,
	},
	{szName="�i�m kinh nghi�m 5", 
				pFun = function (tbItem, nItemCount, szLogTitle)
					%tbvng_ChestExpAward:ExpAward(20000000, "C�ng Th�nh L� Bao (m�i)")
				end,
				nRate = 0.02,
	},
	{szName="�i�m kinh nghi�m 6", 
				pFun = function (tbItem, nItemCount, szLogTitle)
					%tbvng_ChestExpAward:ExpAward(50000000, "C�ng Th�nh L� Bao (m�i)")
				end,
				nRate = 0.01,
	},
	{szName = "M�t n� Nguy�n so�i",	tbProp = {0, 11, 447, 1, 0, 0}, nRate = 0.30},
	{szName = "B�ch Ni�n Tr�n L�",		tbProp = {6, 1, 2266, 1, 0, 0}, nRate = 0.25},
	{szName = "V�n Ni�n Tr�n L�",		tbProp = {6, 1, 2268, 1, 0, 0}, nRate = 0.52},
	{szName = "Thi�n Ni�n Tr�n L�",		tbProp = {6, 1, 2267, 1, 0, 0}, nRate = 0.31},	
	
--Gi�i h�n �i�m kinh nghi�m m�i ng�y l� 50tri�u khi s� d�ng c�c lo�i b�o r��ng - Modified by DinhHQ - 20110428
--	{nExp = 1500000,  nRate = 48.02},
--	{nExp = 2000000,  nRate = 30},
--	{nExp = 5000000,  nRate = 5},
--	{nExp = 10000000, nRate	= 3},
--	{nExp = 20000000, nRate	= 2},
--	{nExp = 50000000, nRate	= 1},	

	{szName = "Ch�a Kh�a Nh� �",		tbProp = {6, 1, 2744, 1, 0, 0}, nRate = 0.1},
	{szName = "H�n Nguy�n Linh L�",		tbProp = {6, 1, 2312, 1, 0, 0}, nRate = 0.01},
	{szName = "Ng�c Qu�n",			tbProp = {6, 1, 2311, 1, 0, 0}, nRate = 0.01},
	{szName = "C�m nang thay ��i tr�i ��t",	tbProp = {6, 1, 1781, 1, 0, 0}, nRate = 0.1, tbParam = {60}},
	{szName = "Ti�n Th�o L� ��c bi�t",		tbProp = {6, 1, 1181, 1, 0, 0}, nRate = 0.1},
}

function main(nItemIndex)
	if (CalcFreeItemCellCount() < 1) then
		Say("H�nh trang �t nh�t ph�i c� <color=red>1<color> � tr�ng m�i nh�n ���c ph�n th��ng.")
		return 1
	end
	tbAwardTemplet:Give(tbAward, 1, {"SEVENCITY", "UseCityAward"})
	return 0
end

function test()
	local rate = 0
	for i = 1, getn(tbAward) do
		rate = rate + tbAward[i].nRate
	end
	if (floor(rate) ~= 100) then
		error(format("total rate is wrong", rate))
	end
end

test()
