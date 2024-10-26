Include("\\script\\activitysys\\config\\17\\config.lua")
Include("\\script\\activitysys\\config\\17\\head.lua")

function pActivity:Jiluxiaohao_yesou()
	AddStatData("baoxiangxiaohao_kaiyesouxiangzi", 1)	--��������һ��
end

function pActivity:Jiluxiaohao_chengzhan()
	AddStatData("baoxiangxiaohao_kaichengzhanlibao", 1)	--��������һ��
end

function pActivity:Jiluxiaohao_zhizun()
	AddStatData("baoxiangxiaohao_kaizhizunmibao", 1)	--��������һ��
end

function pActivity:Jiluxiaohao_shuizexiangzi()
	AddStatData("baoxiangxiaohao_kaishuizeixiangzi", 1)	--��������һ��
end

--�i�u ch�nh ph�n th��ng r�i ra t� boss thu� t�c ��i ��u l�nh - Modified By DinhHQ - 20120523
function pActivity:VnFFBigBossDrop(nNpcIndex)
	tbVnFFBigBossDrop = {
		[1]={{szName="Long Huy�t Ho�n",tbProp={6,1,2117,1,0,0},nCount=1,nRate=3,nExpiredTime=20160},},
		[2]={{szName="S�t Th� Gi�n l� h�p",tbProp={6,1,2339,1,0,0},nCount=1,nRate=5,nExpiredTime=10080},},
		[3]={{szName="��i l�c ho�n l� bao",tbProp={6,1,2517,1,0,0},nCount=1,nRate=8,nExpiredTime=20160},},
	}	
	tbDropTemplet:GiveAwardByList(nNpcIndex, PlayerIndex, tbVnFFBigBossDrop, "Ph�n th��ng ti�u di�t Th�y T�c ��i ��u L�nh", 1)
end

function pActivity:VnUsePirateBox(nItemIdx)
	DynamicExecuteByPlayer(PlayerIndex, "\\script\\activitysys\\config\\17\\vnshuizeibaoxiang.lua", "VnPirateBox_main", nItemIdx)
	return nil
end