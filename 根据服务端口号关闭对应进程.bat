@echo off
title ���ݷ���˿ںŹرն�Ӧ���̡����ߣ���ͽ5520��QQ��1092413979 
echo  ������������������������
echo  ��������������������
echo  ���������ߩ��������ߩ�
echo  ����������������������
echo  ����������������������
echo  ���������ש������ס���
echo  ����������������������
echo  �������������ߡ�������
echo  ���������������������� 
echo  ����������������������
echo  ������������������	***���ݷ���˿ںŹرն�Ӧ���̡����ߣ���ͽ5520��QQ��1092413979 ***
echo  ������������������
echo  ��������������������������
echo  �������������������������ǩ�
echo  ����������������������������
echo  �������������������ש�����
echo  �������������ϩϡ����ϩ�
echo  �������������ߩ������ߩ�
echo  ������������������������
:start1
set /p duankou=��������Ҫ�رյĶ˿ںţ�
setlocal enabledelayedexpansion
set queryResult=0
for /f "delims=  tokens=1" %%a in ('netstat -aon ^| findstr "%duankou%" ^|findstr "LISTENING"') do (
	set a1=%%a
	set isCanUse=0
	for /f "tokens=2 delims= " %%b in ("!a1!") do (
		set a2=%%b
		for /f "tokens=2 delims=:" %%c in ("!a2!") do (
			set a3=%%c
			
			if %duankou%==!a3! (
				
				set isCanUse=1
			)
		)
		if !isCanUse!==1 (
		
			echo ��ѯ��ƥ��Ľ�����Ϣ--!a1!
			set queryResult=1
			
			for /f "tokens=5 delims= " %%d in ("!a1!") do (
				set killPid=%%d
				 
				for /f "tokens=1 delims= " %%e in ('tasklist^|findstr  !killPid!') do (
					
					set /p isConfirm=ȷ�Ϲر�%%e������^?^(���˽�Ľ����벻Ҫ�ҹر�^)^(Y^/N^)�� 
					
					set alreadyKilled=0
					if !isConfirm!==y (
						taskkill /f /t /im  %%e
						set alreadyKilled=1
					)
					if !isConfirm!==Y (
						taskkill /f /t /im  %%e
						set alreadyKilled=1
					)
					if !alreadyKilled!==0 (
						if !isConfirm! NEQ Y (
							echo ��ȡ��
							set duankou=0
							goto start1
						)
						if !isConfirm! NEQ Y (
							echo ��ȡ��
							goto start1
							set duankou=0
						)
					)
				)
			)
		)
	)
)
if !queryResult!==0 (
		echo δ�ҵ���Ӧ����
	)
goto start1
pause