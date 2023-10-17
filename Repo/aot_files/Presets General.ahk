;Ini_io := "..\gui_files\Ini\Input Assignment.ini"

;FileRead, Ini_io, %A_WorkingDir%\..\gui_files\Profile_Manager\last_used_ini_path.txt

IniRead, ServiceState, %A_WorkingDir%\..\%Ini_io%, Settings, ServiceState, %A_Space%

IniRead, ShiftMode, %A_WorkingDir%\..\%Ini_io%, Settings, ShiftMode, %A_Space%

IniRead, ShiftGrip, %A_WorkingDir%\..\%Ini_io%, Settings, ShiftGrip, %A_Space%

IniRead, MotionState, %A_WorkingDir%\..\%Ini_io%, Settings, MotionState, %A_Space%
IniRead, HeadState, %A_WorkingDir%\..\%Ini_io%, Settings, HeadState, %A_Space%
IniRead, HeadMode, %A_WorkingDir%\..\%Ini_io%, Settings, HeadMode %A_Space%


#Include aot_files\iniread.ahk

; ==================
; || Motion State || : Toggle or Defualt
; ==================
IniRead, MotionDevide, %A_WorkingDir%\..\%Ini_io%, Settings, MotionDevide, %A_Space%	

if (ControllerMode = 1)
  controller := new ViGEmXb360
else if !(ControllerMode = 1)
	controller := new ViGEmDS4
  
if (MotionDevide = 1) && (ControllerMode = 1)
	controller1 := new ViGEmXb360(2)
else if (MotionDevide = 1) && !(ControllerMode = 1) 
	controller1 := new ViGEmDS4(2)
  
If (MotionDevide = 1) && !(MotionState = 1)
	mcontroller := controller1
else
	mcontroller := controller

; =====================
; || General Presets || 
; =====================
Poll()

oldLGrip := 0
motionDegreeRange := 50.0

LeftGripDz := 0.1
RightGripDz := 0.1

hYawDz := 0.1
hPitchDz := 0.1

lPitch := GetPitch(0)
lYaw := GetYaw(0)

rPitch := GetPitch(1)
rYaw := GetYaw(1)

hYaw := GetYaw(2)
hPitch := GetPitch(2)







