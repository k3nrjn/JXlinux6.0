-- ս��ϵͳ
-- Fanghao_Wu 2004-12-6

function TaskShedule()
	-- ���÷�������
	TaskName( "CHIEN TRUONG TONG KIM 18:50" );
	TaskInterval( 1440 );
	TaskTime( 18, 50 );
	TaskCountLimit( 0 );
	-- ���������Ϣ
	OutputMsg("=====> [TongKim] Chien Truong Tong Kim 18:50 BAT DAU")

end

function TaskContent()
	Battle_StartNewRound( 1, 1 );	-- GMָ������ͼ���ս��
	Battle_StartNewRound( 1, 2 );	-- GMָ������м���ս��
	Battle_StartNewRound( 1, 3 );	-- GMָ������߼���ս��
	OutputMsg("=====> [TongKim] Chien Truong Tong Kim 18:50 BAT DAU")

end

function GameSvrConnected(dwGameSvrIP)
end
function GameSvrReady(dwGameSvrIP)
end