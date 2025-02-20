--日程安排
_tmp_calender = {
	weekend = {	--周末日程，在周五、六、日采用
		--开始时间（分钟），比赛场数
		{18*60, 4},	--第一段
		{21*60, 4},	--第二段
	},
	common = {	--一般日程，在没有特别安排时采用
		--开始时间（分钟），比赛场数
		{18*60, 4},
		{21*60, 4},	--第二段
	}
}

--赛季安排
-- 类型：1、双人；2、门派；3、师徒；4、三人；5、混合单人；6、同系双人；7、混合双人
WLLS_SEASON_TB = {
	--[ID]={类型, 	开始日期,	结束日期,	参赛次数,	日程安排}
	[0] = {2,		0,			0,			0,			{}},	--空赛季，极端情况保护
	--[ID]={the loai(1=>7), 	ngay bat dau,	ngay ket thuc,	so tran toi da,	the lich}
	-- 1=   Song u t� do
	-- 2=  n u m玭 ph竔
	-- 3=  song u s� 
	-- 4=  tam u t� do
	-- 5= n u t� do
	-- 6= song u c飊g h� = sau nay bi loai bo
	-- 7= song u nam n� = sau nay bi loai bo
	-- n╩ 2014
	[40] = {2,		140108,		100128,		48,		_tmp_calender},
	[41] = {5,		140208,		140228,		48,		_tmp_calender},
	[42] = {5,		130308,		130328,		48,		_tmp_calender},
	[43] = {5,		140408,		140428,		48,		_tmp_calender},
	[44] = {5,		140508,		140528,		48,		_tmp_calender},
	[45] = {5,		140608,		140628,		48,		_tmp_calender},
	[46] = {5,		140708,		140728,		48,		_tmp_calender},
	[47] = {5,		140808,		140828,		48,		_tmp_calender},
	[48] = {5,		140908,		140928,		48,		_tmp_calender},
	[49] = {5,		141008,		141028,		48,		_tmp_calender},
	[50] = {5,		141108,		141128,		48,		_tmp_calender},
	[51] = {5,		141208,		141228,		48,		_tmp_calender},
	
	--n╩ 2015
	[52] = {5,		150108,		150128,		48,		_tmp_calender},
	[53] = {1,		150208,		150228,		48,		_tmp_calender},
	[54] = {2,		150308,		150328,		48,		_tmp_calender},
	[55] = {4,		150408,		150428,		48,		_tmp_calender},
	[56] = {1,		150508,		150528,		48,		_tmp_calender},
	[57] = {4,		150608,		150628,		48,		_tmp_calender},
	[58] = {5,		150708,		150728,		48,		_tmp_calender},
	[59] = {1,		150808,		150828,		48,		_tmp_calender},
	[60] = {4,		150908,		150928,		48,		_tmp_calender},
	[61] = {5,		151008,		151028,		48,		_tmp_calender},
	[62] = {3,		151108,		151128,		48,		_tmp_calender},
	[63] = {4,		151208,		151228,		48,		_tmp_calender},
	
	-- Update l辌h cho n╩ 2012 - modified By DinhHQ -2120109
	[64] = {5,		160108,		160128,		48,		_tmp_calender},
	[65] = {1,		160208,		160228,		48,		_tmp_calender},
	[66] = {2,		160308,		160328,		48,		_tmp_calender},
	[67] = {2,		160408,		160428,		48,		_tmp_calender},
	[68] = {1,		160508,		160528,		48,		_tmp_calender},
	[69] = {4,		160608,		160628,		48,		_tmp_calender},
	[70] = {5,		160708,		160728,		48,		_tmp_calender},
	[71] = {1,		160808,		160828,		48,		_tmp_calender},
	[72] = {4,		160908,		160928,		48,		_tmp_calender},
	[73] = {5,		161008,		161028,		48,		_tmp_calender},
	[74] = {3,		161108,		161128,		48,		_tmp_calender},
	[75] = {4,		161208,		161228,		48,		_tmp_calender},

	[76] = {5,		170108,		170128,		48,		_tmp_calender},
	[77] = {1,		170208,		170228,		48,		_tmp_calender},
	[78] = {2,		170308,		170328,		48,		_tmp_calender},
	[79] = {2,		170408,		170428,		48,		_tmp_calender},
	[80] = {1,		170508,		170528,		48,		_tmp_calender},
	[81] = {4,		170608,		170628,		48,		_tmp_calender},
	[82] = {5,		170708,		170728,		48,		_tmp_calender},
	[83] = {1,		170808,		170828,		48,		_tmp_calender},
	[84] = {4,		170908,		170928,		48,		_tmp_calender},
	[85] = {5,		171008,		171028,		48,		_tmp_calender},
	[86] = {3,		171108,		171128,		48,		_tmp_calender},
	[87] = {4,		171208,		171228,		48,		_tmp_calender},


	[76] = {5,		180108,		180128,		48,		_tmp_calender},
	[77] = {1,		180208,		180228,		48,		_tmp_calender},
	[78] = {2,		180308,		180328,		48,		_tmp_calender},
	[79] = {2,		180408,		180428,		48,		_tmp_calender},
	[80] = {1,		180508,		180528,		48,		_tmp_calender},
	[81] = {4,		180608,		180628,		48,		_tmp_calender},
	[82] = {5,		180708,		180728,		48,		_tmp_calender},
	[83] = {1,		180808,		180828,		48,		_tmp_calender},
	[84] = {4,		180908,		180928,		48,		_tmp_calender},
	[85] = {5,		181008,		181028,		48,		_tmp_calender},
	[86] = {3,		181108,		181128,		48,		_tmp_calender},
	[87] = {4,		181208,		181228,		48,		_tmp_calender},

}

--结尾两个空赛季避免极端情况
WLLS_SEASON_TB[getn(WLLS_SEASON_TB)+1] = {2,	999998,	999998,	0,	_tmp_calender}
WLLS_SEASON_TB[getn(WLLS_SEASON_TB)+1] = {2,	999999,	999999,	0,	_tmp_calender}

