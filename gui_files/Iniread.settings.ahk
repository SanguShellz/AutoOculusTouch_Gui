; ==================================
; :::::::: GENERAL SETTINGS ::::::::
; ==================================
IniRead, Trayico, %Ini_io%, Settings, Trayico, %A_Space%
IniRead, ServiceState, %Ini_io%, Settings, ServiceState, %A_Space%	
IniRead, MotionDevide, %Ini_io%, Settings, MotionDevide, %A_Space%	
IniRead, MotionState, %Ini_io%, Settings, MotionState, %A_Space%	
IniRead, ShiftMode, %Ini_io%, Settings, ShiftMode, %A_Space%
IniRead, ShiftGrip, %Ini_io%, Settings, ShiftGrip, %A_Space%
IniRead, ControllerMode, %Ini_io%, Settings, ControllerMode %A_Space%
IniRead, HeadState, %Ini_io%, Settings, HeadState, %A_Space%
IniRead, HeadMode, %Ini_io%, Settings, HeadMode %A_Space%


; =======================
; :::::::: MOUSE ::::::::
; =======================
; ============================
; || Mouse Speed Adjustment ||
; ============================
IniRead, mSpeedX, %Ini_io%, MouseSettings, mSpeedX, %A_Space%
IniRead, mSpeedY, %Ini_io%, MouseSettings, mSpeedY, %A_Space%
IniRead, sSpeedX, %Ini_io%, MouseSettings, sSpeedX, %A_Space%
IniRead, sSpeedY, %Ini_io%, MouseSettings, sSpeedY, %A_Space%
IniRead, hSpeedX, %Ini_io%, MouseSettings, hSpeedX, %A_Space%
IniRead, hSpeedY, %Ini_io%, MouseSettings, hSpeedY, %A_Space%

; ============================
; || Mouse Motion Deadzones ||
; ============================
IniRead, LS_Dz, %Ini_io%, MouseSettings, LS_Dz, %A_Space%
IniRead, RS_Dz, %Ini_io%, MouseSettings, RS_Dz, %A_Space%

IniRead, LSms_Dz, %Ini_io%, MouseSettings, LSms_Dz, %A_Space%
IniRead, RSms_Dz, %Ini_io%, MouseSettings, RSms_Dz, %A_Space%

